.class public Lcom/syu/jni/JniI2c;
.super Ljava/lang/Object;
.source "JniI2c.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    :try_start_0
    const-string v0, "jni_i2c"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    return-void

    .line 7
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native open(Ljava/lang/String;)I
.end method

.method public static native readRk(III)I
.end method

.method public static native write(IIII)I
.end method

.method public static native writeRk(IIII)I
.end method
