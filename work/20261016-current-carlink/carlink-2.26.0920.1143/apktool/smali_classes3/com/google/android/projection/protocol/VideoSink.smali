.class public Lcom/google/android/projection/protocol/VideoSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/VideoSinkCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;
    }
.end annotation


# static fields
.field private static final DBG_TRACE:Z = true

.field private static final MAX_UNACKED_FRAMES:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AHU.VIDEO"

.field public static final VIDEO_FOCUS_NATIVE:I

.field public static final VIDEO_FOCUS_NATIVE_TRANSIENT:I

.field public static final VIDEO_FOCUS_PROJECTED:I

.field public static final VIDEO_FOCUS_PROJECTED_NO_INPUT_FOCUS:I


# instance fields
.field private final mAutoStartProjection:Z

.field private mCurrentUiConfig:Lcom/google/android/projection/proto/Protos$UiConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNativeVideoSink:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

.field private final mVideoConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewingDistance:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->VIDEO_FOCUS_NATIVE:Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_NATIVE:I

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->VIDEO_FOCUS_PROJECTED:Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED:I

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->VIDEO_FOCUS_NATIVE_TRANSIENT:Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->getNumber()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_NATIVE_TRANSIENT:I

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->VIDEO_FOCUS_PROJECTED_NO_INPUT_FOCUS:Lcom/google/android/projection/proto/Protos$VideoFocusMode;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoFocusMode;->getNumber()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED_NO_INPUT_FOCUS:I

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mVideoConfigurations:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/google/android/projection/protocol/VideoSink;->mAutoStartProjection:Z

    .line 14
    .line 15
    iput p3, p0, Lcom/google/android/projection/protocol/VideoSink;->mViewingDistance:I

    .line 16
    .line 17
    return-void
.end method

.method private native nativeAckFrames(II)V
.end method

