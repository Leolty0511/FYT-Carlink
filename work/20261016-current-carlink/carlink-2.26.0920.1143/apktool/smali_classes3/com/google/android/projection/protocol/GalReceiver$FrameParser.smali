.class Lcom/google/android/projection/protocol/GalReceiver$FrameParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/GalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameParser"
.end annotation


# instance fields
.field private final galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

.field private mOnQueueFlushed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dequeueOutgoingFrame([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->access$600(Lcom/google/android/projection/protocol/GalReceiver;[B)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/projection/protocol/GalReceiver;->access$100(Lcom/google/android/projection/protocol/GalReceiver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->mOnQueueFlushed:Ljava/lang/Runnable;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/projection/protocol/GalReceiver;->access$300(Lcom/google/android/projection/protocol/GalReceiver;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "AHU.GAL_RECEIVER"

    .line 31
    .line 32
    const-string v1, "Controller queue is empty"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->mOnQueueFlushed:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return p1
.end method

.method public enqueueIncomingFrame([BI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-static {v0, p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->access$500(Lcom/google/android/projection/protocol/GalReceiver;[BI)I

    return-void
.end method

.method public getFrameSizeToRead([BI)I
    .locals 0

    iget-object p2, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-static {p2, p1}, Lcom/google/android/projection/protocol/GalReceiver;->access$400(Lcom/google/android/projection/protocol/GalReceiver;[B)I

    move-result p1

    return p1
.end method

.method public onTerminating(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/GalReceiver;->access$100(Lcom/google/android/projection/protocol/GalReceiver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "AHU.GAL_RECEIVER"

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v1, "onTerminating, flushing controller queue"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->mOnQueueFlushed:Ljava/lang/Runnable;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/projection/protocol/GalReceiver;->access$200(Lcom/google/android/projection/protocol/GalReceiver;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "onTerminating, prepare shutdown"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/projection/protocol/GalReceiver;->access$300(Lcom/google/android/projection/protocol/GalReceiver;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onThreadsTerminated(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 1
    .param p1    # Lcom/google/android/projection/protocol/Transport$StopReason;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$FrameParser;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-static {v0}, Lcom/google/android/projection/protocol/GalReceiver;->access$000(Lcom/google/android/projection/protocol/GalReceiver;)Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;->onDisconnected(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    return-void
.end method
