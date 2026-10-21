.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    return p0
.end method

.method public static acos(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static addOrThrow(II)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    if-lez p1, :cond_1

    .line 5
    .line 6
    const v0, 0x7fffffff

    .line 7
    .line 8
    .line 9
    sub-int/2addr v0, p1

    .line 10
    if-gt p0, v0, :cond_1

    .line 11
    .line 12
    add-int/2addr p0, p1

    .line 13
    return p0

    .line 14
    :cond_1
    if-gez p1, :cond_2

    .line 15
    .line 16
    const/high16 v0, -0x80000000

    .line 17
    .line 18
    sub-int/2addr v0, p1

    .line 19
    if-lt p0, v0, :cond_2

    .line 20
    .line 21
    add-int/2addr p0, p1

    .line 22
    return p0

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Addition overflow: "

    .line 26
    .line 27
    const-string v2, " + "

    .line 28
    .line 29
    invoke-static {v1, p0, v2, p1}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static asin(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static atan(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static atan2(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static constrain(FFF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static constrain(III)I
    .locals 0

    .line 2
    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static constrain(JJJ)J
    .locals 1

    .line 3
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    move-wide p0, p4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static cross(FFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method public static degrees(F)F
    .locals 1

    const v0, 0x42652ee2

    mul-float/2addr p0, v0

    return p0
.end method

.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dist(FFFFFF)F
    .locals 0

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p4, p3

    mul-float/2addr p5, p5

    add-float/2addr p5, p4

    float-to-double p0, p5

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dot(FFFF)F
    .locals 0

    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, p0

    return p1
.end method

.method public static exp(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static lerp(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static lerpDeg(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static log(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static mag(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static mag(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p1, p0

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    float-to-double p0, p2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static map(FFFFF)F
    .locals 0

    sub-float/2addr p3, p2

    sub-float/2addr p4, p0

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    mul-float/2addr p4, p3

    add-float/2addr p4, p2

    return p4
.end method

.method public static max(FF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static max(FFF)F
    .locals 1

    .line 2
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static max(II)F
    .locals 0

    .line 3
    if-le p0, p1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    :goto_0
    return p0
.end method

.method public static max(III)F
    .locals 0

    .line 4
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    int-to-float p0, p1

    :goto_2
    return p0
.end method

.method public static min(FF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static min(FFF)F
    .locals 1

    .line 2
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p0, p1, p2

    if-gez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static min(II)F
    .locals 0

    .line 3
    if-ge p0, p1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    :goto_0
    return p0
.end method

.method public static min(III)F
    .locals 0

    .line 4
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    int-to-float p0, p1

    :goto_2
    return p0
.end method

.method public static norm(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static pow(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static radians(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    return p0
.end method

.method public static sq(F)F
    .locals 0

    mul-float/2addr p0, p0

    return p0
.end method

.method public static tan(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
