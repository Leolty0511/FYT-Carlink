.class Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->startReadingMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroid/util/Pair<",
        "Ljava/nio/ByteBuffer;",
        "Ljava/nio/ByteBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$500()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Error reading over Bluetooth"

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$1000(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onSuccess(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$900(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;->this$1:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->startReadingMessages()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection$1;->onSuccess(Landroid/util/Pair;)V

    return-void
.end method
