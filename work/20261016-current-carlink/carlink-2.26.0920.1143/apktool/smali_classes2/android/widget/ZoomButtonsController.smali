.class public Landroid/widget/ZoomButtonsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ZoomButtonsController$Container;,
        Landroid/widget/ZoomButtonsController$OnZoomListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_DISMISS_ZOOM_CONTROLS:I = 0x3

.field private static final MSG_POST_CONFIGURATION_CHANGED:I = 0x2

.field private static final MSG_POST_SET_VISIBLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ZoomButtonsController"

.field private static final ZOOM_CONTROLS_TIMEOUT:I

.field private static final ZOOM_CONTROLS_TOUCH_PADDING:I = 0x14


# instance fields
.field private mAutoDismissControls:Z

.field private mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContainer:Landroid/widget/FrameLayout;

.field private mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mContainerRawLocation:[I

.field private final mContext:Landroid/content/Context;

.field private mControls:Landroid/widget/ZoomControls;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private final mOwnerView:Landroid/view/View;

.field private final mOwnerViewRawLocation:[I

.field private mPostedVisibleInitializer:Ljava/lang/Runnable;

.field private mReleaseTouchListenerOnUp:Z

.field private final mTempIntArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchPaddingScaledSq:I

.field private mTouchTargetView:Landroid/view/View;

.field private final mTouchTargetWindowLocation:[I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v1, v0, [I

    .line 9
    .line 10
    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    .line 15
    .line 16
    new-array v1, v0, [I

    .line 17
    .line 18
    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    .line 30
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    .line 32
    .line 33
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 39
    .line 40
    new-instance v0, Landroid/widget/ZoomButtonsController$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$1;-><init>(Landroid/widget/ZoomButtonsController;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    new-instance v0, Landroid/widget/ZoomButtonsController$2;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$2;-><init>(Landroid/widget/ZoomButtonsController;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string/jumbo v1, "window"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/view/WindowManager;

    .line 68
    .line 69
    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    .line 71
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 82
    .line 83
    const/high16 v0, 0x41a00000    # 20.0f

    .line 84
    .line 85
    mul-float/2addr p1, v0

    .line 86
    float-to-int p1, p1

    .line 87
    mul-int/2addr p1, p1

    .line 88
    iput p1, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 89
    .line 90
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 95
    .line 96
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/ZoomButtonsController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->onPostConfigurationChanged()V

    return-void
.end method

.method public static synthetic access$300(Landroid/widget/ZoomButtonsController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400()I
    .locals 1

    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return v0
.end method

.method public static synthetic access$500(Landroid/widget/ZoomButtonsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    return-void
.end method

.method public static synthetic access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    return-void
.end method

.method public static synthetic access$800(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private createContainer()Landroid/widget/FrameLayout;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const v2, 0x800033

    .line 8
    .line 9
    .line 10
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 11
    .line 12
    const v2, 0x20218

    .line 13
    .line 14
    .line 15
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 16
    .line 17
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    .line 22
    const/16 v1, 0x3e8

    .line 23
    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 25
    .line 26
    const/4 v1, -0x3

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 28
    .line 29
    const v1, 0x1030307

    .line 30
    .line 31
    .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 33
    .line 34
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    new-instance v1, Landroid/widget/ZoomButtonsController$Container;

    .line 37
    .line 38
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v1, p0, v2}, Landroid/widget/ZoomButtonsController$Container;-><init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string v2, "layout_inflater"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .line 60
    const v2, 0x1090118

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    const v0, 0x10204ab

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/ZoomControls;

    .line 74
    .line 75
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    .line 76
    .line 77
    new-instance v2, Landroid/widget/ZoomButtonsController$3;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Landroid/widget/ZoomButtonsController$3;-><init>(Landroid/widget/ZoomButtonsController;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    .line 86
    .line 87
    new-instance v2, Landroid/widget/ZoomButtonsController$4;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Landroid/widget/ZoomButtonsController$4;-><init>(Landroid/widget/ZoomButtonsController;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method private dismissControlsDelayed(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    int-to-long v2, p1

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private findViewForTouch(II)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    sub-int/2addr p1, v2

    .line 7
    const/4 v2, 0x1

    .line 8
    aget v0, v0, v2

    .line 9
    .line 10
    sub-int/2addr p2, v0

    .line 11
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sub-int/2addr v3, v2

    .line 20
    const/4 v2, 0x0

    .line 21
    const v4, 0x7fffffff

    .line 22
    .line 23
    .line 24
    :goto_0
    if-ltz v3, :cond_5

    .line 25
    .line 26
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    return-object v5

    .line 49
    :cond_1
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    if-lt p1, v6, :cond_2

    .line 52
    .line 53
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    if-gt p1, v7, :cond_2

    .line 56
    .line 57
    move v6, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sub-int/2addr v6, p1

    .line 60
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    sub-int v7, p1, v7

    .line 67
    .line 68
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    :goto_1
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    if-lt p2, v7, :cond_3

    .line 79
    .line 80
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    if-gt p2, v8, :cond_3

    .line 83
    .line 84
    move v7, v1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    sub-int/2addr v7, p2

    .line 87
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 92
    .line 93
    sub-int v8, p2, v8

    .line 94
    .line 95
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    :goto_2
    mul-int/2addr v6, v6

    .line 104
    mul-int/2addr v7, v7

    .line 105
    add-int/2addr v7, v6

    .line 106
    iget v6, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 107
    .line 108
    if-ge v7, v6, :cond_4

    .line 109
    .line 110
    if-ge v7, v4, :cond_4

    .line 111
    .line 112
    move-object v2, v5

    .line 113
    move v4, v7

    .line 114
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    return-object v2
.end method

.method private isInterestingKey(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onContainerKey(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->isInterestingKey(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return v2

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    sget p1, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return v3

    .line 70
    :cond_4
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    return v2
.end method

.method private onPostConfigurationChanged()V
    .locals 1

    .line 1
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private refreshPositioningVariables()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v0, v2

    .line 29
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 30
    .line 31
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    .line 37
    .line 38
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aget v5, v3, v4

    .line 42
    .line 43
    aput v5, v2, v4

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    aget v3, v3, v5

    .line 47
    .line 48
    add-int/2addr v3, v0

    .line 49
    aput v3, v2, v5

    .line 50
    .line 51
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    .line 52
    .line 53
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    aget v4, v2, v4

    .line 61
    .line 62
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 63
    .line 64
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    .line 66
    aget v1, v2, v5

    .line 67
    .line 68
    add-int/2addr v1, v0

    .line 69
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 70
    .line 71
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    .line 77
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 78
    .line 79
    invoke-interface {v0, v1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method private setTouchTargetView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public isAutoDismissed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-le v0, v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    if-ne p1, v3, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v4}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 33
    .line 34
    :cond_2
    return v2

    .line 35
    :cond_3
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 41
    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    if-eq p1, v2, :cond_4

    .line 45
    .line 46
    if-eq p1, v3, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-direct {p0, v4}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    float-to-int p1, p1

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    float-to-int v0, v0

    .line 63
    invoke-direct {p0, p1, v0}, Landroid/widget/ZoomButtonsController;->findViewForTouch(II)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    if-eqz v0, :cond_8

    .line 71
    .line 72
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    .line 73
    .line 74
    aget v3, p1, v1

    .line 75
    .line 76
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    .line 77
    .line 78
    aget v5, v4, v1

    .line 79
    .line 80
    add-int/2addr v3, v5

    .line 81
    aget p1, p1, v2

    .line 82
    .line 83
    aget v4, v4, v2

    .line 84
    .line 85
    add-int/2addr p1, v4

    .line 86
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 91
    .line 92
    aget v1, v4, v1

    .line 93
    .line 94
    sub-int/2addr v1, v3

    .line 95
    int-to-float v1, v1

    .line 96
    aget v2, v4, v2

    .line 97
    .line 98
    sub-int/2addr v2, p1

    .line 99
    int-to-float p1, v2

    .line 100
    invoke-virtual {p2, v1, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, 0x0

    .line 112
    cmpg-float v3, p1, v2

    .line 113
    .line 114
    const/high16 v4, -0x3e600000    # -20.0f

    .line 115
    .line 116
    if-gez v3, :cond_6

    .line 117
    .line 118
    cmpl-float v3, p1, v4

    .line 119
    .line 120
    if-lez v3, :cond_6

    .line 121
    .line 122
    neg-float p1, p1

    .line 123
    invoke-virtual {p2, p1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 124
    .line 125
    .line 126
    :cond_6
    cmpg-float p1, v1, v2

    .line 127
    .line 128
    if-gez p1, :cond_7

    .line 129
    .line 130
    cmpl-float p1, v1, v4

    .line 131
    .line 132
    if-lez p1, :cond_7

    .line 133
    .line 134
    neg-float p1, v1

    .line 135
    invoke-virtual {p2, v2, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 143
    .line 144
    .line 145
    return p1

    .line 146
    :cond_8
    return v1
.end method

.method public setAutoDismissed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 7
    .line 8
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    and-int/lit8 p1, v1, -0x9

    .line 8
    .line 9
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    or-int/lit8 p1, v1, 0x8

    .line 13
    .line 14
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    .line 16
    :goto_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    iget-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    .line 27
    .line 28
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    .line 32
    .line 33
    if-ne v0, p1, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 54
    .line 55
    :cond_4
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    .line 57
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 60
    .line 61
    invoke-interface {p1, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 65
    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    new-instance p1, Landroid/widget/ZoomButtonsController$5;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Landroid/widget/ZoomButtonsController$5;-><init>(Landroid/widget/ZoomButtonsController;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 74
    .line 75
    :cond_5
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    .line 86
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 87
    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    .line 95
    .line 96
    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 121
    .line 122
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 123
    .line 124
    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 128
    .line 129
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 135
    .line 136
    if-eqz p1, :cond_8

    .line 137
    .line 138
    invoke-interface {p1, v0}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    .line 139
    .line 140
    .line 141
    :cond_8
    :goto_1
    return-void
.end method

.method public setZoomInEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    return-void
.end method
