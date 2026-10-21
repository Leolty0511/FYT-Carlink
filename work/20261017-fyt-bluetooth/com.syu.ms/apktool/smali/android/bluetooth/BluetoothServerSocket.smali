.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mChannel:I

.field private mHandler:Landroid/os/Handler;

.field private mMessage:I

.field public final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(IZZI)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 3
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method public constructor <init>(IZZLandroid/os/ParcelUuid;)V
    .locals 9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 6
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return-void
.end method


# virtual methods
.method public accept()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method public declared-synchronized setCloseHandler(Landroid/os/Handler;I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    .line 2
    iput p2, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    return-void
.end method
