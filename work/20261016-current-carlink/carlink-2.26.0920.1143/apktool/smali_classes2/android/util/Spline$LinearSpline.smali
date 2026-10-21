.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    array-length v1, p2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x2

    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    array-length v0, p1

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    new-array v1, v0, [F

    .line 20
    .line 21
    iput-object v1, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 27
    .line 28
    add-int/lit8 v3, v1, 0x1

    .line 29
    .line 30
    aget v4, p2, v3

    .line 31
    .line 32
    aget v5, p2, v1

    .line 33
    .line 34
    sub-float/2addr v4, v5

    .line 35
    aget v5, p1, v3

    .line 36
    .line 37
    aget v6, p1, v1

    .line 38
    .line 39
    sub-float/2addr v5, v6

    .line 40
    div-float/2addr v4, v5

    .line 41
    aput v4, v2, v1

    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 46
    .line 47
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "There must be at least two control points and the arrays must be of equal length."

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method


# virtual methods
.method public interpolate(F)F
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget v3, v1, v2

    .line 15
    .line 16
    cmpg-float v3, p1, v3

    .line 17
    .line 18
    if-gtz v3, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 21
    .line 22
    aget p1, p1, v2

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    aget v1, v1, v0

    .line 28
    .line 29
    cmpl-float v1, p1, v1

    .line 30
    .line 31
    if-ltz v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 34
    .line 35
    aget p1, p1, v0

    .line 36
    .line 37
    return p1

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 39
    .line 40
    add-int/lit8 v1, v2, 0x1

    .line 41
    .line 42
    aget v3, v0, v1

    .line 43
    .line 44
    cmpl-float v4, p1, v3

    .line 45
    .line 46
    if-ltz v4, :cond_4

    .line 47
    .line 48
    cmpl-float v0, p1, v3

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 53
    .line 54
    aget p1, p1, v1

    .line 55
    .line 56
    return p1

    .line 57
    :cond_3
    move v2, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 60
    .line 61
    aget v1, v1, v2

    .line 62
    .line 63
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 64
    .line 65
    aget v3, v3, v2

    .line 66
    .line 67
    aget v0, v0, v2

    .line 68
    .line 69
    invoke-static {p1, v0, v3, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LinearSpline{["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    const-string v3, ", "

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string v4, "("

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 27
    .line 28
    aget v4, v4, v2

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 37
    .line 38
    aget v3, v3, v2

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v1, -0x1

    .line 44
    .line 45
    if-ge v2, v3, :cond_1

    .line 46
    .line 47
    const-string v3, ": "

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 53
    .line 54
    aget v3, v3, v2

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_1
    const-string v3, ")"

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "]}"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
