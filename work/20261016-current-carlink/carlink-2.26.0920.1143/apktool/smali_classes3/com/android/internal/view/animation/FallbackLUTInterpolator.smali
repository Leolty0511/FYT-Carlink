.class public Lcom/android/internal/view/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final MAX_SAMPLE_POINTS:I = 0x12c


# instance fields
.field private final mLut:[F

.field private mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    .line 11
    .line 12
    return-void
.end method

.method private static createLUT(Landroid/animation/TimeInterpolator;J)[F
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0xf4240

    .line 10
    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    long-to-double p1, p1

    .line 15
    int-to-double v0, v0

    .line 16
    div-double/2addr p1, v0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    double-to-int p1, p1

    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 p2, 0x12c

    .line 28
    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    new-array p2, p1, [F

    .line 34
    .line 35
    add-int/lit8 v0, p1, -0x1

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    if-ge v1, p1, :cond_0

    .line 40
    .line 41
    int-to-float v2, v1

    .line 42
    div-float/2addr v2, v0

    .line 43
    invoke-interface {p0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    aput v2, p2, v1

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object p2
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mLut:[F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
