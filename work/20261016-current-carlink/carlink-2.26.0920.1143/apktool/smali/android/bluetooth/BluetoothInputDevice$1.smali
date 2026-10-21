.class Landroid/bluetooth/BluetoothInputDevice$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    .line 1
    const-string v0, "BluetoothInputDevice"

    .line 2
    .line 3
    const-string/jumbo v1, "onBluetoothStateChange: up="

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputDevice;->access$000(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$200(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/bluetooth/BluetoothInputDevice;->access$000(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    :try_start_1
    const-string v1, "BluetoothInputDevice"

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit p1

    .line 51
    goto :goto_3

    .line 52
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v0

    .line 54
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 55
    .line 56
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputDevice;->access$000(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    monitor-enter p1

    .line 61
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$100(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    goto :goto_4

    .line 77
    :catch_1
    move-exception v0

    .line 78
    :try_start_3
    const-string v1, "BluetoothInputDevice"

    .line 79
    .line 80
    const-string v2, ""

    .line 81
    .line 82
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_2
    monitor-exit p1

    .line 86
    :goto_3
    return-void

    .line 87
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    throw v0
.end method