.method private native nativeAckFramesNew(I[J)V
.end method

.method private native nativeAddSupportedConfiguration(IIIIIIIII[B)V
.end method

.method private native nativeInit(IJZI)I
.end method

.method private native nativeMaxUnackedFrames(I)V
.end method

.method private native nativeSetCodecType(I)V
.end method

.method private native nativeSetDisplayIdAndType(II)V
.end method

.method private native nativeSetInitialContentKeyCode(I)V
.end method

.method private native nativeSetMaxUnackedFrames(I)V
.end method

.method private native nativeSetVideoFocus(IZ)V
.end method

.method private native nativeShutdown()V
.end method

.method private native nativeUpdateUiConfig([B)V
.end method


# virtual methods
.method public ackFrames(II)V
    .locals 1

    const-string v0, "ackFrames"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/VideoSink;->nativeAckFrames(II)V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public ackFrames(I[J)V
    .locals 1

    const-string v0, "ackFrames"

    .line 4
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/VideoSink;->nativeAckFramesNew(I[J)V

    .line 6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public actionTakenNotificationCallback(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$ActionType;->forNumber(I)Lcom/google/android/projection/proto/Protos$ActionType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "invalid actionType"

    .line 8
    .line 9
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onActionTakenNotification(Lcom/google/android/projection/proto/Protos$ActionType;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public addSupportedConfiguration(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mVideoConfigurations:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getCodecResolution()Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getFrameRate()Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->VIDEO_FPS_60:Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x3c

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x1e

    .line 26
    .line 27
    :goto_0
    move v3, v0

    .line 28
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getWidthMargin()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getHeightMargin()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDensity()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getRealDensity()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getDecoderAdditionalDepth()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasPixelAspectRatioE4()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getPixelAspectRatioE4()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v0, 0x2710

    .line 60
    .line 61
    :goto_1
    move v9, v0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->hasVideoCodecType()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getVideoCodecType()Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    sget-object v0, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_VIDEO_H264_BP:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    :goto_2
    move v10, v0

    .line 84
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    move-object v1, p0

    .line 93
    invoke-direct/range {v1 .. v11}, Lcom/google/android/projection/protocol/VideoSink;->nativeAddSupportedConfiguration(IIIIIIIII[B)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public codecConfigCallback([B)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onCodecConfig([B)V

    const/4 p1, 0x0

    return p1
.end method

.method public create(IJ)Z
    .locals 6

    .line 1
    iget-boolean v4, p0, Lcom/google/android/projection/protocol/VideoSink;->mAutoStartProjection:Z

    .line 2
    .line 3
    iget v5, p0, Lcom/google/android/projection/protocol/VideoSink;->mViewingDistance:I

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/VideoSink;->nativeInit(IJZI)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x10

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetMaxUnackedFrames(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public dataAvailableCallback(IJLjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    const-string v0, "dataAvailableCallback"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/projection/protocol/VideoFrame;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/VideoFrame;-><init>(IJLjava/nio/ByteBuffer;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onProjectionUpdate(Lcom/google/android/projection/protocol/VideoFrame;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/VideoSink;->nativeShutdown()V

    return-void
.end method

.method public getCurrentUiConfig()Lcom/google/android/projection/proto/Protos$UiConfig;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mCurrentUiConfig:Lcom/google/android/projection/proto/Protos$UiConfig;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mNativeVideoSink:J

    return-wide v0
.end method

.method public nearestVideoConfiguration(IIIIII)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 32
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/projection/protocol/VideoSink;->nearestVideoConfiguration(IIIIIILjava/lang/Integer;Ljava/lang/Float;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public nearestVideoConfiguration(IIIIIILjava/lang/Integer;Ljava/lang/Float;)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
    .locals 7
    .param p7    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xf00

    const/16 v2, 0xa00

    const/16 v3, 0x780

    const/16 v4, 0x500

    const/4 v5, 0x0

    if-le p1, p2, :cond_5

    const/16 v6, 0x320

    if-gt p1, v6, :cond_0

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_800x480:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    sub-int/2addr v6, p1

    rsub-int p1, p2, 0x1e0

    .line 2
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto/16 :goto_0

    :cond_0
    if-gt p1, v4, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1280x720:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int v6, p1, 0x500

    rsub-int p1, p2, 0x2d0

    .line 4
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    if-gt p1, v3, :cond_2

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1920x1080:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int v6, p1, 0x780

    rsub-int p1, p2, 0x438

    .line 6
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_2
    if-gt p1, v2, :cond_3

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_2560x1440:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int v6, p1, 0xa00

    rsub-int p1, p2, 0x5a0

    .line 8
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_3
    if-gt p1, v1, :cond_4

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_3840x2160:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int v6, p1, 0xf00

    rsub-int p1, p2, 0x870

    .line 10
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    if-gt p2, v4, :cond_6

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_720x1280:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int p1, p1, 0x2d0

    .line 12
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int p1, p2, 0x500

    goto :goto_0

    :cond_6
    if-gt p2, v3, :cond_7

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1080x1920:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int p1, p1, 0x438

    .line 14
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int p1, p2, 0x780

    goto :goto_0

    :cond_7
    if-gt p2, v2, :cond_8

    .line 15
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_1440x2560:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int p1, p1, 0x5a0

    .line 16
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int p1, p2, 0xa00

    goto :goto_0

    :cond_8
    if-gt p2, v1, :cond_c

    .line 17
    sget-object v0, Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;->VIDEO_2160x3840:Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    rsub-int p1, p1, 0x870

    .line 18
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int p1, p2, 0xf00

    .line 19
    :goto_0
    sget-object p2, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->VIDEO_FPS_30:Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    const/16 v1, 0x3c

    if-lt p5, v1, :cond_9

    .line 20
    sget-object p2, Lcom/google/android/projection/proto/Protos$VideoFrameRateType;->VIDEO_FPS_60:Lcom/google/android/projection/proto/Protos$VideoFrameRateType;

    .line 21
    :cond_9
    invoke-static {}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->newBuilder()Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p5

    .line 22
    invoke-virtual {p5, v0}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setCodecResolution(Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p5

    .line 23
    invoke-virtual {p5, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setFrameRate(Lcom/google/android/projection/proto/Protos$VideoFrameRateType;)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p2

    .line 24
    invoke-virtual {p2, v6}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setWidthMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setHeightMargin(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p3}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p4}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setRealDensity(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p6}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setDecoderAdditionalDepth(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    move-result-object p1

    if-eqz p7, :cond_a

    .line 29
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setViewingDistance(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    :cond_a
    if-eqz p8, :cond_b

    .line 30
    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const p3, 0x461c4000    # 10000.0f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->setPixelAspectRatioE4(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;

    .line 31
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration$Builder;->build()Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0
.end method

.method public playbackStartCallback(I)V
    .locals 0

    return-void
.end method

.method public playbackStopCallback(I)V
    .locals 0

    return-void
.end method

.method public setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetCodecType(I)V

    return-void
.end method

.method public setDisplayIdAndType(ILcom/google/android/projection/proto/Protos$DisplayType;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DisplayType;->getNumber()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetDisplayIdAndType(II)V

    return-void
.end method

.method public setInitialContentKeyCode(Lcom/google/android/projection/proto/Protos$KeyCode;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetInitialContentKeyCode(I)V

    return-void
.end method

.method public setVideoFocus(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onVideoFocusModeChange(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p3}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetVideoFocus(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setupCallback(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onCodecSetup(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public sourceVideoConfigCallback(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mVideoConfigurations:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/protocol/VideoSink$1;->$SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType:[I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$VideoConfiguration;->getCodecResolution()Lcom/google/android/projection/proto/Protos$VideoCodecResolutionType;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aget v0, v0, v1

    .line 20
    .line 21
    const/16 v1, 0x870

    .line 22
    .line 23
    const/16 v2, 0xf00

    .line 24
    .line 25
    const/16 v3, 0x5a0

    .line 26
    .line 27
    const/16 v4, 0xa00

    .line 28
    .line 29
    const/16 v5, 0x438

    .line 30
    .line 31
    const/16 v6, 0x780

    .line 32
    .line 33
    const/16 v7, 0x2d0

    .line 34
    .line 35
    const/16 v8, 0x500

    .line 36
    .line 37
    const/16 v9, 0x320

    .line 38
    .line 39
    const/16 v10, 0x1e0

    .line 40
    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    :pswitch_0
    move v1, v9

    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    move v10, v2

    .line 47
    goto :goto_0

    .line 48
    :pswitch_2
    move v1, v3

    .line 49
    move v10, v4

    .line 50
    goto :goto_0

    .line 51
    :pswitch_3
    move v10, v1

    .line 52
    move v1, v2

    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    move v10, v3

    .line 55
    move v1, v4

    .line 56
    goto :goto_0

    .line 57
    :pswitch_5
    move v1, v5

    .line 58
    move v10, v6

    .line 59
    goto :goto_0

    .line 60
    :pswitch_6
    move v1, v7

    .line 61
    move v10, v8

    .line 62
    goto :goto_0

    .line 63
    :pswitch_7
    move v10, v5

    .line 64
    move v1, v6

    .line 65
    goto :goto_0

    .line 66
    :pswitch_8
    move v10, v7

    .line 67
    move v1, v8

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v10, p1}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onSourceVideoConfigChanged(IILcom/google/android/projection/proto/Protos$VideoConfiguration;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateUiConfig(Lcom/google/android/projection/proto/Protos$UiConfig;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/VideoSink;->nativeUpdateUiConfig([B)V

    return-void
.end method

.method public updateUiConfigReplyCallback([B)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/projection/proto/Protos$UiConfig;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->mCurrentUiConfig:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onUpdateUiConfigReply(Lcom/google/android/projection/proto/Protos$UiConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/android/projection/protocol/VideoSink;->mCurrentUiConfig:Lcom/google/android/projection/proto/Protos$UiConfig;

    .line 19
    .line 20
    const-string p1, "AHU.VIDEO"

    .line 21
    .line 22
    const-string v0, "Failed to decode uiConfig!"

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    const-string v0, "Failed to decode uiConfig"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public videoFocusCallback(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/VideoSink;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;->onVideoFocusRequest(II)V

    return-void
.end method
