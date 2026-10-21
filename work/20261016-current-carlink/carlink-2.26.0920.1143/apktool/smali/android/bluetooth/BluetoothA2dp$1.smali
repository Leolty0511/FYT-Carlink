.class Landroid/bluetooth/BluetoothA2dp$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onBluetoothStateChange: up="

    .line 2
    .line 3
    .line 4
    const-string v1, "BluetoothA2dp"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothA2dp;->access$102(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dp;->access$300(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 39
    .line 40
    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->access$200(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 55
    .line 56
    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_0
    :try_start_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 83
    .line 84
    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 96
    .line 97
    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dp;->access$100(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-nez p1, :cond_1

    .line 102
    .line 103
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    goto :goto_4

    .line 111
    :catch_1
    move-exception p1

    .line 112
    :try_start_3
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .line 114
    .line 115
    :cond_1
    :goto_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 116
    .line 117
    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 126
    .line 127
    .line 128
    :goto_3
    return-void

    .line 129
    :goto_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    .line 130
    .line 131
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->access$000(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 140
    .line 141
    .line 142
    throw p1
.end method
