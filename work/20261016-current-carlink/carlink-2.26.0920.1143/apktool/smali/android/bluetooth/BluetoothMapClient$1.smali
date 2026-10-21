.class Landroid/bluetooth/BluetoothMapClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothMapClient;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BluetoothMapClient"

    .line 8
    .line 9
    const-string/jumbo v1, "onBluetoothStateChange: up="

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_2

    .line 16
    .line 17
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$100()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string p1, "BluetoothMapClient"

    .line 24
    .line 25
    const-string v0, "Unbinding service..."

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMapClient;->access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$400(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_1
    const-string v1, "BluetoothMapClient"

    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :goto_0
    monitor-exit p1

    .line 70
    goto :goto_3

    .line 71
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v0

    .line 73
    :cond_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 74
    .line 75
    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    monitor-enter p1

    .line 80
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$300(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$100()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    const-string v0, "BluetoothMapClient"

    .line 95
    .line 96
    const-string v1, "Binding service..."

    .line 97
    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMapClient;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    goto :goto_4

    .line 109
    :catch_1
    move-exception v0

    .line 110
    :try_start_3
    const-string v1, "BluetoothMapClient"

    .line 111
    .line 112
    const-string v2, ""

    .line 113
    .line 114
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    monitor-exit p1

    .line 118
    :goto_3
    return-void

    .line 119
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    throw v0
.end method
