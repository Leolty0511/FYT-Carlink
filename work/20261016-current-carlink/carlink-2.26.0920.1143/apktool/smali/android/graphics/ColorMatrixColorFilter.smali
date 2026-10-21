.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "SourceFile"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 4
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 6
    array-length v1, p1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method


# virtual methods
.method public createNativeInstance()J
    .locals 2

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->discardNativeInstance()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setColorMatrixArray([F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->discardNativeInstance()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/16 v1, 0x14

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
