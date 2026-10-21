.class Lcom/google/android/projection/protocol/InputOutputThreads$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/protocol/InputOutputThreads;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

.field final synthetic val$reason:Lcom/google/android/projection/protocol/Transport$StopReason;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/InputOutputThreads;Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$1;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    iput-object p2, p0, Lcom/google/android/projection/protocol/InputOutputThreads$1;->val$reason:Lcom/google/android/projection/protocol/Transport$StopReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads$1;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$000(Lcom/google/android/projection/protocol/InputOutputThreads;)Lcom/google/android/projection/protocol/InputOutputThreads$ReaderThread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/projection/protocol/InputOutputThreads$InputOutputThread;->mTransport:Lcom/google/android/projection/protocol/Transport;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/protocol/InputOutputThreads$1;->val$reason:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/Transport;->stopTransport(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputOutputThreads$1;->this$0:Lcom/google/android/projection/protocol/InputOutputThreads;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/projection/protocol/InputOutputThreads;->access$100(Lcom/google/android/projection/protocol/InputOutputThreads;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
