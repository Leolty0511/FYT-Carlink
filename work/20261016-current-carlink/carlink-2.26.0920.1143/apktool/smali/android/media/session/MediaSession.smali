.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$Token;,
        Landroid/media/session/MediaSession$SessionFlags;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mActive:Z

.field private final mBinder:Landroid/media/session/ISession;

.field private mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private final mController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBitmapSize:I

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 7
    new-instance v0, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    const-string/jumbo v1, "media_session"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 9
    :try_start_0
    invoke-virtual {v1, v0, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object p2

    iput-object p2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 10
    new-instance p3, Landroid/media/session/MediaSession$Token;

    invoke-interface {p2}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object p3, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 11
    new-instance p2, Landroid/media/session/MediaController;

    invoke-direct {p2, p1, p3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object p2, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Remote error creating session."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tag cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$1000(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1100(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/media/session/MediaSession;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V

    return-void
.end method

.method public static synthetic access$1400(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPause()V

    return-void
.end method

.method public static synthetic access$1500(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchStop()V

    return-void
.end method

.method public static synthetic access$1600(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchNext()V

    return-void
.end method

.method public static synthetic access$1700(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrevious()V

    return-void
.end method

.method public static synthetic access$1800(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchFastForward()V

    return-void
.end method

.method public static synthetic access$1900(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchRewind()V

    return-void
.end method

.method public static synthetic access$200(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/media/session/MediaSession;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSeekTo(J)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/media/session/MediaSession;Landroid/media/Rating;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/media/session/MediaSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(I)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/media/session/MediaSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(I)V

    return-void
.end method

.method public static synthetic access$2700(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2800(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrepare()V

    return-void
.end method

.method public static synthetic access$600(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/media/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPlay()V

    return-void
.end method

.method private dispatchAdjustVolume(I)V
    .locals 1

    const/16 v0, 0x15

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchFastForward()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchMediaButton(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchNext()V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPause()V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPlay()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrepare()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrevious()V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchRate(Landroid/media/Rating;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchRewind()V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchSeekTo(J)V
    .locals 1

    const/16 v0, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchSetVolumeTo(I)V
    .locals 1

    const/16 v0, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchSkipToItem(J)V
    .locals 1

    const/16 v0, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchStop()V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method public static isActiveState(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/session/MediaSession$Command;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private postToCallback(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private postToCallback(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p1, p2, p3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/media/session/ISession;->getCallingPackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "MediaSession"

    .line 10
    .line 11
    const-string v2, "Dead object in getCallingPackage."

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string v0, "MediaSession"

    .line 24
    .line 25
    const-string v1, "Error in notifyVolumeChanged"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_1
    :goto_1
    :try_start_2
    const-string p1, "MediaSession"

    .line 32
    .line 33
    const-string v1, "Received update from stale volume provider"

    .line 34
    .line 35
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p1
.end method

.method public release()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/media/session/ISession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "MediaSession"

    .line 9
    .line 10
    const-string v2, "Error releasing session: "

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string p2, "MediaSession"

    .line 15
    .line 16
    const-string v0, "Error sending event"

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p2, "event cannot be null or empty"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public setActive(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setActive(Z)V

    .line 9
    .line 10
    .line 11
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string v0, "MediaSession"

    .line 16
    .line 17
    const-string v1, "Failure in setActive."

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 5
    :cond_0
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    :cond_2
    if-nez p2, :cond_3

    .line 9
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 10
    :cond_3
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 11
    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p0, p2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    .line 12
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "Dead object in setExtras."

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public setFlags(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "MediaSession"

    .line 9
    .line 10
    const-string v1, "Failure in setFlags."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "MediaSession"

    .line 9
    .line 10
    const-string v1, "Failure in setMediaButtonReceiver."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    .line 4
    .line 5
    iget v1, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    const-string v0, "MediaSession"

    .line 22
    .line 23
    const-string v1, "Dead object in setPlaybackState."

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "MediaSession"

    .line 11
    .line 12
    const-string v1, "Dead object in setPlaybackState."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "MediaSession"

    .line 11
    .line 12
    const-string v1, "Failure in setPlaybackToLocal."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Attributes cannot be null for local playback."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Landroid/media/session/MediaSession$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-interface {v0, v1, v2}, Landroid/media/session/ISession;->setPlaybackToRemote(II)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string v0, "MediaSession"

    .line 42
    .line 43
    const-string v1, "Failure in setPlaybackToRemote."

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string/jumbo v0, "volumeProvider may not be null!"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v1

    .line 13
    :goto_0
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setQueue(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    const-string v0, "Dead object in setQueue."

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_1
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "Dead object in setQueueTitle."

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public setRatingType(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "MediaSession"

    .line 9
    .line 10
    const-string v1, "Error in setRatingType."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "MediaSession"

    .line 9
    .line 10
    const-string v1, "Failure in setLaunchPendingIntent."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
