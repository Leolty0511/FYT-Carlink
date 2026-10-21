.class public Lcom/syu/jni/I2c6225VideoJni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CSI_2815:I = 0x1

.field public static final CSI_9963:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_6225video_i2c"

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


# virtual methods
.method public native lsecVideoI2cRead(B[BI)I
.end method

.method public native lsecVideoI2cWrite(BBI)I
.end method
