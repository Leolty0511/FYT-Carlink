.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0xbb80

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x4fc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field private static final TAGFYT:Ljava/lang/String; = "fytaudio"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F = 0.0f

.field private static mNaviAPP:I = 0x2

.field private static mPid:I

.field private static mProcName:Ljava/lang/String;

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final debugAudioTarck:Z

.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 14

    move-object v10, p0

    move/from16 v7, p7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    .line 3
    iput-boolean v11, v10, Landroid/media/AudioTrack;->debugAudioTarck:Z

    .line 4
    iput v11, v10, Landroid/media/AudioTrack;->mState:I

    const/4 v12, 0x1

    .line 5
    iput v12, v10, Landroid/media/AudioTrack;->mPlayState:I

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 7
    iput v11, v10, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 8
    iput v11, v10, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 9
    iput v12, v10, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v0, 0x4

    .line 10
    iput v0, v10, Landroid/media/AudioTrack;->mChannels:I

    const/4 v1, 0x3

    .line 11
    iput v1, v10, Landroid/media/AudioTrack;->mStreamType:I

    .line 12
    iput v12, v10, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 13
    iput v0, v10, Landroid/media/AudioTrack;->mChannelConfiguration:I

    const/4 v13, 0x2

    .line 14
    iput v13, v10, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 15
    iput v11, v10, Landroid/media/AudioTrack;->mSessionId:I

    .line 16
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 19
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMyPid()I

    move-result v3

    .line 20
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.goodocom.gocsdk"

    .line 21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    sget v0, Landroid/media/AudioTrack;->mNaviAPP:I

    if-ne v0, v13, :cond_2

    .line 23
    :try_start_0
    invoke-interface {v1, v3}, Landroid/media/IAudioService;->ismapapplication(I)I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->mNaviAPP:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "android.media.AudioTrack"

    const-string v3, "Dead object in write"

    .line 24
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_2
    :goto_0
    sget v0, Landroid/media/AudioTrack;->mNaviAPP:I

    if-ne v0, v12, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    move v0, p1

    .line 26
    :goto_1
    iget-object v1, v10, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    iput-object v2, v10, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    move-object v1, p0

    move v2, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 29
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    move/from16 v1, p5

    .line 30
    invoke-direct {p0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    if-ltz v7, :cond_6

    new-array v0, v12, [I

    aput v7, v0, v11

    .line 31
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, v10, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, v10, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, v10, Landroid/media/AudioTrack;->mChannels:I

    iget v6, v10, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, v10, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, v10, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_4
    aget v0, v0, v11

    iput v0, v10, Landroid/media/AudioTrack;->mSessionId:I

    .line 34
    iget v0, v10, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_5

    .line 35
    iput v13, v10, Landroid/media/AudioTrack;->mState:I

    goto :goto_2

    .line 36
    :cond_5
    iput v12, v10, Landroid/media/AudioTrack;->mState:I

    :goto_2
    return-void

    .line 37
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 38
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    mul-int/2addr v0, v1

    .line 2
    rem-int v1, p1, v0

    if-nez v1, :cond_1

    if-lt p1, v2, :cond_1

    .line 3
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 4
    div-int/2addr p1, v0

    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid audio buffer size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private audioParamCheck(IIIII)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/4 v4, 0x6

    if-eq p1, v4, :cond_1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid stream type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    const/16 p1, 0xfa0

    if-lt p2, p1, :cond_a

    const p1, 0xbb80

    if-gt p2, p1, :cond_a

    .line 3
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 4
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eq p3, v2, :cond_4

    if-eq p3, v3, :cond_4

    const/16 p1, 0xc

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_4

    if-eq p3, p1, :cond_3

    .line 5
    invoke-static {p3}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput p3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    iput p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported channel configuration."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 10
    iput p1, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_1

    .line 11
    :cond_4
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 12
    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    :goto_1
    if-eq p4, v2, :cond_7

    if-eq p4, v3, :cond_6

    if-ne p4, v0, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_6
    :goto_2
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_3

    .line 15
    :cond_7
    iput v3, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    :goto_3
    if-eq p5, v2, :cond_9

    if-nez p5, :cond_8

    goto :goto_4

    .line 16
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_9
    :goto_4
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    return-void

    .line 18
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "Hz is not a supported sample rate."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getMaxVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, -0x2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/16 v3, 0xc

    if-eq p1, v3, :cond_1

    and-int/lit16 v3, p1, 0x4fc

    if-eq v3, p1, :cond_0

    const-string p0, "getMinBufferSize(): Invalid channel configuration."

    .line 1
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v2, :cond_3

    if-eq p2, v0, :cond_3

    const-string p0, "getMinBufferSize(): Invalid audio format."

    .line 3
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_3
    const/16 v0, 0xfa0

    if-lt p0, v0, :cond_6

    const v0, 0xbb80

    if-le p0, v0, :cond_4

    goto :goto_1

    .line 4
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result p0

    if-gtz p0, :cond_5

    const-string p0, "getMinBufferSize(): error querying hardware"

    .line 5
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    :cond_5
    return p0

    .line 6
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMinBufferSize(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Hz is not a supported sample rate."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public static getMinVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getMyPid()I
    .locals 1

    .line 1
    sget v0, Landroid/media/AudioTrack;->mPid:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->mPid:I

    .line 3
    :cond_0
    sget v0, Landroid/media/AudioTrack;->mPid:I

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result p0

    return p0
.end method

.method private static getProcName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    sget v1, Landroid/media/AudioTrack;->mPid:I

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->procName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "android.media.AudioTrack"

    const-string v2, "Dead object in AudioTrack"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/AudioTrack;->sService:Landroid/media/IAudioService;

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

    sput-object v0, Landroid/media/AudioTrack;->sService:Landroid/media/IAudioService;

    return-object v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 3

    and-int/lit16 v0, p0, 0x4fc

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    const-string p0, "Channel configuration features unsupported channels"

    .line 1
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0xc

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const-string p0, "Front channels must be present in multichannel configurations"

    .line 2
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0xc0

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_2

    const-string p0, "Rear channels can\'t be used independently"

    .line 3
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.AudioTrack"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.AudioTrack"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioTrack;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result p1

    return p1
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    aget-wide v1, v0, v2

    iput-wide v1, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 v1, 0x1

    .line 3
    aget-wide v2, v0, v1

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return v1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public pause()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getMyPid()I

    .line 4
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "pause"

    aput-object v2, v4, v1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v5, v1, v1, v4}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "android.media.AudioTrack"

    const-string v2, "Dead object in pause"

    .line 6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 9
    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public play()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getMyPid()I

    .line 4
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "play"

    aput-object v2, v3, v1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v4, v1, v1, v3}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "android.media.AudioTrack"

    const-string v2, "Dead object in play"

    .line 6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    const/4 v1, 0x3

    .line 9
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public reloadStaticData()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 4
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 5
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    const/4 p1, 0x0

    return p1
.end method

.method public setLoopPoints(III)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    .line 2
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_3

    if-ge p1, p2, :cond_3

    if-le p2, v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result p1

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x2

    return p1

    :cond_4
    :goto_2
    const/4 p1, -0x3

    return p1
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result p1

    return p1
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x2

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x3

    return p1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    :goto_0
    return-void
.end method

.method public setPlaybackRate(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, -0x2

    return p1

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result p1

    return p1
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result p1

    return p1
.end method

.method public setState(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 4
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 5
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 6
    :cond_2
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 7
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 8
    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 9
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 10
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    const/4 p1, 0x0

    return p1
.end method

.method public setVolume(F)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getMyPid()I

    .line 4
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v2, "stop"

    aput-object v2, v3, v1

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v4, v2, v2, v3}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "android.media.AudioTrack"

    const-string v3, "Dead object in stop"

    .line 6
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 9
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)I
    .locals 11

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    add-int v0, p2, p3

    if-ltz v0, :cond_7

    .line 2
    array-length v1, p1

    if-le v0, v1, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/media/AudioTrack;->getMyPid()I

    .line 5
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget v2, Landroid/media/AudioTrack;->mNaviAPP:I

    const-string v3, "Dead object in write"

    const-string v4, "android.media.AudioTrack"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 7
    :try_start_0
    sget v2, Landroid/media/AudioTrack;->mPid:I

    invoke-interface {v0, v2}, Landroid/media/IAudioService;->ismapapplication(I)I

    move-result v2

    sput v2, Landroid/media/AudioTrack;->mNaviAPP:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_2
    :goto_0
    sget v2, Landroid/media/AudioTrack;->mNaviAPP:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    :try_start_1
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v9, "play"

    aput-object v9, v2, v8

    .line 10
    invoke-interface {v0, v7, v6, v6, v2}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 11
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo v2, "title.navi"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.navngo.igo.javaclient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v9, 0x50

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 14
    :catch_2
    :cond_4
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result p1

    .line 15
    sget p2, Landroid/media/AudioTrack;->mNaviAPP:I

    if-ne p2, v8, :cond_5

    :try_start_3
    new-array p2, v5, [Ljava/lang/String;

    aput-object v1, p2, v7

    const-string p3, "end"

    aput-object p3, p2, v8

    .line 16
    invoke-interface {v0, v7, v6, v6, p2}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 17
    invoke-static {v4, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_5
    :goto_2
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_6

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    if-ne p2, v5, :cond_6

    if-lez p1, :cond_6

    .line 19
    iput v8, p0, Landroid/media/AudioTrack;->mState:I

    :cond_6
    return p1

    :cond_7
    :goto_3
    const/4 p1, -0x2

    return p1
.end method

.method public write([SII)I
    .locals 10

    .line 20
    invoke-static {}, Landroid/media/AudioTrack;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 21
    invoke-static {}, Landroid/media/AudioTrack;->getMyPid()I

    .line 22
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v1

    .line 23
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v2, p2, p3

    if-ltz v2, :cond_6

    .line 24
    array-length v3, p1

    if-le v2, v3, :cond_1

    goto :goto_3

    .line 25
    :cond_1
    sget v2, Landroid/media/AudioTrack;->mNaviAPP:I

    const-string v3, "Dead object in write"

    const-string v4, "android.media.AudioTrack"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 26
    :try_start_0
    sget v2, Landroid/media/AudioTrack;->mPid:I

    invoke-interface {v0, v2}, Landroid/media/IAudioService;->ismapapplication(I)I

    move-result v2

    sput v2, Landroid/media/AudioTrack;->mNaviAPP:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 27
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_2
    :goto_0
    sget v2, Landroid/media/AudioTrack;->mNaviAPP:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    :try_start_1
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v9, "play"

    aput-object v9, v2, v8

    .line 29
    invoke-interface {v0, v7, v6, v6, v2}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 30
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_3
    :goto_1
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result p1

    .line 32
    sget p2, Landroid/media/AudioTrack;->mNaviAPP:I

    if-ne p2, v8, :cond_4

    :try_start_2
    new-array p2, v5, [Ljava/lang/String;

    aput-object v1, p2, v7

    const-string p3, "end"

    aput-object p3, p2, v8

    .line 33
    invoke-interface {v0, v7, v6, v6, p2}, Landroid/media/IAudioService;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 34
    invoke-static {v4, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_4
    :goto_2
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_5

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    if-ne p2, v5, :cond_5

    if-lez p1, :cond_5

    .line 36
    iput v8, p0, Landroid/media/AudioTrack;->mState:I

    :cond_5
    return p1

    :cond_6
    :goto_3
    const/4 p1, -0x2

    return p1
.end method
