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

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method public animateValue(F)V
    .locals 0

    return-void
.end method

.method public animationFrame(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1

    .line 2
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v2, p1, v1

    .line 3
    iget-wide v4, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    move-wide v4, v6

    goto :goto_0

    :cond_0
    sub-long v4, p1, v4

    .line 4
    :goto_0
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    move-object v1, p0

    .line 5
    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public initAnimation()V
    .locals 0

    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 2
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
