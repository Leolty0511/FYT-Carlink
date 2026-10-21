.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private dispatchMessageToListeners(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->access$400(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    sparse-switch v1, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :sswitch_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :sswitch_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Landroid/net/wifi/RssiPacketCountInfo;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .line 37
    .line 38
    iget v1, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 39
    .line 40
    iget p1, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 41
    .line 42
    add-int/2addr v1, p1

    .line 43
    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_2
    if-eqz v0, :cond_2

    .line 57
    .line 58
    check-cast v0, Landroid/net/wifi/WifiManager$WpsCallback;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_3
    if-eqz v0, :cond_2

    .line 66
    .line 67
    check-cast v0, Landroid/net/wifi/WifiManager$WpsCallback;

    .line 68
    .line 69
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :sswitch_4
    if-eqz v0, :cond_2

    .line 77
    .line 78
    check-cast v0, Landroid/net/wifi/WifiManager$WpsCallback;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :sswitch_5
    if-eqz v0, :cond_2

    .line 86
    .line 87
    check-cast v0, Landroid/net/wifi/WifiManager$WpsCallback;

    .line 88
    .line 89
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_6
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Landroid/net/wifi/WpsResult;

    .line 101
    .line 102
    move-object v2, v0

    .line 103
    check-cast v2, Landroid/net/wifi/WifiManager$WpsCallback;

    .line 104
    .line 105
    iget-object v1, v1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 111
    .line 112
    invoke-static {v1}, Landroid/net/wifi/WifiManager;->access$700(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 118
    .line 119
    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$800(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 124
    .line 125
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    monitor-exit v1

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p1

    .line 133
    :sswitch_7
    if-eqz v0, :cond_2

    .line 134
    .line 135
    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    .line 136
    .line 137
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :sswitch_8
    if-eqz v0, :cond_2

    .line 142
    .line 143
    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    .line 144
    .line 145
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 146
    .line 147
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :sswitch_9
    const-string p1, "WifiManager"

    .line 152
    .line 153
    const-string v0, "Channel connection lost"

    .line 154
    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 159
    .line 160
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :sswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 172
    .line 173
    if-nez p1, :cond_1

    .line 174
    .line 175
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 176
    .line 177
    invoke-static {p1}, Landroid/net/wifi/WifiManager;->access$500(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const v0, 0x11001

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_1
    const-string p1, "WifiManager"

    .line 189
    .line 190
    const-string v0, "Failed to set up channel connection"

    .line 191
    .line 192
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 196
    .line 197
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 198
    .line 199
    .line 200
    :goto_0
    iget-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 201
    .line 202
    invoke-static {p1}, Landroid/net/wifi/WifiManager;->access$600(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 207
    .line 208
    .line 209
    :cond_2
    :goto_1
    return-void

    .line 210
    nop

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_a
        0x11004 -> :sswitch_9
        0x25002 -> :sswitch_8
        0x25003 -> :sswitch_7
        0x25005 -> :sswitch_8
        0x25006 -> :sswitch_7
        0x25008 -> :sswitch_8
        0x25009 -> :sswitch_7
        0x2500b -> :sswitch_6
        0x2500c -> :sswitch_5
        0x2500d -> :sswitch_4
        0x2500f -> :sswitch_3
        0x25010 -> :sswitch_2
        0x25012 -> :sswitch_8
        0x25013 -> :sswitch_7
        0x25015 -> :sswitch_1
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ServiceHandler;->dispatchMessageToListeners(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
