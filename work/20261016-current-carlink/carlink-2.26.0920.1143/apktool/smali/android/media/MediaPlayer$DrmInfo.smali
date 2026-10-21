.class public final Landroid/media/MediaPlayer$DrmInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfo"
.end annotation


# instance fields
.field private mapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private supportedSchemes:[Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrmInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8
    new-array v2, v0, [B

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DrmInfo() PSSH: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer$DrmInfo;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    new-array v3, v2, [Ljava/util/UUID;

    iput-object v3, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 15
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 16
    iget-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v4}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v4, "DrmInfo() supportedScheme["

    const-string v5, "]: "

    .line 17
    invoke-static {v4, v3, v5}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 18
    iget-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "DrmInfo() Parcel psshsize: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " supportedDRMsCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaPlayer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    return-void
.end method

.method public static synthetic access$1300(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$DrmInfo;->makeCopy()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object p0

    return-object p0
.end method

.method private arrToHex([B)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "0x"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    array-length v3, p1

    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    aget-byte v4, p1, v2

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    aput-object v4, v3, v1

    .line 22
    .line 23
    const-string v4, "%02x"

    .line 24
    .line 25
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method private bytesToUUID([B)Ljava/util/UUID;
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v4, v2

    .line 5
    move-wide v2, v0

    .line 6
    :goto_0
    const/16 v5, 0x8

    .line 7
    .line 8
    if-ge v4, v5, :cond_0

    .line 9
    .line 10
    aget-byte v6, p1, v4

    .line 11
    .line 12
    int-to-long v6, v6

    .line 13
    const-wide/16 v8, 0xff

    .line 14
    .line 15
    and-long/2addr v6, v8

    .line 16
    rsub-int/lit8 v10, v4, 0x7

    .line 17
    .line 18
    mul-int/2addr v10, v5

    .line 19
    shl-long v5, v6, v10

    .line 20
    .line 21
    or-long/2addr v0, v5

    .line 22
    add-int/lit8 v5, v4, 0x8

    .line 23
    .line 24
    aget-byte v5, p1, v5

    .line 25
    .line 26
    int-to-long v5, v5

    .line 27
    and-long/2addr v5, v8

    .line 28
    shl-long/2addr v5, v10

    .line 29
    or-long/2addr v2, v5

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/util/UUID;

    .line 34
    .line 35
    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method private makeCopy()Landroid/media/MediaPlayer$DrmInfo;
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer$DrmInfo;

    iget-object v1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private parsePSSH([BI)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    move v5, v3

    .line 14
    move v6, v5

    .line 15
    :goto_0
    if-lez v4, :cond_4

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v8, "MediaPlayer"

    .line 19
    .line 20
    const/16 v9, 0x10

    .line 21
    .line 22
    const/4 v10, 0x2

    .line 23
    const/4 v11, 0x1

    .line 24
    if-ge v4, v9, :cond_0

    .line 25
    .line 26
    new-array v1, v10, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v1, v11

    .line 39
    .line 40
    const-string/jumbo v2, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-object v7

    .line 51
    :cond_0
    add-int/lit8 v12, v5, 0x10

    .line 52
    .line 53
    invoke-static {v1, v5, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-direct {v0, v5}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    add-int/lit8 v4, v4, -0x10

    .line 62
    .line 63
    const/4 v13, 0x4

    .line 64
    if-ge v4, v13, :cond_1

    .line 65
    .line 66
    new-array v1, v10, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    aput-object v2, v1, v3

    .line 73
    .line 74
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    aput-object v2, v1, v11

    .line 79
    .line 80
    const-string/jumbo v2, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-object v7

    .line 91
    :cond_1
    add-int/lit8 v14, v12, 0x4

    .line 92
    .line 93
    invoke-static {v1, v12, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 102
    .line 103
    const/4 v7, 0x3

    .line 104
    if-ne v15, v13, :cond_2

    .line 105
    .line 106
    aget-byte v13, v12, v7

    .line 107
    .line 108
    and-int/lit16 v13, v13, 0xff

    .line 109
    .line 110
    shl-int/lit8 v13, v13, 0x18

    .line 111
    .line 112
    aget-byte v15, v12, v10

    .line 113
    .line 114
    and-int/lit16 v15, v15, 0xff

    .line 115
    .line 116
    shl-int/lit8 v9, v15, 0x10

    .line 117
    .line 118
    or-int/2addr v9, v13

    .line 119
    aget-byte v13, v12, v11

    .line 120
    .line 121
    and-int/lit16 v13, v13, 0xff

    .line 122
    .line 123
    shl-int/lit8 v13, v13, 0x8

    .line 124
    .line 125
    or-int/2addr v9, v13

    .line 126
    aget-byte v12, v12, v3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    aget-byte v13, v12, v3

    .line 130
    .line 131
    and-int/lit16 v13, v13, 0xff

    .line 132
    .line 133
    shl-int/lit8 v13, v13, 0x18

    .line 134
    .line 135
    aget-byte v15, v12, v11

    .line 136
    .line 137
    and-int/lit16 v15, v15, 0xff

    .line 138
    .line 139
    shl-int/lit8 v9, v15, 0x10

    .line 140
    .line 141
    or-int/2addr v9, v13

    .line 142
    aget-byte v13, v12, v10

    .line 143
    .line 144
    and-int/lit16 v13, v13, 0xff

    .line 145
    .line 146
    shl-int/lit8 v13, v13, 0x8

    .line 147
    .line 148
    or-int/2addr v9, v13

    .line 149
    aget-byte v12, v12, v7

    .line 150
    .line 151
    :goto_1
    and-int/lit16 v12, v12, 0xff

    .line 152
    .line 153
    or-int/2addr v9, v12

    .line 154
    add-int/lit8 v4, v4, -0x4

    .line 155
    .line 156
    if-ge v4, v9, :cond_3

    .line 157
    .line 158
    new-array v1, v7, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    aput-object v2, v1, v3

    .line 165
    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    aput-object v2, v1, v11

    .line 171
    .line 172
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    aput-object v2, v1, v10

    .line 177
    .line 178
    const-string/jumbo v2, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    const/4 v1, 0x0

    .line 189
    return-object v1

    .line 190
    :cond_3
    add-int v12, v14, v9

    .line 191
    .line 192
    invoke-static {v1, v14, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    sub-int/2addr v4, v9

    .line 197
    const/4 v9, 0x4

    .line 198
    new-array v9, v9, [Ljava/lang/Object;

    .line 199
    .line 200
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    aput-object v14, v9, v3

    .line 205
    .line 206
    aput-object v5, v9, v11

    .line 207
    .line 208
    invoke-direct {v0, v13}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    aput-object v14, v9, v10

    .line 213
    .line 214
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    aput-object v10, v9, v7

    .line 219
    .line 220
    const-string/jumbo v7, "parsePSSH[%d]: <%s, %s> pssh: %d"

    .line 221
    .line 222
    .line 223
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    add-int/2addr v6, v11

    .line 231
    invoke-virtual {v2, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move v5, v12

    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getPssh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public getSupportedSchemes()[Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    return-object v0
.end method
