.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ORIENTATIONS:[F

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb    # (float)Math.PI
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    .line 5
    .line 6
    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    .line 7
    .line 8
    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Landroid/gesture/Instance;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-direct {p1, v0, v1, p0, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Landroid/gesture/Instance;->normalize()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Landroid/gesture/Instance;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-direct {p1, v0, v1, p0, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object p1
.end method

.method private normalize()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/gesture/Instance;->vector:[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v4, v1, :cond_0

    .line 8
    .line 9
    aget v5, v0, v4

    .line 10
    .line 11
    mul-float/2addr v5, v5

    .line 12
    add-float/2addr v2, v5

    .line 13
    add-int/lit8 v4, v4, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    float-to-double v4, v2

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    double-to-float v2, v4

    .line 22
    :goto_1
    if-ge v3, v1, :cond_1

    .line 23
    .line 24
    aget v4, v0, v3

    .line 25
    .line 26
    div-float/2addr v4, v2

    .line 27
    aput v4, v0, v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object p0

    return-object p0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/gesture/GestureStroke;

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-static {p1, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    aget v3, p1, v2

    .line 24
    .line 25
    aget v4, v1, v2

    .line 26
    .line 27
    sub-float/2addr v3, v4

    .line 28
    float-to-double v3, v3

    .line 29
    aget v5, p1, v0

    .line 30
    .line 31
    aget v6, v1, v0

    .line 32
    .line 33
    sub-float/2addr v5, v6

    .line 34
    float-to-double v5, v5

    .line 35
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    double-to-float v3, v3

    .line 40
    neg-float v4, v3

    .line 41
    if-eq p0, v2, :cond_1

    .line 42
    .line 43
    sget-object p0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    .line 44
    .line 45
    array-length p0, p0

    .line 46
    move v5, v0

    .line 47
    :goto_0
    if-ge v5, p0, :cond_1

    .line 48
    .line 49
    sget-object v6, Landroid/gesture/Instance;->ORIENTATIONS:[F

    .line 50
    .line 51
    aget v6, v6, v5

    .line 52
    .line 53
    sub-float/2addr v6, v3

    .line 54
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    cmpg-float v7, v7, v8

    .line 63
    .line 64
    if-gez v7, :cond_0

    .line 65
    .line 66
    move v4, v6

    .line 67
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    aget p0, v1, v0

    .line 71
    .line 72
    neg-float p0, p0

    .line 73
    aget v0, v1, v2

    .line 74
    .line 75
    neg-float v0, v0

    .line 76
    invoke-static {p1, p0, v0}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v4}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    .line 80
    .line 81
    .line 82
    return-object p1
.end method
