.class public Landroid/view/animation/BounceInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bounce(F)F
    .locals 1

    mul-float/2addr p0, p0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const v0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr p1, v0

    const v0, 0x3eb4fdf4    # 0.3535f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    return p1

    :cond_0
    const v0, 0x3f3da512    # 0.7408f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const v0, 0x3f0c14a5

    sub-float/2addr p1, v0

    .line 2
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    :goto_0
    add-float/2addr p1, v0

    return p1

    :cond_1
    const v0, 0x3f76e2eb    # 0.9644f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const v0, 0x3f5a43fe    # 0.8526f

    sub-float/2addr p1, v0

    .line 3
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_2
    const v0, 0x3f859168    # 1.0435f

    sub-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result p1

    const v0, 0x3f733333    # 0.95f

    goto :goto_0
.end method
