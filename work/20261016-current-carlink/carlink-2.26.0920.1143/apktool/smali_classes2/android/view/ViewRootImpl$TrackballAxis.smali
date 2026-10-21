.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public collect(FJLjava/lang/String;)F
    .locals 8

    .line 1
    const/4 p4, 0x0

    .line 2
    cmpl-float v0, p1, p4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/high16 v2, 0x43160000    # 150.0f

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    mul-float/2addr v2, p1

    .line 14
    float-to-long v6, v2

    .line 15
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 20
    .line 21
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 22
    .line 23
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 24
    .line 25
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 26
    .line 27
    :cond_0
    const/4 p4, 0x1

    .line 28
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    cmpg-float v0, p1, p4

    .line 32
    .line 33
    if-gez v0, :cond_3

    .line 34
    .line 35
    neg-float v0, p1

    .line 36
    mul-float/2addr v0, v2

    .line 37
    float-to-long v6, v0

    .line 38
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 39
    .line 40
    if-lez v0, :cond_2

    .line 41
    .line 42
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 43
    .line 44
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 45
    .line 46
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 47
    .line 48
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 49
    .line 50
    :cond_2
    const/4 p4, -0x1

    .line 51
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move-wide v6, v3

    .line 55
    :goto_0
    cmp-long p4, v6, v3

    .line 56
    .line 57
    if-lez p4, :cond_9

    .line 58
    .line 59
    iget-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 60
    .line 61
    sub-long v0, p2, v0

    .line 62
    .line 63
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 64
    .line 65
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 66
    .line 67
    cmp-long p3, v0, v6

    .line 68
    .line 69
    const p4, 0x3ccccccd    # 0.025f

    .line 70
    .line 71
    .line 72
    if-gez p3, :cond_6

    .line 73
    .line 74
    sub-long/2addr v6, v0

    .line 75
    long-to-float p3, v6

    .line 76
    mul-float/2addr p3, p4

    .line 77
    cmpl-float p4, p3, v5

    .line 78
    .line 79
    if-lez p4, :cond_4

    .line 80
    .line 81
    mul-float/2addr p2, p3

    .line 82
    :cond_4
    const/high16 p3, 0x41a00000    # 20.0f

    .line 83
    .line 84
    cmpg-float p4, p2, p3

    .line 85
    .line 86
    if-gez p4, :cond_5

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    move p2, p3

    .line 90
    :goto_1
    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    sub-long/2addr v0, v6

    .line 94
    long-to-float p3, v0

    .line 95
    mul-float/2addr p3, p4

    .line 96
    cmpl-float p4, p3, v5

    .line 97
    .line 98
    if-lez p4, :cond_7

    .line 99
    .line 100
    div-float/2addr p2, p3

    .line 101
    :cond_7
    cmpl-float p3, p2, v5

    .line 102
    .line 103
    if-lez p3, :cond_8

    .line 104
    .line 105
    move v5, p2

    .line 106
    :cond_8
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 107
    .line 108
    :cond_9
    :goto_2
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 109
    .line 110
    add-float/2addr p2, p1

    .line 111
    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 112
    .line 113
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    return p1
.end method

.method public generate()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 3
    .line 4
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmpl-float v2, v1, v2

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    move v2, v3

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v2, -0x1

    .line 15
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 16
    .line 17
    if-eqz v4, :cond_5

    .line 18
    .line 19
    if-eq v4, v3, :cond_3

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    .line 27
    cmpg-float v1, v1, v3

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    add-int/2addr v0, v2

    .line 33
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    mul-float/2addr v2, v3

    .line 37
    sub-float/2addr v1, v2

    .line 38
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 39
    .line 40
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 41
    .line 42
    const v2, 0x3f8ccccd    # 1.1f

    .line 43
    .line 44
    .line 45
    mul-float/2addr v2, v1

    .line 46
    const/high16 v3, 0x41a00000    # 20.0f

    .line 47
    .line 48
    cmpg-float v3, v2, v3

    .line 49
    .line 50
    if-gez v3, :cond_2

    .line 51
    .line 52
    move v1, v2

    .line 53
    :cond_2
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/high16 v3, 0x40000000    # 2.0f

    .line 61
    .line 62
    cmpg-float v1, v1, v3

    .line 63
    .line 64
    if-gez v1, :cond_4

    .line 65
    .line 66
    return v0

    .line 67
    :cond_4
    add-int/2addr v0, v2

    .line 68
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 69
    .line 70
    add-int/2addr v1, v2

    .line 71
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 72
    .line 73
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 74
    .line 75
    int-to-float v2, v2

    .line 76
    mul-float/2addr v2, v3

    .line 77
    sub-float/2addr v1, v2

    .line 78
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/high16 v4, 0x3f000000    # 0.5f

    .line 89
    .line 90
    cmpg-float v1, v1, v4

    .line 91
    .line 92
    if-gez v1, :cond_6

    .line 93
    .line 94
    return v0

    .line 95
    :cond_6
    add-int/2addr v0, v2

    .line 96
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 97
    .line 98
    add-int/2addr v1, v2

    .line 99
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 100
    .line 101
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 102
    .line 103
    goto :goto_0
.end method

.method public reset(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 11
    .line 12
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 16
    .line 17
    return-void
.end method
