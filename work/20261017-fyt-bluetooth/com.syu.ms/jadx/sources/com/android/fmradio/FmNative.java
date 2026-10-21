package com.android.fmradio;

/* JADX INFO: loaded from: classes.dex */
public class FmNative {
    public static final int FMJNI_CMD_10_SETMONOSTERO = 10;
    public static final int FMJNI_CMD_11_GETRSSI = 11;
    public static final int FMJNI_CMD_12_PRESEARCH = 12;
    public static final int FMJNI_CMD_13_RESTORESEARCH = 13;
    public static final int FMJNI_CMD_14_DENSENSEDETECT = 14;
    public static final int FMJNI_CMD_15_ANASWITCH = 15;
    public static final int FMJNI_CMD_16_SMTUNE = 16;
    public static final int FMJNI_CMD_17_GETFMTTYPE = 17;
    public static final int FMJNI_CMD_18_CURRENTFREQ = 18;
    public static final int FMJNI_CMD_19_GET_STMN_STATUS = 19;
    public static final int FMJNI_CMD_1_AUTOSCAN = 1;
    public static final int FMJNI_CMD_20_SETGET_AREA = 20;
    public static final int FMJNI_CMD_21_RDSONOFF = 21;
    public static final int FMJNI_CMD_22_GETRDSONOFF = 22;
    public static final int FMJNI_CMD_23_RDSTACONFIG = 23;
    public static final int FMJNI_CMD_24_RDSAFCONFIG = 24;
    public static final int FMJNI_CMD_25_RDSPTYCONFIG = 25;
    public static final int FMJNI_CMD_26_GETRDSCONFIG = 26;
    public static final int FMJNI_CMD_27_GETRDSSTATE = 27;
    public static final int FMJNI_CMD_28_RDSTASEEK = 28;
    public static final int FMJNI_CMD_29_RDSPTYSEEK = 29;
    public static final int FMJNI_CMD_2_OPENDEV = 2;
    public static final int FMJNI_CMD_30_RDSGETPS = 30;
    public static final int FMJNI_CMD_31_RDSGETTEXT = 31;
    public static final int FMJNI_CMD_32_RDSGETFREQPS = 32;
    public static final int FMJNI_CMD_3_CLOSEDEV = 3;
    public static final int FMJNI_CMD_4_POWERUP = 4;
    public static final int FMJNI_CMD_5_POWERDOWN = 5;
    public static final int FMJNI_CMD_6_SEEK = 6;
    public static final int FMJNI_CMD_7_TUNE = 7;
    public static final int FMJNI_CMD_8_SETMUTE = 8;
    public static final int FMJNI_CMD_9_GETMONOSTERO = 9;
    public static FmNative INSTANCE;

    private FmNative() {
        System.loadLibrary("fmjni");
    }

    private native short[] autoScan(int i2);

    private native boolean closeDev();

    private native int fmsyu_jni(int i2, Object obj, Object obj2);

    public static FmNative getInstance() {
        try {
            if (INSTANCE == null) {
                INSTANCE = new FmNative();
            }
        } catch (Throwable unused) {
            INSTANCE = null;
        }
        return INSTANCE;
    }

    private native int getmonostero(int i2);

    private native boolean openDev();

    private native boolean powerDown(int i2);

    private native boolean powerUp(float f2);

    private native float[] seek(float f2, boolean z2);

    private native int setMute(boolean z2);

    private native int setconfig(String str);

    private native int setmonostero(int i2);

    private native int sqlautoScan(int i2, short[] sArr, short[] sArr2);

    private native boolean stopScan();

    private native int switchAntenna(int i2);

    private native boolean tune(float f2);

    public native short activeAf();

    public boolean closeDev(int i2) {
        return powerDown(i2) && closeDev();
    }

    public native byte[] getLrText();

    public native byte[] getPs();

    public native int isRdsSupport();

    public boolean opStopScan() {
        return stopScan();
    }

    public boolean openDev(float f2) {
        if (openDev() && powerUp(f2)) {
            return true;
        }
        closeDev();
        return false;
    }

    public boolean radioPowerUp(float f2) {
        return powerUp(f2);
    }

    public native short readRds();

    public float[] seekFreq(float f2, boolean z2) {
        return seekFreq(f2, z2);
    }

    public boolean setFreq(float f2) {
        return tune(f2);
    }

    public native int setRds(boolean z2);

    public int systemCtrl(int i2, Object obj, Object obj2) {
        return fmsyu_jni(i2, obj, obj2);
    }
}
