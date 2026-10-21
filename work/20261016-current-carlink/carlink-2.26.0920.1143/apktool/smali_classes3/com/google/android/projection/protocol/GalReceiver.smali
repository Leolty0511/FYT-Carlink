.class public Lcom/google/android/projection/protocol/GalReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeObject;
.implements Lcom/google/android/projection/protocol/ControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;,
        Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;,
        Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;,
        Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;,
        Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;,
        Lcom/google/android/projection/protocol/GalReceiver$CarInfo;,
        Lcom/google/android/projection/protocol/GalReceiver$FrameParser;,
        Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;,
        Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;
    }
.end annotation


# static fields
.field public static final AUDIO_FOCUS_GAIN:I

.field public static final AUDIO_FOCUS_GAIN_TRANSIENT:I

.field public static final AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK:I

.field public static final AUDIO_FOCUS_RELEASE:I

.field public static final AUDIO_FOCUS_STATE_GAIN:I

.field public static final AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY:I

.field public static final AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

.field public static final AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:I

.field public static final AUDIO_FOCUS_STATE_LOSS:I

.field public static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

.field public static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

.field public static final BYEBYE_REASON_USER_SELECTION:I = 0x1

.field public static final DRIVER_SIDE_CENTER:I = 0x2

.field public static final DRIVER_SIDE_LEFT:I = 0x0

.field public static final DRIVER_SIDE_RIGHT:I = 0x1

.field public static final NAVIGATION_FOCUS_STATE_NATIVE:I

.field public static final NAVIGATION_FOCUS_STATE_PROJECTED:I

.field private static final TAG:Ljava/lang/String; = "AHU.GAL_RECEIVER"

.field private static final VERBOSE_LOGGING_ENABLED:Z = false

.field public static final VOICE_RECOGNITION_STATE_ENDED:I

.field public static final VOICE_RECOGNITION_STATE_STARTED:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

.field private final mAudioFocusListener:Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;

.field private final mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

.field private final mGalio:Lcom/google/android/projection/protocol/InputOutputThreads;

.field private mNativeGalReceiver:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final mPhoneInfoListener:Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;

.field private final mProjectedModeIconReceiver:Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;

