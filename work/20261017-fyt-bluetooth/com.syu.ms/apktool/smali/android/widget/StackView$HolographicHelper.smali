.class Landroid/widget/StackView$HolographicHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolographicHelper"
.end annotation


# static fields
.field private static final CLICK_FEEDBACK:I = 0x1

.field private static final RES_OUT:I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDensity:F

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private final mIdentityMatrix:Landroid/graphics/Matrix;

.field private mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mTmpXY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 4
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 6
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 7
    iput-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mTmpXY:[I

    .line 8
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v2, 0x0

    const/16 v3, 0x1e

    .line 11
    invoke-static {v2, v3}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 12
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 13
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 14
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    iget v0, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Landroid/widget/StackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 15
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    iget v0, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Landroid/widget/StackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    return-void
.end method


# virtual methods
.method public createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Landroid/widget/StackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 3
    iget-object p2, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Landroid/widget/StackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 6
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotationX(F)V

    .line 12
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    .line 13
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 15
    iget-object v4, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    iget-object p1, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Landroid/widget/StackView$HolographicHelper;->drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 21
    iget-object p1, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_3
    :goto_1
    return-object p3
.end method

.method public createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mTmpXY:[I

    .line 2
    iget-object v1, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    aget v4, v0, v3

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 5
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p2, p0, Landroid/widget/StackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 7
    aget p2, v0, v3

    int-to-float p2, p2

    aget v0, v0, v5

    int-to-float v0, v0

    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8
    iget-object p1, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
