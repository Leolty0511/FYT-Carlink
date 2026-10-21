.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>([FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)I

    move-result p1

    iput p1, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private static native nativeCreate([FF)I
.end method
