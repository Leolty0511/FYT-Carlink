.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public animateBasedOnTime(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 6
    .line 7
    sub-long v2, p1, v1

    .line 8
    .line 9
    iget-wide v4, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    cmp-long v1, v4, v6

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    move-wide v4, v6

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-long v4, p1, v4

    .line 20
    .line 21
    :goto_0
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 22
    .line 23
    move-object v1, p0

    .line 24
    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public animateValue(F)V
    .locals 0

    return-void
.end method

.method public initAnimation()V
    .locals 0

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 6
    .line 7
    sub-long p1, v0, p1

    .line 8
    .line 9
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/animation/TimeAnimator;->animateBasedOnTime(J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 4
    .line 5
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
