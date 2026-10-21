.class Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method public constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$300(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Received message: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p1, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " for NULL callback."

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "SoundTriggerDetector"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    if-eq v0, v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    if-eq v0, v1, :cond_1

    .line 49
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 55
    .line 56
    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$300(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionResumed()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$300(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionPaused()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$300(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onError()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 85
    .line 86
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$300(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onDetected(Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method
