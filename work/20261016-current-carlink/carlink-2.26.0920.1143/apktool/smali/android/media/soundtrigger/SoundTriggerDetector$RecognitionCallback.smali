.class Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method private constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onError()"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "SoundTriggerDetector"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onGenericSoundTriggerDetected()"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SoundTriggerDetector"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v8, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    .line 28
    .line 29
    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    .line 32
    .line 33
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    .line 34
    .line 35
    iget v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    .line 36
    .line 37
    iget-object v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    move-object v1, v8

    .line 41
    invoke-direct/range {v1 .. v7}, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[BLandroid/media/soundtrigger/SoundTriggerDetector$1;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-static {v0, p1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring onKeyphraseDetected() called for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundTriggerDetector"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecognitionPaused()V
    .locals 2

    .line 1
    const-string v0, "SoundTriggerDetector"

    .line 2
    .line 3
    const-string/jumbo v1, "onRecognitionPaused()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 2

    .line 1
    const-string v0, "SoundTriggerDetector"

    .line 2
    .line 3
    const-string/jumbo v1, "onRecognitionResumed()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
