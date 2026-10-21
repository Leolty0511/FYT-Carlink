.class public abstract synthetic Landroid/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/SurfaceHolder;)Landroid/graphics/Canvas;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This SurfaceHolder doesn\'t support lockHardwareCanvas"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
