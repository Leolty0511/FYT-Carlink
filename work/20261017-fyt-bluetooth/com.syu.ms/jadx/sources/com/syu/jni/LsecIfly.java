package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class LsecIfly {
    public static final int FUNC_MODE_NOISECLEAN = 1;
    public static final int FUNC_MODE_PASSBY = 0;
    public static final int FUNC_MODE_PHONE = 2;
    public static final int FUNC_MODE_WAKEUP = 3;
    public static final int WORK_MODE_BT_NB = 7;
    public static final int WORK_MODE_BT_WB = 8;
    public static final int WORK_MODE_DEF = 0;
    public static final int WORK_MODE_EAR = 9;
    public static final int WORK_MODE_HOST = 3;
    public static final int WORK_MODE_NB = 5;
    public static final int WORK_MODE_NR_24K = 16;
    public static final int WORK_MODE_PAD = 4;
    public static final int WORK_MODE_PERIPHERAL = 1;
    public static final int WORK_MODE_TOPLIGHT = 2;
    public static final int WORK_MODE_WB = 6;

    static {
        System.loadLibrary("lsec_ifly");
    }

    private native int getFunc();

    private native int getMode();

    private native int getVersion();

    private native int setFunc(int i2);

    private native int setMode(int i2);

    private static native int testMic(int i2);

    public static int testMicFunc(int i2) {
        return testMic(i2);
    }

    public int getMicFunc() {
        return getMode();
    }

    public int getMicMode() {
        return getMode();
    }

    public int getVer() {
        return getVersion();
    }

    public int setMicFunc(int i2) {
        return setFunc(i2);
    }

    public int setMicMode(int i2) {
        return setMode(i2);
    }
}
