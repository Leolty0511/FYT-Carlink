.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GradientState"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field public mChangingConfigurations:I

.field public mColors:[I

.field public mGradient:I

.field private mGradientRadius:F

.field public mHasSolidColor:Z

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field private mOpaque:Z

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColor:I

.field public mStrokeColor:I

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field public mThickness:I

.field public mThicknessRatio:F

.field private mUseLevel:Z

.field private mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 14
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 16
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 17
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 19
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 20
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 21
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 22
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 23
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 24
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 25
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 27
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 29
    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 30
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    .line 31
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 32
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 33
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 34
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 35
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 36
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 38
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 40
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 41
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 42
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 43
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 44
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 45
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 46
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 47
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 48
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 49
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 50
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 51
    iget-boolean p1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 3
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 5
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 6
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 8
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 9
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 10
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 11
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setColors([I)V

    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return p0
.end method

.method public static synthetic access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return p0
.end method

.method public static synthetic access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return p0
.end method

.method public static synthetic access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return p1
.end method

.method public static synthetic access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return p0
.end method

.method public static synthetic access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return p1
.end method

.method public static synthetic access$500(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return p0
.end method

.method public static synthetic access$502(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return p1
.end method

.method public static synthetic access$600(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method private computeOpacity()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void

    .line 3
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_6

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void

    .line 6
    :cond_2
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v0, :cond_5

    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 10
    aget v2, v2, v0

    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void

    .line 13
    :cond_6
    :goto_1
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return-void
.end method

.method private static isOpaque(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object p1
.end method

.method public setColors([I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 2
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 1
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 2
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return-void
.end method

.method public setGradientRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return-void
.end method

.method public setGradientType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return-void
.end method

.method public setShape(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return-void
.end method

.method public setSolidColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 2
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setStroke(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setStroke(IIFF)V
    .locals 0

    .line 4
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 5
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 6
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 7
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 8
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method
