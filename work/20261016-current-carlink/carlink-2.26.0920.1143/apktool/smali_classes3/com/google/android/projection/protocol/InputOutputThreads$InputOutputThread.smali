.class abstract Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/InputOutputThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InputOutputThread"
.end annotation


# instance fields
.field final mTransport:Lcom/google/android/projection/protocol/Transport;

.field final synthetic this$0:Lcom/google/android/projection/protocol/InputOutputThreads;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/InputOutputThreads;Ljava/lang/String;Lcom/google/android/projection/protocol/Transport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->mTransport:Lcom/google/android/projection/protocol/Transport;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract doIo()V
.end method

.method public run()V
    .locals 2

    .line 1
    const/16 v0, -0x13

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->doIo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$200(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 17
    .line 18
    invoke-static {v1, p0}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$200(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
