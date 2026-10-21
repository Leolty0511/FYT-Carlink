.class public final Lf/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic c:Lf/k;


# direct methods
.method public constructor <init>(Lf/k;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/j;->c:Lf/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lf/j;->b:Landroid/bluetooth/BluetoothDevice;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "------->>>>  wirelessAutoConnect startProjectingTo(btDevice) : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf/j;->b:Landroid/bluetooth/BluetoothDevice;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " bluetoothExplorer: "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lf/j;->c:Lf/k;

    .line 19
    .line 20
    iget-object v3, v2, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v3, "Auto"

    .line 30
    .line 31
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "------->>>>  wirelessAutoConnect mLaunchMode: "

    .line 37
    .line 38
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v4, v2, Lf/k;->h:I

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget v0, v2, Lf/k;->h:I

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    if-ne v0, v3, :cond_0

    .line 57
    .line 58
    iget-object v0, v2, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->startProjectingTo(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, v2, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Lf/k;->i()V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method
