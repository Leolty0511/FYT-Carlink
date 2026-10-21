.class public Lcom/syu/jni/SerialNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "sqlserial"

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

.method public static native native_close(I)V
.end method

.method public static native native_open(Ljava/lang/String;)I
.end method

.method public static native native_open_mbx()I
.end method

.method public static native native_read(III)[B
.end method

.method public static native native_setup(IIIII)I
.end method

.method public static native native_write(I[BI)V
.end method
