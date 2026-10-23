package com.inpel.gpixelautorec;

import android.accessibilityservice.AccessibilityService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Toast;

import java.util.ArrayDeque;
import java.util.Locale;

public class RecService extends AccessibilityService {

    private static final String[] CALL_PKGS = {
            "com.google.android.dialer",
            "com.android.incallui",
            "com.skt.prod.dialer",
            "com.google.android.apps.tachyon",
    };

    private final Handler h = new Handler(Looper.getMainLooper());
    private volatile boolean inCall;
    private volatile boolean tapped;
    private int attempts;

    private final BroadcastReceiver phoneState = new BroadcastReceiver() {
        @Override
        public void onReceive(Context c, Intent it) {
            if (TelephonyManager.ACTION_PHONE_STATE_CHANGED.equals(it.getAction())) {
                String st = it.getStringExtra(TelephonyManager.EXTRA_STATE);
                if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(st)) {
                    inCall = true;
                    tapped = false;
                    attempts = 0;
                    h.removeCallbacks(probe);
                    h.postDelayed(probe, 500);
                } else if (TelephonyManager.EXTRA_STATE_IDLE.equals(st)
                        || TelephonyManager.EXTRA_STATE_RINGING.equals(st)
                        && !inCall) {
                    inCall = false;
                    tapped = false;
                    h.removeCallbacks(probe);
                }
            }
        }
    };

    private final Runnable probe = new Runnable() {
        @Override
        public void run() {
            if (inCall && !tapped && attempts < 30) {
                attempts++;
                if (!tryClickRecord(getRootInActiveWindow())) {
                    h.postDelayed(probe, 700);
                }
            }
        }
    };

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        try {
            Settings.Global.putInt(getContentResolver(),
                    MainActivity.MCC_KEY, 1);
            Settings.Secure.putInt(getContentResolver(),
                    Settings.Secure.ACCESSIBILITY_ENABLED, 1);
        } catch (Throwable ignored) {
        }
        registerReceiver(phoneState, new IntentFilter(
                TelephonyManager.ACTION_PHONE_STATE_CHANGED));
        Toast.makeText(this, "자동 통화녹음 시작", 1).show();
    }

    @Override
    public boolean onUnbind(Intent i) {
        try {
            unregisterReceiver(phoneState);
        } catch (Throwable ignored) {
        }
        return super.onUnbind(i);
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent e) {
        if (!inCall || tapped) return;
        AccessibilityNodeInfo root = getRootInActiveWindow();
        if (root != null) tryClickRecord(root);
    }

    @Override
    public void onInterrupt() {
    }

    private boolean tryClickRecord(AccessibilityNodeInfo root) {
        if (root == null) return false;
        CharSequence pn = root.getPackageName();
        if (pn == null) return false;
        boolean pkg = false;
        for (String p : CALL_PKGS) {
            if (p.contentEquals(pn)) { pkg = true; break; }
        }
        if (!pkg) return false;

        ArrayDeque<AccessibilityNodeInfo> q = new ArrayDeque<>();
        q.add(root);
        int seen = 0;
        while (!q.isEmpty() && seen++ < 400) {
            AccessibilityNodeInfo n = q.poll();
            if (n == null) continue;
            if (matches(n)) {
                if (performClick(n)) {
                    tapped = true;
                    String id = n.getViewIdResourceName() == null
                            ? "desc" : n.getViewIdResourceName();
                    Toast.makeText(this, "자동 녹음 시작 (" + id + ")", 1).show();
                    return true;
                }
            }
            for (int i = 0; i < n.getChildCount(); i++) {
                AccessibilityNodeInfo c = n.getChild(i);
                if (c != null) q.add(c);
            }
        }
        return false;
    }

    private boolean matches(AccessibilityNodeInfo n) {
        String id = n.getViewIdResourceName();
        if (id != null && id.toLowerCase(Locale.US).contains("record")
                && id.contains("dialer")) {
            return true;
        }
        CharSequence d = n.getContentDescription();
        CharSequence t = n.getText();
        String tx = d != null ? d.toString() : t != null ? t.toString() : null;
        if (tx != null) {
            String low = tx.toLowerCase(Locale.US);
            if (low.contains("녹음") || low.contains("record")) return true;
        }
        return false;
    }

    private boolean performClick(AccessibilityNodeInfo n) {
        AccessibilityNodeInfo cur = n;
        int hop = 0;
        while (cur != null && hop < 6) {
            if (cur.isClickable()) {
                return cur.performAction(
                        AccessibilityNodeInfo.ACTION_CLICK);
            }
            cur = cur.getParent();
            hop++;
        }
        return n.performAction(AccessibilityNodeInfo.ACTION_CLICK);
    }
}
