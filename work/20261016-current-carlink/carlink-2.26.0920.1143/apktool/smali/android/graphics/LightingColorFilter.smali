.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "SourceFile"


# instance fields
.field private mAdd:I

.field private mMul:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 5
    .line 6
    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 7
    .line 8
    return-void
.end method

.method private static native native_CreateLightingFilter(II)J
.end method


# virtual methods
.method public createNativeInstance()J
    .locals 2

    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorAdd()I
    .locals 1

    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    return v0
.end method

.method public getColorMultiply()I
    .locals 1

    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    return v0
.end method

.method public setColorAdd(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->discardNativeInstance()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColorMultiply(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->discardNativeInstance()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
