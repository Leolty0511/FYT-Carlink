.class final Landroid/bluetooth/BluetoothOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    iget-object p1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1, v1, v2, v0}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    return-void
.end method

.method public write([BII)V
    .locals 1

    const-string v0, "buffer is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    .line 3
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "invalid offset or length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
