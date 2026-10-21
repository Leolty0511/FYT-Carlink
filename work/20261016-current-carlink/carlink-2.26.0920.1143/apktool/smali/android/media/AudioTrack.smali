.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field private static final TAGFYT:Ljava/lang/String; = "fytaudio"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1

.field private static mNaviAPP:I

.field private static mPid:I

.field private static mProcName:Ljava/lang/String;

.field private static sService:Lcom/syu/ipc/IRemoteToolkit;


# instance fields
.field private debugmediaplayer:Z

.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput v0, Landroid/media/AudioTrack;->mPid:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    sput v0, Landroid/media/AudioTrack;->mNaviAPP:I

    .line 15
    .line 16
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
    .locals 7

    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 5
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    .line 9
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    const-string p2, "AudioTrack"

    const-string p3, "AudioTrack()"

    .line 10
    invoke-static {p1, p2, p3}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 80
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 82
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 83
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 84
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 85
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 86
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v2, 0x4

    .line 87
    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v3, 0x3

    .line 88
    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 89
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 90
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 91
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 92
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 94
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 95
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 96
    iput-boolean v0, p0, Landroid/media/AudioTrack;->debugmediaplayer:Z

    .line 97
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 98
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x0

    .line 99
    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 100
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 102
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 103
    :cond_0
    iput-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/media/PlayerBase;->baseRegisterPlayer()V

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_0

    .line 106
    :cond_1
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    move/from16 v6, p3

    move/from16 v7, p5

    const/4 v13, 0x1

    move-object/from16 v1, p1

    .line 11
    invoke-direct {v12, v1, v13}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v14, 0x0

    .line 12
    iput v14, v12, Landroid/media/AudioTrack;->mState:I

    .line 13
    iput v13, v12, Landroid/media/AudioTrack;->mPlayState:I

    .line 14
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v12, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 15
    iput v14, v12, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 16
    iput v14, v12, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 17
    iput v13, v12, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v1, 0x4

    .line 18
    iput v1, v12, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v2, 0x3

    .line 19
    iput v2, v12, Landroid/media/AudioTrack;->mStreamType:I

    .line 20
    iput v13, v12, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 21
    iput v1, v12, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 22
    iput v14, v12, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 23
    iput v14, v12, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v2, 0x0

    .line 24
    iput-object v2, v12, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 25
    iput v14, v12, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 26
    iput v14, v12, Landroid/media/AudioTrack;->mOffset:I

    .line 27
    iput-boolean v14, v12, Landroid/media/AudioTrack;->debugmediaplayer:Z

    .line 28
    iput-object v2, v12, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 29
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v12, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 30
    invoke-static {}, Landroid/media/AudioTrack;->getService()Lcom/syu/ipc/IRemoteToolkit;

    .line 31
    invoke-static {}, Landroid/media/AudioTrack;->getPid()I

    move-result v2

    sput v2, Landroid/media/AudioTrack;->mPid:I

    .line 32
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->fytNewStream()I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 34
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    :cond_0
    const-string/jumbo v2, "persist.fyt.audio_debug"

    .line 35
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v12, Landroid/media/AudioTrack;->debugmediaplayer:Z

    if-eqz v0, :cond_d

    .line 36
    iget-object v2, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    move/from16 v5, p4

    invoke-static {v2, v0, v6, v5}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    iget-object v3, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v3, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 38
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    and-int/lit16 v3, v3, -0x101

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 40
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_2

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :cond_2
    move-object v9, v2

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v14

    .line 43
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    goto :goto_0

    :cond_4
    move v3, v14

    .line 45
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    const/16 v1, 0xc

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v14

    .line 47
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/2addr v1, v13

    if-eqz v1, :cond_7

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    move v10, v0

    goto :goto_3

    :cond_7
    move v10, v13

    :goto_3
    move-object/from16 v0, p0

    move v1, v2

    move v2, v4

    move v4, v10

    move/from16 v5, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 50
    iput v8, v12, Landroid/media/AudioTrack;->mStreamType:I

    .line 51
    invoke-direct {v12, v6}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 52
    iput-object v9, v12, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-ltz v7, :cond_c

    new-array v15, v13, [I

    .line 53
    iget v0, v12, Landroid/media/AudioTrack;->mSampleRate:I

    aput v0, v15, v14

    new-array v10, v13, [I

    aput v7, v10, v14

    .line 54
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v12, Landroid/media/AudioTrack;->mChannelMask:I

    iget v5, v12, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v6, v12, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, v12, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, v12, Landroid/media/AudioTrack;->mDataLoadMode:I

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v3, v15

    move-object v9, v10

    move-object/from16 v18, v10

    move-wide/from16 v10, v16

    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "Error code "

    const-string v2, " when initializing AudioTrack."

    .line 55
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void

    :cond_8
    aget v0, v15, v14

    .line 57
    iput v0, v12, Landroid/media/AudioTrack;->mSampleRate:I

    aget v0, v18, v14

    .line 58
    iput v0, v12, Landroid/media/AudioTrack;->mSessionId:I

    .line 59
    iget-object v0, v12, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 60
    iget v0, v12, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    iget v0, v12, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, v12, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v1, v0

    goto :goto_4

    :cond_9
    move v1, v13

    :goto_4
    const/high16 v0, 0x41a00000    # 20.0f

    int-to-float v2, v1

    div-float/2addr v0, v2

    float-to-double v2, v0

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/2addr v0, v1

    iput v0, v12, Landroid/media/AudioTrack;->mOffset:I

    .line 63
    :cond_a
    iget v0, v12, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_b

    const/4 v0, 0x2

    .line 64
    iput v0, v12, Landroid/media/AudioTrack;->mState:I

    goto :goto_5

    .line 65
    :cond_b
    iput v13, v12, Landroid/media/AudioTrack;->mState:I

    .line 66
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/media/PlayerBase;->baseRegisterPlayer()V

    return-void

    .line 67
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio session ID: "

    .line 68
    invoke-static {v1, v7}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$000(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method public static synthetic access$200(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 11
    .line 12
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 13
    .line 14
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/2addr v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v1

    .line 21
    :goto_0
    rem-int v0, p1, v2

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    if-lt p1, v1, :cond_1

    .line 26
    .line 27
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 28
    .line 29
    div-int/2addr p1, v2

    .line 30
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v0, "Invalid audio buffer size."

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method private audioParamCheck(IIIII)V
    .locals 4

    .line 1
    const/16 v0, 0xfa0

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const v0, 0x2ee00

    .line 6
    .line 7
    .line 8
    if-le p1, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_11

    .line 11
    .line 12
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 13
    .line 14
    const/16 p1, 0xd

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    if-ne p4, p1, :cond_3

    .line 19
    .line 20
    if-ne p2, v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_3
    :goto_0
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    const/4 v1, 0x2

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq p2, v2, :cond_7

    .line 37
    .line 38
    if-eq p2, v1, :cond_7

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    if-eq p2, v3, :cond_6

    .line 42
    .line 43
    if-eq p2, p1, :cond_7

    .line 44
    .line 45
    if-eq p2, v0, :cond_6

    .line 46
    .line 47
    if-nez p2, :cond_4

    .line 48
    .line 49
    if-eqz p3, :cond_4

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 62
    .line 63
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p2, "Unsupported channel configuration."

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_6
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 79
    .line 80
    iput v0, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_7
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 84
    .line 85
    iput p1, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 86
    .line 87
    :goto_1
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 88
    .line 89
    if-eqz p3, :cond_b

    .line 90
    .line 91
    sget p1, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 92
    .line 93
    shl-int p1, v2, p1

    .line 94
    .line 95
    sub-int/2addr p1, v2

    .line 96
    not-int p1, p1

    .line 97
    and-int/2addr p1, p3

    .line 98
    if-nez p1, :cond_a

    .line 99
    .line 100
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget p2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 105
    .line 106
    if-nez p2, :cond_8

    .line 107
    .line 108
    iput p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_8
    if-ne p2, p1, :cond_9

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string p2, "Channel count must match"

    .line 117
    .line 118
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string p2, "Unsupported channel index configuration "

    .line 125
    .line 126
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_b
    :goto_2
    if-ne p4, v2, :cond_c

    .line 135
    .line 136
    move p4, v1

    .line 137
    :cond_c
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_10

    .line 142
    .line 143
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 144
    .line 145
    if-eq p5, v2, :cond_d

    .line 146
    .line 147
    if-nez p5, :cond_e

    .line 148
    .line 149
    :cond_d
    if-eq p5, v2, :cond_f

    .line 150
    .line 151
    invoke-static {p4}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_e

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p2, "Invalid mode."

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_f
    :goto_3
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 167
    .line 168
    return-void

    .line 169
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string p2, "Unsupported audio encoding."

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p1, "Hz is not a supported sample rate."

    .line 188
    .line 189
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p2
.end method

.method private broadcastRoutingChange()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/16 v3, 0x3e8

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v1
.end method

.method private static clampGainOrLevel(F)F
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpg-float v1, p0, v0

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    :goto_0
    move p0, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpl-float v1, p0, v0

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    return p0

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static getMaxVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x2

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq p1, v2, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq p1, v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0xc

    .line 12
    .line 13
    if-eq p1, v2, :cond_2

    .line 14
    .line 15
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p0, "getMinBufferSize(): Invalid channel configuration."

    .line 22
    .line 23
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    const-string p0, "getMinBufferSize(): Invalid audio format."

    .line 40
    .line 41
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_3
    const/16 p1, 0xfa0

    .line 46
    .line 47
    if-lt p0, p1, :cond_6

    .line 48
    .line 49
    const p1, 0x2ee00

    .line 50
    .line 51
    .line 52
    if-le p0, p1, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-gtz p0, :cond_5

    .line 60
    .line 61
    const-string p0, "getMinBufferSize(): error querying hardware"

    .line 62
    .line 63
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, -0x1

    .line 67
    :cond_5
    return p0

    .line 68
    :cond_6
    :goto_1
    const-string p1, "getMinBufferSize(): "

    .line 69
    .line 70
    const-string p2, " Hz is not a supported sample rate."

    .line 71
    .line 72
    invoke-static {p1, p0, p2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v1
.end method

.method public static getMinVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 0

    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result p0

    return p0
.end method

.method private static getPid()I
    .locals 1

    .line 1
    sget v0, Landroid/media/AudioTrack;->mPid:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Landroid/media/AudioTrack;->mPid:I

    .line 10
    .line 11
    :cond_0
    sget v0, Landroid/media/AudioTrack;->mPid:I

    .line 12
    .line 13
    return v0
.end method

.method private static getProcName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/media/AudioTrack;->getService()Lcom/syu/ipc/IRemoteToolkit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    sget v1, Landroid/media/AudioTrack;->mPid:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/syu/ipc/IRemoteToolkit;->procName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v1, "android.media.AudioTrack"

    .line 20
    .line 21
    const-string v2, "Dead object in AudioTrack"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    sget-object v0, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method private static getService()Lcom/syu/ipc/IRemoteToolkit;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/AudioTrack;->sService:Lcom/syu/ipc/IRemoteToolkit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string/jumbo v0, "syu"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/syu/ipc/IRemoteToolkit$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteToolkit;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroid/media/AudioTrack;->sService:Lcom/syu/ipc/IRemoteToolkit;

    .line 18
    .line 19
    return-object v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 4

    .line 1
    and-int/lit16 v0, p0, 0x1cfc

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    const-string p0, "Channel configuration features unsupported channels"

    .line 7
    .line 8
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 17
    .line 18
    if-le v0, v2, :cond_1

    .line 19
    .line 20
    const-string p0, "Channel configuration contains too many channels "

    .line 21
    .line 22
    const-string v3, ">"

    .line 23
    .line 24
    invoke-static {p0, v0, v3, v2}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    and-int/lit8 v0, p0, 0xc

    .line 33
    .line 34
    const/16 v2, 0xc

    .line 35
    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    const-string p0, "Front channels must be present in multichannel configurations"

    .line 39
    .line 40
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    and-int/lit16 v0, p0, 0xc0

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/16 v2, 0xc0

    .line 49
    .line 50
    if-eq v0, v2, :cond_3

    .line 51
    .line 52
    const-string p0, "Rear channels can\'t be used independently"

    .line 53
    .line 54
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_3
    const/16 v0, 0x1800

    .line 59
    .line 60
    and-int/2addr p0, v0

    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    if-eq p0, v0, :cond_4

    .line 64
    .line 65
    const-string p0, "Side channels can\'t be used independently"

    .line 66
    .line 67
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :cond_4
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method private isVoiceApp(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "com.txznet.txz"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "com.syu.voice"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "com.iflytek.speechcloud"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "com.txznet.tts"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "android.media.AudioTrack"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "android.media.AudioTrack"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/media/AudioTrack;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/16 v0, 0x3e8

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq p0, v2, :cond_1

    .line 36
    .line 37
    :cond_0
    return v1

    .line 38
    :cond_1
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-static {p0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-ge p0, v0, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-eq p3, v0, :cond_3

    .line 74
    .line 75
    return v1

    .line 76
    :cond_3
    if-eqz p2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    int-to-long v2, p0

    .line 83
    const-wide/16 v4, 0x64

    .line 84
    .line 85
    mul-long/2addr v2, v4

    .line 86
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {p0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    int-to-long v4, p0

    .line 95
    mul-long/2addr v2, v4

    .line 96
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    int-to-long p0, p0

    .line 101
    mul-long/2addr v2, p0

    .line 102
    const-wide/16 p0, 0x3e8

    .line 103
    .line 104
    div-long/2addr v2, p0

    .line 105
    int-to-long p0, p2

    .line 106
    cmp-long p0, p0, v2

    .line 107
    .line 108
    if-gez p0, :cond_4

    .line 109
    .line 110
    return v1

    .line 111
    :cond_4
    return v0

    .line 112
    :cond_5
    :goto_0
    return v1
.end method

.method private startImpl()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/media/PlayerBase;->baseStart()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 4
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
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

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1

    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method public deferred_connect(J)V
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    iget v0, v12, Landroid/media/AudioTrack;->mState:I

    .line 4
    .line 5
    const/4 v13, 0x1

    .line 6
    if-eq v0, v13, :cond_1

    .line 7
    .line 8
    new-array v14, v13, [I

    .line 9
    .line 10
    const/4 v15, 0x0

    .line 11
    aput v15, v14, v15

    .line 12
    .line 13
    new-array v3, v13, [I

    .line 14
    .line 15
    aput v15, v3, v15

    .line 16
    .line 17
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-direct {v1, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object/from16 v0, p0

    .line 29
    .line 30
    move-object v9, v14

    .line 31
    move-wide/from16 v10, p1

    .line 32
    .line 33
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-string v1, "Error code "

    .line 40
    .line 41
    const-string v2, " when initializing AudioTrack."

    .line 42
    .line 43
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    aget v0, v14, v15

    .line 52
    .line 53
    iput v0, v12, Landroid/media/AudioTrack;->mSessionId:I

    .line 54
    .line 55
    iput v13, v12, Landroid/media/AudioTrack;->mState:I

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/PlayerBase;->baseRelease()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public fytNewStream()I
    .locals 4

    .line 1
    const-string v0, "android.media.AudioTrack"

    .line 2
    .line 3
    invoke-static {}, Landroid/media/AudioTrack;->getService()Lcom/syu/ipc/IRemoteToolkit;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    sget v2, Landroid/media/AudioTrack;->mPid:I

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getPid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    :goto_0
    invoke-interface {v1, v2}, Lcom/syu/ipc/IRemoteToolkit;->ismapapplication(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sput v1, Landroid/media/AudioTrack;->mNaviAPP:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v1

    .line 24
    const-string v2, "Dead object in AudioTrack"

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_1
    sget-object v1, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Landroid/media/AudioTrack;->isVoiceApp(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    sget v1, Landroid/media/AudioTrack;->mNaviAPP:I

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v1, -0x1

    .line 47
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "fyt new stream "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return v1
.end method

.method public fytNotifyService(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/media/AudioTrack;->getService()Lcom/syu/ipc/IRemoteToolkit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/media/AudioTrack;->getPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/media/AudioTrack;->getProcName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v3, p0, Landroid/media/AudioTrack;->debugmediaplayer:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, ">>> AudioTracvk  pid =  "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "mMyProcName="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "state ="

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "fytaudio"

    .line 50
    .line 51
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 v1, 0x2

    .line 55
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    .line 56
    .line 57
    sget-object v2, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    aput-object v2, v1, v3

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    aput-object p1, v1, v2

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-interface {v0, v3, p1, p1, v1}, Lcom/syu/ipc/IRemoteToolkit;->sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    const-string v0, "android.media.AudioTrack"

    .line 72
    .line 73
    const-string v1, "Dead object in start"

    .line 74
    .line 75
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getLatency()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method public getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPerformanceMode()I
    .locals 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    array-length v4, v2

    .line 16
    if-ge v3, v4, :cond_2

    .line 17
    .line 18
    aget-object v4, v2, v3

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ne v4, v0, :cond_1

    .line 25
    .line 26
    aget-object v0, v2, v3

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-object v1
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    aget-wide v1, v0, v2

    .line 15
    .line 16
    iput-wide v1, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aget-wide v2, v0, v1

    .line 20
    .line 21
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aget-wide v2, v0, v2

    .line 12
    .line 13
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aget-wide v2, v0, v2

    .line 17
    .line 18
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public getUnderrunCount()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "stop"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->fytNotifyService(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/PlayerBase;->basePause()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public play()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    const-string/jumbo v0, "play"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->fytNotifyService(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/media/PlayerBase;->getStartDelayMs()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroid/media/AudioTrack$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p1

    return p1
.end method

.method public playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object p1

    return-object p1
.end method

.method public playerPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public playerSetAuxEffectSendLevel(ZF)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    :goto_0
    return p1
.end method

.method public playerSetVolume(ZFF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move p2, v0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    move p3, v0

    .line 12
    :cond_1
    invoke-static {p3}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-direct {p0, p2, p1}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public playerStart()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public playerStop()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    invoke-virtual {p0}, Landroid/media/PlayerBase;->baseRelease()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 12
    .line 13
    return-void
.end method

.method public reloadStaticData()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, -0x3

    .line 17
    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetAuxEffectSendLevel(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-gez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_2
    :goto_0
    const/4 p1, -0x3

    .line 20
    return p1
.end method

.method public setLoopPoints(III)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x3

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-nez p3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-ltz p1, :cond_3

    .line 22
    .line 23
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 24
    .line 25
    if-ge p1, v0, :cond_3

    .line 26
    .line 27
    if-ge p1, p2, :cond_3

    .line 28
    .line 29
    if-le p2, v0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_3
    :goto_1
    const/4 p1, -0x2

    .line 38
    return p1

    .line 39
    :cond_4
    :goto_2
    const/4 p1, -0x3

    .line 40
    return p1
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x3

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-ltz p1, :cond_2

    .line 19
    .line 20
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 21
    .line 22
    if-le p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, -0x2

    .line 31
    return p1

    .line 32
    :cond_3
    :goto_1
    const/4 p1, -0x3

    .line 33
    return p1
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string/jumbo v0, "params is null"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
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
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    :goto_0
    return-void
.end method

.method public setPlaybackRate(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, -0x3

    .line 7
    return p1

    .line 8
    :cond_0
    if-gtz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    return p1

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_2
    :goto_0
    return v0
.end method

.method public setState(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x3

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/PlayerBase;->baseSetVolume(FF)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public setVolume(F)I
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "stop"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->fytNotifyService(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/PlayerBase;->baseStop()V

    .line 19
    .line 20
    .line 21
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 9

    .line 28
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const-string v1, "android.media.AudioTrack"

    if-nez v0, :cond_0

    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    return p1

    :cond_0
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v2, :cond_1

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_8

    if-ltz p2, :cond_8

    .line 31
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-le p2, v3, :cond_2

    goto :goto_3

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_3

    move v8, v2

    goto :goto_0

    :cond_3
    move v8, v1

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v6, p2

    .line 34
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result p2

    goto :goto_2

    .line 35
    :cond_4
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 36
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int v5, v3, v0

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5

    move v8, v2

    goto :goto_1

    :cond_5
    move v8, v1

    :goto_1
    move-object v3, p0

    move v6, p2

    .line 37
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p2

    .line 38
    :goto_2
    iget p3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p3, :cond_6

    iget p3, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    if-lez p2, :cond_6

    .line 39
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    :cond_6
    if-lez p2, :cond_7

    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7
    return p2

    :cond_8
    :goto_3
    const-string p1, "AudioTrack.write() called with invalid size ("

    const-string p3, ") value"

    .line 41
    invoke-static {p1, p2, p3, v1}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 5

    .line 48
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_0

    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    .line 49
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 50
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 51
    :cond_1
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v3, :cond_2

    const-string p1, "AudioTrack.write() with timestamp called for non-streaming mode track"

    .line 52
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 53
    :cond_2
    iget-object v1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    const-string p4, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    .line 54
    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    :cond_3
    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    .line 56
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_4

    goto/16 :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 58
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 59
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550002

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    :cond_5
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 62
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 64
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget p5, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {p4, v3, p5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 65
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 67
    :cond_6
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_8

    .line 68
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p4, v0, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p4

    if-gez p4, :cond_7

    const-string p1, "AudioTrack.write() could not write timestamp header!"

    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 71
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return p4

    .line 72
    :cond_7
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    if-lez p4, :cond_8

    const-string p1, "AudioTrack.write() partial timestamp header written."

    .line 73
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 74
    :cond_8
    iget p4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_9

    const-string p2, "AudioTrack.write() could not write audio data!"

    .line 76
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 78
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return p1

    .line 79
    :cond_9
    iget p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return p1

    :cond_a
    :goto_0
    const-string p1, "AudioTrack.write() called with invalid size ("

    const-string p3, ") value"

    .line 80
    invoke-static {p1, p2, p3, v2}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public write([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result p1

    return p1
.end method

.method public write([BIII)I
    .locals 10

    .line 2
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string p1, "android.media.AudioTrack"

    const-string p2, "AudioTrack.write() called with invalid blocking mode"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    add-int v2, p2, p3

    if-ltz v2, :cond_7

    .line 4
    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v0, Landroid/media/AudioTrack;->mNaviAPP:I

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "title.navi"

    .line 6
    sget-object v2, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.navngo.igo.javaclient"

    sget-object v2, Landroid/media/AudioTrack;->mProcName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x50

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_4
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_5

    move v9, v1

    goto :goto_0

    :cond_5
    const/4 p4, 0x0

    move v9, p4

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p1

    .line 9
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_6

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_6

    if-lez p1, :cond_6

    .line 10
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_6
    return p1

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    const/4 p1, -0x3

    return p1
.end method

.method public write([FIII)I
    .locals 9

    .line 18
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioTrack"

    if-nez v0, :cond_0

    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    .line 19
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 20
    :cond_0
    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v0, 0x4

    if-eq v7, v0, :cond_1

    const-string p1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v3, p2, p3

    if-ltz v3, :cond_6

    .line 23
    array-length v4, p1

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    move v8, v1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    move v8, p4

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 24
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result p1

    .line 25
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_5

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    if-lez p1, :cond_5

    .line 26
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_5
    return p1

    :cond_6
    :goto_1
    const-string p1, "AudioTrack.write() called with invalid array, offset, or size"

    .line 27
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public write([SII)I
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result p1

    return p1
.end method

.method public write([SIII)I
    .locals 8

    .line 12
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v5, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v0, 0x4

    if-ne v5, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    const/4 v7, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v7, :cond_1

    const-string p1, "android.media.AudioTrack"

    const-string p2, "AudioTrack.write() called with invalid blocking mode"

    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v1, p2, p3

    if-ltz v1, :cond_5

    .line 14
    array-length v2, p1

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez p4, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    move v6, p4

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 15
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result p1

    .line 16
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_4

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    if-lez p1, :cond_4

    .line 17
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    const/4 p1, -0x3

    return p1
.end method
