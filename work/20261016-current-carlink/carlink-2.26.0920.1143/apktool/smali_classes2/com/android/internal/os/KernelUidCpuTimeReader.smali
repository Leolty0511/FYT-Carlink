.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseLongArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseLongArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 21
    .line 22
    return-void
.end method

.method private removeUidsFromKernelModule(II)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Removing uids "

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
    const-string v1, "-"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "KernelUidCpuTimeReader"

    .line 24
    .line 25
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 29
    .line 30
    const-string v3, "/proc/uid_cputime/remove_uid_range"

    .line 31
    .line 32
    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :catchall_1
    move-exception v3

    .line 66
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "failed to remove uids "

    .line 77
    .line 78
    const-string v3, " - "

    .line 79
    .line 80
    const-string v4, " from uid_cputime module"

    .line 81
    .line 82
    invoke-static {v1, p1, v3, p2, v4}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v2, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "KernelUidCpuTimeReader"

    .line 4
    .line 5
    const-string v0, " s="

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const-wide/16 v5, 0x3e8

    .line 12
    .line 13
    mul-long/2addr v3, v5

    .line 14
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v8, Ljava/io/FileReader;

    .line 17
    .line 18
    const-string v9, "/proc/uid_cputime/show_uid_stat"

    .line 19
    .line 20
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 27
    .line 28
    const/16 v9, 0x20

    .line 29
    .line 30
    invoke-direct {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    if-eqz v9, :cond_7

    .line 38
    .line 39
    invoke-virtual {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    add-int/lit8 v10, v10, -0x1

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/16 v10, 0xa

    .line 58
    .line 59
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-static {v11, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v13

    .line 71
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-static {v11, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-wide v5, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 82
    .line 83
    const-wide/16 v15, 0x0

    .line 84
    .line 85
    cmp-long v5, v5, v15

    .line 86
    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    iget-object v5, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 90
    .line 91
    invoke-virtual {v5, v9}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-ltz v5, :cond_2

    .line 96
    .line 97
    iget-object v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 98
    .line 99
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v19

    .line 103
    sub-long v19, v13, v19

    .line 104
    .line 105
    iget-object v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 106
    .line 107
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    sub-long v21, v10, v21

    .line 112
    .line 113
    move-object/from16 v23, v7

    .line 114
    .line 115
    :try_start_2
    iget-wide v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 116
    .line 117
    sub-long v6, v3, v6

    .line 118
    .line 119
    cmp-long v12, v19, v15

    .line 120
    .line 121
    if-ltz v12, :cond_1

    .line 122
    .line 123
    cmp-long v12, v21, v15

    .line 124
    .line 125
    if-gez v12, :cond_0

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    move-wide v5, v15

    .line 129
    move-wide/from16 v15, v21

    .line 130
    .line 131
    const-wide/16 v17, 0x3e8

    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_1
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v15, "Malformed cpu data for UID="

    .line 138
    .line 139
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v15, "!\n"

    .line 146
    .line 147
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v15, "Time between reads: "

    .line 151
    .line 152
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-wide/16 v15, 0x3e8

    .line 156
    .line 157
    div-long/2addr v6, v15

    .line 158
    invoke-static {v6, v7, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 159
    .line 160
    .line 161
    const-string v6, "\n"

    .line 162
    .line 163
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v6, "Previous times: u="

    .line 167
    .line 168
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 172
    .line 173
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    const-wide/16 v17, 0x3e8

    .line 178
    .line 179
    div-long v6, v6, v17

    .line 180
    .line 181
    invoke-static {v6, v7, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 188
    .line 189
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 190
    .line 191
    .line 192
    move-result-wide v5

    .line 193
    div-long v5, v5, v17

    .line 194
    .line 195
    invoke-static {v5, v6, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 196
    .line 197
    .line 198
    const-string v5, "\nCurrent times: u="

    .line 199
    .line 200
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    div-long v5, v13, v17

    .line 204
    .line 205
    invoke-static {v5, v6, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    div-long v5, v10, v17

    .line 212
    .line 213
    invoke-static {v5, v6, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 214
    .line 215
    .line 216
    const-string v5, "\nDelta: u="

    .line 217
    .line 218
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    div-long v5, v19, v17

    .line 222
    .line 223
    invoke-static {v5, v6, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    div-long v5, v21, v17

    .line 230
    .line 231
    invoke-static {v5, v6, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    const-wide/16 v5, 0x0

    .line 242
    .line 243
    const-wide/16 v15, 0x0

    .line 244
    .line 245
    const-wide/16 v19, 0x0

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_2
    move-object/from16 v23, v7

    .line 249
    .line 250
    const-wide/16 v17, 0x3e8

    .line 251
    .line 252
    move-wide/from16 v19, v13

    .line 253
    .line 254
    move-wide v5, v15

    .line 255
    move-wide v15, v10

    .line 256
    :goto_2
    cmp-long v7, v19, v5

    .line 257
    .line 258
    if-nez v7, :cond_3

    .line 259
    .line 260
    cmp-long v5, v15, v5

    .line 261
    .line 262
    if-eqz v5, :cond_6

    .line 263
    .line 264
    :cond_3
    move-wide v5, v10

    .line 265
    move-object/from16 v11, p1

    .line 266
    .line 267
    move v12, v9

    .line 268
    move-object v10, v8

    .line 269
    move-wide v7, v13

    .line 270
    move-wide/from16 v13, v19

    .line 271
    .line 272
    invoke-interface/range {v11 .. v16}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_4
    move-object/from16 v23, v7

    .line 277
    .line 278
    move-wide v5, v10

    .line 279
    const-wide/16 v17, 0x3e8

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_5
    move-wide/from16 v17, v5

    .line 283
    .line 284
    move-object/from16 v23, v7

    .line 285
    .line 286
    :cond_6
    move-wide v5, v10

    .line 287
    :goto_3
    move-object v10, v8

    .line 288
    move-wide v7, v13

    .line 289
    :goto_4
    iget-object v11, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 290
    .line 291
    invoke-virtual {v11, v9, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 292
    .line 293
    .line 294
    iget-object v7, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 295
    .line 296
    invoke-virtual {v7, v9, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    .line 298
    .line 299
    move-object v8, v10

    .line 300
    move-wide/from16 v5, v17

    .line 301
    .line 302
    move-object/from16 v7, v23

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :catchall_0
    move-exception v0

    .line 307
    goto :goto_5

    .line 308
    :cond_7
    move-object/from16 v23, v7

    .line 309
    .line 310
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :catchall_1
    move-exception v0

    .line 315
    move-object/from16 v23, v7

    .line 316
    .line 317
    :goto_5
    move-object v5, v0

    .line 318
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    move-object v6, v0

    .line 321
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :catchall_3
    move-exception v0

    .line 326
    move-object v7, v0

    .line 327
    :try_start_6
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    :goto_6
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v6, "Failed to read uid_cputime: "

    .line 335
    .line 336
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    :goto_7
    iput-wide v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 354
    .line 355
    return-void
.end method

.method public removeUid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 3

    .line 1
    if-ge p2, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 17
    .line 18
    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 22
    .line 23
    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 33
    .line 34
    invoke-virtual {v1, p2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 39
    .line 40
    sub-int/2addr v1, v0

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 47
    .line 48
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
