.class public final Ll/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll/a;

.field public final b:Landroid/bluetooth/BluetoothAdapter;

.field public final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ll/b;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    .line 11
    .line 12
    const-string v1, "BluetoothUtils-thread"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "looper"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Ll/b;->c:Landroid/os/Handler;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "_btcmd"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "bundle2Service=================>>> data : "

    .line 19
    .line 20
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "  carplay:"

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 32
    .line 33
    const-string v2, "me"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_6

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v1, v3

    .line 48
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v1, "HDL"

    .line 56
    .line 57
    invoke-static {v1, p0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 61
    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v2, 0x17

    .line 77
    .line 78
    const-class v4, Landroid/os/PersistableBundle;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v6, 0x1

    .line 82
    if-gt v1, v2, :cond_2

    .line 83
    .line 84
    const-string v1, "mMap"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lp/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    instance-of v1, v0, Landroid/util/ArrayMap;

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    move-object v3, v0

    .line 95
    check-cast v3, Landroid/util/ArrayMap;

    .line 96
    .line 97
    :cond_1
    new-array v0, v6, [Ljava/lang/Class;

    .line 98
    .line 99
    const-class v1, Landroid/util/ArrayMap;

    .line 100
    .line 101
    aput-object v1, v0, v5

    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 108
    .line 109
    .line 110
    new-array v1, v6, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v3, v1, v5

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/os/PersistableBundle;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    new-array v1, v6, [Ljava/lang/Class;

    .line 122
    .line 123
    const-class v2, Landroid/os/Bundle;

    .line 124
    .line 125
    aput-object v2, v1, v5

    .line 126
    .line 127
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    new-array v2, v6, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object v0, v2, v5

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/os/PersistableBundle;

    .line 140
    .line 141
    :goto_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    :try_start_0
    const-string v3, "CarplayServer.ICarplayService"

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    .line 159
    .line 160
    const-string v0, "outparam"

    .line 161
    .line 162
    invoke-static {v2, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/16 v0, 0xe5

    .line 166
    .line 167
    invoke-virtual {p0, v0, v1, v2}, Lh/c;->d(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_3

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    goto :goto_3

    .line 179
    :catch_0
    move-exception p0

    .line 180
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_4
    :goto_4
    return-void

    .line 198
    :cond_5
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v3

    .line 202
    :cond_6
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v3
.end method

.method public static b([Landroid/os/ParcelUuid;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "00000000-deca-fade-deca-deafdecacafe"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0, v1}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "fecacade-afde-cade-defa-cade00000000"

    .line 19
    .line 20
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0, v1}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x1

    .line 31
    :cond_2
    return v0
.end method
