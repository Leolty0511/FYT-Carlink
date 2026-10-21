.class Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtdtHandler"
.end annotation


# instance fields
.field private final mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

.field private mStackChannel:Lu/b;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "BluetoothTethering"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LinkProperties;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got EVENT_NETWORK_DISCONNECTED, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    goto :goto_0

    .line 5
    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LinkProperties;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got EVENT_NETWORK_CONNECTED, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Landroid/net/LinkProperties;)V

    goto :goto_0

    :sswitch_2
    const-string p1, "got CMD_CHANNEL_DISCONNECTED"

    .line 8
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    .line 10
    iget-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {p1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "got CMD_CHANNEL_HALF_CONNECTED"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lu/b;

    .line 14
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v0}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Trying to set mAsyncChannel twice!"

    .line 15
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v0, 0x11001

    .line 16
    invoke-virtual {p1, v0}, Lu/b;->k(I)V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x70004 -> :sswitch_1
        0x70005 -> :sswitch_0
    .end sparse-switch
.end method
