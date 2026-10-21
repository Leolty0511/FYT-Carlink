.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 4
    invoke-static {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;->nColorMatrixFilter(I[F)I

    move-result p1

    iput p1, p0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 5
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 6
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p1}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 8
    invoke-static {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;->nColorMatrixFilter(I[F)I

    move-result p1

    iput p1, p0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private static native nColorMatrixFilter(I[F)I
.end method

.method private static native nativeColorMatrixFilter([F)I
.end method
