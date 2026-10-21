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
.field public static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field public static final FAST_MOVE_TIME:J = 0x96L

.field public static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field public static final MAX_ACCELERATION:F = 20.0f

.field public static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field public static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field public acceleration:F

.field public dir:I

.field public lastMoveTime:J

.field public nonAccelMovement:I

.field public position:F

.field public step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method public collect(FJLjava/lang/String;)F
    .locals 8

    const/4 p4, 0x0

    cmpl-float v0, p1, p4

    const/4 v1, 0x0

    const/high16 v2, 0x43160000    # 150.0f

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    mul-float/2addr v2, p1

    float-to-long v6, v2

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v0, :cond_0

    .line 2
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 3
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    :cond_0
    const/4 p4, 0x1

    .line 6
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, p4

    if-gez v0, :cond_3

    neg-float v0, p1

    mul-float/2addr v0, v2

    float-to-long v6, v0

    .line 7
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v0, :cond_2

    .line 8
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 9
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 10
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 11
    iput-wide v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    :cond_2
    const/4 p4, -0x1

    .line 12
    iput p4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    :cond_3
    move-wide v6, v3

    :goto_0
    cmp-long p4, v6, v3

    if-lez p4, :cond_9

    .line 13
    iget-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v0, p2, v0

    .line 14
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 15
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    cmp-long p3, v0, v6

    const p4, 0x3ccccccd    # 0.025f

    if-gez p3, :cond_6

    sub-long/2addr v6, v0

    long-to-float p3, v6

    mul-float/2addr p3, p4

    cmpl-float p4, p3, v5

    if-lez p4, :cond_4

    mul-float/2addr p2, p3

    :cond_4
    const/high16 p3, 0x41a00000    # 20.0f

    cmpg-float p4, p2, p3

    if-gez p4, :cond_5

    goto :goto_1

    :cond_5
    move p2, p3

    .line 16
    :goto_1
    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    :cond_6
    sub-long/2addr v0, v6

    long-to-float p3, v0

    mul-float/2addr p3, p4

    cmpl-float p4, p3, v5

    if-lez p4, :cond_7

    div-float/2addr p2, p3

    :cond_7
    cmpl-float p3, p2, v5

    if-lez p3, :cond_8

    move v5, p2

    .line 17
    :cond_8
    iput v5, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 18
    :cond_9
    :goto_2
    iget p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public generate()I
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 2
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_3

    .line 4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v2

    .line 5
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 6
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    move v1, v2

    .line 7
    :cond_2
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    return v0

    :cond_4
    add-int/2addr v0, v2

    .line 9
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 10
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v1, 0x2

    .line 11
    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    return v0

    :cond_6
    add-int/2addr v0, v2

    .line 13
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 14
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0
.end method

.method public reset(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    return-void
.end method
