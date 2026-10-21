.class public Lcom/google/android/projection/protocol/AudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/AudioSinkCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/AudioSink$AudioListener;
    }
.end annotation


# static fields
.field private static final MAX_UNACKED_FRAMES:I = 0x18


# instance fields
.field private final mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

.field private mNativeAudioSink:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/AudioSink$AudioListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    .line 5
    .line 6
    return-void
.end method

.method private native nativeAckFrames(II)V
.end method

.method private native nativeAckFramesNew(I[J)V
.end method

.method private native nativeAddSupportedConfiguration(III)V
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeSendUnderflowNotification(I)V
.end method

.method private native nativeSetAudioType(I)V
.end method

.method private native nativeSetCodecType(I)V
.end method

.method private native nativeSetMaxUnackedFrames(I)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public ackFrames(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/AudioSink;->nativeAckFrames(II)V

    return-void
.end method

.method public ackFrames(I[J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/AudioSink;->nativeAckFramesNew(I[J)V

    return-void
.end method

.method public addSupportedConfiguration(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/AudioSink;->nativeAddSupportedConfiguration(III)V

    return-void
.end method

.method public codecConfigCallback([B)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/AudioSink$AudioListener;->onCodecConfig([B)V

    const/4 p1, 0x0

    return p1
.end method

.method public create(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/AudioSink;->nativeInit(IJ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    const/16 p2, 0x18

    .line 11
    .line 12
    invoke-direct {p0, p2}, Lcom/google/android/projection/protocol/AudioSink;->nativeSetMaxUnackedFrames(I)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public dataAvailableCallback(IJ[B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/AudioSink$AudioListener;->onAudioData(IJ[B)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/projection/protocol/AudioSink$AudioListener;->onShutdown()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/protocol/AudioSink;->nativeShutdown()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mNativeAudioSink:J

    return-wide v0
.end method

.method public playbackStartCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/AudioSink$AudioListener;->onStart(I)V

    return-void
.end method

.method public playbackStopCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/AudioSink$AudioListener;->onStop(I)V

    return-void
.end method

.method public sendUnderflowNotification(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/AudioSink;->nativeSendUnderflowNotification(I)V

    return-void
.end method

.method public setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AudioStreamType;->getNumber()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/AudioSink;->nativeSetAudioType(I)V

    return-void
.end method

.method public setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/AudioSink;->nativeSetCodecType(I)V

    return-void
.end method

.method public setupCallback(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSink;->mAudioListener:Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/AudioSink$AudioListener;->onSetUp(I)V

    const/4 p1, 0x0

    return p1
.end method
