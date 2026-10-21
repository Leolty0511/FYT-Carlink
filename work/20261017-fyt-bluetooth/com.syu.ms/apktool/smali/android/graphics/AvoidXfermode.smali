.class public Landroid/graphics/AvoidXfermode;
.super Landroid/graphics/Xfermode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/AvoidXfermode$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(IILandroid/graphics/AvoidXfermode$Mode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    if-ltz p2, :cond_0

    const/16 v0, 0xff

    if-gt p2, v0, :cond_0

    .line 2
    iget p3, p3, Landroid/graphics/AvoidXfermode$Mode;->nativeInt:I

    invoke-static {p1, p2, p3}, Landroid/graphics/AvoidXfermode;->nativeCreate(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/Xfermode;->native_instance:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tolerance must be 0..255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCreate(III)I
.end method
