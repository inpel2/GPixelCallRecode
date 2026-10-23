package com.inpel.gpixelautorec;

import android.app.Activity;
import android.Manifest;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class MainActivity extends Activity {

    static final String MCC_KEY = "op_voice_recording_supported_by_mcc";
    static final String SVC_COMP =
            "com.inpel.gpixelautorec/com.inpel.gpixelautorec.RecService";

    // palette
    static final int BG      = 0xFF0B0C0F;
    static final int CARD    = 0xFF16181D;
    static final int CARD2   = 0xFF101116;
    static final int LINE    = 0xFF23252C;
    static final int TXT     = 0xFFF2F3F5;
    static final int SUB     = 0xFF8A9096;
    static final int GREEN   = 0xFF3DD27E;
    static final int RED     = 0xFFEF5350;
    static final int AMBER   = 0xFFFFB74D;

    // button colors
    static final int BTN_ON_BG   = 0xFF22A45B;
    static final int BTN_OFF_BG  = 0xFF262A31;

    private TextView stateTitle, stateSub, chipRec, chipPerm;
    private GradientDrawable dotState, dotRec, dotPerm, btnBg;
    private Button mainBtn;
    private TextView logView;
    private ScrollView logScroll;
    private final StringBuilder logBuf = new StringBuilder();
    private volatile boolean lastOn = false;
    private volatile boolean uiReady = false;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        buildUi();
        uiReady = true;
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

    // ── ui ───────────────────────────────────────────────────────────────

    private void buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(BG);
        int hp = dp(20);
        root.setPadding(hp, dp(16), hp, dp(18));
        rootView = root;

        title(root);

        // status card
        LinearLayout card = newCard(CARD);
        root.addView(card, col(-1, -2, 0, dp(16), 0, dp(12)));

        LinearLayout stateRow = new LinearLayout(this);
        stateRow.setOrientation(LinearLayout.HORIZONTAL);
        stateRow.setGravity(Gravity.CENTER_VERTICAL);
        card.addView(stateRow, col(-1, -2, 0, 0, 0, 0));

        dotState = circle(GREEN);
        View dot = new View(this);
        dot.setBackground(dotState);
        LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(dp(12), dp(12));
        dl.rightMargin = dp(12);
        stateRow.addView(dot, dl);

        stateTitle = new TextView(this);
        stateTitle.setTextColor(TXT);
        stateTitle.setTextSize(22f);
        stateTitle.setTypeface(sansMedium());
        stateRow.addView(stateTitle, wrap());

        stateSub = new TextView(this);
        stateSub.setTextColor(SUB);
        stateSub.setTextSize(12.5f);
        card.addView(stateSub, col(-1, -2, dp(24), dp(6), 0, dp(12)));

        card.addView(hair(), col(-1, 1, 0, dp(2), 0, dp(14)));

        chipRec  = chipRow(card);
        dotRec   = stateRowDot(chipRec);
        chipPerm = chipRow(card);
        dotPerm  = stateRowDot(chipPerm);

        // primary toggle
        mainBtn = new Button(this);
        mainBtn.setTextSize(16f);
        mainBtn.setTypeface(sansMedium());
        mainBtn.setTextColor(0xFFFFFFFF);
        mainBtn.setAllCaps(false);
        mainBtn.setPadding(dp(24), 0, dp(24), 0);
        btnBg = round(BTN_ON_BG, dp(16));
        mainBtn.setBackground(btnBg);
        mainBtn.setSoundEffectsEnabled(true);
        mainBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View v) { setAutoRec(!lastOn); }
        });
        root.addView(mainBtn, col(-1, dp(52), 0, dp(14), 0, dp(6)));

        // ghost button: re-apply mcc
        Button mcc = new Button(this);
        mcc.setText("녹음 지원 설정 다시 적용 (mcc)");
        mcc.setTextSize(13f);
        mcc.setTextColor(SUB);
        mcc.setAllCaps(false);
        mcc.setPadding(dp(20), 0, dp(20), 0);
        mcc.setBackground(round(BTN_OFF_BG, dp(12)));
        mcc.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                log("mcc 설정 다시 적용", AMBER);
                ensureMcc();
                refreshStatus();
            }
        });
        root.addView(mcc, col(-1, dp(42), 0, 0, 0, dp(6)));

        // log card
        LinearLayout logCard = newCard(CARD2);
        root.addView(logCard, col(-1, -2, 0, dp(8), 0, dp(4)));

        TextView logHead = new TextView(this);
        logHead.setText("EVENT LOG");
        logHead.setTextColor(SUB);
        logHead.setTextSize(10f);
        logHead.setLetterSpacing(0.15f);
        logHead.setTypeface(Typeface.MONOSPACE);
        logCard.addView(logHead, col(-2, -2, dp(16), dp(10), 0, dp(2)));

        logScroll = new ScrollView(this);
        logView = new TextView(this);
        logView.setTypeface(Typeface.MONOSPACE);
        logView.setTextSize(11f);
        logView.setTextColor(0xFF9BA0A6);
        logView.setLineSpacing(dp(1.5f), 1f);
        logView.setPadding(dp(16), dp(4), dp(16), dp(12));
        logScroll.addView(logView, new ScrollView.LayoutParams(-1, -2));
        logCard.addView(logScroll, col(-1, dps(116), 0, 0, 0, 0));
        logView.setText("—");

        // hint card
        LinearLayout hintCard = newCard(CARD2);
        hintCard.setPadding(dp(16), dp(12), dp(16), dp(14));
        root.addView(hintCard, col(-1, -2, 0, 0, 0, 0));

        TextView hint = new TextView(this);
        hint.setText("통화 시작 시 녹음이 자동으로 시작되고, 통화가 끝나면 함께 종료됩니다.\n기기를 다시 켜도 설정과 서비스가 자동으로 복구됩니다.\n\n※ 토글 후 상태 반영에 약 1초가 걸립니다.");
        hint.setTextColor(SUB);
        hint.setTextSize(12f);
        hint.setLineSpacing(dp(2), 1f);
        hintCard.addView(hint, col(-1, -2, 0, 0, 0, 0));

        setContentView(root);
    }

    private void title(LinearLayout root) {
        TextView t = new TextView(this);
        t.setText("Pixel Call Recode");
        t.setTextColor(TXT);
        t.setTextSize(20f);
        t.setTypeface(sansMedium());
        root.addView(t, row(-2, -2, 0, dp(8), 0, dp(1)));

        TextView badge = new TextView(this);
        badge.setText("AUTO RECODE");
        badge.setTextColor(SUB);
        badge.setTextSize(10f);
        badge.setLetterSpacing(0.18f);
        badge.setTypeface(Typeface.MONOSPACE);
        root.addView(badge, row(-2, -2, 0, dp(2), 0, 0));
    }

    private LinearLayout rootView;

    private void chipText(TextView tv, String s) { tv.setText(s); }

    private TextView chipRow(LinearLayout parent) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        parent.addView(row, col(-1, -2, dp(3), dp(5), 0, dp(5)));

        GradientDrawable g = circle(SUB);
        View d = new View(this);
        d.setBackground(g);
        LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(dp(7), dp(7));
        dl.rightMargin = dp(10);
        row.addView(d, dl);

        TextView tv = new TextView(this);
        tv.setTextColor(0xFFC6CBD1);
        tv.setTextSize(13f);
        row.addView(tv, wrap());
        return tv;
    }

    private GradientDrawable stateRowDot(TextView tv) {
        LinearLayout row = (LinearLayout) tv.getParent();
        return (GradientDrawable) row.getChildAt(0).getBackground();
    }

    private Typeface sansMedium() {
        return Typeface.create("sans-serif-medium", Typeface.NORMAL);
    }

    private View hair() {
        View v = new View(this);
        v.setBackgroundColor(LINE);
        return v;
    }

    private LinearLayout newCard(int color) {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setPadding(dp(16), dp(16), dp(16), dp(16));
        c.setBackground(round(color, dp(20)));
        return c;
    }

    private GradientDrawable round(int color, float r) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        float rad = dp(r);
        g.setCornerRadii(new float[]{rad, rad, rad, rad, rad, rad, rad, rad});
        return g;
    }

    private GradientDrawable circle(int color) {
        GradientDrawable g = new GradientDrawable();
        g.setShape(GradientDrawable.OVAL);
        g.setColor(color);
        return g;
    }

    private int dp(float v) { return (int) (getResources().getDisplayMetrics().density * v + 0.5f); }
    private int dps(float v) { return (int) (getResources().getDisplayMetrics().density * v + 0.5f); }

    private static LinearLayout.LayoutParams wrap() {
        return new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout.LayoutParams col(int w, int h, int l, int t, int r, int b) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(w, h);
        p.setMargins(l, t, r, b);
        return p;
    }

    private LinearLayout.LayoutParams row(int w, int h, int l, int t, int r, int b) {
        return col(w, h, l, t, r, b);
    }

    // ── logic ────────────────────────────────────────────────────────────

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
            log("ERR: WRITE_SECURE_SETTINGS 권한 없음", RED);
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
            log(on ? "자동 녹음 켬" : "자동 녹음 끔", on ? GREEN : SUB);
        } catch (Throwable t) {
            log("ERR: " + t, RED);
        }
        refreshStatus();
    }

    private void refreshStatus() {
        if (!uiReady) return;
        runOnUiThread(new Runnable() {
            public void run() { applyStatus(); }
        });
    }

    private void applyStatus() {
        if (isFinishing() || isDestroyed()) return;
        boolean ok = canWriteSecure();
        boolean on = ok && svcEnabled();
        lastOn = on;

        try {
            if (!ok) {
                dotState.setColor(RED);
                stateTitle.setText("권한 없음");
                stateTitle.setTextColor(RED);
                stateSub.setText("adb로 WRITE_SECURE_SETTINGS 권한을 부여해야 합니다");
                chipText(chipPerm, "권한 · WRITE_SECURE_SETTINGS 없음");
                chipText(chipRec, "녹음 지원 (mcc) · 확인 불가");
                dotPerm.setColor(RED);
                dotRec.setColor(SUB);
                btnBg.setColor(BTN_ON_BG);
                mainBtn.setText("자동 녹음 켜기");
                return;
            }

            dotState.setColor(on ? GREEN : SUB);
            stateTitle.setText(on ? "작동 중" : "꺼짐");
            stateTitle.setTextColor(on ? GREEN : TXT);
            stateSub.setText(on ? "통화 시 자동으로 녹음이 시작됩니다"
                                : "아래 버튼으로 자동 녹음을 켤 수 있습니다");

            ensureMcc();
            int mcc = Settings.Global.getInt(getContentResolver(), MCC_KEY, -1);
            boolean rec = mcc == 1;
            chipText(chipRec, "녹음 지원 (mcc) · " + (rec ? "지원됨" : "꺼짐 (" + mcc + ")"));
            dotRec.setColor(rec ? GREEN : RED);

            chipText(chipPerm, "권한 · 허용됨");
            dotPerm.setColor(GREEN);

            btnBg.setColor(on ? BTN_OFF_BG : BTN_ON_BG);
            mainBtn.setText(on ? "자동 녹음 끄기" : "자동 녹음 켜기");
        } catch (Throwable ignored) {
        }
    }

    private void log(String s, int color) {
        String t = new SimpleDateFormat("HH:mm:ss", Locale.US).format(new Date());
        String line = "[" + t + "] " + s + "\n";
        synchronized (logBuf) {
            if (logBuf.length() > 3000) logBuf.delete(1500, logBuf.length());
            logBuf.insert(0, line);
        }
        if (uiReady) {
            final String text;
            synchronized (logBuf) { text = logBuf.toString(); }
            runOnUiThread(new Runnable() {
                public void run() {
                    if (logView != null) {
                        logView.setText(text);
                        logScroll.scrollTo(0, 0);
                    }
                }
            });
        }
    }
}
