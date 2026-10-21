.class public Lcom/google/android/projection/protocol/AudioSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/AudioSourceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;
    }
.end annotation


# instance fields
.field private final mAudioSourceListener:Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;

.field private final mMediaCodecType:Lcom/google/android/projection/proto/Protos$MediaCodecType;

.field private mNativeAudioSource:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private volatile mShuttingDown:Z


# direct methods
.method public constructor <init>(Lcom/google/android/projection/proto/Protos$MediaCodecType;Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mShuttingDown:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/projection/protocol/AudioSource;->mMediaCodecType:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/projection/protocol/AudioSource;->mAudioSourceListener:Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;

    .line 10
    .line 11
    return-void
.end method

.method private native nativeInit(IJI)I
.end method

.method private native nativeSend(J[B)V
.end method

.method private native nativeSetConfig(III)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public ackCallback(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mAudioSourceListener:Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;->ackCallback(II)V

    return-void
.end method

.method public create(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mMediaCodecType:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$MediaCodecType;->getNumber()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/projection/protocol/AudioSource;->nativeInit(IJI)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mShuttingDown:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/protocol/AudioSource;->nativeShutdown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mNativeAudioSource:J

    return-wide v0
.end method

.method public microphoneRequestCallback(ZZZI)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mAudioSourceListener:Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;->microphoneRequestCallback(ZZZI)I

    move-result p1

    return p1
.end method

.method public send(J[B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/protocol/AudioSource;->mShuttingDown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/AudioSource;->nativeSend(J[B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setConfig(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/AudioSource;->nativeSetConfig(III)V

    return-void
.end method
