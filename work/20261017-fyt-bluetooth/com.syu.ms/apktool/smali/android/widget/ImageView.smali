.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAdjustViewBoundsCompat:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    new-array v0, v6, [Landroid/graphics/Matrix$ScaleToFit;

    .line 2
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 3
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 4
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 6
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    const/16 v0, 0x100

    .line 8
    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 9
    iput-boolean p1, p0, Landroid/widget/ImageView;->mColorMod:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object v0, p0, Landroid/widget/ImageView;->mState:[I

    .line 12
    iput-boolean p1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 13
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 14
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 18
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 19
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 20
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 24
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 25
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    const v1, 0x7fffffff

    .line 26
    iput v1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 27
    iput v1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    const/16 v2, 0xff

    .line 28
    iput v2, p0, Landroid/widget/ImageView;->mAlpha:I

    const/16 v3, 0x100

    .line 29
    iput v3, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 30
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    const/4 v3, 0x0

    .line 31
    iput-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v3, p0, Landroid/widget/ImageView;->mState:[I

    .line 33
    iput-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 34
    iput v0, p0, Landroid/widget/ImageView;->mLevel:I

    .line 35
    iput-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 37
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v3, -0x1

    .line 38
    iput v3, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 39
    iput-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 40
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    .line 41
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 42
    sget-object v4, Li/a;->ImageView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p2, 0x6

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    const/16 p2, 0x8

    .line 46
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ImageView;->mBaseline:I

    const/4 p2, 0x2

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 p2, 0x3

    .line 48
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const/4 p2, 0x4

    .line 49
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 p2, 0x1

    .line 50
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 51
    sget-object p3, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, p3, p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const/4 p2, 0x5

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    const/16 p2, 0x9

    .line 54
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v2, :cond_3

    .line 55
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_3
    const/4 p2, 0x7

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyColorMod()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 5
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 3
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    if-ltz v0, :cond_1

    if-ne v2, v0, :cond_2

    :cond_1
    if-ltz v1, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-lez v0, :cond_d

    if-lez v1, :cond_d

    .line 6
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_4

    goto/16 :goto_4

    .line 7
    :cond_4
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v7, :cond_6

    .line 9
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    .line 11
    :cond_5
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 12
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    .line 13
    :cond_7
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v4, v7, :cond_8

    .line 14
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    .line 15
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_5

    .line 16
    :cond_8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x0

    if-ne v4, v7, :cond_a

    .line 17
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    mul-int v7, v0, v3

    mul-int v8, v2, v1

    if-le v7, v8, :cond_9

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, v5

    move v2, v6

    move v6, v1

    goto :goto_2

    :cond_9
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    move v3, v0

    .line 18
    :goto_2
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 19
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float/2addr v6, v5

    float-to-int v1, v6

    int-to-float v1, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 20
    :cond_a
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v7, :cond_c

    .line 21
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-gt v0, v2, :cond_b

    if-gt v1, v3, :cond_b

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_b
    int-to-float v4, v2

    int-to-float v6, v0

    div-float/2addr v4, v6

    int-to-float v6, v3

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 22
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_3
    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v0, v2

    int-to-float v0, v0

    int-to-float v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v1, v2

    int-to-float v1, v1

    .line 23
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 24
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 25
    :cond_c
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v4, v6, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 28
    iget-object v1, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v3}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_5

    .line 29
    :cond_d
    :goto_4
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    :cond_e
    :goto_5
    return-void
.end method

.method private initImageView()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    return-void
.end method

.method private resizeFromDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gez v0, :cond_1

    .line 5
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 6
    :cond_1
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_3

    .line 7
    :cond_2
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 8
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method private resolveUri()V
    .locals 7

    const-string v0, "Unable to close content: "

    .line 1
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v3, 0x0

    const-string v4, "ImageView"

    if-eqz v2, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    iput-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto/16 :goto_5

    .line 7
    :cond_2
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "Unable to open content: "

    if-eqz v2, :cond_4

    .line 10
    :try_start_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v0

    .line 11
    iget-object v1, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v0, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    move-object v0, v3

    goto/16 :goto_4

    :cond_4
    const-string v2, "content"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 15
    :cond_6
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    .line 17
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    move-object v0, v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v1, v3

    .line 19
    :goto_3
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    .line 20
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :goto_4
    if-nez v0, :cond_8

    .line 22
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    iput-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    :cond_8
    move-object v3, v0

    .line 24
    :goto_5
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_1
    move-exception v2

    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_9

    .line 25
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :cond_9
    :goto_7
    throw v2

    :cond_a
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget p0, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 13
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 14
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    :goto_1
    return-void
.end method


# virtual methods
.method public final clearColorFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_2

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget-boolean v1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v1, :cond_3

    .line 9
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 10
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 11
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/view/View;->mRight:I

    add-int/2addr v1, v5

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v5

    iget v5, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v2, v5

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v5

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v2, v5

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 12
    :cond_3
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 15
    :cond_4
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 4
    iget-object v5, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_0

    const/4 v3, -0x1

    .line 5
    iput v3, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 6
    iput v3, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    move v10, v6

    move v3, v8

    move v4, v3

    move v5, v4

    move v9, v5

    goto :goto_2

    .line 7
    :cond_0
    iget v5, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 8
    iget v9, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-gtz v9, :cond_2

    const/4 v9, 0x1

    .line 9
    :cond_2
    iget-boolean v10, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz v10, :cond_5

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v3, v10, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v8

    :goto_0
    if-eq v4, v10, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v8

    :goto_1
    int-to-float v10, v5

    int-to-float v11, v9

    div-float/2addr v10, v11

    goto :goto_2

    :cond_5
    move v10, v6

    move v3, v8

    move v4, v3

    .line 10
    :goto_2
    iget v11, v0, Landroid/view/View;->mPaddingLeft:I

    .line 11
    iget v12, v0, Landroid/view/View;->mPaddingRight:I

    .line 12
    iget v13, v0, Landroid/view/View;->mPaddingTop:I

    .line 13
    iget v14, v0, Landroid/view/View;->mPaddingBottom:I

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr v11, v12

    add-int/2addr v5, v11

    add-int/2addr v13, v14

    add-int/2addr v9, v13

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 16
    invoke-static {v3, v1, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 17
    invoke-static {v4, v2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    goto/16 :goto_5

    :cond_7
    :goto_3
    add-int/2addr v5, v11

    add-int/2addr v5, v12

    .line 18
    iget v15, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v5, v15, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v5

    add-int/2addr v9, v13

    add-int/2addr v9, v14

    .line 19
    iget v15, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v9, v15, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    cmpl-float v6, v10, v6

    if-eqz v6, :cond_b

    sub-int v6, v5, v11

    sub-int/2addr v6, v12

    int-to-float v6, v6

    sub-int v15, v9, v13

    sub-int/2addr v15, v14

    int-to-float v15, v15

    div-float/2addr v6, v15

    sub-float/2addr v6, v10

    .line 20
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v7, v6

    const-wide v16, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v7, v16

    if-lez v6, :cond_b

    if-eqz v3, :cond_9

    mul-float/2addr v15, v10

    float-to-int v6, v15

    add-int/2addr v6, v11

    add-int/2addr v6, v12

    if-nez v4, :cond_8

    .line 21
    iget-boolean v7, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    if-nez v7, :cond_8

    .line 22
    iget v5, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v6, v5, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v1

    move v5, v1

    :cond_8
    if-gt v6, v5, :cond_9

    move v5, v6

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_b

    if-eqz v4, :cond_b

    sub-int v1, v5, v11

    sub-int/2addr v1, v12

    int-to-float v1, v1

    div-float/2addr v1, v10

    float-to-int v1, v1

    add-int/2addr v1, v13

    add-int/2addr v1, v14

    if-nez v3, :cond_a

    .line 23
    iget-boolean v3, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    if-nez v3, :cond_a

    .line 24
    iget v3, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    :cond_a
    if-gt v1, v9, :cond_b

    move v2, v1

    move v1, v5

    goto :goto_5

    :cond_b
    move v1, v5

    move v2, v9

    .line 25
    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    .line 1
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 4
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 6
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    return p1
.end method

.method public setImageAlpha(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 4
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 5
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, p1, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-eq v0, p1, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 4
    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 5
    iget p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 6
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 7
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 8
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setImageState([IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 2
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 3
    iget-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 4
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 5
    iget p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 6
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 7
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 8
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 3
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 3
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 4
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
