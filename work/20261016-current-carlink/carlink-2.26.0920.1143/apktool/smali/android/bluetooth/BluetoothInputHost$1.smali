.class Landroid/bluetooth/BluetoothInputHost$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputHost;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothInputHost;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "onBluetoothStateChange: up="

    .line 6
    .line 7
    .line 8
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->access$100(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, "Unbinding service..."

    .line 25
    .line 26
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$200(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothInputHost;->access$202(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$300(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/bluetooth/BluetoothInputHost;->access$100(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v2, "onBluetoothStateChange: could not unbind service:"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    :try_start_3
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 72
    .line 73
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$200(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "Binding HID Device service..."

    .line 84
    .line 85
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothInputHost;->doBind()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :catch_1
    move-exception p1

    .line 97
    :try_start_4
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string/jumbo v2, "onBluetoothStateChange: could not bind to HID Dev service: "

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_2
    move-exception p1

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string/jumbo v2, "onBluetoothStateChange: could not bind to HID Dev service: "

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_0
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    throw p1
.end method
