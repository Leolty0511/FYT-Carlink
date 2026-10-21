.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$DisplayInfoForClient;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x1

.field public static MEDIA_POSITION_WRITABLE:I = 0x2

.field private static final MSG_DISPLAY_ENABLE:I = 0xf

.field private static final MSG_DISPLAY_WANTS_POS_SYNC:I = 0xc

.field private static final MSG_NEW_CURRENT_CLIENT_GEN:I = 0x6

.field private static final MSG_NEW_INTERNAL_CLIENT_GEN:I = 0x5

.field private static final MSG_PLUG_DISPLAY:I = 0x7

.field private static final MSG_POSITION_DRIFT_CHECK:I = 0xb

.field private static final MSG_REQUEST_ARTWORK:I = 0x4

.field private static final MSG_REQUEST_METADATA:I = 0x2

.field private static final MSG_REQUEST_METADATA_ARTWORK:I = 0xe

.field private static final MSG_REQUEST_PLAYBACK_STATE:I = 0x1

.field private static final MSG_REQUEST_TRANSPORTCONTROL:I = 0x3

.field private static final MSG_SEEK_TO:I = 0xa

.field private static final MSG_UNPLUG_DISPLAY:I = 0x8

.field private static final MSG_UPDATE_DISPLAY_ARTWORK_SIZE:I = 0x9

.field private static final MSG_UPDATE_METADATA:I = 0xd

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private final mIRCC:Landroid/media/IRemoteControlClient;

.field private mInternalClientGenId:I

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionCapabilities:I

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPlaybackVolume:I

.field private mPlaybackVolumeHandling:I

.field private mPlaybackVolumeMax:I

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/RemoteControlClient$DisplayInfoForClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mRcseId:I