.field private final mRegisteredServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/projection/protocol/CarServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_GAIN:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN:I

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_LOSS:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT:I

    .line 40
    .line 41
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY:I

    .line 48
    .line 49
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY:I

    .line 56
    .line 57
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->AUDIO_FOCUS_RELEASE:Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->getNumber()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_RELEASE:I

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->AUDIO_FOCUS_GAIN:Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->getNumber()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN:I

    .line 72
    .line 73
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->AUDIO_FOCUS_GAIN_TRANSIENT:Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->getNumber()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN_TRANSIENT:I

    .line 80
    .line 81
    sget-object v0, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK:Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AudioFocusRequestType;->getNumber()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK:I

    .line 88
    .line 89
    sget-object v0, Lcom/google/android/projection/proto/Protos$VoiceSessionStatus;->VOICE_SESSION_START:Lcom/google/android/projection/proto/Protos$VoiceSessionStatus;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VoiceSessionStatus;->getNumber()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->VOICE_RECOGNITION_STATE_STARTED:I

    .line 96
    .line 97
    sget-object v0, Lcom/google/android/projection/proto/Protos$VoiceSessionStatus;->VOICE_SESSION_END:Lcom/google/android/projection/proto/Protos$VoiceSessionStatus;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VoiceSessionStatus;->getNumber()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->VOICE_RECOGNITION_STATE_ENDED:I

    .line 104
    .line 105
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavFocusType;->NAV_FOCUS_NATIVE:Lcom/google/android/projection/proto/Protos$NavFocusType;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavFocusType;->getNumber()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->NAVIGATION_FOCUS_STATE_NATIVE:I

    .line 112
    .line 113
    sget-object v0, Lcom/google/android/projection/proto/Protos$NavFocusType;->NAV_FOCUS_PROJECTED:Lcom/google/android/projection/proto/Protos$NavFocusType;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NavFocusType;->getNumber()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sput v0, Lcom/google/android/projection/protocol/GalReceiver;->NAVIGATION_FOCUS_STATE_PROJECTED:I

    .line 120
    .line 121
    invoke-static {}, Lcom/google/android/projection/protocol/ReceiverLibJni;->load()V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Landroid/os/Handler;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v4, Lcom/google/android/projection/protocol/a;

    invoke-direct {v4}, Lcom/google/android/projection/protocol/a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/projection/protocol/GalReceiver;-><init>(Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Landroid/os/Handler;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Landroid/os/Handler;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    .line 6
    iput-object p2, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAudioFocusListener:Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;

    .line 7
    iput-object p3, p0, Lcom/google/android/projection/protocol/GalReceiver;->mProjectedModeIconReceiver:Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;

    .line 8
    iput-object p4, p0, Lcom/google/android/projection/protocol/GalReceiver;->mPhoneInfoListener:Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;

    .line 9
    iput-object p5, p0, Lcom/google/android/projection/protocol/GalReceiver;->mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

    .line 10
    iput-object p6, p0, Lcom/google/android/projection/protocol/GalReceiver;->handler:Landroid/os/Handler;

    .line 11
    new-instance p1, Lcom/google/android/projection/protocol/InputOutputThreads;

    new-instance p2, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;

    invoke-direct {p2, p0}, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;-><init>(Lcom/google/android/projection/protocol/GalReceiver;)V

    invoke-direct {p1, p6, p2}, Lcom/google/android/projection/protocol/InputOutputThreads;-><init>(Landroid/os/Handler;Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;)V

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->mGalio:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 12
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeInit()V

    .line 13
    invoke-direct {p0, p8, p9, p10}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCreds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0, p7}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCarInfo(Lcom/google/android/projection/protocol/GalReceiver$CarInfo;)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SSL initialization failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/google/android/projection/proto/Common$PhoneInfo;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->lambda$new$0(Lcom/google/android/projection/proto/Common$PhoneInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/protocol/GalReceiver;)Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/protocol/GalReceiver;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeFlushControllerChannelQueue()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativePrepareShutdown()V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/android/projection/protocol/GalReceiver;[B)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeGetAdditionalBytesToRead([B)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/protocol/GalReceiver;[BI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->nativeQueueIncoming([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/protocol/GalReceiver;[B)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeGetEncodedFrame([B)I

    move-result p0

    return p0
.end method

.method private destroyCarServices()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/google/android/projection/protocol/CarServiceProvider;

    .line 23
    .line 24
    invoke-interface {v1}, Lcom/google/android/projection/protocol/NativeObject;->destroy()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/google/android/projection/proto/Common$PhoneInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private native nativeFlushControllerChannelQueue()V
.end method

.method private native nativeGetAdditionalBytesToRead([B)I
.end method

.method private native nativeGetEncodedFrame([B)I
.end method

.method private native nativeInit()V
.end method

.method private native nativePrepareShutdown()V
.end method

.method private native nativeQueueIncoming([BI)I
.end method

.method private native nativeRegister(J)Z
.end method

.method private native nativeSendByeByeRequest(I)V
.end method

.method private native nativeSendByeByeResponse()V
.end method

.method private native nativeSendCarConnectedDevices(Ljava/util/List;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method private native nativeSendUserSwitchResponse(ILcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;)V
.end method

.method private native nativeSetAudioFocus(IZ)V
.end method

.method private native nativeSetCallAvailability(Z)V
.end method

.method private native nativeSetCarInfo(Lcom/google/android/projection/protocol/GalReceiver$CarInfo;)V
.end method

.method private native nativeSetCreds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSetHeadUnitInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetIdentityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetNavFocus(I)V
.end method

.method private native nativeSetTransportConfigurationListener(Lcom/google/android/projection/protocol/ConnectionConfigurationCallbacks;)Z
.end method

.method private native nativeShutdown()V
.end method

.method private native nativeStart()V
.end method

.method private startCarServices()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/google/android/projection/protocol/CarServiceProvider;

    .line 25
    .line 26
    invoke-interface {v4}, Lcom/google/android/projection/protocol/NativeObject;->getNativeInstance()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-direct {p0, v4, v5}, Lcom/google/android/projection/protocol/GalReceiver;->nativeRegister(J)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "Service "

    .line 39
    .line 40
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, " failed to register."

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "AHU.GAL_RECEIVER"

    .line 56
    .line 57
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ge v2, v1, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_2
    return v0
.end method


# virtual methods
.method public audioFocusRequestCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAudioFocusListener:Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;->onAudioFocusRequest(I)V

    return-void
.end method

.method public batteryStatusNotificationCallback(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;->onBatteryStatusNotification(IIZ)V

    return-void
.end method

.method public bugreportRequestCallback(J)V
    .locals 0

    return-void
.end method

.method public byeByeRequestCallback(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ByeByeRequest from phone, reason:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.GAL_RECEIVER"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;->onByeByeRequest(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public byeByeResponseCallback()V
    .locals 2

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    .line 2
    .line 3
    const-string v1, "ByeByeResponse from phone"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;->onByeByeResponse()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public carConnectedDevicesRequestCallback()V
    .locals 2

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    .line 2
    .line 3
    const-string v1, "carConnectedDevicesRequestCallback: user switch is not support, ignored."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->destroyCarServices()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeShutdown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mNativeGalReceiver:J

    return-wide v0
.end method

.method public highLatencyCallback([I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/projection/protocol/GalReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/android/projection/protocol/GalReceiver$1;-><init>(Lcom/google/android/projection/protocol/GalReceiver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public latencyBackToNormalCallback([I)V
    .locals 0

    return-void
.end method

.method public navigationFocusCallback(I)V
    .locals 2

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    .line 2
    .line 3
    const-string v1, "navigation focus request from phone"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;->onNavigationFocusRequest(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mRegisteredServices:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mNativeGalReceiver:J

    .line 23
    .line 24
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/projection/protocol/CarServiceProvider;->create(IJ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string p2, "Service "

    .line 31
    .line 32
    const-string v0, " failed to init."

    .line 33
    .line 34
    const-string v1, "AHU.GAL_RECEIVER"

    .line 35
    .line 36
    invoke-static {p2, p1, v0, v1}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "this service ID is already taken"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string p2, "can\'t register services after teardown"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public sendByeByeRequest(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSendByeByeRequest(I)V

    return-void
.end method

.method public sendByeByeResponse()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSendByeByeResponse()V

    return-void
.end method

.method public sendCarConnectedDevices(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSendCarConnectedDevices(Ljava/util/List;ZZ)V

    return-void
.end method

.method public sendNavigationFocusState(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetNavFocus(I)V

    return-void
.end method

.method public sendUserSwitchResponse(ILcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSendUserSwitchResponse(ILcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;)V

    return-void
.end method

.method public serviceDiscoveryRequestCallback([B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver;->mProjectedModeIconReceiver:Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;

    .line 2
    .line 3
    invoke-interface {p1, p2, p4}, Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;->setProjectedModeIcon([BLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/projection/proto/Common$PhoneInfo;->newBuilder()Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p6, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p6}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->setInstanceId(Ljava/lang/String;)Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/google/android/projection/protocol/GalReceiver;->mPhoneInfoListener:Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Common$PhoneInfo$Builder;->build()Lcom/google/android/projection/proto/Common$PhoneInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1, p5}, Lcom/google/android/projection/protocol/GalReceiver$PhoneInfoListener;->onPhoneInfoAvailable(Lcom/google/android/projection/proto/Common$PhoneInfo;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setAudioFocus(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetAudioFocus(IZ)V

    return-void
.end method

.method public setCallAvailability(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCallAvailability(Z)V

    return-void
.end method

.method public start(Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->startCarServices()Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetTransportConfigurationListener(Lcom/google/android/projection/protocol/ConnectionConfigurationCallbacks;)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeStart()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mGalio:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputOutputThreads;->start(Lcom/google/android/projection/protocol/Transport;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string v0, "can\'t be started after teardown"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mGalio:Lcom/google/android/projection/protocol/InputOutputThreads;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputOutputThreads;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)Z

    return-void
.end method

.method public unrecoverableErrorCallback(I)V
    .locals 2

    .line 1
    const-string v0, "AHU.GAL_RECEIVER"

    .line 2
    .line 3
    const-string v1, "Encountered unrecoverable error!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_PING_TIMEOUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/google/android/projection/protocol/Transport$StopReason;->PING_TIMEOUT:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->forNumber(I)Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;->onUnrecoverableError(Lcom/google/android/projection/proto/Protos$MessageStatus;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public userSwitchRequestCallback(Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;)V
    .locals 1

    .line 1
    const-string p1, "AHU.GAL_RECEIVER"

    .line 2
    .line 3
    const-string v0, "userSwitchRequestCallback: user switch is not support, ignored."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public voiceSessionNotificationCallback(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Voice session notification, status = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.GAL_RECEIVER"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;->onVoiceSessionNotification(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
