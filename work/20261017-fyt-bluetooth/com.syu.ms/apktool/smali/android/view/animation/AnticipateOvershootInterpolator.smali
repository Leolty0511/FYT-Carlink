.class public Landroid/view/animation/AnticipateOvershootInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    .line 4
    iput p1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-float/2addr p1, p2

    .line 6
    iput p1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Li/a;->AnticipateOvershootInterpolator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/4 v0, 0x1

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    mul-float/2addr p2, v0

    iput p2, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(FF)F
    .locals 2

    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static o(FF)F
    .locals 2

    mul-float v0, p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_0

    mul-float/2addr p1, v2

    .line 1
    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {p1, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->a(FF)F

    move-result p1

    :goto_0
    mul-float/2addr p1, v0

    return p1

    :cond_0
    mul-float/2addr p1, v2

    sub-float/2addr p1, v2

    .line 2
    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {p1, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->o(FF)F

    move-result p1

    add-float/2addr p1, v2

    goto :goto_0
.end method
