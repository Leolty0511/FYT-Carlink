.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xbb8

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mFlipRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xbb8

    .line 2
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 4
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 5
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 6
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 8
    new-instance p1, Landroid/widget/ViewFlipper$1;

    invoke-direct {p1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object p1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    new-instance p1, Landroid/widget/ViewFlipper$2;

    invoke-direct {p1, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object p1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xbb8

    .line 11
    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 13
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 14
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 15
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 17
    new-instance v3, Landroid/widget/ViewFlipper$1;

    invoke-direct {v3, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v3, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    new-instance v3, Landroid/widget/ViewFlipper$2;

    invoke-direct {v3, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v3, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 19
    sget-object v3, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$002(Landroid/widget/ViewFlipper;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/widget/ViewFlipper;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/ViewFlipper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public static synthetic access$300(Landroid/widget/ViewFlipper;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/ViewFlipper;)I
    .locals 0

    iget p0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return p0
.end method

.method private updateRunning()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method private updateRunning(Z)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ViewAnimator;->showOnly(IZ)V

    .line 5
    iget-object p1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    :goto_1
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v3, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 10
    .line 11
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public startFlipping()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
