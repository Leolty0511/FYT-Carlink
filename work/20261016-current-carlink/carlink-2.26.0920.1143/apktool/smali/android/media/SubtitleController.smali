.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Renderer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/SubtitleController$Listener;

.field private mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTrack:Landroid/media/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/media/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityIsExplicit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/SubtitleController$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 10
    .line 11
    new-instance v0, Landroid/media/SubtitleController$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 22
    .line 23
    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 24
    .line 25
    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    .line 26
    .line 27
    new-instance p2, Ljava/util/Vector;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 33
    .line 34
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 35
    .line 36
    new-instance p2, Ljava/util/Vector;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 42
    .line 43
    const-string p2, "captioning"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 50
    .line 51
    iput-object p1, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic access$000(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    return-void
.end method

.method public static synthetic access$100(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    return-void
.end method

.method public static synthetic access$200(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    return-void
.end method

.method private doHide()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 13
    .line 14
    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v2, "is-forced-subtitle"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x4

    .line 45
    if-ne v0, v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 55
    .line 56
    :cond_3
    return-void

    .line 57
    :cond_4
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 67
    .line 68
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 73
    .line 74
    .line 75
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 76
    .line 77
    :cond_5
    return-void
.end method

.method private doSelectTrack(Landroid/media/SubtitleTrack;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 21
    .line 22
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    return-void
.end method

.method private doShow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/media/SubtitleController$Renderer;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 35
    .line 36
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 46
    .line 47
    iget-object v3, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    return-object v2

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw v1

    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    const/4 p1, 0x0

    .line 65
    return-object p1

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    throw p1
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getDefaultTrack()Landroid/media/SubtitleTrack;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v0

    .line 17
    :goto_0
    iget-object v3, v1, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    xor-int/2addr v3, v4

    .line 25
    iget-object v5, v1, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 26
    .line 27
    monitor-enter v5

    .line 28
    :try_start_0
    iget-object v6, v1, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, -0x1

    .line 36
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-eqz v9, :cond_d

    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    check-cast v9, Landroid/media/SubtitleTrack;

    .line 47
    .line 48
    invoke-virtual {v9}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    const-string/jumbo v11, "language"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    const-string/jumbo v12, "is-forced-subtitle"

    .line 60
    .line 61
    .line 62
    const/4 v13, 0x0

    .line 63
    invoke-virtual {v10, v12, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eqz v12, :cond_1

    .line 68
    .line 69
    move v12, v4

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move v12, v13

    .line 72
    :goto_2
    const-string/jumbo v14, "is-autoselect"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, v14, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    if-eqz v14, :cond_2

    .line 80
    .line 81
    move v14, v4

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    move v14, v13

    .line 84
    :goto_3
    const-string/jumbo v15, "is-default"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v15, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    move v10, v4

    .line 94
    goto :goto_4

    .line 95
    :cond_3
    move v10, v13

    .line 96
    :goto_4
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    const-string v4, ""

    .line 103
    .line 104
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_5

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_4
    move v4, v13

    .line 132
    goto :goto_6

    .line 133
    :cond_5
    :goto_5
    const/4 v4, 0x1

    .line 134
    :goto_6
    if-eqz v12, :cond_6

    .line 135
    .line 136
    move v11, v13

    .line 137
    goto :goto_7

    .line 138
    :cond_6
    const/16 v11, 0x8

    .line 139
    .line 140
    :goto_7
    if-nez v0, :cond_7

    .line 141
    .line 142
    if-eqz v10, :cond_7

    .line 143
    .line 144
    const/4 v15, 0x4

    .line 145
    goto :goto_8

    .line 146
    :cond_7
    move v15, v13

    .line 147
    :goto_8
    add-int/2addr v11, v15

    .line 148
    if-eqz v14, :cond_8

    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_8
    const/4 v13, 0x2

    .line 152
    :goto_9
    add-int/2addr v11, v13

    .line 153
    add-int/2addr v11, v4

    .line 154
    if-eqz v3, :cond_a

    .line 155
    .line 156
    if-nez v12, :cond_a

    .line 157
    .line 158
    :cond_9
    :goto_a
    const/4 v4, 0x1

    .line 159
    goto :goto_1

    .line 160
    :cond_a
    if-nez v0, :cond_b

    .line 161
    .line 162
    if-nez v10, :cond_c

    .line 163
    .line 164
    :cond_b
    if-eqz v4, :cond_9

    .line 165
    .line 166
    if-nez v14, :cond_c

    .line 167
    .line 168
    if-nez v12, :cond_c

    .line 169
    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    :cond_c
    if-le v11, v8, :cond_9

    .line 173
    .line 174
    move-object v7, v9

    .line 175
    move v8, v11

    .line 176
    goto :goto_a

    .line 177
    :cond_d
    monitor-exit v5

    .line 178
    return-object v7

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    throw v0
.end method

.method public getSelectedTrack()Landroid/media/SubtitleTrack;
    .locals 1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroid/media/SubtitleTrack;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Landroid/media/SubtitleTrack;

    .line 11
    .line 12
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/media/SubtitleController$Renderer;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 20
    .line 21
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 22
    .line 23
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public selectTrack(Landroid/media/SubtitleTrack;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 18
    .line 19
    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v1, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 30
    .line 31
    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 40
    .line 41
    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method
