.class Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mH:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    const-string v1, "/dev/auto_serial"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->access$000()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "=============>>>  /dev/auto_serial nodeFile.exists(): "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 47
    .line 48
    new-instance v1, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;-><init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->extBluetooth:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->mH:Landroid/os/Handler;

    .line 61
    .line 62
    const-wide/16 v1, 0x3e8

    .line 63
    .line 64
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
