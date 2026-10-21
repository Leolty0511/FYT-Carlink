.class Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->handleConnectionLifecycle(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Lcom/google/common/util/concurrent/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field final synthetic val$connection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$connection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to execute connection start sequence with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSuccess(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===========================>>>>  Usable connection established with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$100(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$connection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$500(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;->onConnectedTo(Landroid/bluetooth/BluetoothDevice;)V

    .line 5
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;)V

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 6
    invoke-static {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$200(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->onSuccess(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
