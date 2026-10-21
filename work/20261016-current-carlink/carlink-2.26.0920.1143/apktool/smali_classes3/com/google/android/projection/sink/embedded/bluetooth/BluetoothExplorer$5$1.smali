.class Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->onSuccess(Lcom/google/common/util/concurrent/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "======================>>>>   onFailure Disconnected from : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " mConnectedDevices.remove "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$100(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$500(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$5;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;->onDisconnectedFrom(Landroid/bluetooth/BluetoothDevice;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
