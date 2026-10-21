.class public Lcom/google/android/projection/sink/audio/MicrophoneRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I

.field private static final CAPTURE_BUFFER_SIZE:I = 0x2000

.field private static final NUMBER_OF_BITS:I = 0x2

.field private static final NUMBER_OF_CHANNELS:I = 0x10

.field private static final SAMPLING_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "AHU.AUDIO_MIC"


# instance fields
.field private mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

.field private mGalAudioSource:Lcom/google/android/projection/protocol/AudioSource;

.field private mSessionId:I

.field private mUnackedFrames:Ljava/util/concurrent/Semaphore;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/16 v2, 0x3e80

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;-><init>(Lcom/google/android/projection/sink/audio/MicrophoneRecorder;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mSessionId:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->BUFFER_SIZE:I

    return v0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/audio/MicrophoneRecorder;)Lcom/google/android/projection/protocol/AudioSource;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mGalAudioSource:Lcom/google/android/projection/protocol/AudioSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/audio/MicrophoneRecorder;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mUnackedFrames:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method


# virtual methods
.method public ackCallback(II)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mUnackedFrames:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void
.end method

.method public getNumberOfBits()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getNumberOfChannels()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    const/16 v0, 0x3e80

    return v0
.end method

.method public microphoneRequestCallback(ZZZI)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/Semaphore;

    .line 4
    .line 5
    invoke-direct {p1, p4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mUnackedFrames:Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->onResume()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->onPause()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mSessionId:I

    .line 35
    .line 36
    add-int/lit8 p2, p1, 0x1

    .line 37
    .line 38
    iput p2, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mSessionId:I

    .line 39
    .line 40
    return p1
.end method

.method public setGalAudioSource(Lcom/google/android/projection/protocol/AudioSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mGalAudioSource:Lcom/google/android/projection/protocol/AudioSource;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->shutdown()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->mAudioThread:Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
