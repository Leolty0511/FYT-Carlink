.class Landroid/os/AsyncTask$2;
.super Landroid/os/AsyncTask$WorkerRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/os/AsyncTask$WorkerRunnable;-><init>(Landroid/os/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/AsyncTask;->access$200(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

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
    const/16 v0, 0xa

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    .line 18
    .line 19
    iget-object v3, p0, Landroid/os/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    .line 29
    .line 30
    invoke-static {v0, v2}, Landroid/os/AsyncTask;->access$400(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    iget-object v3, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    .line 36
    .line 37
    invoke-static {v3}, Landroid/os/AsyncTask;->access$300(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/os/AsyncTask;->access$400(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    throw v0
.end method
