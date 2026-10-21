.class Landroid/os/CommonTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field private mInterfaceDesc:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public transactGetInt(II)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    .line 35
    .line 36
    return p2

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public transactGetLong(IJ)J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    .line 35
    .line 36
    return-wide p2

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public transactGetSockaddr(I)Ljava/net/InetSocketAddress;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :try_start_0
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move/from16 v5, p1

    .line 20
    .line 21
    invoke-interface {v0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sget v6, Landroid/system/OsConstants;->AF_INET:I

    .line 35
    .line 36
    const/4 v7, 0x3

    .line 37
    const/4 v8, 0x2

    .line 38
    const/4 v9, 0x1

    .line 39
    const/4 v10, 0x4

    .line 40
    if-ne v6, v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    const-string v12, "%d.%d.%d.%d"

    .line 53
    .line 54
    new-array v10, v10, [Ljava/lang/Object;

    .line 55
    .line 56
    shr-int/lit8 v13, v0, 0x18

    .line 57
    .line 58
    and-int/lit16 v13, v13, 0xff

    .line 59
    .line 60
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    aput-object v13, v10, v4

    .line 65
    .line 66
    shr-int/lit8 v4, v0, 0x10

    .line 67
    .line 68
    and-int/lit16 v4, v4, 0xff

    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    aput-object v4, v10, v9

    .line 75
    .line 76
    shr-int/lit8 v4, v0, 0x8

    .line 77
    .line 78
    and-int/lit16 v4, v4, 0xff

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    aput-object v4, v10, v8

    .line 85
    .line 86
    and-int/lit16 v0, v0, 0xff

    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    aput-object v0, v10, v7

    .line 93
    .line 94
    invoke-static {v11, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move v4, v6

    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_0
    sget v6, Landroid/system/OsConstants;->AF_INET6:I

    .line 102
    .line 103
    if-ne v6, v0, :cond_1

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 132
    .line 133
    const-string v15, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]"

    .line 134
    .line 135
    const/16 v5, 0x8

    .line 136
    .line 137
    new-array v5, v5, [Ljava/lang/Object;

    .line 138
    .line 139
    shr-int/lit8 v16, v0, 0x10

    .line 140
    .line 141
    const v17, 0xffff

    .line 142
    .line 143
    .line 144
    and-int v16, v16, v17

    .line 145
    .line 146
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    aput-object v16, v5, v4

    .line 151
    .line 152
    and-int v0, v0, v17

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    aput-object v0, v5, v9

    .line 159
    .line 160
    shr-int/lit8 v0, v6, 0x10

    .line 161
    .line 162
    and-int v0, v0, v17

    .line 163
    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    aput-object v0, v5, v8

    .line 169
    .line 170
    and-int v0, v6, v17

    .line 171
    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    aput-object v0, v5, v7

    .line 177
    .line 178
    shr-int/lit8 v0, v11, 0x10

    .line 179
    .line 180
    and-int v0, v0, v17

    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    aput-object v0, v5, v10

    .line 187
    .line 188
    and-int v0, v11, v17

    .line 189
    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const/4 v4, 0x5

    .line 195
    aput-object v0, v5, v4

    .line 196
    .line 197
    shr-int/lit8 v0, v12, 0x10

    .line 198
    .line 199
    and-int v0, v0, v17

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const/4 v4, 0x6

    .line 206
    aput-object v0, v5, v4

    .line 207
    .line 208
    and-int v0, v12, v17

    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const/4 v4, 0x7

    .line 215
    aput-object v0, v5, v4

    .line 216
    .line 217
    invoke-static {v14, v15, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    move v4, v13

    .line 222
    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    .line 224
    :goto_0
    if-eqz v0, :cond_2

    .line 225
    .line 226
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 227
    .line 228
    invoke-direct {v5, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_2
    const/4 v5, 0x0

    .line 233
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    .line 238
    .line 239
    return-object v5

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 245
    .line 246
    .line 247
    throw v0
.end method

.method public transactGetString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public transactSetInt(II)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {p2, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    const/4 p1, -0x7

    .line 49
    return p1
.end method

.method public transactSetLong(IJ)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-interface {p2, p1, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    const/4 p1, -0x7

    .line 49
    return p1
.end method

.method public transactSetSockaddr(ILjava/net/InetSocketAddress;)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    instance-of v6, v4, Ljava/net/Inet4Address;

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    aget-byte v4, v5, v2

    .line 43
    .line 44
    and-int/lit16 v4, v4, 0xff

    .line 45
    .line 46
    shl-int/lit8 v4, v4, 0x18

    .line 47
    .line 48
    aget-byte v3, v5, v3

    .line 49
    .line 50
    and-int/lit16 v3, v3, 0xff

    .line 51
    .line 52
    shl-int/lit8 v3, v3, 0x10

    .line 53
    .line 54
    or-int/2addr v3, v4

    .line 55
    const/4 v4, 0x2

    .line 56
    aget-byte v4, v5, v4

    .line 57
    .line 58
    and-int/lit16 v4, v4, 0xff

    .line 59
    .line 60
    shl-int/lit8 v4, v4, 0x8

    .line 61
    .line 62
    or-int/2addr v3, v4

    .line 63
    const/4 v4, 0x3

    .line 64
    aget-byte v4, v5, v4

    .line 65
    .line 66
    and-int/lit16 v4, v4, 0xff

    .line 67
    .line 68
    or-int/2addr v3, v4

    .line 69
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    instance-of v3, v4, Ljava/net/Inet6Address;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    check-cast v4, Ljava/net/Inet6Address;

    .line 86
    .line 87
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    move v3, v2

    .line 93
    :goto_0
    const/4 v6, 0x4

    .line 94
    if-ge v3, v6, :cond_2

    .line 95
    .line 96
    mul-int/lit8 v6, v3, 0x4

    .line 97
    .line 98
    add-int/lit8 v7, v6, 0x0

    .line 99
    .line 100
    aget-byte v7, v5, v7

    .line 101
    .line 102
    and-int/lit16 v7, v7, 0xff

    .line 103
    .line 104
    shl-int/lit8 v7, v7, 0x18

    .line 105
    .line 106
    add-int/lit8 v8, v6, 0x1

    .line 107
    .line 108
    aget-byte v8, v5, v8

    .line 109
    .line 110
    and-int/lit16 v8, v8, 0xff

    .line 111
    .line 112
    shl-int/lit8 v8, v8, 0x10

    .line 113
    .line 114
    or-int/2addr v7, v8

    .line 115
    add-int/lit8 v8, v6, 0x2

    .line 116
    .line 117
    aget-byte v8, v5, v8

    .line 118
    .line 119
    and-int/lit16 v8, v8, 0xff

    .line 120
    .line 121
    shl-int/lit8 v8, v8, 0x8

    .line 122
    .line 123
    or-int/2addr v7, v8

    .line 124
    add-int/lit8 v6, v6, 0x3

    .line 125
    .line 126
    aget-byte v6, v5, v6

    .line 127
    .line 128
    and-int/lit16 v6, v6, 0xff

    .line 129
    .line 130
    or-int/2addr v6, v7

    .line 131
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getScopeId()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    :goto_1
    iget-object p2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 151
    .line 152
    invoke-interface {p2, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    .line 171
    .line 172
    const/4 p1, -0x4

    .line 173
    return p1

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :catch_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    .line 187
    .line 188
    const/4 p1, -0x7

    .line 189
    :goto_2
    return p1
.end method

.method public transactSetString(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {p2, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    const/4 p1, -0x7

    .line 49
    return p1
.end method
