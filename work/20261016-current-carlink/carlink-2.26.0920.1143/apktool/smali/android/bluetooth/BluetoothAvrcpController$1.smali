.class Landroid/bluetooth/BluetoothAvrcpController$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAvrcpController;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAvrcpController;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAvrcpController;->access$102(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->access$200(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    const-string v1, "BluetoothAvrcpController"

    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit p1

    .line 43
    goto :goto_3

    .line 44
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 47
    .line 48
    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    monitor-enter p1

    .line 53
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->access$100(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAvrcpController;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    goto :goto_4

    .line 69
    :catch_1
    move-exception v0

    .line 70
    :try_start_3
    const-string v1, "BluetoothAvrcpController"

    .line 71
    .line 72
    const-string v2, ""

    .line 73
    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_2
    monitor-exit p1

    .line 78
    :goto_3
    return-void

    .line 79
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    throw v0
.end method
