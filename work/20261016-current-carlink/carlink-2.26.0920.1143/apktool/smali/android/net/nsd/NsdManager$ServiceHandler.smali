.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method public constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    const v2, 0x11000

    .line 6
    .line 7
    .line 8
    if-eq v0, v2, :cond_3

    .line 9
    .line 10
    const v2, 0x11002

    .line 11
    .line 12
    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const v2, 0x11004

    .line 16
    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 21
    .line 22
    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$300(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 28
    .line 29
    invoke-static {v3}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 38
    .line 39
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$500(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    .line 48
    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "Stale key "

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 64
    .line 65
    invoke-static {v1, p1, v0}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    :pswitch_0
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "Ignored "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_1
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 98
    .line 99
    .line 100
    check-cast v3, Landroid/net/nsd/NsdManager$ResolveListener;

    .line 101
    .line 102
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroid/net/nsd/NsdServiceInfo;

    .line 105
    .line 106
    invoke-interface {v3, p1}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :pswitch_2
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 112
    .line 113
    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 114
    .line 115
    .line 116
    check-cast v3, Landroid/net/nsd/NsdManager$ResolveListener;

    .line 117
    .line 118
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 119
    .line 120
    invoke-interface {v3, v4, p1}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_3
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 126
    .line 127
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 128
    .line 129
    invoke-static {v0, p1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 130
    .line 131
    .line 132
    check-cast v3, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 133
    .line 134
    invoke-interface {v3, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :pswitch_4
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 140
    .line 141
    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 142
    .line 143
    .line 144
    check-cast v3, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 145
    .line 146
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 147
    .line 148
    invoke-interface {v3, v4, p1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_5
    check-cast v3, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 153
    .line 154
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Landroid/net/nsd/NsdServiceInfo;

    .line 157
    .line 158
    invoke-interface {v3, p1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :pswitch_6
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 163
    .line 164
    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 165
    .line 166
    .line 167
    check-cast v3, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 168
    .line 169
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 170
    .line 171
    invoke-interface {v3, v4, p1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_7
    iget-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 176
    .line 177
    invoke-static {p1, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 178
    .line 179
    .line 180
    check-cast v3, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 181
    .line 182
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {v3, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_8
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 191
    .line 192
    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 193
    .line 194
    .line 195
    check-cast v3, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 196
    .line 197
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 202
    .line 203
    invoke-interface {v3, v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :pswitch_9
    check-cast v3, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 208
    .line 209
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p1, Landroid/net/nsd/NsdServiceInfo;

    .line 212
    .line 213
    invoke-interface {v3, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :pswitch_a
    check-cast v3, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 218
    .line 219
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p1, Landroid/net/nsd/NsdServiceInfo;

    .line 222
    .line 223
    invoke-interface {v3, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_b
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 228
    .line 229
    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    .line 230
    .line 231
    .line 232
    check-cast v3, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 233
    .line 234
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 239
    .line 240
    invoke-interface {v3, v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p1, Landroid/net/nsd/NsdServiceInfo;

    .line 247
    .line 248
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast v3, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 253
    .line 254
    invoke-interface {v3, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_0
    return-void

    .line 258
    :catchall_0
    move-exception p1

    .line 259
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    throw p1

    .line 261
    :cond_1
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string v0, "Channel lost"

    .line 266
    .line 267
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_2
    iget-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 272
    .line 273
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_3
    iget-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 282
    .line 283
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    const v0, 0x11001

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x60002
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
