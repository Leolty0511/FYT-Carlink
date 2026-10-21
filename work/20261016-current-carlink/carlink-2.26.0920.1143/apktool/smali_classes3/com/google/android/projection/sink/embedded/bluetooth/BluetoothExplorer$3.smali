.class Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->startRfcommServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroid/bluetooth/BluetoothSocket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field final synthetic val$serverLoop:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->val$serverLoop:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueServerLoop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$200(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->val$serverLoop:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$200(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Bluetooth RFCOMM listener on UUID: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$300()Ljava/util/UUID;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "  onFailure : "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    instance-of v0, p1, Ljava/lang/NullPointerException;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->enable:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "Unexpected RFCOMM Error; continuing"

    .line 51
    .line 52
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->continueServerLoop()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->shutdownRfcommServer()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth RFCOMM listener on UUID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$300()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  onSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$400(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothSocket;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->continueServerLoop()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$3;->onSuccess(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method
