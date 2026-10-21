package com.google.android.projection.sink.ui;

import android.app.ActivityManager;
import android.os.Handler;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class SystemUiHider {
    private static final int HIDE_DELAY_MILLIS = 2000;
    private Handler mHandler;
    private final Runnable mHideRunnable = new Runnable() { // from class: com.google.android.projection.sink.ui.SystemUiHider.2
        @Override // java.lang.Runnable
        public void run() {
            SystemUiHider.this.hideSystemUi();
        }
    };
    private final View mView;

    public SystemUiHider(View view) {
        this.mView = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSystemUi() {
        this.mView.setSystemUiVisibility(3076);
    }

    public void delay() {
        this.mHandler.removeCallbacks(this.mHideRunnable);
        this.mHandler.postDelayed(this.mHideRunnable, ActivityManager.isUserAMonkey() ? 0L : 2000L);
    }

    public void setup() {
        hideSystemUi();
        this.mHandler = new Handler();
        this.mView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.google.android.projection.sink.ui.SystemUiHider.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i2) {
                if ((i2 & 4) == 0) {
                    SystemUiHider.this.delay();
                }
            }
        });
    }
}
