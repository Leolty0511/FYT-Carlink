.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    move v2, v11

    .line 11
    :goto_0
    const/16 v12, 0xa

    .line 12
    .line 13
    if-ge v2, v9, :cond_0

    .line 14
    .line 15
    aget-byte v3, v0, v2

    .line 16
    .line 17
    if-eq v3, v12, :cond_0

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v13, 0x1

    .line 25
    add-int/2addr v2, v13

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 28
    .line 29
    add-int/2addr v3, v13

    .line 30
    sput v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 31
    .line 32
    move v14, v2

    .line 33
    :goto_1
    if-ge v2, v9, :cond_b

    .line 34
    .line 35
    move v15, v14

    .line 36
    :goto_2
    if-ge v15, v9, :cond_1

    .line 37
    .line 38
    aget-byte v2, v0, v15

    .line 39
    .line 40
    if-eq v2, v12, :cond_1

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    add-int/lit8 v15, v15, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    add-int/lit8 v2, v9, -0x1

    .line 48
    .line 49
    if-le v15, v2, :cond_2

    .line 50
    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :cond_2
    iget-object v8, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 54
    .line 55
    iget-object v7, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 56
    .line 57
    move v2, v14

    .line 58
    :goto_3
    if-ge v2, v15, :cond_4

    .line 59
    .line 60
    aget-byte v3, v0, v2

    .line 61
    .line 62
    and-int/lit16 v3, v3, 0x80

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const/16 v3, 0x3f

    .line 67
    .line 68
    aput-byte v3, v0, v2

    .line 69
    .line 70
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    if-eqz p3, :cond_5

    .line 74
    .line 75
    sget-object v2, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    sget-object v2, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 79
    .line 80
    :goto_4
    move-object v5, v2

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    move-object/from16 v2, p1

    .line 84
    .line 85
    move v3, v14

    .line 86
    move v4, v15

    .line 87
    move-object v6, v8

    .line 88
    move-object/from16 v17, v7

    .line 89
    .line 90
    move-object/from16 v18, v8

    .line 91
    .line 92
    move-object/from16 v8, v16

    .line 93
    .line 94
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    aget-object v3, v18, v11

    .line 99
    .line 100
    aget-wide v4, v17, v13

    .line 101
    .line 102
    long-to-int v4, v4

    .line 103
    const-wide/16 v5, 0x3e8

    .line 104
    .line 105
    const/4 v7, 0x2

    .line 106
    if-eqz p3, :cond_6

    .line 107
    .line 108
    aget-wide v7, v17, v7

    .line 109
    .line 110
    mul-long/2addr v7, v5

    .line 111
    goto :goto_5

    .line 112
    :cond_6
    aget-wide v7, v17, v7

    .line 113
    .line 114
    const-wide/16 v16, 0x1f4

    .line 115
    .line 116
    add-long v7, v7, v16

    .line 117
    .line 118
    div-long/2addr v7, v5

    .line 119
    :goto_5
    if-eqz v2, :cond_9

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-lez v5, :cond_9

    .line 126
    .line 127
    invoke-virtual {v10, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_7

    .line 132
    .line 133
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 134
    .line 135
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 136
    .line 137
    invoke-direct {v2, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_7
    invoke-virtual {v10, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 149
    .line 150
    iget v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    .line 151
    .line 152
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 153
    .line 154
    if-ne v3, v5, :cond_8

    .line 155
    .line 156
    iget v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 157
    .line 158
    add-int/2addr v3, v4

    .line 159
    iput v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 160
    .line 161
    iget-wide v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 162
    .line 163
    add-long/2addr v3, v7

    .line 164
    iput-wide v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_8
    iput v4, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 168
    .line 169
    iput-wide v7, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 170
    .line 171
    iput v5, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_9
    if-nez v2, :cond_a

    .line 175
    .line 176
    :try_start_1
    const-string v2, "KernelWakelockReader"

    .line 177
    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v4, "Failed to parse proc line: "

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-instance v4, Ljava/lang/String;

    .line 189
    .line 190
    sub-int v5, v15, v14

    .line 191
    .line 192
    invoke-direct {v4, v0, v14, v5}, Ljava/lang/String;-><init>([BII)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :catch_0
    :try_start_2
    const-string v2, "KernelWakelockReader"

    .line 207
    .line 208
    const-string v3, "Failed to parse proc line!"

    .line 209
    .line 210
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_a
    :goto_6
    add-int/lit8 v14, v15, 0x1

    .line 214
    .line 215
    move v2, v15

    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :cond_b
    :goto_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_d

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 237
    .line 238
    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    .line 239
    .line 240
    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 241
    .line 242
    if-eq v2, v3, :cond_c

    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 245
    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_d
    sget v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 249
    .line 250
    iput v0, v10, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 251
    .line 252
    monitor-exit p0

    .line 253
    return-object v10

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 10

    .line 1
    const-string v0, "KernelWakelockReader"

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    new-array v2, v1, [B

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 15
    .line 16
    const-string v8, "/proc/wakelocks"

    .line 17
    .line 18
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    move v8, v5

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_3

    .line 25
    :catch_1
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    .line 26
    .line 27
    const-string v8, "/d/wakeup_sources"

    .line 28
    .line 29
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    :goto_0
    :try_start_2
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    sub-long/2addr v6, v3

    .line 45
    const-wide/16 v3, 0x64

    .line 46
    .line 47
    cmp-long v3, v6, v3

    .line 48
    .line 49
    if-lez v3, :cond_0

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "Reading wakelock stats took "

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, "ms"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_0
    if-lez v9, :cond_3

    .line 74
    .line 75
    if-lt v9, v1, :cond_1

    .line 76
    .line 77
    const-string v1, "Kernel wake locks exceeded buffer size 32768"

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_1
    if-ge v5, v9, :cond_3

    .line 83
    .line 84
    aget-byte v0, v2, v5

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    move v9, v5

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    :goto_2
    invoke-virtual {p0, v2, v9, v8, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :catch_2
    :try_start_3
    const-string p1, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    .line 99
    .line 100
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    .line 102
    .line 103
    return-object v6

    .line 104
    :goto_3
    const-string v1, "failed to read kernel wakelocks"

    .line 105
    .line 106
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    return-object v6
.end method
