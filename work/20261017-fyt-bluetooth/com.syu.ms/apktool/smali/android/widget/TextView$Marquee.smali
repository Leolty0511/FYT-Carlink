.class final Landroid/widget/TextView$Marquee;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_PIXELS_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RESOLUTION:I = 0x21

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B = 0x0t

.field private static final MESSAGE_RESTART:I = 0x3

.field private static final MESSAGE_START:I = 0x1

.field private static final MESSAGE_TICK:I = 0x2


# instance fields
.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private mRepeatLimit:I

.field private mScroll:F

.field private final mScrollUnit:F

.field private mStatus:B

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42040000    # 33.0f

    div-float/2addr v0, v1

    .line 4
    iput v0, p0, Landroid/widget/TextView$Marquee;->mScrollUnit:F

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private resetScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 2
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getGhostOffset()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method public getMaxFadeScroll()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method public getScroll()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-ne p1, v1, :cond_4

    .line 3
    iget p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    if-ltz p1, :cond_1

    sub-int/2addr p1, v0

    .line 4
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 5
    :cond_1
    iget p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->tick()V

    goto :goto_0

    .line 7
    :cond_3
    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->tick()V

    :cond_4
    :goto_0
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldDrawGhost()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldDrawLeftFade()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(I)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 3
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    invoke-static {p1}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v1, v3

    sub-float v4, v2, v1

    add-float/2addr v4, v3

    .line 9
    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float v5, v4, v1

    .line 10
    iput v5, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    add-float/2addr v3, v2

    .line 11
    iput v3, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 12
    iput v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    add-float/2addr v4, v2

    add-float/2addr v4, v2

    .line 13
    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const-wide/16 v1, 0x4b0

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    return-void
.end method

.method public tick()V
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    :cond_1
    iget v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v3, p0, Landroid/widget/TextView$Marquee;->mScrollUnit:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 6
    iget v3, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 7
    iput v3, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    const/4 v1, 0x3

    const-wide/16 v2, 0x4b0

    .line 8
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x21

    .line 9
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
