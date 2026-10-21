.class public abstract Landroid/renderscript/ScriptIntrinsic;
.super Landroid/renderscript/Script;
.source "SourceFile"


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    .line 12
    .line 13
    const-string p2, "Loading of ScriptIntrinsic failed."

    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method
