.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$ReadMode;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeDeviceCallback:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-static {p3, v1}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p2

    const/4 p3, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p5, p3}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    .line 75
    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 78
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 79
    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 80
    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 81
    iput v0, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 82
    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 83
    iput-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 84
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 85
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 86
    iput-object v1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    const-wide/16 v1, 0x0

    .line 87
    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeRecorderInJavaObj:J

    .line 88
    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeCallbackCookie:J

    .line 89
    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeDeviceCallback:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->deferred_connect(J)V

    goto :goto_0

    .line 91
    :cond_0
    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 20

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    .line 10
    iput v13, v12, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    .line 11
    iput v1, v12, Landroid/media/AudioRecord;->mRecordingState:I

    .line 12
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v12, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    const/4 v14, 0x0

    .line 13
    iput-object v14, v12, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 14
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v12, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 15
    iput-object v14, v12, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 16
    iput-object v14, v12, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 17
    iput v13, v12, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 18
    iput v13, v12, Landroid/media/AudioRecord;->mSessionId:I

    .line 19
    iput-boolean v13, v12, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 20
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v12, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 21
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v12, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 22
    iput-object v14, v12, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 23
    iput v1, v12, Landroid/media/AudioRecord;->mRecordingState:I

    if-eqz v0, :cond_d

    if-eqz p2, :cond_c

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v12, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v2, :cond_0

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v12, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 26
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/16 v3, 0x8

    const-string v15, "android.media.AudioRecord"

    if-ne v2, v3, :cond_3

    .line 27
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 29
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "fixedVolume"

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    iput-boolean v1, v12, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    const-string v5, "Will record from REMOTE_SUBMIX at full fixed volume"

    .line 33
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2, v5}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 36
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v12, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto :goto_1

    .line 37
    :cond_3
    iput-object v0, v12, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 38
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v13

    .line 39
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v1

    .line 41
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-direct {v12, v0, v2, v4}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    iput v0, v12, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iput v0, v12, Landroid/media/AudioRecord;->mChannelCount:I

    .line 45
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-static {v0, v13}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, v12, Landroid/media/AudioRecord;->mChannelMask:I

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iput v0, v12, Landroid/media/AudioRecord;->mChannelCount:I

    goto :goto_3

    .line 48
    :cond_7
    iget v0, v12, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v0, :cond_8

    .line 49
    invoke-static {v1, v13}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, v12, Landroid/media/AudioRecord;->mChannelMask:I

    .line 50
    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v0

    iput v0, v12, Landroid/media/AudioRecord;->mChannelCount:I

    :cond_8
    :goto_3
    move/from16 v0, p3

    .line 51
    invoke-direct {v12, v0}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    new-array v10, v1, [I

    .line 52
    iget v0, v12, Landroid/media/AudioRecord;->mSampleRate:I

    aput v0, v10, v13

    new-array v11, v1, [I

    aput p4, v11, v13

    .line 53
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v12, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v4, v12, Landroid/media/AudioRecord;->mChannelMask:I

    iget v5, v12, Landroid/media/AudioRecord;->mChannelIndexMask:I

    iget v6, v12, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v7, v12, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 54
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v3, v10

    move-object v8, v11

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide/from16 v10, v16

    .line 55
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "Error code "

    const-string v2, " when initializing native AudioRecord object."

    .line 56
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void

    :cond_9
    aget v0, v18, v13

    .line 58
    iput v0, v12, Landroid/media/AudioRecord;->mSampleRate:I

    aget v0, v19, v13

    .line 59
    iput v0, v12, Landroid/media/AudioRecord;->mSessionId:I

    const-string/jumbo v0, "service.project.sec"

    .line 60
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "media.recorder"

    const/16 v2, 0xa

    .line 62
    invoke-static {v0, v1, v2, v13, v14}, Landroid/os/Binder;->dojudge(ILjava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "AudioRecord  setup allow "

    .line 63
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string v0, "AudioRecord  setup  reject "

    .line 64
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    :goto_4
    const/4 v0, 0x1

    .line 65
    iput v0, v12, Landroid/media/AudioRecord;->mState:I

    return-void

    .line 66
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$000(Landroid/media/AudioRecord;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object p0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 2
    .line 3
    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 4
    .line 5
    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/2addr v1, v0

    .line 10
    rem-int v0, p1, v1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v2, "Invalid audio buffer size "

    .line 23
    .line 24
    const-string v3, " (frame size "

    .line 25
    .line 26
    const-string v4, ")"

    .line 27
    .line 28
    invoke-static {v2, p1, v3, v1, v4}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private audioParamCheck(III)V
    .locals 1

    .line 1
    if-ltz p1, :cond_7

    .line 2
    .line 3
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x7ce

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x7cf

    .line 14
    .line 15
    if-ne p1, v0, :cond_7

    .line 16
    .line 17
    :cond_0
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 18
    .line 19
    const/16 p1, 0xfa0

    .line 20
    .line 21
    if-lt p2, p1, :cond_1

    .line 22
    .line 23
    const p1, 0x2ee00

    .line 24
    .line 25
    .line 26
    if-le p2, p1, :cond_2

    .line 27
    .line 28
    :cond_1
    if-nez p2, :cond_6

    .line 29
    .line 30
    :cond_2
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    const/4 p2, 0x2

    .line 34
    if-eq p3, p1, :cond_5

    .line 35
    .line 36
    if-eq p3, p2, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x3

    .line 39
    if-eq p3, p1, :cond_4

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    if-ne p3, p1, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p2, "Unsupported sample encoding "

    .line 48
    .line 49
    const-string v0, ". Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    .line 50
    .line 51
    invoke-static {p2, p3, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_4
    :goto_0
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    iput p2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, "Hz is not a supported sample rate."

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p3, "MediaRecorder.getAudioSourceMax"

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1
.end method

.method private broadcastRoutingChange()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

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
    check-cast v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

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

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eq p0, v0, :cond_2

    .line 7
    .line 8
    if-eq p0, v3, :cond_2

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-eq p0, v2, :cond_1

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    .line 18
    const/16 v0, 0x30

    .line 19
    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    move v1, p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p1, "Unsupported channel configuration."

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    move v1, v0

    .line 33
    :cond_2
    :goto_0
    if-nez p1, :cond_4

    .line 34
    .line 35
    if-eq p0, v3, :cond_3

    .line 36
    .line 37
    if-eq p0, v2, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p1, "Unsupported deprecated configuration."

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_4
    :goto_1
    return v1
.end method

.method public static getMinBufferSize(III)I
    .locals 4

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq p1, v3, :cond_0

    .line 10
    .line 11
    const/16 v3, 0xc

    .line 12
    .line 13
    if-eq p1, v3, :cond_0

    .line 14
    .line 15
    const/16 v3, 0x10

    .line 16
    .line 17
    if-eq p1, v3, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x30

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    const-string p0, "getMinBufferSize(): Invalid channel configuration."

    .line 24
    .line 25
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :cond_1
    invoke-static {p0, v1, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    const/4 p1, -0x1

    .line 38
    if-ne p0, p1, :cond_3

    .line 39
    .line 40
    return p1

    .line 41
    :cond_3
    return p0
.end method

.method private handleFullVolumeRec(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "audio"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string v0, "android.media.AudioRecord"

    .line 24
    .line 25
    const-string v1, "Error talking to AudioService when handling full submix volume"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "android.media.AudioRecord"

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
    const-string v0, "android.media.AudioRecord"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_buffer_size_in_frames()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_timestamp(Landroid/media/AudioTimestamp;I)I
.end method

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
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
    check-cast p0, Landroid/media/AudioRecord;

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
    invoke-direct {p0}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

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
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

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
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/media/AudioRecord;->testEnableNativeRoutingCallbacksLocked()V

    .line 4
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

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

.method public deferred_connect(J)V
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    iget v0, v12, Landroid/media/AudioRecord;->mState:I

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
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    move-object/from16 v0, p0

    .line 32
    .line 33
    move-object v8, v14

    .line 34
    move-wide/from16 v10, p1

    .line 35
    .line 36
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const-string v1, "Error code "

    .line 43
    .line 44
    const-string v2, " when initializing native AudioRecord object."

    .line 45
    .line 46
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    aget v0, v14, v15

    .line 55
    .line 56
    iput v0, v12, Landroid/media/AudioRecord;->mSessionId:I

    .line 57
    .line 58
    iput v13, v12, Landroid/media/AudioRecord;->mState:I

    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

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
    iget v1, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

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
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

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

.method public getNotificationMarkerPosition()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

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

.method public getRecordingState()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

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

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

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
    const/4 v2, 0x1

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

    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_get_timestamp(Landroid/media/AudioTimestamp;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final native native_release()V
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .locals 2

    .line 19
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    const/4 v0, -0x2

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_1

    const-string p1, "android.media.AudioRecord"

    const-string p2, "AudioRecord.read() called with invalid blocking mode"

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_4

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public read([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result p1

    return p1
.end method

.method public read([BIII)I
    .locals 4

    .line 2
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string p1, "android.media.AudioRecord"

    const-string p2, "AudioRecord.read() called with invalid blocking mode"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v2, p2, p3

    if-ltz v2, :cond_4

    .line 4
    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p1, -0x3

    return p1
.end method

.method public read([FIII)I
    .locals 4

    .line 11
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioRecord"

    if-nez v0, :cond_0

    const-string p1, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    .line 12
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_0
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const-string p1, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    .line 14
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    const-string p1, "AudioRecord.read() called with invalid blocking mode"

    .line 15
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    .line 16
    array-length v3, p1

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public read([SII)I
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p1

    return p1
.end method

.method public read([SIII)I
    .locals 4

    .line 7
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string p1, "android.media.AudioRecord"

    const-string p2, "AudioRecord.read() called with invalid blocking mode"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v2, p2, p3

    if-ltz v2, :cond_4

    .line 9
    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p1, -0x3

    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 9
    .line 10
    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Landroid/media/AudioRecord;->testDisableNativeRoutingCallbacksLocked()V

    .line 5
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

.method public setNotificationMarkerPosition(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

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
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

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
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

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
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

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
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

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
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

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

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object p2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, p0, p2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startRecording()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, v2, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3

    .line 8
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result p1

    invoke-direct {p0, v2, p1}, Landroid/media/AudioRecord;->native_start(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-direct {p0, v1}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    const/4 p1, 0x3

    .line 12
    iput p1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 14
    .line 15
    .line 16
    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
