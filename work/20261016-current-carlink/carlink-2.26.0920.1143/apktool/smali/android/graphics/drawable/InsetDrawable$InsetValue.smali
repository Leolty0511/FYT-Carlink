.class final Landroid/graphics/drawable/InsetDrawable$InsetValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsetValue"
.end annotation


# instance fields
.field mDimension:I

.field final mFraction:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    .line 4
    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget v2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)I
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr p1, v0

    return p1
.end method

.method public scaleFromDensity(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method
