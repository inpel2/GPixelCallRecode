package com.inpel.gpixelautorec;

import android.app.Activity;
import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {

    static final String MCC_KEY = "op_voice_recording_supported_by_mcc";
    static final String SVC_COMP =
            "com.inpel.gpixelautorec/com.inpel.gpixelautorec.RecService";

    private TextView status1, status2, logView;
    private final StringBuilder logBuf = new StringBuilder();

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        buildUi();
        refreshStatus();
        ensureMcc();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshStatus();
        ensureMcc();
    }

    @Override
    protected void onPause() {
        super.onPause();
        BootReceiver.bootApply(getApplicationContext(), null);
        refreshStatus();
    }

    private void buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(0xFF0E0E10);
        root.setPadding(0, 0, 0, 0);

        TextView title = new TextView(this);
        title.setText("Pixel Call Recode");
        title.setTextColor(0xFFECECEC);
        title.setTextSize(21f);
        title.setTypeface(title.getTypeface(), 1);
        LinearLayout.LayoutParams tl = new LinearLayout.LayoutParams(-2, -2);
        tl.setMargins(dp(16), dp(18), 0, 0);
        root.addView(title, tl);

        TextView badge = new TextView(this);
        badge.setText("Auto Recode");
        badge.setTextColor(0xFF9AA0A5);
        badge.setTextSize(11f);
        LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(-2, -2);
        bl.setMargins(dp(17), dp(4), 0, 0);
        root.addView(badge, bl);

        status1 = new TextView(this);
        status1.setTextColor(0xFF5FBF7A);
        status1.setTextSize(17f);
        LinearLayout.LayoutParams s1 = new LinearLayout.LayoutParams(-1, -2);
        s1.setMargins(0, dp(18), 0, 0);
        root.addView(status1, s1);

        status2 = new TextView(this);
        status2.setTextColor(0xFF5FBF7A);
        status2.setTextSize(17f);
        root.addView(status2, new LinearLayout.LayoutParams(-1, -2));

        logView = new TextView(this);
        logView.setTextColor(0xFF9AA0A5);
        logView.setTextSize(12f);
        logView.setBackgroundColor(0xFF050505);
        logView.setPadding(dp(16), dp(12), dp(16), dp(12));
        root.addView(logView, new LinearLayout.LayoutParams(-1, -2));

        root.addView(btn("자동 녹음 켜기", new OnClickListener() {
            public void onClick(View v) { setAutoRec(true); }
        }));

        root.addView(btn("자동 녹음 끄기", new OnClickListener() {
            public void onClick(View v) { setAutoRec(false); }
        }));

        root.addView(btn("녹음 지원 설정 켜기 (mcc)", new OnClickListener() {
            public void onClick(View v) {
                log("mcc 설정 reapplied");
                ensureMcc();
                refreshStatus();
            }
        }));

        TextView hint = new TextView(this);
        hint.setText("통화 시작 → 녹음 자동 시작\n전화가 끊기면 녹음도 종료됩니다\n부팅 후에도 설정/서비스 자동 복구\n\n※ 자동 녹음 켜고 껐다 켤때 약 1초 기다리세요.");
        hint.setTextColor(0xFF9AA0A5);
        hint.setTextSize(13f);
        hint.setGravity(0x11);
        LinearLayout.LayoutParams hl = new LinearLayout.LayoutParams(-1, -2);
        hl.setMargins(dp(16), dp(12), dp(16), dp(16));
        root.addView(hint, hl);

        LinearLayout.LayoutParams filler = new LinearLayout.LayoutParams(-1, 0);
        filler.weight = 1f;
        root.addView(new View(this), filler);

        setContentView(root);
    }

    private int dp(float v) { return (int) (getResources().getDisplayMetrics().density * v + 0.5f); }

    private Button btn(String text, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setOnClickListener(l);
        return b;
    }

    private boolean canWriteSecure() {
        return checkSelfPermission(Manifest.permission.WRITE_SECURE_SETTINGS)
                == PackageManager.PERMISSION_GRANTED;
    }

    private void ensureMcc() {
        if (!canWriteSecure()) return;
        try {
            if (Settings.Global.getInt(getContentResolver(), MCC_KEY, 0) != 1)
                Settings.Global.putInt(getContentResolver(), MCC_KEY, 1);
        } catch (Throwable ignored) {
        }
    }

    private boolean svcEnabled() {
        String s = Settings.Secure.getString(getContentResolver(),
                Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
        return s != null && s.contains(SVC_COMP);
    }

    private void setAutoRec(boolean on) {
        if (!canWriteSecure()) {
            Toast.makeText(this, "WRITE_SECURE_SETTINGS 권한이 없습니다 (adb grant 필요)", 0).show();
            log("ERR: WRITE_SECURE_SETTINGS 권한 없음");
            return;
        }
        try {
            String cur = Settings.Secure.getString(getContentResolver(),
                    Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
            if (cur == null) cur = "";
            StringBuilder parts = new StringBuilder();
            for (String p : cur.split(":")) {
                if (p.length() > 0 && !p.equals(SVC_COMP)) {
                    if (parts.length() > 0) parts.append(':');
                    parts.append(p);
                }
            }
            if (on) {
                if (parts.length() > 0) parts.append(':');
                parts.append(SVC_COMP);
                Settings.Secure.putInt(getContentResolver(),
                        Settings.Secure.ACCESSIBILITY_ENABLED, 1);
            }
            Settings.Secure.putString(getContentResolver(),
                    Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES, parts.toString());
            log(on ? "자동 녹음 ON" : "자동 녹음 OFF");
        } catch (Throwable t) {
            log("ERR: " + t);
        }
        refreshStatus();
    }

    private void refreshStatus() {
        boolean rec = canWriteSecure();
        if (!rec) {
            status1.setText("권한 없음: adb grant 필요");
            status2.setText("녹음 지원 설정: 확인 불가");
            log("adb shell pm grant com.inpel.gpixelautorec android.permission.WRITE_SECURE_SETTINGS");
        } else {
            boolean on = svcEnabled();
            status1.setText(on ? "자동 녹음: 작동 중" : "자동 녹음: 꺼짐 (아래 버튼)");
        }
        ensureMcc();
        int mcc = Settings.Global.getInt(getContentResolver(), MCC_KEY, -1);
        status2.setText(mcc == 1 ? "녹음 지원: 지원됨" : "녹음 지원: 꺼짐 (SYS mcc=" + mcc + ")");
        logView.setText(logBuf.toString());
    }

    private void log(String s) {
        if (logBuf.length() > 4000) logBuf.delete(0, 2000);
        logBuf.append(s).append('\n');
        logView.setText(logBuf.toString());
    }
}
