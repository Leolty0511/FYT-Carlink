.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$PlaybackInfo;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$RcDisplay;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$OnClientUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x4

.field private static final MSG_DISPLAY_ENABLE:I = 0x5

.field private static final MSG_NEW_METADATA:I = 0x3

.field private static final MSG_NEW_PENDING_INTENT:I = 0x0

.field private static final MSG_NEW_PLAYBACK_INFO:I = 0x1

.field private static final MSG_NEW_TRANSPORT_INFO:I = 0x2

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final TRANSPORT_UNKNOWN:I

.field private static final mGenLock:Ljava/lang/Object;

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mClientGenerationIdCurrent:I

.field private mClientPendingIntentCurrent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private final mRcd:Landroid/media/RemoteController$RcDisplay;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    .line 4
    iput-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 6
    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    .line 8
    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 10
    new-instance v0, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 11
    :goto_0
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 12
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 13
    new-instance p2, Landroid/media/RemoteController$RcDisplay;

    invoke-direct {p2, p0}, Landroid/media/RemoteController$RcDisplay;-><init>(Landroid/media/RemoteController;)V

    iput-object p2, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    const-string p2, "audio"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p1, 0x200

    .line 16
    iput p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 18
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    :goto_1
    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Calling thread not associated with a looper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid null OnClientUpdateListener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid null Context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/media/RemoteController;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    return p0
.end method

.method public static synthetic access$1000(Landroid/media/RemoteController;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onClientChange(IZ)V

    return-void
.end method

.method public static synthetic access$102(Landroid/media/RemoteController;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    return p1
.end method

.method public static synthetic access$1100(Landroid/media/RemoteController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onDisplayEnable(Z)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$300(Landroid/media/RemoteController;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$600(Landroid/media/RemoteController;ILandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/media/RemoteController;ILandroid/media/RemoteController$PlaybackInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/media/RemoteController;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewTransportInfo(II)V

    return-void
.end method

.method public static synthetic access$900(Landroid/media/RemoteController;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewMetadata(ILandroid/os/Bundle;)V

    return-void
.end method

.method private onClientChange(IZ)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object p1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 10
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private onDisplayEnable(Z)V
    .locals 8

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_1
    iget v7, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    .line 6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    new-instance p1, Landroid/media/RemoteController$PlaybackInfo;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 8
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v7

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10
    new-instance v5, Landroid/os/Bundle;

    const/4 p1, 0x3

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(I)V

    const/4 p1, 0x7

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {v5, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private onNewMetadata(ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const p1, 0x1fffffff

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-object p1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 9
    iget-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_2

    .line 10
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    :cond_2
    iget-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    .line 12
    iget-object p2, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    invoke-static {p2, v2}, Landroid/media/RemoteController$MetadataEditor;->access$1200(Landroid/media/RemoteController$MetadataEditor;I)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v1, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v1, p0, p2, v3, v4}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 14
    :goto_0
    iget-object p2, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 15
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 16
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p2

    .line 17
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private onNewPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object p1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1
    iput-object p2, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V
    .locals 7

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object p1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 7
    iput-object p2, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    .line 8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    iget-wide v4, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    const-wide v1, -0x7fe688e67fe67d00L

    cmp-long p1, v4, v1

    if-nez p1, :cond_1

    .line 10
    iget p1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    iget-wide v2, p2, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    iget v6, p2, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 12
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private onNewTransportInfo(II)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object p1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 9
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "null event handler, will not deliver message "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p6

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 5
    iput-boolean v1, v0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, v0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    return-object v0
.end method

.method public getArtworkSize()[I
    .locals 4

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2
    iget v3, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    aput v3, v1, v2

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEstimatedMediaPosition()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    iget v0, v0, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget-wide v0, v0, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget-wide v3, v0, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    return-wide v1

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget-wide v5, v2, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    sub-long/2addr v0, v5

    long-to-float v0, v0

    .line 7
    iget v1, v2, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v3, v0

    return-wide v3

    :cond_2
    return-wide v1
.end method

.method public getRcDisplay()Landroid/media/RemoteController$RcDisplay;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    return-object v0
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public seekTo(J)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_0

    const-string p1, "RemoteController"

    const-string p2, "Cannot use seekTo() from a disabled RemoteController"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 3
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setRemoteControlClientPlaybackPosition(IJ)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal negative time value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isMediaKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "RemoteController"

    const-string v1, "Cannot use sendMediaKeyEvent() from an unregistered RemoteController"

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    return v2

    .line 6
    :cond_0
    iget-boolean v1, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v1, :cond_1

    const-string p1, "RemoteController"

    const-string v1, "Cannot use sendMediaKeyEvent() from a disabled RemoteController"

    .line 7
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v0

    return v2

    .line 9
    :cond_1
    iget-object v1, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 12
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    :try_start_1
    iget-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "RemoteController"

    const-string v1, "Error sending intent for media button down: "

    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_2
    const-string p1, "RemoteController"

    const-string v0, "No-op when sending key click, no receiver right now"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a media key event"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setArtworkConfiguration(II)Z
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result p1

    return p1
.end method

.method public setArtworkConfiguration(ZII)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 2
    :try_start_0
    iget p1, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, p1, :cond_0

    move p2, p1

    :cond_0
    if-le p3, p1, :cond_1

    move p3, p1

    .line 3
    :cond_1
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 4
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid dimensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 7
    iput p1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 8
    :goto_0
    iget-boolean p1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p2, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    iget p3, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v1, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/media/AudioManager;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 10
    :cond_4
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setIsRegistered(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSynchronizationMode(I)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string p1, "RemoteController"

    const-string v0, "Cannot set synchronization mode on an unregistered RemoteController"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    if-ne v0, p1, :cond_3

    move v2, v0

    :cond_3
    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    return v0
.end method
