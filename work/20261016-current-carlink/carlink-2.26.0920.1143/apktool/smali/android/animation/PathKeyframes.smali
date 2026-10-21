.class public Landroid/animation/PathKeyframes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PathKeyframes$FloatKeyframesBase;,
        Landroid/animation/PathKeyframes$IntKeyframesBase;,
        Landroid/animation/PathKeyframes$SimpleKeyframes;
    }
.end annotation


# static fields
.field private static final EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_OFFSET:I = 0x0

.field private static final NUM_COMPONENTS:I = 0x3

.field private static final X_OFFSET:I = 0x1

.field private static final Y_OFFSET:I = 0x2


# instance fields
.field private mKeyframeData:[F

.field private mTempPointF:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The path must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static interpolate(FFF)F
    .locals 0

    invoke-static {p2, p1, p0, p1}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private interpolateInRange(FII)Landroid/graphics/PointF;
    .locals 3

    .line 1
    mul-int/lit8 p2, p2, 0x3

    .line 2
    .line 3
    mul-int/lit8 p3, p3, 0x3

    .line 4
    .line 5
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    .line 6
    .line 7
    add-int/lit8 v1, p2, 0x0

    .line 8
    .line 9
    aget v1, v0, v1

    .line 10
    .line 11
    add-int/lit8 v2, p3, 0x0

    .line 12
    .line 13
    aget v2, v0, v2

    .line 14
    .line 15
    sub-float/2addr p1, v1

    .line 16
    sub-float/2addr v2, v1

    .line 17
    div-float/2addr p1, v2

    .line 18
    add-int/lit8 v1, p2, 0x1

    .line 19
    .line 20
    aget v1, v0, v1

    .line 21
    .line 22
    add-int/lit8 v2, p3, 0x1

    .line 23
    .line 24
    aget v2, v0, v2

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x2

    .line 27
    .line 28
    aget p2, v0, p2

    .line 29
    .line 30
    add-int/lit8 p3, p3, 0x2

    .line 31
    .line 32
    aget p3, v0, p3

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p1, p2, p3}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object p2, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    .line 43
    .line 44
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    .line 48
    .line 49
    return-object p1
.end method

.method private pointForIndex(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    .line 10
    .line 11
    aget v0, v2, v0

    .line 12
    .line 13
    aget p1, v2, p1

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    .line 19
    .line 20
    return-object p1
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframes;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$1;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$1;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$3;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$3;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$2;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$2;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$4;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$4;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpg-float v2, p1, v1

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, v3, v4}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float v2, p1, v2

    .line 21
    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    add-int/lit8 v1, v0, -0x2

    .line 25
    .line 26
    sub-int/2addr v0, v4

    .line 27
    invoke-direct {p0, p1, v1, v0}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    cmpl-float v1, p1, v1

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-direct {p0, v3}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    if-nez v2, :cond_3

    .line 42
    .line 43
    sub-int/2addr v0, v4

    .line 44
    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_3
    sub-int/2addr v0, v4

    .line 50
    move v1, v3

    .line 51
    :goto_0
    if-gt v1, v0, :cond_6

    .line 52
    .line 53
    add-int v2, v1, v0

    .line 54
    .line 55
    div-int/lit8 v2, v2, 0x2

    .line 56
    .line 57
    iget-object v4, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    .line 58
    .line 59
    mul-int/lit8 v5, v2, 0x3

    .line 60
    .line 61
    add-int/2addr v5, v3

    .line 62
    aget v4, v4, v5

    .line 63
    .line 64
    cmpg-float v5, p1, v4

    .line 65
    .line 66
    if-gez v5, :cond_4

    .line 67
    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    cmpl-float v1, p1, v4

    .line 73
    .line 74
    if-lez v1, :cond_5

    .line 75
    .line 76
    add-int/lit8 v1, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    invoke-direct {p0, v2}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_6
    invoke-direct {p0, p1, v0, v1}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0

    return-void
.end method
