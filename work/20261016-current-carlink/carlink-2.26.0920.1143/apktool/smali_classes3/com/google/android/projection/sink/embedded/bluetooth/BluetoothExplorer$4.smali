.class Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->makeAndStartRfCommConnection(Landroid/bluetooth/BluetoothSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
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

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->val$connection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error bringing up RFCOMM with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$100(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->val$connection:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialized connection to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
