.class public Landroid/view/animation/BounceInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

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
.method public createNativeInterpolator()J
    .locals 2

    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createBounceInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 1

    .line 1
    const v0, 0x3f8fb15b    # 1.1226f

    .line 2
    .line 3
    .line 4
    mul-float/2addr p1, v0

    .line 5
    const v0, 0x3eb4fdf4    # 0.3535f

    .line 6
    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    const v0, 0x3f3da512    # 0.7408f

    .line 18
    .line 19
    .line 20
    cmpg-float v0, p1, v0

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    const v0, 0x3f0c14a5

    .line 25
    .line 26
    .line 27
    sub-float/2addr p1, v0

    .line 28
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const v0, 0x3f333333    # 0.7f

    .line 33
    .line 34
    .line 35
    :goto_0
    add-float/2addr p1, v0

    .line 36
    return p1

    .line 37
    :cond_1
    const v0, 0x3f76e2eb    # 0.9644f

    .line 38
    .line 39
    .line 40
    cmpg-float v0, p1, v0

    .line 41
    .line 42
    if-gez v0, :cond_2

    .line 43
    .line 44
    const v0, 0x3f5a43fe    # 0.8526f

    .line 45
    .line 46
    .line 47
    sub-float/2addr p1, v0

    .line 48
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const v0, 0x3f666666    # 0.9f

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const v0, 0x3f859168    # 1.0435f

    .line 57
    .line 58
    .line 59
    sub-float/2addr p1, v0

    .line 60
    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const v0, 0x3f733333    # 0.95f

    .line 65
    .line 66
    .line 67
    goto :goto_0
.end method
