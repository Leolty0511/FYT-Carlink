package android.source;

/* JADX INFO: loaded from: classes.dex */
public class Util {
    public static final int DEST_DISP_BOARD_SCREEN = 0;
    public static final int DEST_DISP_CVBS_OUT = 2;
    public static final int SIGNAL_CVBS_AUTO = 8;
    public static final int SIGNAL_CVBS_MAX = 9;
    public static final int SIGNAL_CVBS_NOTSTANDARD = 7;
    public static final int SIGNAL_CVBS_NTSC_44 = 3;
    public static final int SIGNAL_CVBS_NTSC_M = 1;
    public static final int SIGNAL_CVBS_PAL_60 = 6;
    public static final int SIGNAL_CVBS_PAL_BGHI = 0;
    public static final int SIGNAL_CVBS_PAL_M = 4;
    public static final int SIGNAL_CVBS_PAL_N = 5;
    public static final int SIGNAL_CVBS_SECAM = 2;
    public static final int SIGNAL_YPBPR_NOSYNC = 0;
    public static final int SIGNAL_YPBPR_STABLE_SUPPORT_MODE = 1;
    public static final int SIGNAL_YPBPR_STABLE_UN_SUPPORT_MODE = 2;
    public static final int SIGNAL_YPBPR_UNSTABLE = 3;
    public static final int SOURCE_CHANNEL_BT656 = 10;
    public static final int SOURCE_CHANNEL_BT656_1 = 11;
    public static final int SOURCE_CHANNEL_CVBS1 = 2;
    public static final int SOURCE_CHANNEL_CVBS2 = 3;
    public static final int SOURCE_CHANNEL_CVBS3 = 4;
    public static final int SOURCE_CHANNEL_VGA = 0;
    public static final int SOURCE_CHANNEL_YPBPR = 1;

    public Util() {
        throw new RuntimeException("Stub!");
    }

    public static native int ChangeDispWin(int i2, int i3, int i4, int i5, int i6);

    public static native void SetCloneScreenDisplayRatio(int i2, boolean z2, int i3, int i4);

    public static native void SetDisplayMuteColor(int i2, int i3, int i4);

    public static native void SetOverScanPercent(int i2, int i3, boolean z2, int i4, int i5);

    public static native int SetTransparent(int i2, boolean z2, int i3);

    public static native boolean adcCalibration(int i2);

    public static native void closeDev(int i2);

    public static native boolean geometryCalibration(int i2);

    public static native int getSignal(int i2, int i3);

    public static native int getVideoParameter(int i2, int i3);

    public static native boolean isBackFromCarback(int i2, boolean z2);

    public static native boolean isDisplayReady(int i2, int i3);

    public static native boolean isEnteredCarback(int i2);

    public static native boolean loadADCCalibration(int i2);

    public static native boolean loadGeometryCalibration(int i2);

    public static native int openDev(int i2);

    public static native int restartDisplay(int i2, int i3, int i4, int i5, int i6);

    public static native int setAlpha(int i2, int i3);

    public static native int setBright(int i2, int i3);

    public static native int setChannel(int i2, int i3);

    public static native int setCnntParams(int i2, int i3, long j2, int i4);

    public static native int setContrast(int i2, int i3);

    public static native int setMirror(int i2, int i3);

    public static native int setSaturation(int i2, int i3);

    public static native int setSharpness(int i2, int i3);

    public static native int startDisplay(int i2, int i3, int i4, int i5, int i6);

    public static native int stopDisplay(int i2);

    public static native int timingDisplay(int i2, int i3);

    public static native int turnOnOffDisplay(int i2, int i3, boolean z2);
}
