.class public Lcom/syu/jni/JniI2c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_i2c"

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

.method public static native open(Ljava/lang/String;)I
.end method

.method public static native readNormalStopHave(II[BI[BI)I
.end method

.method public static native readNormalStopNo(II[BI[BI)I
.end method

.method public static native readRk(III)I
.end method

.method public static native write(IIII)I
.end method

.method public static native writeNormal(II[BI[BI)I
.end method

.method public static native writeRk(IIII)I
.end method
