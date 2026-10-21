.class public Landroid/source/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEST_DISP_BOARD_SCREEN:I = 0x0

.field public static final DEST_DISP_CVBS_OUT:I = 0x2

.field public static final SIGNAL_CVBS_AUTO:I = 0x8

.field public static final SIGNAL_CVBS_MAX:I = 0x9

.field public static final SIGNAL_CVBS_NOTSTANDARD:I = 0x7

.field public static final SIGNAL_CVBS_NTSC_44:I = 0x3

.field public static final SIGNAL_CVBS_NTSC_M:I = 0x1

.field public static final SIGNAL_CVBS_PAL_60:I = 0x6

.field public static final SIGNAL_CVBS_PAL_BGHI:I = 0x0

.field public static final SIGNAL_CVBS_PAL_M:I = 0x4

.field public static final SIGNAL_CVBS_PAL_N:I = 0x5

.field public static final SIGNAL_CVBS_SECAM:I = 0x2

.field public static final SIGNAL_YPBPR_NOSYNC:I = 0x0

.field public static final SIGNAL_YPBPR_STABLE_SUPPORT_MODE:I = 0x1

.field public static final SIGNAL_YPBPR_STABLE_UN_SUPPORT_MODE:I = 0x2

.field public static final SIGNAL_YPBPR_UNSTABLE:I = 0x3

.field public static final SOURCE_CHANNEL_BT656:I = 0xa

.field public static final SOURCE_CHANNEL_BT656_1:I = 0xb

.field public static final SOURCE_CHANNEL_CVBS1:I = 0x2

.field public static final SOURCE_CHANNEL_CVBS2:I = 0x3

.field public static final SOURCE_CHANNEL_CVBS3:I = 0x4

.field public static final SOURCE_CHANNEL_VGA:I = 0x0

.field public static final SOURCE_CHANNEL_YPBPR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native ChangeDispWin(IIIII)I
.end method

.method public static native SetCloneScreenDisplayRatio(IZII)V
.end method

.method public static native SetDisplayMuteColor(III)V
.end method

.method public static native SetOverScanPercent(IIZII)V
.end method

.method public static native SetTransparent(IZI)I
.end method

.method public static native adcCalibration(I)Z
.end method

.method public static native closeDev(I)V
.end method

.method public static native geometryCalibration(I)Z
.end method

.method public static native getSignal(II)I
.end method

.method public static native getVideoParameter(II)I
.end method

.method public static native isBackFromCarback(IZ)Z
.end method

.method public static native isDisplayReady(II)Z
.end method

.method public static native isEnteredCarback(I)Z
.end method

.method public static native loadADCCalibration(I)Z
.end method

.method public static native loadGeometryCalibration(I)Z
.end method

.method public static native openDev(I)I
.end method

.method public static native restartDisplay(IIIII)I
.end method

.method public static native setAlpha(II)I
.end method

.method public static native setBright(II)I
.end method

.method public static native setChannel(II)I
.end method

.method public static native setCnntParams(IIJI)I
.end method

.method public static native setContrast(II)I
.end method

.method public static native setMirror(II)I
.end method

.method public static native setSaturation(II)I
.end method

.method public static native setSharpness(II)I
.end method

.method public static native startDisplay(IIIII)I
.end method

.method public static native stopDisplay(I)I
.end method

.method public static native timingDisplay(II)I
.end method

.method public static native turnOnOffDisplay(IIZ)I
.end method
