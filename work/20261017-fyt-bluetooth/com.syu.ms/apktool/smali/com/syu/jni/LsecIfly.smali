.class public Lcom/syu/jni/LsecIfly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FUNC_MODE_NOISECLEAN:I = 0x1

.field public static final FUNC_MODE_PASSBY:I = 0x0

.field public static final FUNC_MODE_PHONE:I = 0x2

.field public static final FUNC_MODE_WAKEUP:I = 0x3

.field public static final WORK_MODE_BT_NB:I = 0x7

.field public static final WORK_MODE_BT_WB:I = 0x8

.field public static final WORK_MODE_DEF:I = 0x0

.field public static final WORK_MODE_EAR:I = 0x9

.field public static final WORK_MODE_HOST:I = 0x3

.field public static final WORK_MODE_NB:I = 0x5

.field public static final WORK_MODE_NR_24K:I = 0x10

.field public static final WORK_MODE_PAD:I = 0x4

.field public static final WORK_MODE_PERIPHERAL:I = 0x1

.field public static final WORK_MODE_TOPLIGHT:I = 0x2

.field public static final WORK_MODE_WB:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "lsec_ifly"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getFunc()I
.end method

.method private native getMode()I
.end method

.method private native getVersion()I
.end method

.method private native setFunc(I)I
.end method

.method private native setMode(I)I
.end method

.method private static native testMic(I)I
.end method

.method public static testMicFunc(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/syu/jni/LsecIfly;->testMic(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getMicFunc()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/syu/jni/LsecIfly;->getMode()I

    move-result v0

    return v0
.end method

.method public getMicMode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/syu/jni/LsecIfly;->getMode()I

    move-result v0

    return v0
.end method

.method public getVer()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/syu/jni/LsecIfly;->getVersion()I

    move-result v0

    return v0
.end method

.method public setMicFunc(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/syu/jni/LsecIfly;->setFunc(I)I

    move-result p1

    return p1
.end method

.method public setMicMode(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/syu/jni/LsecIfly;->setMode(I)I

    move-result p1

    return p1
.end method
