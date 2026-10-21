.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private final mFadeOut:Ljava/lang/Runnable;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseDescription:Ljava/lang/CharSequence;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayDescription:Ljava/lang/CharSequence;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private final mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mShowProgress:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/widget/MediaController$1;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 3
    new-instance p2, Landroid/widget/MediaController$2;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 4
    new-instance p2, Landroid/widget/MediaController$3;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    .line 5
    new-instance p2, Landroid/widget/MediaController$4;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    .line 6
    new-instance p2, Landroid/widget/MediaController$5;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance p2, Landroid/widget/MediaController$6;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 8
    new-instance p2, Landroid/widget/MediaController$7;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 9
    new-instance p2, Landroid/widget/MediaController$8;

    invoke-direct {p2, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    iput-object p2, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 10
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 11
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 13
    iput-boolean p2, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 14
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 18
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 21
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 22
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Landroid/widget/MediaController$8;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 25
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 26
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    .line 27
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    .line 28
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/MediaController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/MediaController;->mShowing:Z

    return p0
.end method

.method public static synthetic access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/MediaController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/MediaController;)I
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/MediaController;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/MediaController;->mDragging:Z

    return p0
.end method

.method public static synthetic access$602(Landroid/widget/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return p1
.end method

.method public static synthetic access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/MediaController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/widget/MediaController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 41
    .line 42
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 58
    .line 59
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    :cond_3
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x1040326

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    .line 15
    .line 16
    const v1, 0x1040325

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    .line 24
    .line 25
    const v0, 0x1020356

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/ImageButton;

    .line 33
    .line 34
    iput-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 42
    .line 43
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const v0, 0x1020244

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageButton;

    .line 56
    .line 57
    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v3, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 74
    .line 75
    iget-boolean v3, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 76
    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    move v3, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move v3, v2

    .line 82
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const v0, 0x1020398

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/ImageButton;

    .line 93
    .line 94
    iput-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v3, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 108
    .line 109
    iget-boolean v3, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 110
    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    move v1, v2

    .line 115
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_4
    const v0, 0x1020318

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/ImageButton;

    .line 126
    .line 127
    iput-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 132
    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 136
    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    :cond_5
    const v0, 0x1020379

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/ImageButton;

    .line 150
    .line 151
    iput-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 152
    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 156
    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 160
    .line 161
    if-nez v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    :cond_6
    const v0, 0x10202f6

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/ProgressBar;

    .line 174
    .line 175
    iput-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 176
    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    instance-of v1, v0, Landroid/widget/SeekBar;

    .line 180
    .line 181
    if-eqz v1, :cond_7

    .line 182
    .line 183
    check-cast v0, Landroid/widget/SeekBar;

    .line 184
    .line 185
    iget-object v1, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 191
    .line 192
    const/16 v1, 0x3e8

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 195
    .line 196
    .line 197
    :cond_8
    const v0, 0x102043a

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/TextView;

    .line 205
    .line 206
    iput-object v0, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 207
    .line 208
    const v0, 0x102043d

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/TextView;

    .line 216
    .line 217
    iput-object p1, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 218
    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object p1, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 225
    .line 226
    new-instance p1, Ljava/util/Formatter;

    .line 227
    .line 228
    iget-object v0, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-direct {p1, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 235
    .line 236
    .line 237
    iput-object p1, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 238
    .line 239
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method private initFloatingWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "window"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/WindowManager;

    .line 11
    .line 12
    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 13
    .line 14
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 22
    .line 23
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 42
    .line 43
    iget-object v2, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 54
    .line 55
    const v2, 0x106000d

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 71
    .line 72
    .line 73
    const/high16 v0, 0x40000

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    const/16 v1, 0x33

    .line 9
    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 11
    .line 12
    const/4 v1, -0x2

    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 17
    .line 18
    const/4 v2, -0x3

    .line 19
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 20
    .line 21
    const/16 v2, 0x3e8

    .line 22
    .line 23
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    .line 25
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    .line 27
    const v3, 0x820020

    .line 28
    .line 29
    .line 30
    or-int/2addr v2, v3

    .line 31
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 35
    .line 36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 37
    .line 38
    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 13
    .line 14
    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 34
    .line 35
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/widget/MediaController;->mDragging:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 15
    .line 16
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    const-wide/16 v3, 0x3e8

    .line 27
    .line 28
    int-to-long v5, v0

    .line 29
    mul-long/2addr v5, v3

    .line 30
    int-to-long v3, v1

    .line 31
    div-long/2addr v5, v3

    .line 32
    long-to-int v3, v5

    .line 33
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 37
    .line 38
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 43
    .line 44
    mul-int/lit8 v2, v2, 0xa

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v2, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-direct {p0, v1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return v0

    .line 72
    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 73
    return v0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 7

    .line 1
    div-int/lit16 p1, p1, 0x3e8

    .line 2
    .line 3
    rem-int/lit8 v0, p1, 0x3c

    .line 4
    .line 5
    div-int/lit8 v1, p1, 0x3c

    .line 6
    .line 7
    rem-int/lit8 v1, v1, 0x3c

    .line 8
    .line 9
    div-int/lit16 p1, p1, 0xe10

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    iget-object v5, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    new-array v6, v6, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aput-object p1, v6, v3

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v6, v2

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    aput-object p1, v6, v4

    .line 43
    .line 44
    const-string p1, "%d:%02d:%02d"

    .line 45
    .line 46
    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_0
    iget-object p1, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 56
    .line 57
    new-array v4, v4, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v4, v3

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aput-object v0, v4, v2

    .line 70
    .line 71
    const-string v0, "%02d:%02d"

    .line 72
    .line 73
    invoke-virtual {p1, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method private updateFloatingWindowLayout()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 10
    .line 11
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/high16 v4, -0x80000000

    .line 18
    .line 19
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v5, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    aget v3, v1, v3

    .line 48
    .line 49
    iget-object v4, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    .line 57
    invoke-static {v4, v5, v0, v3}, Landroid/app/m;->b(IIII)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aget v0, v1, v0

    .line 65
    .line 66
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v0

    .line 73
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v1, v0

    .line 80
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 81
    .line 82
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 19
    .line 20
    const v1, 0x1080023

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 27
    .line 28
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 35
    .line 36
    const v1, 0x1080024

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 43
    .line 44
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/16 v3, 0x4f

    .line 22
    .line 23
    const/16 v4, 0xbb8

    .line 24
    .line 25
    if-eq v0, v3, :cond_c

    .line 26
    .line 27
    const/16 v3, 0x55

    .line 28
    .line 29
    if-eq v0, v3, :cond_c

    .line 30
    .line 31
    const/16 v3, 0x3e

    .line 32
    .line 33
    if-ne v0, v3, :cond_1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    const/16 v3, 0x7e

    .line 37
    .line 38
    if-ne v0, v3, :cond_3

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 43
    .line 44
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return v2

    .line 62
    :cond_3
    const/16 v3, 0x56

    .line 63
    .line 64
    if-eq v0, v3, :cond_a

    .line 65
    .line 66
    const/16 v3, 0x7f

    .line 67
    .line 68
    if-ne v0, v3, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v3, 0x19

    .line 72
    .line 73
    if-eq v0, v3, :cond_9

    .line 74
    .line 75
    const/16 v3, 0x18

    .line 76
    .line 77
    if-eq v0, v3, :cond_9

    .line 78
    .line 79
    const/16 v3, 0xa4

    .line 80
    .line 81
    if-eq v0, v3, :cond_9

    .line 82
    .line 83
    const/16 v3, 0x1b

    .line 84
    .line 85
    if-ne v0, v3, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    const/4 v3, 0x4

    .line 89
    if-eq v0, v3, :cond_7

    .line 90
    .line 91
    const/16 v3, 0x52

    .line 92
    .line 93
    if-ne v0, v3, :cond_6

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 97
    .line 98
    .line 99
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1

    .line 104
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    .line 107
    .line 108
    .line 109
    :cond_8
    return v2

    .line 110
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    return p1

    .line 115
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 116
    .line 117
    iget-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 118
    .line 119
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_b

    .line 124
    .line 125
    iget-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 126
    .line 127
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 134
    .line 135
    .line 136
    :cond_b
    return v2

    .line 137
    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    .line 138
    .line 139
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 146
    .line 147
    if-eqz p1, :cond_d

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 150
    .line 151
    .line 152
    :cond_d
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string v0, "MediaController"

    .line 24
    .line 25
    const-string v1, "already removed"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method public makeControllerView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "layout_inflater"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/LayoutInflater;

    .line 10
    .line 11
    const v1, 0x1090082

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 25
    .line 26
    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 p1, 0xbb8

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/MediaController;->show(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/MediaController;->show(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Landroid/widget/MediaController;->show(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    move v3, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move v3, v2

    .line 37
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    move v1, v2

    .line 52
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    :cond_6
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 56
    .line 57
    if-eqz v0, :cond_7

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    :cond_7
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 63
    .line 64
    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    const/16 v0, 0xbb8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 4
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6
    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 7
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    .line 8
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 10
    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 11
    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
