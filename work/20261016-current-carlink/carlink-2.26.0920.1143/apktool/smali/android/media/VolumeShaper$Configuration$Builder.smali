.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:D

.field private mId:I

.field private mInterpolatorType:I

.field private mOptionFlags:I

.field private mTimes:[F

.field private mType:I

.field private mVolumes:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 5
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 6
    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 8
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Configuration;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 13
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 14
    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 16
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 17
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 18
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 19
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 20
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 21
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 22
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 23
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object p1

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-void
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Configuration;
    .locals 14

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 11
    .line 12
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    .line 18
    .line 19
    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 20
    .line 21
    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 22
    .line 23
    iget v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 24
    .line 25
    iget-wide v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 26
    .line 27
    iget v10, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 28
    .line 29
    iget-object v11, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 30
    .line 31
    iget-object v12, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    move-object v4, v0

    .line 35
    invoke-direct/range {v4 .. v13}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$1;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 12
    .line 13
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 14
    .line 15
    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 19
    .line 20
    aget v0, v0, v2

    .line 21
    .line 22
    move v3, v1

    .line 23
    move v1, v0

    .line 24
    :goto_1
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 25
    .line 26
    array-length v5, v4

    .line 27
    if-ge v3, v5, :cond_3

    .line 28
    .line 29
    aget v4, v4, v3

    .line 30
    .line 31
    cmpg-float v5, v4, v1

    .line 32
    .line 33
    if-gez v5, :cond_1

    .line 34
    .line 35
    move v1, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    cmpl-float v5, v4, v0

    .line 38
    .line 39
    if-lez v5, :cond_2

    .line 40
    .line 41
    move v0, v4

    .line 42
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    add-float/2addr v0, v1

    .line 46
    :goto_3
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 47
    .line 48
    array-length v3, v1

    .line 49
    if-ge v2, v3, :cond_4

    .line 50
    .line 51
    aget v3, v1, v2

    .line 52
    .line 53
    sub-float v3, v0, v3

    .line 54
    .line 55
    aput v3, v1, v2

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    return-object p0
.end method

.method public reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 12
    .line 13
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 14
    .line 15
    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 16
    .line 17
    .line 18
    :goto_1
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 19
    .line 20
    array-length v3, v0

    .line 21
    div-int/lit8 v3, v3, 0x2

    .line 22
    .line 23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    aget v3, v0, v2

    .line 28
    .line 29
    array-length v5, v0

    .line 30
    sub-int/2addr v5, v1

    .line 31
    sub-int/2addr v5, v2

    .line 32
    aget v5, v0, v5

    .line 33
    .line 34
    sub-float v5, v4, v5

    .line 35
    .line 36
    aput v5, v0, v2

    .line 37
    .line 38
    array-length v5, v0

    .line 39
    sub-int/2addr v5, v1

    .line 40
    sub-int/2addr v5, v2

    .line 41
    sub-float/2addr v4, v3

    .line 42
    aput v4, v0, v5

    .line 43
    .line 44
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 45
    .line 46
    aget v3, v0, v2

    .line 47
    .line 48
    array-length v4, v0

    .line 49
    sub-int/2addr v4, v1

    .line 50
    sub-int/2addr v4, v2

    .line 51
    aget v4, v0, v4

    .line 52
    .line 53
    aput v4, v0, v2

    .line 54
    .line 55
    array-length v4, v0

    .line 56
    sub-int/2addr v4, v1

    .line 57
    sub-int/2addr v4, v2

    .line 58
    aput v3, v0, v4

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    array-length v3, v0

    .line 64
    and-int/2addr v1, v3

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    aget v1, v0, v2

    .line 68
    .line 69
    sub-float/2addr v4, v1

    .line 70
    aput v4, v0, v2

    .line 71
    .line 72
    :cond_2
    return-object p0
.end method

.method public scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 12
    .line 13
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 14
    .line 15
    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->access$200(FZ)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 22
    .line 23
    aget v4, v3, v2

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    sub-int/2addr v5, v1

    .line 27
    aget v1, v3, v5

    .line 28
    .line 29
    cmpl-float v3, v1, v4

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    sub-float/2addr p1, v4

    .line 34
    :goto_1
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    if-ge v2, v3, :cond_2

    .line 38
    .line 39
    aget v3, v1, v2

    .line 40
    .line 41
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 42
    .line 43
    aget v4, v4, v2

    .line 44
    .line 45
    mul-float/2addr v4, p1

    .line 46
    add-float/2addr v4, v3

    .line 47
    aput v4, v1, v2

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sub-float/2addr p1, v4

    .line 53
    sub-float/2addr v1, v4

    .line 54
    div-float/2addr p1, v1

    .line 55
    :goto_2
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 56
    .line 57
    array-length v3, v1

    .line 58
    if-ge v2, v3, :cond_2

    .line 59
    .line 60
    aget v3, v1, v2

    .line 61
    .line 62
    invoke-static {v3, v4, p1, v4}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    aput v3, v1, v2

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 72
    .line 73
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->access$300([FZ)V

    .line 74
    .line 75
    .line 76
    return-object p0
.end method

.method public scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 12
    .line 13
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 14
    .line 15
    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->access$200(FZ)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 22
    .line 23
    aget v4, v3, v2

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    sub-int/2addr v5, v1

    .line 27
    aget v1, v3, v5

    .line 28
    .line 29
    cmpl-float v3, v1, v4

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    sub-float/2addr p1, v4

    .line 34
    :goto_1
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    if-ge v2, v3, :cond_2

    .line 38
    .line 39
    aget v3, v1, v2

    .line 40
    .line 41
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 42
    .line 43
    aget v4, v4, v2

    .line 44
    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-static {v5, v4, p1, v3}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    aput v3, v1, v2

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sub-float/2addr p1, v1

    .line 57
    sub-float/2addr v4, v1

    .line 58
    div-float/2addr p1, v4

    .line 59
    :goto_2
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 60
    .line 61
    array-length v4, v3

    .line 62
    if-ge v2, v4, :cond_2

    .line 63
    .line 64
    aget v4, v3, v2

    .line 65
    .line 66
    invoke-static {v4, v1, p1, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    aput v4, v3, v2

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 76
    .line 77
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->access$300([FZ)V

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method public setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v2

    .line 10
    :goto_0
    invoke-static {p1, p2, v1, v2}, Landroid/media/VolumeShaper$Configuration;->access$100([F[FZZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [F

    .line 18
    .line 19
    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 20
    .line 21
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [F

    .line 26
    .line 27
    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 28
    .line 29
    return-object p0
.end method

.method public setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    long-to-double p1, p1

    .line 8
    iput-wide p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "duration: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " not positive"

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string/jumbo v1, "invalid id: "

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v1, "invalid interpolatorType: "

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 27
    .line 28
    return-object p0
.end method

.method public setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 2

    .line 1
    and-int/lit8 v0, p1, -0x4

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x4

    .line 8
    .line 9
    or-int/2addr p1, v0

    .line 10
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v1, "invalid bits in flag: "

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method
