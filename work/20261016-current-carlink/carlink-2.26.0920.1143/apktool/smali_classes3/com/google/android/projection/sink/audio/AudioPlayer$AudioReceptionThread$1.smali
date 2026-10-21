.class Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$1102(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;Landroid/os/Looper;)Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v0, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$1202(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;)Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$ReceptionHandler;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread$1;->this$1:Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;->access$1400(Lcom/google/android/projection/sink/audio/AudioPlayer$AudioReceptionThread;)Ljava/util/concurrent/Semaphore;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