.field private mTransportControlFlags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 3
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    const/16 v1, 0xf

    .line 4
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 5
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    const/4 v2, 0x3

    .line 7
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 8
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 9
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    const-wide/16 v2, -0x1

    .line 11
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 13
    iput v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 14
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    const/4 v2, -0x1

    .line 15
    iput v2, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    const/4 v3, -0x2

    .line 16
    iput v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 17
    iput-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 20
    iput v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 21
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const-string p1, "RemoteControlClient"

    const-string v0, "RemoteControlClient() couldn\'t find main application thread"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 30
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    const/16 v1, 0xf

    .line 31
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 32
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    const/4 v2, 0x3

    .line 34
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 35
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 36
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v2, 0x0

    .line 37
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    const-wide/16 v2, -0x1

    .line 38
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 40
    iput v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 41
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    const/4 v2, -0x1

    .line 42
    iput v2, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    const/4 v3, -0x2

    .line 43
    iput v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 44
    iput-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 47
    iput v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 48
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 49
    new-instance p1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {p1, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-void
.end method

.method public static synthetic access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/media/RemoteControlClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewInternalClientGen(I)V

    return-void
.end method

.method public static synthetic access$102(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method public static synthetic access$1100(Landroid/media/RemoteControlClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method public static synthetic access$1400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method public static synthetic access$1500(Landroid/media/RemoteControlClient;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/media/RemoteControlClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onPositionDriftCheck()V

    return-void
.end method

.method public static synthetic access$1700(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method public static synthetic access$1800(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method public static synthetic access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$202(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method public static synthetic access$400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method public static synthetic access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x3a98

    return-wide v0

    :cond_0
    const v0, 0x466a6000    # 15000.0f

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v0, p0

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "audio"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    sput-object v0, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    return-object v0
.end method

.method private initiateCheckForDrift_syncCacheLock()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v2}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method private onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 5
    invoke-static {v2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v2, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2002(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 6
    invoke-static {v4}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v4}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-static {v4, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2402(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    .line 9
    :cond_1
    invoke-static {v4}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v1, v2, :cond_3

    .line 11
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onNewCurrentClientGen(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

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

.method private onNewInternalClientGen(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

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

.method private onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 5
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 7
    :cond_0
    invoke-static {v1, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 8
    invoke-static {v1, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 9
    invoke-direct {p0, v1}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    new-instance v2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onPositionDriftCheck()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    div-float/2addr v5, v6

    float-to-long v5, v5

    add-long/2addr v1, v5

    .line 5
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-interface {v5}, Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;->onGetPlaybackPosition()J

    move-result-wide v5

    cmp-long v3, v5, v3

    const/16 v4, 0xb

    if-ltz v3, :cond_3

    sub-long/2addr v1, v5

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v7, 0x1f4

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    .line 7
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-virtual {p0, v1, v5, v6, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v3}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    .line 11
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    .line 12
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSeekTo(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

    .line 4
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

.method private onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 5
    invoke-static {v2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 7
    :cond_1
    iget-boolean p1, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 9
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 11
    invoke-static {v3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 12
    :cond_3
    iput-boolean v1, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq p1, v1, :cond_4

    .line 13
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 14
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 5
    invoke-static {v2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-static {v2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 6
    :cond_1
    invoke-static {v2, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 7
    invoke-static {v2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 8
    invoke-static {v2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0, v2}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V

    .line 4
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

.method public static playbackPositionShouldMove(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p2, :cond_0

    if-le v1, p3, :cond_2

    :cond_0
    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    int-to-float v1, v1

    div-float/2addr p3, v1

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr v0, p2

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-float/2addr p2, v1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    :cond_1
    invoke-static {p3, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 9
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x0

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p3, p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method private sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v1

    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    invoke-interface {v1, v2, v0}, Landroid/media/IRemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in sendArtworkToDisplay(), dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RemoteControlClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 3
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {p0, p2}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/media/IAudioService;->setPlaybackInfoForRcc(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RemoteControlClient"

    const-string v0, "Dead object in setPlaybackInfoForRcc"

    .line 4
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendAudioServiceNewPlaybackState_syncCacheLock()V
    .locals 8

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 3
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->setPlaybackStateForRcc(IIJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteControlClient"

    const-string v2, "Dead object in setPlaybackStateForRcc"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_4

    const-string v0, "RemoteControlClient"

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p2, p3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3
    iget p3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, p3, v1, p2}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v1, p2}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in set(All)Metadata() for dead display "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 9
    :try_start_1
    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result p3

    if-lez p3, :cond_3

    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result p3

    if-lez p3, :cond_3

    .line 11
    iget-object p3, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v1

    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 12
    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, p3}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object p3

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p3, v1, v2}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when setting metadata, dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_2

    const-string v0, "RemoteControlClient"

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v1, v2}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setMetadata() for dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 7
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :try_start_1
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setMetadata(), dead display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 11

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v2, :cond_2

    const-string v0, "RemoteControlClient"

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v8, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setPlaybackState() for dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 7
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :try_start_1
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v8, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v10, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v3 .. v10}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setPlaybackState(), dead display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_2

    const-string v0, "RemoteControlClient"

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {p1, v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setTransportControlFlags() for dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 7
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :try_start_1
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setTransportControlFlags(), dead display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setPlaybackStateInt(IJFZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v1, p1, :cond_0

    iget-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_3

    .line 3
    :cond_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-eqz p5, :cond_2

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gez p1, :cond_1

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    .line 5
    :cond_1
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    :cond_2
    const-wide p1, -0x7fe688e67fe67d00L

    .line 6
    iput-wide p1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 7
    :goto_0
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 10
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackState_syncCacheLock()V

    .line 11
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 12
    :cond_3
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
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, v0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 3
    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 5
    iput-boolean p1, v0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, v0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, v0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 8
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object p1, v0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, v0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 10
    iput-boolean p1, v0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    :goto_0
    return-object v0
.end method

.method public getIRemoteControlClient()Landroid/media/IRemoteControlClient;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method public getIntPlaybackInformation(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    :try_start_0
    const-string v1, "RemoteControlClient"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntPlaybackInformation() unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x80000000

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_0
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    monitor-exit v0

    return p1

    .line 5
    :cond_1
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    monitor-exit v0

    return p1

    .line 6
    :cond_2
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    monitor-exit v0

    return p1

    .line 7
    :cond_3
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    monitor-exit v0

    return p1

    .line 8
    :cond_4
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRcseId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    return v0
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

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

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eqz p1, :cond_0

    .line 3
    sget v2, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    or-int/2addr v2, v1

    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 4
    :cond_0
    sget v2, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    not-int v2, v2

    and-int/2addr v2, v1

    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 5
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 6
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v1, p1, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {p1}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPlaybackInformation(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    :try_start_0
    const-string p2, "RemoteControlClient"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaybackInformation() ignoring unknown key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    if-ltz p2, :cond_1

    .line 3
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 4
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    goto :goto_0

    :cond_1
    const-string p1, "RemoteControlClient"

    const-string/jumbo p2, "using invalid value for PLAYBACKINFO_USES_STREAM"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_3

    if-gt p2, v1, :cond_3

    .line 6
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    if-eq v1, p2, :cond_a

    .line 7
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    :cond_3
    const-string p1, "RemoteControlClient"

    const-string/jumbo p2, "using invalid value for PLAYBACKINFO_VOLUME_HANDLING"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-lez p2, :cond_5

    .line 10
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-eq v1, p2, :cond_a

    .line 11
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    :cond_5
    const-string p1, "RemoteControlClient"

    const-string/jumbo p2, "using invalid value for PLAYBACKINFO_VOLUME_MAX"

    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    if-le p2, v1, :cond_7

    .line 14
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-gt p2, v1, :cond_7

    .line 15
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    if-eq v1, p2, :cond_a

    .line 16
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    :cond_7
    const-string p1, "RemoteControlClient"

    const-string/jumbo p2, "using invalid value for PLAYBACKINFO_VOLUME"

    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-ltz p2, :cond_9

    if-gt p2, v1, :cond_9

    .line 19
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    if-eq v1, p2, :cond_a

    .line 20
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    :cond_9
    const-string p1, "RemoteControlClient"

    const-string/jumbo p2, "using invalid value for PLAYBACKINFO_PLAYBACK_TYPE"

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_a
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eqz p1, :cond_0

    .line 3
    sget v2, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    or-int/2addr v2, v1

    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 4
    :cond_0
    sget v2, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    not-int v2, v2

    and-int/2addr v2, v1

    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 5
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 6
    iget p1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v1, p1, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPlaybackState(I)V
    .locals 6

    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    return-void
.end method

.method public setRcseId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
