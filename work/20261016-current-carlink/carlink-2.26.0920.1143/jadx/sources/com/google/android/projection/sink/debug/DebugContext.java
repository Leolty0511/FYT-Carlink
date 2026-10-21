package com.google.android.projection.sink.debug;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class DebugContext {
    public static final int KEYBOARD_LOCKOUT_AUTO = 0;
    public static final int KEYBOARD_LOCKOUT_FORCE = 1;
    public static final int KEYBOARD_LOCKOUT_OVERRIDE = 2;
    private int mKeyboardLockoutMode;
    private final SimulatedLocationProvider mSimulatedLocationProvider;

    public DebugContext(Context context) {
        this.mSimulatedLocationProvider = new SimulatedLocationProvider(context);
    }

    public int getKeyboardLockoutMode() {
        return this.mKeyboardLockoutMode;
    }

    public SimulatedLocationProvider getSimulatedLocationProvider() {
        return this.mSimulatedLocationProvider;
    }

    public void setKeyboardLockoutMode(int i2) {
        this.mKeyboardLockoutMode = i2;
    }

    public void shutdown() {
        this.mSimulatedLocationProvider.shutdown();
    }
}
