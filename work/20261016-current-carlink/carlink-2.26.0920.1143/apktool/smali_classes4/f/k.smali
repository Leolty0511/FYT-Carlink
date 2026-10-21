.class public final Lf/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/TransportFactory$Callback;
.implements Lg/e;


# static fields
.field public static y:Lf/k;


# instance fields
.field public final b:Le/b;

.field public c:Lcom/google/android/projection/transport/TransportFactory;

.field public d:Lf/e;

.field public e:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

.field public final f:Lcom/google/android/projection/sink/settings/Settings;

.field public g:Lcom/syu/carlink/auto/AutoFragment;

.field public h:I

.field public i:Z

.field public final j:Landroid/content/Context;

.field public k:Lf/g;

.field public final l:Lf/h;

.field public final m:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field public n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field public o:Z

.field public final p:Lcom/syu/ipc/IRemoteToolkit;

.field public final q:Lf/b;

.field public final r:Lf/b;

.field public final s:Lf/b;

.field public final t:Lf/b;

.field public u:I

.field public v:I

.field public final w:Lf/c;

.field public x:Lcom/google/common/util/concurrent/ListenableScheduledFuture;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1004

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x631e

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lf/k;->y:Lf/k;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lf/k;->h:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lf/k;->i:Z

    .line 12
    .line 13
    iput-object v0, p0, Lf/k;->j:Landroid/content/Context;

    .line 14
    .line 15
    iput-object v0, p0, Lf/k;->k:Lf/g;

    .line 16
    .line 17
    iput-object v0, p0, Lf/k;->l:Lf/h;

    .line 18
    .line 19
    iput-object v0, p0, Lf/k;->m:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 20
    .line 21
    iput-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 22
    .line 23
    iput-boolean v1, p0, Lf/k;->o:Z

    .line 24
    .line 25
    iput-object v0, p0, Lf/k;->p:Lcom/syu/ipc/IRemoteToolkit;

    .line 26
    .line 27
    new-instance v2, Lf/b;

    .line 28
    .line 29
    invoke-direct {v2, p0, v1}, Lf/b;-><init>(Lf/k;I)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lf/k;->q:Lf/b;

    .line 33
    .line 34
    new-instance v2, Lf/b;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, p0, v3}, Lf/b;-><init>(Lf/k;I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lf/k;->r:Lf/b;

    .line 41
    .line 42
    new-instance v2, Lf/b;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v2, p0, v4}, Lf/b;-><init>(Lf/k;I)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lf/k;->s:Lf/b;

    .line 49
    .line 50
    new-instance v2, Lf/b;

    .line 51
    .line 52
    const/4 v4, 0x3

    .line 53
    invoke-direct {v2, p0, v4}, Lf/b;-><init>(Lf/k;I)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lf/k;->t:Lf/b;

    .line 57
    .line 58
    iput v1, p0, Lf/k;->u:I

    .line 59
    .line 60
    iput v1, p0, Lf/k;->v:I

    .line 61
    .line 62
    new-instance v2, Lf/c;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lf/c;-><init>(Lf/k;)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lf/k;->w:Lf/c;

    .line 68
    .line 69
    iput-object v0, p0, Lf/k;->x:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lf/k;->j:Landroid/content/Context;

    .line 76
    .line 77
    new-instance v2, Le/b;

    .line 78
    .line 79
    invoke-direct {v2}, Le/b;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lf/k;->b:Le/b;

    .line 83
    .line 84
    new-instance v2, Lcom/google/android/projection/sink/settings/Settings;

    .line 85
    .line 86
    invoke-direct {v2, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 90
    .line 91
    iget-object v2, p0, Lf/k;->e:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 92
    .line 93
    const-string v4, "Auto"

    .line 94
    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    :try_start_0
    invoke-interface {v2}, Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    const-string v5, "Failed to interrupt previous attempt to establish Transport"

    .line 103
    .line 104
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    :goto_0
    iput-object v0, p0, Lf/k;->e:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 108
    .line 109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "Stoping in TCP server mode on port "

    .line 112
    .line 113
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    const-string v2, "*****************************  shutdownTransportFactory"

    .line 133
    .line 134
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 138
    .line 139
    if-eqz v2, :cond_1

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/google/android/projection/transport/TransportFactory;->shutdown()V

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lf/k;->d:Lf/e;

    .line 145
    .line 146
    if-eqz v2, :cond_1

    .line 147
    .line 148
    invoke-virtual {v2}, Lf/e;->invalidateSocket()V

    .line 149
    .line 150
    .line 151
    :cond_1
    iput-object v0, p0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 152
    .line 153
    const-string v2, ">>>>>>>>>>>>>>>>setupTransportFactory<<<<<<<<<<<<<<<"

    .line 154
    .line 155
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    new-instance v2, Lf/e;

    .line 159
    .line 160
    invoke-direct {v2, p0}, Lf/e;-><init>(Lf/k;)V

    .line 161
    .line 162
    .line 163
    iput-object v2, p0, Lf/k;->d:Lf/e;

    .line 164
    .line 165
    invoke-static {}, Lcom/google/android/projection/transport/TransportFactory;->builder()Lcom/google/android/projection/transport/TransportFactory$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2, p1}, Lcom/google/android/projection/transport/TransportFactory$Builder;->setContext(Landroid/content/Context;)Lcom/google/android/projection/transport/TransportFactory$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object v2, p0, Lf/k;->d:Lf/e;

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Lcom/google/android/projection/transport/TransportFactory$Builder;->setServerSocketProvider(Lcom/google/android/projection/transport/ServerSocketProvider;)Lcom/google/android/projection/transport/TransportFactory$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/google/android/projection/transport/TransportFactory$Builder;->build()Lcom/google/android/projection/transport/TransportFactory;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 184
    .line 185
    new-instance p1, Lf/h;

    .line 186
    .line 187
    invoke-direct {p1}, Lf/h;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object p1, p0, Lf/k;->l:Lf/h;

    .line 191
    .line 192
    new-instance p1, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 193
    .line 194
    iget-object v2, p0, Lf/k;->j:Landroid/content/Context;

    .line 195
    .line 196
    iget-object v4, p0, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 197
    .line 198
    invoke-direct {p1, v2, v4}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/settings/Settings;)V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lf/k;->m:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 202
    .line 203
    sget-object p1, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    .line 204
    .line 205
    new-instance v2, Lf/d;

    .line 206
    .line 207
    invoke-direct {v2, p0}, Lf/d;-><init>(Lf/k;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->setListener(Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;)V

    .line 211
    .line 212
    .line 213
    new-array p1, v3, [Ljava/lang/Object;

    .line 214
    .line 215
    const-string v2, "syu"

    .line 216
    .line 217
    aput-object v2, p1, v1

    .line 218
    .line 219
    const-string v2, "android.os.ServiceManager"

    .line 220
    .line 221
    const-string v3, "getService"

    .line 222
    .line 223
    invoke-static {v2, v0, v3, p1}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/os/IBinder;

    .line 228
    .line 229
    if-eqz p1, :cond_2

    .line 230
    .line 231
    :try_start_1
    invoke-static {p1}, Lcom/syu/ipc/IRemoteToolkit$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteToolkit;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Lf/k;->p:Lcom/syu/ipc/IRemoteToolkit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .line 237
    :catch_1
    iget-object p1, p0, Lf/k;->p:Lcom/syu/ipc/IRemoteToolkit;

    .line 238
    .line 239
    if-eqz p1, :cond_2

    .line 240
    .line 241
    :try_start_2
    invoke-interface {p1, v1}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    if-eqz p1, :cond_2

    .line 246
    .line 247
    new-instance v0, Lf/i;

    .line 248
    .line 249
    invoke-direct {v0}, Lf/i;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, v0, v1, v1}, Lcom/syu/ipc/IRemoteModule;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 253
    .line 254
    .line 255
    const/16 v2, 0x8

    .line 256
    .line 257
    invoke-interface {p1, v0, v2, v1}, Lcom/syu/ipc/IRemoteModule;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :catch_2
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x1001

    .line 9
    .line 10
    const/16 v2, 0x57

    .line 11
    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lf/k;->j(I)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_1
    const/16 v1, 0x1002

    .line 20
    .line 21
    const/16 v3, 0x58

    .line 22
    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lf/k;->j(I)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_2
    const/16 v1, 0x1003

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-ne p1, v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lf/k;->j(I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_3
    const/16 v1, 0x1005

    .line 41
    .line 42
    if-ne p1, v1, :cond_4

    .line 43
    .line 44
    const/16 p1, 0x54

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_4
    const/16 v1, 0x1006

    .line 52
    .line 53
    if-ne p1, v1, :cond_5

    .line 54
    .line 55
    const/16 p1, 0x7e

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_5
    const/16 v1, 0x1007

    .line 63
    .line 64
    if-ne p1, v1, :cond_6

    .line 65
    .line 66
    const/16 p1, 0x7f

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_6
    const/16 v1, 0x1008

    .line 74
    .line 75
    if-ne p1, v1, :cond_7

    .line 76
    .line 77
    const/16 p1, 0x55

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_7
    const/16 v1, 0x1009

    .line 85
    .line 86
    if-ne p1, v1, :cond_8

    .line 87
    .line 88
    const/16 p1, 0x15

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_8
    const/16 v1, 0x100a

    .line 96
    .line 97
    if-ne p1, v1, :cond_9

    .line 98
    .line 99
    const/16 p1, 0x16

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_9
    const/16 v1, 0x100b

    .line 107
    .line 108
    if-ne p1, v1, :cond_a

    .line 109
    .line 110
    const/16 p1, 0x17

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lf/k;->j(I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_a
    const-string v1, "ints"

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    const/16 v6, 0x100c

    .line 121
    .line 122
    const/4 v7, 0x4

    .line 123
    if-ne p1, v6, :cond_c

    .line 124
    .line 125
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eq p1, v7, :cond_b

    .line 132
    .line 133
    invoke-virtual {p0, v3}, Lf/k;->j(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_b
    iget-object p1, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v5, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v5

    .line 147
    :cond_c
    const/16 v6, 0x100d

    .line 148
    .line 149
    const/4 v8, 0x3

    .line 150
    const-string v9, "me"

    .line 151
    .line 152
    if-ne p1, v6, :cond_f

    .line 153
    .line 154
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 155
    .line 156
    if-eqz p1, :cond_e

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eq v3, v7, :cond_d

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eq v3, v4, :cond_d

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eq p1, v8, :cond_d

    .line 175
    .line 176
    invoke-virtual {p0, v2}, Lf/k;->j(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_d
    iget-object p1, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {v5, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v5

    .line 189
    :cond_e
    invoke-static {v9}, Lt/b;->B(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v5

    .line 193
    :cond_f
    const/16 v6, 0x100e

    .line 194
    .line 195
    if-ne p1, v6, :cond_12

    .line 196
    .line 197
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 198
    .line 199
    if-eqz p1, :cond_11

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eq p1, v7, :cond_10

    .line 206
    .line 207
    invoke-virtual {p0, v2}, Lf/k;->j(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_10
    iget-object p1, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-static {v5, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v5

    .line 220
    :cond_11
    invoke-static {v9}, Lt/b;->B(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v5

    .line 224
    :cond_12
    const/16 v2, 0x100f

    .line 225
    .line 226
    if-ne p1, v2, :cond_15

    .line 227
    .line 228
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 229
    .line 230
    if-eqz p1, :cond_14

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eq v2, v7, :cond_13

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eq v2, v4, :cond_13

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eq p1, v8, :cond_13

    .line 249
    .line 250
    invoke-virtual {p0, v3}, Lf/k;->j(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_13
    iget-object p1, v0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {v5, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v5

    .line 263
    :cond_14
    invoke-static {v9}, Lt/b;->B(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v5

    .line 267
    :cond_15
    const/16 v0, 0x1010

    .line 268
    .line 269
    if-ne p1, v0, :cond_16

    .line 270
    .line 271
    invoke-virtual {p0, v7}, Lf/k;->j(I)V

    .line 272
    .line 273
    .line 274
    :cond_16
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lf/k;->w:Lf/c;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lf/k;->u:I

    .line 17
    .line 18
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->disablePhoneFocus()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lf/k;->q:Lf/b;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lf/k;->s:Lf/b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lf/k;->r:Lf/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final e(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lf/k;->q:Lf/b;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lf/k;->s:Lf/b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final f()Lcom/syu/carlink/CarLinkService;
    .locals 1

    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/hardware/usb/UsbDevice;
    .locals 6

    .line 1
    iget-object v0, p0, Lf/k;->j:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "usb"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    sget-object v3, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 45
    .line 46
    invoke-static {v1}, Le/b;->d(Landroid/hardware/usb/UsbDevice;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    aput-object v3, v0, v4

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v5, 0x1

    .line 75
    aput-object v3, v0, v5

    .line 76
    .line 77
    const-string v3, "getUsbDevice Device id: %04X, product id: %04X, "

    .line 78
    .line 79
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v3, "Auto"

    .line 84
    .line 85
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    new-array v0, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    aput-object v2, v0, v4

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    aput-object v2, v0, v5

    .line 109
    .line 110
    const-string v2, "return  usb attached Device id: %04X, product id: %04X, "

    .line 111
    .line 112
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v2, "Usb"

    .line 117
    .line 118
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_2
    sget-object v3, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lcom/syu/carlink/UsbScanner;->e(Landroid/hardware/usb/UsbDevice;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-ne v3, v2, :cond_0

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_3
    const/4 v0, 0x0

    .line 135
    return-object v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===================>> bluetoothExplorer.getConnectedDevices().size(): "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "HDL"

    .line 31
    .line 32
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lg/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x2

    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    return v2

    .line 57
    :cond_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lg/b;->m:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->supportWireless(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    :cond_2
    return v2
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/k;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lf/k;->o:Z

    .line 8
    .line 9
    iget-object v1, p0, Lf/k;->x:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    const-wide/16 v0, 0x64

    .line 17
    .line 18
    :try_start_0
    iget-object v2, p0, Lf/k;->e:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;->interrupt()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lf/k;->d:Lf/e;

    .line 24
    .line 25
    invoke-virtual {v2}, Lf/e;->invalidateSocket()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/android/projection/transport/TransportFactory;->shutdownTcpDelegate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v2

    .line 35
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    throw v2

    .line 44
    :catch_1
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_2
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {p0}, Lf/k;->b()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "reset ===================>> BluetoothDevices : "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "HDL"

    .line 82
    .line 83
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v1, 0x0

    .line 91
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const/16 v3, 0x200

    .line 114
    .line 115
    if-ne v2, v3, :cond_2

    .line 116
    .line 117
    :cond_3
    if-eqz v1, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->reset(Landroid/bluetooth/BluetoothDevice;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void
.end method

.method public final j(I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " AAuto to Phone -------->>  keycode : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "HDL"

    .line 16
    .line 17
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v2, p0

    .line 26
    move v3, p1

    .line 27
    move-wide v5, v0

    .line 28
    move-wide v7, v0

    .line 29
    invoke-virtual/range {v2 .. v8}, Lf/k;->k(IIJJ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v3, Lf/a;

    .line 42
    .line 43
    invoke-direct {v3, p0, p1, v0, v1}, Lf/a;-><init>(Lf/k;IJ)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v0, 0x50

    .line 47
    .line 48
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final k(IIJJ)V
    .locals 15

    .line 1
    move/from16 v13, p1

    .line 2
    .line 3
    new-instance v14, Landroid/view/KeyEvent;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v9, -0x1

    .line 8
    const/4 v10, 0x0

    .line 9
    const/16 v11, 0x48

    .line 10
    .line 11
    const/16 v12, 0x101

    .line 12
    .line 13
    move-object v0, v14

    .line 14
    move-wide/from16 v1, p5

    .line 15
    .line 16
    move-wide/from16 v3, p3

    .line 17
    .line 18
    move/from16 v5, p2

    .line 19
    .line 20
    move/from16 v6, p1

    .line 21
    .line 22
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 23
    .line 24
    .line 25
    move-object v0, p0

    .line 26
    iget-object v1, v0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 27
    .line 28
    if-eqz v1, :cond_6

    .line 29
    .line 30
    iget-object v2, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 31
    .line 32
    if-eqz v2, :cond_6

    .line 33
    .line 34
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    const-string v2, "AA ------ handleKeyEvent keycode: "

    .line 41
    .line 42
    const-string v3, "Auto"

    .line 43
    .line 44
    invoke-static {v2, v13, v3}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    if-eq v13, v2, :cond_5

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    if-eq v13, v2, :cond_4

    .line 52
    .line 53
    const/4 v2, 0x5

    .line 54
    if-eq v13, v2, :cond_5

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    if-eq v13, v2, :cond_5

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    if-eq v13, v2, :cond_3

    .line 63
    .line 64
    const/16 v2, 0x9

    .line 65
    .line 66
    if-eq v13, v2, :cond_2

    .line 67
    .line 68
    const/16 v2, 0x42

    .line 69
    .line 70
    if-eq v13, v2, :cond_1

    .line 71
    .line 72
    const/16 v2, 0xdb

    .line 73
    .line 74
    if-eq v13, v2, :cond_5

    .line 75
    .line 76
    const/16 v2, 0xe7

    .line 77
    .line 78
    if-eq v13, v2, :cond_5

    .line 79
    .line 80
    const/16 v2, 0x54

    .line 81
    .line 82
    if-eq v13, v2, :cond_5

    .line 83
    .line 84
    const/16 v2, 0x55

    .line 85
    .line 86
    if-eq v13, v2, :cond_5

    .line 87
    .line 88
    const/16 v2, 0x57

    .line 89
    .line 90
    if-eq v13, v2, :cond_5

    .line 91
    .line 92
    const/16 v2, 0x58

    .line 93
    .line 94
    if-eq v13, v2, :cond_5

    .line 95
    .line 96
    const/16 v2, 0x66

    .line 97
    .line 98
    if-eq v13, v2, :cond_3

    .line 99
    .line 100
    const/16 v2, 0x67

    .line 101
    .line 102
    if-eq v13, v2, :cond_2

    .line 103
    .line 104
    const/16 v2, 0x7e

    .line 105
    .line 106
    if-eq v13, v2, :cond_5

    .line 107
    .line 108
    const/16 v2, 0x7f

    .line 109
    .line 110
    if-eq v13, v2, :cond_5

    .line 111
    .line 112
    packed-switch v13, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "Got keycode: "

    .line 118
    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v2, "AHU.MAIN_ACTIVITY"

    .line 130
    .line 131
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :pswitch_0
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getAction()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-ne v2, v3, :cond_6

    .line 141
    .line 142
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 145
    .line 146
    sget-object v2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_DPAD_DOWN_RIGHT:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :pswitch_1
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getAction()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-ne v2, v3, :cond_6

    .line 161
    .line 162
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 165
    .line 166
    sget-object v2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_DPAD_UP_LEFT:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_1
    new-instance v2, Landroid/view/KeyEvent;

    .line 177
    .line 178
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getAction()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    const/16 v4, 0x17

    .line 183
    .line 184
    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getAction()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-ne v2, v3, :cond_6

    .line 200
    .line 201
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 202
    .line 203
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 204
    .line 205
    sget-object v2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getAction()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-ne v2, v3, :cond_6

    .line 220
    .line 221
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 224
    .line 225
    sget-object v2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 226
    .line 227
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/4 v3, -0x1

    .line 232
    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_4
    new-instance v2, Landroid/view/KeyEvent;

    .line 237
    .line 238
    invoke-virtual {v14}, Landroid/view/KeyEvent;->getAction()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    sget-object v4, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_NAVIGATION:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 252
    .line 253
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_5
    :pswitch_2
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 260
    .line 261
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 262
    .line 263
    invoke-virtual {v1, v14}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 264
    .line 265
    .line 266
    :cond_6
    :goto_0
    return-void

    .line 267
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===================>> Auto startRfcommServer start bluetoothExplorer: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " isBtPowerOn: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->n()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "HDL"

    .line 32
    .line 33
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 41
    .line 42
    iget-object v2, p0, Lf/k;->j:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v3, p0, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 45
    .line 46
    iget-object v4, p0, Lf/k;->l:Lf/h;

    .line 47
    .line 48
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/settings/Settings;Lcom/google/android/projection/sink/embedded/service/DeviceLifecycleTracker;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 52
    .line 53
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->n()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v2}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->setEnable(Z)V

    .line 65
    .line 66
    .line 67
    const-string v0, "===================>> bluetoothExplorer.startRfcommServer()"

    .line 68
    .line 69
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->startRfcommServer()V

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string v0, "===================>> Auto startRfcommServer end"

    .line 78
    .line 79
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final m(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/k;->g()Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lf/k;->b:Le/b;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v0, "Local mode not supported in this build."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v1, "Unhandled case: "

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lf/k;->h()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lf/k;->o()Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lf/k;->d()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/syu/carlink/auto/AutoFragment;->f(Landroid/hardware/usb/UsbDevice;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    return-void

    .line 67
    :cond_5
    const/4 p1, 0x0

    .line 68
    throw p1
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->removeWifiStartRequest()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lf/k;->t:Lf/b;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lf/k;->b()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "wirelessAutostart ===================>> old mLaunchMode : "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lf/k;->h:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "HDL"

    .line 28
    .line 29
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lf/k;->h:I

    .line 33
    .line 34
    if-ltz v0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lf/k;->h:I

    .line 39
    .line 40
    iget-object v0, p0, Lf/k;->n:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->getConnectedDevices()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "wirelessAutostart ===================>> BluetoothDevices : "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v2, 0x0

    .line 72
    move-object v3, v2

    .line 73
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/16 v5, 0x200

    .line 96
    .line 97
    if-ne v4, v5, :cond_2

    .line 98
    .line 99
    :cond_3
    if-eqz v3, :cond_5

    .line 100
    .line 101
    iget-object v0, p0, Lf/k;->m:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->teardown()V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v0, v4}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->initialize(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v5, Lf/j;

    .line 119
    .line 120
    invoke-direct {v5, p0, v3}, Lf/j;-><init>(Lf/k;Landroid/bluetooth/BluetoothDevice;)V

    .line 121
    .line 122
    .line 123
    new-instance v6, Lf/f;

    .line 124
    .line 125
    invoke-direct {v6, p0, v4, v5}, Lf/f;-><init>(Lf/k;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Lf/j;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v6, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 132
    .line 133
    iget-object v4, p0, Lf/k;->e:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 134
    .line 135
    const-string v5, "Auto"

    .line 136
    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    :try_start_0
    invoke-interface {v4}, Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception v4

    .line 144
    const-string v6, "Failed to interrupt previous attempt to establish Transport"

    .line 145
    .line 146
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_0
    :try_start_1
    iget-object v4, p0, Lf/k;->c:Lcom/google/android/projection/transport/TransportFactory;

    .line 150
    .line 151
    invoke-virtual {v4, v2, p0}, Lcom/google/android/projection/transport/TransportFactory;->open(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Lf/k;->e:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_1
    move-exception v2

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v6, "Failed to start TCP server on port "

    .line 162
    .line 163
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .line 179
    .line 180
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v4, "Starting in TCP server mode on port "

    .line 183
    .line 184
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_5

    .line 206
    .line 207
    iput v1, p0, Lf/k;->u:I

    .line 208
    .line 209
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 210
    .line 211
    iget-object v2, p0, Lf/k;->w:Lf/c;

    .line 212
    .line 213
    const-wide/16 v4, 0x5dc

    .line 214
    .line 215
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    .line 217
    .line 218
    :cond_5
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v0, v0, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 225
    .line 226
    const/4 v2, 0x3

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    if-eqz v3, :cond_6

    .line 235
    .line 236
    const/4 v1, 0x1

    .line 237
    :cond_6
    return v1
.end method

.method public final onConnected(Lcom/google/android/projection/protocol/Transport;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onConnected transport : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " LinkState: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "Auto"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/syu/carlink/auto/AutoFragment;->g()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    iget-object v1, p0, Lf/k;->k:Lf/g;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    check-cast v1, Lcom/syu/carlink/MainActivity;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/syu/carlink/CarLink;->e:Z

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->HU_BYEBYE:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/Transport;->stopTransport(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    sget-object p1, Lf/k;->y:Lf/k;

    .line 84
    .line 85
    invoke-virtual {p1}, Lf/k;->i()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance v0, Landroid/accessibilityservice/a;

    .line 90
    .line 91
    const/4 v2, 0x5

    .line 92
    invoke-direct {v0, v1, p1, v2}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string p1, "me"

    .line 100
    .line 101
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    throw p1

    .line 106
    :cond_5
    :goto_1
    iget-object p1, p0, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/syu/carlink/auto/AutoFragment;->h()V

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_2
    return-void
.end method

.method public final onDisconnected()V
    .locals 4

    .line 1
    iget v0, p0, Lf/k;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lf/k;->h:I

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lf/k;->k:Lf/g;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 13
    .line 14
    new-instance v2, Lcom/syu/carlink/e;

    .line 15
    .line 16
    const/4 v3, 0x7

    .line 17
    invoke-direct {v2, v0, v3}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lf/k;->i()V

    .line 39
    .line 40
    .line 41
    const-string v0, "Auto"

    .line 42
    .line 43
    const-string v1, "=================>>> transport onDisconnected"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x3

    .line 67
    if-eq v0, v1, :cond_2

    .line 68
    .line 69
    const-wide/16 v0, 0x3e8

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lf/k;->e(J)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method
