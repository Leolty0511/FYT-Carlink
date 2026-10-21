.class public Lcom/google/android/projection/protocol/GalVerificationVendorExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/GalVerificationVendorExtensionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.GVVE"


# instance fields
.field private final mAudioFocusManager:Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;

.field private final mInputSource:Lcom/google/android/projection/protocol/InputSource;

.field private mNativeGalVerificationVendorExtension:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final mSensorSource:Lcom/google/android/projection/protocol/SensorSource;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceHeight:I

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private final mVideoSink:Lcom/google/android/projection/protocol/VideoSink;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/SensorSource;Lcom/google/android/projection/protocol/VideoSink;Lcom/google/android/projection/protocol/InputSource;Landroid/view/SurfaceView;Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$1;-><init>(Lcom/google/android/projection/protocol/GalVerificationVendorExtension;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSensorSource:Lcom/google/android/projection/protocol/SensorSource;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceView:Landroid/view/SurfaceView;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mAudioFocusManager:Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic access$002(Lcom/google/android/projection/protocol/GalVerificationVendorExtension;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceWidth:I

    return p1
.end method

.method public static synthetic access$102(Lcom/google/android/projection/protocol/GalVerificationVendorExtension;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceHeight:I

    return p1
.end method

.method private native nativeCloseChannel()Z
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeSend([B)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public closeChannel()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->nativeCloseChannel()Z

    return-void
.end method

.method public create(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->nativeInit(IJ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceView:Landroid/view/SurfaceView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 16
    .line 17
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceView:Landroid/view/SurfaceView;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceWidth:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceView:Landroid/view/SurfaceView;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceHeight:I

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->nativeShutdown()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mNativeGalVerificationVendorExtension:J

    return-wide v0
.end method

.method public injectInputCallback([B)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationInjectInput;->parseFrom([B)Lcom/google/android/projection/proto/Protos$GalVerificationInjectInput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationInjectInput;->getInput()Lcom/google/android/projection/proto/Protos$InputReport;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/InputSource;->injectForTest(Lcom/google/android/projection/proto/Protos$InputReport;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Error parsing input data of length: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    array-length p1, p1

    .line 29
    const-string v1, "AHU.GVVE"

    .line 30
    .line 31
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public injectSensorDataCallback([B)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationSetSensor;->parseFrom([B)Lcom/google/android/projection/proto/Protos$GalVerificationSetSensor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSensorSource:Lcom/google/android/projection/protocol/SensorSource;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationSetSensor;->getSensors()Lcom/google/android/projection/proto/Protos$SensorBatch;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/SensorSource;->injectForTest(Lcom/google/android/projection/proto/Protos$SensorBatch;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Error parsing sensor data of length: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    array-length p1, p1

    .line 29
    const-string v1, "AHU.GVVE"

    .line 30
    .line 31
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public overrideNightMode(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSensorSource:Lcom/google/android/projection/protocol/SensorSource;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->overrideNightModeData(Ljava/lang/Boolean;)V

    return-void
.end method

.method public requestAudioFocusChangeCallback([B)I
    .locals 5

    .line 1
    const-string v0, "AHU.GVVE"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationAudioFocus;->parseFrom([B)Lcom/google/android/projection/proto/Protos$GalVerificationAudioFocus;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mAudioFocusManager:Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;

    .line 8
    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$GalVerificationAudioFocus;->getAudioFocusState()Lcom/google/android/projection/proto/Protos$AudioFocusStateType;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$AudioFocusStateType;->getNumber()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I

    .line 20
    .line 21
    if-eq v1, v2, :cond_3

    .line 22
    .line 23
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK:I

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_STATE_LOSS:I

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mAudioFocusManager:Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;->disablePhoneFocus()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget v2, Lcom/google/android/projection/protocol/GalReceiver;->AUDIO_FOCUS_GAIN:I

    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mAudioFocusManager:Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;

    .line 43
    .line 44
    invoke-interface {v1}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;->enablePhoneFocus()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v2, "Unknown Audio focus state requested through debug channel: %d"

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v4, 0x0

    .line 58
    aput-object v1, v3, v4

    .line 59
    .line 60
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mAudioFocusManager:Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;

    .line 75
    .line 76
    invoke-interface {v2, v1}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;->setTransientLossState(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string v1, "No AudioFocusManager, cannot force phone focus."

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :goto_1
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "Error parsing input data of length: "

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    array-length p1, p1

    .line 100
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1
.end method

.method public requestDisplayInformationCallback()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse;->newBuilder()Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceWidth:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse$Builder;->setNativeWidth(I)Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceHeight:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse$Builder;->setNativeHeight(I)Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$GalVerificationDisplayInformationResponse;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->nativeSend([B)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public requestScreenCapture()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    const-string v1, "AHU.GVVE"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Error taking screen capture. The SurfaceView is null."

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/graphics/Canvas;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 41
    .line 42
    const/16 v4, 0x64

    .line 43
    .line 44
    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string v2, "Error flushing or closing screen capture output stream."

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {}, Lcom/google/android/projection/proto/Protos$GalVerificationScreenCaptureResponse;->newBuilder()Lcom/google/android/projection/proto/Protos$GalVerificationScreenCaptureResponse$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/google/android/projection/proto/Protos$GalVerificationScreenCaptureResponse$Builder;->setScreenCapture(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$GalVerificationScreenCaptureResponse$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationScreenCaptureResponse$Builder;->build()Lcom/google/android/projection/proto/Protos$GalVerificationScreenCaptureResponse;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->nativeSend([B)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public requestScreenCaptureCallback()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->requestScreenCapture()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public setVideoFocusCallback([B)I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->parseFrom([B)Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->mVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GalVerificationVideoFocus;->getVideoFocusMode()Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_SUCCESS:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Error parsing sensor data of length: "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length p1, p1

    .line 35
    const-string v1, "AHU.GVVE"

    .line 36
    .line 37
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/google/android/projection/proto/Protos$MessageStatus;->STATUS_INVALID_INPUT:Lcom/google/android/projection/proto/Protos$MessageStatus;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MessageStatus;->getNumber()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method
