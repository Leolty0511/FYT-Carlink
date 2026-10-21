.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
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

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 6
    .line 7
    new-instance v0, Landroid/widget/TextView$Marquee$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/TextView$Marquee$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 20
    .line 21
    new-instance v0, Landroid/widget/TextView$Marquee$3;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .line 42
    const/high16 v1, 0x41f00000    # 30.0f

    .line 43
    .line 44
    mul-float/2addr v0, v1

    .line 45
    iput v0, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    .line 46
    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 59
    .line 60
    return-void
.end method

.method public static synthetic access$500(Landroid/widget/TextView$Marquee;)B
    .locals 0

    iget-byte p0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p0
.end method

.method public static synthetic access$502(Landroid/widget/TextView$Marquee;B)B
    .locals 0

    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p1
.end method

.method public static synthetic access$602(Landroid/widget/TextView$Marquee;J)J
    .locals 0

    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    return-wide p1
.end method

.method public static synthetic access$700(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/TextView$Marquee;)I
    .locals 0

    iget p0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return p0
.end method

.method public static synthetic access$810(Landroid/widget/TextView$Marquee;)I
    .locals 2

    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return v0
.end method

.method private resetScroll()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public getGhostOffset()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method public getMaxFadeScroll()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method public getScroll()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method public isRunning()Z
    .locals 2

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
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Landroid/text/Layout;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sub-int/2addr v0, v1

    .line 40
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v0, v1

    .line 45
    invoke-static {p1}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Landroid/text/Layout;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-float v0, v0

    .line 55
    const/high16 v2, 0x40400000    # 3.0f

    .line 56
    .line 57
    div-float v2, v0, v2

    .line 58
    .line 59
    sub-float v3, v1, v0

    .line 60
    .line 61
    add-float/2addr v3, v2

    .line 62
    iput v3, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 63
    .line 64
    add-float v4, v3, v0

    .line 65
    .line 66
    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 67
    .line 68
    add-float/2addr v2, v1

    .line 69
    iput v2, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 70
    .line 71
    const/high16 v2, 0x40c00000    # 6.0f

    .line 72
    .line 73
    div-float/2addr v0, v2

    .line 74
    add-float/2addr v0, v1

    .line 75
    iput v0, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 76
    .line 77
    add-float/2addr v3, v1

    .line 78
    add-float/2addr v3, v1

    .line 79
    iput v3, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 85
    .line 86
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 19
    .line 20
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public tick()V
    .locals 5

    .line 1
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iget-wide v3, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    .line 43
    .line 44
    sub-long v3, v1, v3

    .line 45
    .line 46
    iput-wide v1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    .line 47
    .line 48
    long-to-float v1, v3

    .line 49
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 50
    .line 51
    div-float/2addr v1, v2

    .line 52
    iget v2, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    .line 53
    .line 54
    mul-float/2addr v1, v2

    .line 55
    iget v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 56
    .line 57
    add-float/2addr v2, v1

    .line 58
    iput v2, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 59
    .line 60
    iget v1, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 61
    .line 62
    cmpl-float v2, v2, v1

    .line 63
    .line 64
    if-lez v2, :cond_2

    .line 65
    .line 66
    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 67
    .line 68
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 69
    .line 70
    iget-object v2, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 71
    .line 72
    const-wide/16 v3, 0x4b0

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 79
    .line 80
    iget-object v2, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method
