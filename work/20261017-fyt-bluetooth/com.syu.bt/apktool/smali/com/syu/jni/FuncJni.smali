.class public Lcom/syu/jni/FuncJni;
.super Ljava/lang/Object;
.source "FuncJni.java"


# static fields
.field private static sFD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, -0x1

    sput v0, Lcom/syu/jni/FuncJni;->sFD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSpectGram()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7
    sget v0, Lcom/syu/jni/FuncJni;->sFD:I

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_sound_spectrogram_open()I

    move-result v0

    sput v0, Lcom/syu/jni/FuncJni;->sFD:I

    .line 10
    :cond_0
    sget v0, Lcom/syu/jni/FuncJni;->sFD:I

    if-eq v0, v1, :cond_1

    .line 11
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    sget v1, Lcom/syu/jni/FuncJni;->sFD:I

    invoke-virtual {v0, v1}, Lcom/syu/jni/ControlNative;->fyt_sound_spectrogram_read(I)I

    move-result v0

    .line 13
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
