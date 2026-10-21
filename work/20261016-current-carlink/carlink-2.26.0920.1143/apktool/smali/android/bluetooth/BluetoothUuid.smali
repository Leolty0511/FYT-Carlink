.class public final Landroid/bluetooth/BluetoothUuid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final Hogp:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MAS:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PCE:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;

.field public static final SAP:Landroid/os/ParcelUuid;

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    .line 8
    .line 9
    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    .line 16
    .line 17
    const-string v2, "0000110D-0000-1000-8000-00805F9B34FB"

    .line 18
    .line 19
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    .line 24
    .line 25
    const-string v3, "00001108-0000-1000-8000-00805F9B34FB"

    .line 26
    .line 27
    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 32
    .line 33
    const-string v4, "00001112-0000-1000-8000-00805F9B34FB"

    .line 34
    .line 35
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sput-object v4, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 40
    .line 41
    const-string v4, "0000111E-0000-1000-8000-00805F9B34FB"

    .line 42
    .line 43
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sput-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 48
    .line 49
    const-string v5, "0000111F-0000-1000-8000-00805F9B34FB"

    .line 50
    .line 51
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    sput-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 56
    .line 57
    const-string v5, "0000110E-0000-1000-8000-00805F9B34FB"

    .line 58
    .line 59
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sput-object v5, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    .line 64
    .line 65
    const-string v6, "0000110C-0000-1000-8000-00805F9B34FB"

    .line 66
    .line 67
    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sput-object v6, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    .line 72
    .line 73
    const-string v7, "00001105-0000-1000-8000-00805f9b34fb"

    .line 74
    .line 75
    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    sput-object v7, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    .line 80
    .line 81
    const-string v8, "00001124-0000-1000-8000-00805f9b34fb"

    .line 82
    .line 83
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    sput-object v8, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    .line 88
    .line 89
    const-string v8, "00001812-0000-1000-8000-00805f9b34fb"

    .line 90
    .line 91
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    sput-object v8, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    .line 96
    .line 97
    const-string v8, "00001115-0000-1000-8000-00805F9B34FB"

    .line 98
    .line 99
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    sput-object v8, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 104
    .line 105
    const-string v9, "00001116-0000-1000-8000-00805F9B34FB"

    .line 106
    .line 107
    invoke-static {v9}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    sput-object v9, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 112
    .line 113
    const-string v10, "0000000f-0000-1000-8000-00805F9B34FB"

    .line 114
    .line 115
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    sput-object v10, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 120
    .line 121
    const-string v10, "0000112e-0000-1000-8000-00805F9B34FB"

    .line 122
    .line 123
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    sput-object v10, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    .line 128
    .line 129
    const-string v10, "0000112f-0000-1000-8000-00805F9B34FB"

    .line 130
    .line 131
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    sput-object v10, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 136
    .line 137
    const-string v10, "00001134-0000-1000-8000-00805F9B34FB"

    .line 138
    .line 139
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    sput-object v10, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    .line 144
    .line 145
    const-string v11, "00001133-0000-1000-8000-00805F9B34FB"

    .line 146
    .line 147
    invoke-static {v11}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    sput-object v11, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    .line 152
    .line 153
    const-string v12, "00001132-0000-1000-8000-00805F9B34FB"

    .line 154
    .line 155
    invoke-static {v12}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    sput-object v12, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    .line 160
    .line 161
    const-string v13, "0000112D-0000-1000-8000-00805F9B34FB"

    .line 162
    .line 163
    invoke-static {v13}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    sput-object v13, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    .line 168
    .line 169
    const-string v14, "00000000-0000-1000-8000-00805F9B34FB"

    .line 170
    .line 171
    invoke-static {v14}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    sput-object v14, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 176
    .line 177
    const/16 v14, 0xe

    .line 178
    .line 179
    new-array v14, v14, [Landroid/os/ParcelUuid;

    .line 180
    .line 181
    const/4 v15, 0x0

    .line 182
    aput-object v0, v14, v15

    .line 183
    .line 184
    const/4 v0, 0x1

    .line 185
    aput-object v1, v14, v0

    .line 186
    .line 187
    const/4 v0, 0x2

    .line 188
    aput-object v2, v14, v0

    .line 189
    .line 190
    const/4 v0, 0x3

    .line 191
    aput-object v3, v14, v0

    .line 192
    .line 193
    const/4 v0, 0x4

    .line 194
    aput-object v4, v14, v0

    .line 195
    .line 196
    const/4 v0, 0x5

    .line 197
    aput-object v5, v14, v0

    .line 198
    .line 199
    const/4 v0, 0x6

    .line 200
    aput-object v6, v14, v0

    .line 201
    .line 202
    const/4 v0, 0x7

    .line 203
    aput-object v7, v14, v0

    .line 204
    .line 205
    const/16 v0, 0x8

    .line 206
    .line 207
    aput-object v8, v14, v0

    .line 208
    .line 209
    const/16 v0, 0x9

    .line 210
    .line 211
    aput-object v9, v14, v0

    .line 212
    .line 213
    const/16 v0, 0xa

    .line 214
    .line 215
    aput-object v10, v14, v0

    .line 216
    .line 217
    const/16 v0, 0xb

    .line 218
    .line 219
    aput-object v11, v14, v0

    .line 220
    .line 221
    const/16 v0, 0xc

    .line 222
    .line 223
    aput-object v12, v14, v0

    .line 224
    .line 225
    const/16 v0, 0xd

    .line 226
    .line 227
    aput-object v13, v14, v0

    .line 228
    .line 229
    sput-object v14, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    .line 230
    .line 231
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    if-nez p0, :cond_2

    .line 9
    .line 10
    array-length p0, p1

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    return v0

    .line 16
    :cond_2
    if-nez p1, :cond_3

    .line 17
    .line 18
    return v0

    .line 19
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    array-length p0, p1

    .line 29
    move v3, v1

    .line 30
    :goto_1
    if-ge v3, p0, :cond_5

    .line 31
    .line 32
    aget-object v4, p1, v3

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_4

    .line 39
    .line 40
    return v1

    .line 41
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    return v0
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    if-nez p0, :cond_2

    .line 9
    .line 10
    array-length p0, p1

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    return v0

    .line 16
    :cond_2
    if-nez p1, :cond_4

    .line 17
    .line 18
    array-length p0, p0

    .line 19
    if-nez p0, :cond_3

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_3
    move v0, v1

    .line 23
    :goto_1
    return v0

    .line 24
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    array-length p0, p1

    .line 34
    move v3, v1

    .line 35
    :goto_2
    if-ge v3, p0, :cond_6

    .line 36
    .line 37
    aget-object v4, p1, v3

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    return v0

    .line 46
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_6
    return v1
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide v2, 0xffff00000000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v0, v2

    .line 15
    const/16 p0, 0x20

    .line 16
    .line 17
    ushr-long/2addr v0, p0

    .line 18
    long-to-int p0, v0

    .line 19
    return p0
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide v4, -0xffff00000001L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v2, v4

    .line 35
    const-wide/16 v4, 0x1000

    .line 36
    .line 37
    cmp-long p0, v2, v4

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_1
    return v1
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide v3, 0xffffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v0, v3

    .line 42
    const-wide/16 v3, 0x1000

    .line 43
    .line 44
    cmp-long p0, v0, v3

    .line 45
    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    :cond_2
    return v2
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMas(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMns(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSap(Landroid/os/ParcelUuid;)Z
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    array-length v2, p0

    .line 15
    move v3, v1

    .line 16
    :goto_0
    if-ge v3, v2, :cond_4

    .line 17
    .line 18
    aget-object v4, p0, v3

    .line 19
    .line 20
    invoke-virtual {v4, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    return v0

    .line 27
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_4
    return v1
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 8

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string/jumbo v1, "uuidBytes length invalid - "

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    new-instance p0, Landroid/os/ParcelUuid;

    .line 52
    .line 53
    new-instance v4, Ljava/util/UUID;

    .line 54
    .line 55
    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    const/4 v5, 0x1

    .line 63
    if-ne v0, v2, :cond_3

    .line 64
    .line 65
    aget-byte v0, p0, v3

    .line 66
    .line 67
    and-int/lit16 v0, v0, 0xff

    .line 68
    .line 69
    int-to-long v0, v0

    .line 70
    aget-byte p0, p0, v5

    .line 71
    .line 72
    and-int/lit16 p0, p0, 0xff

    .line 73
    .line 74
    shl-int/2addr p0, v4

    .line 75
    int-to-long v2, p0

    .line 76
    add-long/2addr v0, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    aget-byte v0, p0, v3

    .line 79
    .line 80
    and-int/lit16 v0, v0, 0xff

    .line 81
    .line 82
    int-to-long v6, v0

    .line 83
    aget-byte v0, p0, v5

    .line 84
    .line 85
    and-int/lit16 v0, v0, 0xff

    .line 86
    .line 87
    shl-int/2addr v0, v4

    .line 88
    int-to-long v3, v0

    .line 89
    add-long/2addr v6, v3

    .line 90
    aget-byte v0, p0, v2

    .line 91
    .line 92
    and-int/lit16 v0, v0, 0xff

    .line 93
    .line 94
    shl-int/2addr v0, v1

    .line 95
    int-to-long v0, v0

    .line 96
    add-long/2addr v6, v0

    .line 97
    const/4 v0, 0x3

    .line 98
    aget-byte p0, p0, v0

    .line 99
    .line 100
    and-int/lit16 p0, p0, 0xff

    .line 101
    .line 102
    shl-int/lit8 p0, p0, 0x18

    .line 103
    .line 104
    int-to-long v0, p0

    .line 105
    add-long/2addr v0, v6

    .line 106
    :goto_1
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    const/16 v4, 0x20

    .line 117
    .line 118
    shl-long/2addr v0, v4

    .line 119
    add-long/2addr v2, v0

    .line 120
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    new-instance p0, Landroid/os/ParcelUuid;

    .line 129
    .line 130
    new-instance v4, Ljava/util/UUID;

    .line 131
    .line 132
    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string/jumbo v0, "uuidBytes cannot be null"

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method public static uuidToBytes(Landroid/os/ParcelUuid;)[B
    .locals 8

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xff00

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x2

    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-array v0, v3, [B

    .line 18
    .line 19
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    and-int/lit16 v3, p0, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, v5

    .line 27
    .line 28
    and-int/2addr p0, v1

    .line 29
    shr-int/2addr p0, v4

    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, v0, v2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    new-array v0, v0, [B

    .line 44
    .line 45
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    and-int/lit16 v7, p0, 0xff

    .line 50
    .line 51
    int-to-byte v7, v7

    .line 52
    aput-byte v7, v0, v5

    .line 53
    .line 54
    and-int/2addr v1, p0

    .line 55
    shr-int/2addr v1, v4

    .line 56
    int-to-byte v1, v1

    .line 57
    aput-byte v1, v0, v2

    .line 58
    .line 59
    const/high16 v1, 0xff0000

    .line 60
    .line 61
    and-int/2addr v1, p0

    .line 62
    shr-int/2addr v1, v6

    .line 63
    int-to-byte v1, v1

    .line 64
    aput-byte v1, v0, v3

    .line 65
    .line 66
    const/high16 v1, -0x1000000

    .line 67
    .line 68
    and-int/2addr p0, v1

    .line 69
    shr-int/lit8 p0, p0, 0x18

    .line 70
    .line 71
    int-to-byte p0, p0

    .line 72
    const/4 v1, 0x3

    .line 73
    aput-byte p0, v0, v1

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    new-array p0, v6, [B

    .line 93
    .line 94
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    const-string/jumbo v0, "uuid cannot be null"

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method
