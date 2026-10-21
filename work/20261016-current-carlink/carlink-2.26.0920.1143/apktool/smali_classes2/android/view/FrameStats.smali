.class public abstract Landroid/view/FrameStats;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED_TIME_NANO:J = -0x1L


# instance fields
.field protected mFramesPresentedTimeNano:[J

.field protected mRefreshPeriodNano:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEndTimeNano()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    aget-wide v1, v0, v1

    .line 16
    .line 17
    return-wide v1
.end method

.method public final getFrameCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getFramePresentedTimeNano(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    aget-wide v1, v0, p1

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final getRefreshPeriodNano()J
    .locals 2

    iget-wide v0, p0, Landroid/view/FrameStats;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method public final getStartTimeNano()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-wide v1, v0, v1

    .line 14
    .line 15
    return-wide v1
.end method
