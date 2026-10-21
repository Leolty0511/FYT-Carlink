.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$Slider;,
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private final mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mThreshold:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 7
    new-instance v1, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 9
    sget-object v1, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    .line 14
    new-instance p1, Lcom/android/internal/widget/SlidingTab$Slider;

    const p2, 0x108052d

    const v0, 0x108051c

    const v1, 0x108053b

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 15
    new-instance p1, Lcom/android/internal/widget/SlidingTab$Slider;

    const p2, 0x1080536

    const v0, 0x1080525

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/internal/widget/SlidingTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object p0
.end method

.method private cancelGrab()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x28

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SlidingTab"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private moveHandle(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    float-to-int p1, p1

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sub-int/2addr p1, p2

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    div-int/lit8 p2, p2, 0x2

    .line 30
    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    float-to-int p1, p2

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int/2addr p1, p2

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    div-int/lit8 p2, p2, 0x2

    .line 50
    .line 51
    sub-int/2addr p1, p2

    .line 52
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private onAnimationDone()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 6
    .line 7
    return-void
.end method

.method private resetView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "haptic_feedback_enabled"

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "vibrator"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/os/Vibrator;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 41
    .line 42
    sget-object v1, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :cond_2
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0

    .line 51
    throw p1
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x3db80000    # -50.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    cmpl-float v0, p2, v1

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, 0x32

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    cmpg-float p2, p2, v0

    .line 21
    .line 22
    if-ltz p2, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    cmpl-float p2, p1, v1

    .line 31
    .line 32
    if-lez p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    add-int/lit8 p2, p2, 0x32

    .line 39
    .line 40
    int-to-float p2, p2

    .line 41
    cmpg-float p1, p1, p2

    .line 42
    .line 43
    if-gez p1, :cond_2

    .line 44
    .line 45
    :cond_1
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_0
    return p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    float-to-int v1, v1

    .line 33
    float-to-int p1, p1

    .line 34
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v4, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    return v3

    .line 64
    :cond_1
    const/4 p1, 0x1

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 71
    .line 72
    const-wide/16 v0, 0x1e

    .line 73
    .line 74
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 75
    .line 76
    .line 77
    const v0, 0x3eaaaaaa

    .line 78
    .line 79
    .line 80
    const v1, 0x3f2aaaab

    .line 81
    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    move v0, v1

    .line 100
    :cond_3
    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 101
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 107
    .line 108
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 111
    .line 112
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    move v0, v1

    .line 122
    :goto_0
    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    .line 141
    .line 142
    .line 143
    :goto_2
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v2, 0x3

    .line 16
    :goto_0
    move v6, v2

    .line 17
    move v2, p2

    .line 18
    move/from16 v3, p3

    .line 19
    .line 20
    move/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 25
    .line 26
    .line 27
    iget-object v7, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v1, 0x2

    .line 38
    :goto_1
    move v12, v1

    .line 39
    move v8, p2

    .line 40
    move/from16 v9, p3

    .line 41
    .line 42
    move/from16 v10, p4

    .line 43
    .line 44
    move/from16 v11, p5

    .line 45
    .line 46
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 21
    .line 22
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    add-int/2addr p1, p2

    .line 56
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    add-int/2addr v2, v3

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eq v0, v2, :cond_a

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v0, v5, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-eq v0, v3, :cond_a

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    invoke-direct {p0, v3, v4, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_a

    .line 34
    .line 35
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v3, v4

    .line 46
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_1
    int-to-float v4, v4

    .line 64
    mul-float/2addr v0, v4

    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_5

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 72
    .line 73
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 74
    .line 75
    if-ne v4, v6, :cond_3

    .line 76
    .line 77
    cmpl-float v0, v3, v0

    .line 78
    .line 79
    if-lez v0, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    cmpg-float v0, v3, v0

    .line 83
    .line 84
    if-gez v0, :cond_4

    .line 85
    .line 86
    :goto_2
    move v0, v2

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move v0, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 91
    .line 92
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 93
    .line 94
    if-ne v4, v6, :cond_6

    .line 95
    .line 96
    cmpg-float v0, v3, v0

    .line 97
    .line 98
    if-gez v0, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    cmpl-float v0, v3, v0

    .line 102
    .line 103
    if-lez v0, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 107
    .line 108
    if-nez v3, :cond_b

    .line 109
    .line 110
    if-eqz v0, :cond_b

    .line 111
    .line 112
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 124
    .line 125
    if-ne v0, v3, :cond_7

    .line 126
    .line 127
    move v0, v2

    .line 128
    goto :goto_4

    .line 129
    :cond_7
    move v0, v1

    .line 130
    :goto_4
    if-eqz v0, :cond_8

    .line 131
    .line 132
    move v5, v2

    .line 133
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    .line 134
    .line 135
    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 142
    .line 143
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 151
    .line 152
    .line 153
    :cond_b
    :goto_6
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 154
    .line 155
    if-nez v0, :cond_c

    .line 156
    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_d

    .line 162
    .line 163
    :cond_c
    move v1, v2

    .line 164
    :cond_d
    return v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p0, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 4
    .line 5
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    return-void
.end method

.method public setRightHintText(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public startAnimating(Z)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    move v4, v3

    .line 44
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 45
    .line 46
    if-ne v1, v7, :cond_1

    .line 47
    .line 48
    add-int/2addr v2, v6

    .line 49
    sub-int/2addr v2, v4

    .line 50
    neg-int v2, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sub-int v2, v6, v5

    .line 53
    .line 54
    add-int/2addr v2, v6

    .line 55
    sub-int/2addr v2, v4

    .line 56
    :goto_0
    move v11, v3

    .line 57
    move v3, v2

    .line 58
    move v2, v11

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    move v5, v3

    .line 91
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 92
    .line 93
    if-ne v1, v7, :cond_4

    .line 94
    .line 95
    add-int/2addr v2, v6

    .line 96
    sub-int/2addr v2, v5

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    sub-int v2, v6, v4

    .line 99
    .line 100
    add-int/2addr v2, v6

    .line 101
    sub-int/2addr v2, v5

    .line 102
    neg-int v2, v2

    .line 103
    :goto_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .line 104
    .line 105
    int-to-float v5, v3

    .line 106
    int-to-float v6, v2

    .line 107
    const/4 v7, 0x0

    .line 108
    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 109
    .line 110
    .line 111
    const-wide/16 v8, 0xfa

    .line 112
    .line 113
    invoke-virtual {v4, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    .line 115
    .line 116
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    .line 117
    .line 118
    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 125
    .line 126
    .line 127
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .line 128
    .line 129
    invoke-direct {v10, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    .line 134
    .line 135
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 136
    .line 137
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/android/internal/widget/SlidingTab$2;

    .line 147
    .line 148
    invoke-direct {v0, p0, p1, v3, v2}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v4, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
