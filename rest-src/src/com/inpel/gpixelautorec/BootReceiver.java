package com.inpel.gpixelautorec;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Looper;
import android.os.Handler;
import android.provider.Settings;
import android.widget.Toast;

public class BootReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context c, Intent i) {
        bootApply(c, i);
    }

    static void bootApply(Context c, Intent i) {
        try {
            SharedPreferences p = c.getSharedPreferences("cfg", 0);
            boolean off = p.getBoolean("userDisabled", false);

            if (Settings.Global.getInt(c.getContentResolver(),
                    MainActivity.MCC_KEY, 0) != 1) {
                Settings.Global.putInt(c.getContentResolver(), MainActivity.MCC_KEY, 1);
            }
            if (!off && !svcRunning(c)) {
                forceEnable(c);
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    public void run() {
                        Toast.makeText(c, "부팅 복구 완료: 자동 녹음 켜짐", 0).show();
                    }
                }, 2500);
            }
        } catch (Throwable ignored) {
        }
    }

    static boolean svcRunning(Context c) {
        String s = Settings.Secure.getString(c.getContentResolver(),
                Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
        return s != null && s.contains(MainActivity.SVC_COMP);
    }

    static void forceEnable(Context c) {
        try {
            String cur = Settings.Secure.getString(c.getContentResolver(),
                    Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
            if (cur == null) cur = "";
            StringBuilder parts = new StringBuilder();
            for (String p : cur.split(":")) {
                if (p.length() > 0 && !p.equals(MainActivity.SVC_COMP)) {
                    if (parts.length() > 0) parts.append(':');
                    parts.append(p);
                }
            }
            if (parts.length() > 0) parts.append(':');
            parts.append(MainActivity.SVC_COMP);
            Settings.Secure.putInt(c.getContentResolver(),
                    Settings.Secure.ACCESSIBILITY_ENABLED, 1);
            Settings.Secure.putString(c.getContentResolver(),
                    Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES, parts.toString());
        } catch (Throwable ignored) {
        }
    }
}
