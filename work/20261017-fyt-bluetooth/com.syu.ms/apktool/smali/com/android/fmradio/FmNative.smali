.class public Lcom/android/fmradio/FmNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FMJNI_CMD_10_SETMONOSTERO:I = 0xa

.field public static final FMJNI_CMD_11_GETRSSI:I = 0xb

.field public static final FMJNI_CMD_12_PRESEARCH:I = 0xc

.field public static final FMJNI_CMD_13_RESTORESEARCH:I = 0xd

.field public static final FMJNI_CMD_14_DENSENSEDETECT:I = 0xe

.field public static final FMJNI_CMD_15_ANASWITCH:I = 0xf

.field public static final FMJNI_CMD_16_SMTUNE:I = 0x10

.field public static final FMJNI_CMD_17_GETFMTTYPE:I = 0x11

.field public static final FMJNI_CMD_18_CURRENTFREQ:I = 0x12

.field public static final FMJNI_CMD_19_GET_STMN_STATUS:I = 0x13

.field public static final FMJNI_CMD_1_AUTOSCAN:I = 0x1

.field public static final FMJNI_CMD_20_SETGET_AREA:I = 0x14

.field public static final FMJNI_CMD_21_RDSONOFF:I = 0x15

.field public static final FMJNI_CMD_22_GETRDSONOFF:I = 0x16

.field public static final FMJNI_CMD_23_RDSTACONFIG:I = 0x17

.field public static final FMJNI_CMD_24_RDSAFCONFIG:I = 0x18

.field public static final FMJNI_CMD_25_RDSPTYCONFIG:I = 0x19

.field public static final FMJNI_CMD_26_GETRDSCONFIG:I = 0x1a

.field public static final FMJNI_CMD_27_GETRDSSTATE:I = 0x1b

.field public static final FMJNI_CMD_28_RDSTASEEK:I = 0x1c

.field public static final FMJNI_CMD_29_RDSPTYSEEK:I = 0x1d

.field public static final FMJNI_CMD_2_OPENDEV:I = 0x2

.field public static final FMJNI_CMD_30_RDSGETPS:I = 0x1e

.field public static final FMJNI_CMD_31_RDSGETTEXT:I = 0x1f

.field public static final FMJNI_CMD_32_RDSGETFREQPS:I = 0x20

.field public static final FMJNI_CMD_3_CLOSEDEV:I = 0x3

.field public static final FMJNI_CMD_4_POWERUP:I = 0x4

.field public static final FMJNI_CMD_5_POWERDOWN:I = 0x5

.field public static final FMJNI_CMD_6_SEEK:I = 0x6

.field public static final FMJNI_CMD_7_TUNE:I = 0x7

.field public static final FMJNI_CMD_8_SETMUTE:I = 0x8

.field public static final FMJNI_CMD_9_GETMONOSTERO:I = 0x9

.field public static INSTANCE:Lcom/android/fmradio/FmNative;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fmjni"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private native autoScan(I)[S
.end method

.method private native closeDev()Z
.end method

.method private native fmsyu_jni(ILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method public static getInstance()Lcom/android/fmradio/FmNative;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/fmradio/FmNative;->INSTANCE:Lcom/android/fmradio/FmNative;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/fmradio/FmNative;

    invoke-direct {v0}, Lcom/android/fmradio/FmNative;-><init>()V

    sput-object v0, Lcom/android/fmradio/FmNative;->INSTANCE:Lcom/android/fmradio/FmNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/android/fmradio/FmNative;->INSTANCE:Lcom/android/fmradio/FmNative;

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/fmradio/FmNative;->INSTANCE:Lcom/android/fmradio/FmNative;

    return-object v0
.end method

.method private native getmonostero(I)I
.end method

.method private native openDev()Z
.end method

.method private native powerDown(I)Z
.end method

.method private native powerUp(F)Z
.end method

.method private native seek(FZ)[F
.end method

.method private native setMute(Z)I
.end method

.method private native setconfig(Ljava/lang/String;)I
.end method

.method private native setmonostero(I)I
.end method

.method private native sqlautoScan(I[S[S)I
.end method

.method private native stopScan()Z
.end method

.method private native switchAntenna(I)I
.end method

.method private native tune(F)Z
.end method


# virtual methods
.method public native activeAf()S
.end method

.method public closeDev(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmNative;->powerDown(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/fmradio/FmNative;->closeDev()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public native getLrText()[B
.end method

.method public native getPs()[B
.end method

.method public native isRdsSupport()I
.end method

.method public opStopScan()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/fmradio/FmNative;->stopScan()Z

    move-result v0

    return v0
.end method

.method public openDev(F)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/fmradio/FmNative;->openDev()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmNative;->powerUp(F)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/fmradio/FmNative;->closeDev()Z

    return v2
.end method

.method public radioPowerUp(F)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmNative;->powerUp(F)Z

    move-result p1

    return p1
.end method

.method public native readRds()S
.end method

.method public seekFreq(FZ)[F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fmradio/FmNative;->seekFreq(FZ)[F

    move-result-object p1

    return-object p1
.end method

.method public setFreq(F)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmNative;->tune(F)Z

    move-result p1

    return p1
.end method

.method public native setRds(Z)I
.end method

.method public systemCtrl(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fmradio/FmNative;->fmsyu_jni(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
