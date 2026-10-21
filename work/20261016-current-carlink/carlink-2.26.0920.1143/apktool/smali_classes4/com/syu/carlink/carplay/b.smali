.class public final Lcom/syu/carlink/carplay/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:Landroid/net/LocalSocket;

.field public final c:I

.field public d:Z

.field public final e:Ljava/io/FileOutputStream;

.field public final f:Ljava/io/FileOutputStream;

.field public final g:Ls/a;

.field public final synthetic h:Lh/i;


# direct methods
.method public constructor <init>(Lh/i;Landroid/net/LocalSocket;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/syu/carlink/carplay/b;->h:Lh/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/syu/carlink/carplay/b;->b:Landroid/net/LocalSocket;

    .line 7
    .line 8
    const/high16 p2, 0x100000

    .line 9
    .line 10
    iput p2, p0, Lcom/syu/carlink/carplay/b;->c:I

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Lh/i;->a()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/io/File;

    .line 19
    .line 20
    const-string p2, "/sdcard/cprecord"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    new-instance p2, Ljava/io/FileOutputStream;

    .line 39
    .line 40
    const-string v1, "/sdcard/cprecord/receiver.h264"

    .line 41
    .line 42
    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object p2, v0

    .line 47
    :goto_0
    iput-object p2, p0, Lcom/syu/carlink/carplay/b;->f:Ljava/io/FileOutputStream;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    new-instance v0, Ljava/io/FileOutputStream;

    .line 62
    .line 63
    const-string p1, "/sdcard/cprecord/handled.h264"

    .line 64
    .line 65
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iput-object v0, p0, Lcom/syu/carlink/carplay/b;->e:Ljava/io/FileOutputStream;

    .line 69
    .line 70
    sget-object p1, Lcom/syu/carlink/carplay/Receiver$Tableware$videoFrame$2;->INSTANCE:Lcom/syu/carlink/carplay/Receiver$Tableware$videoFrame$2;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/syu/carlink/carplay/b;->g:Ls/a;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/carplay/b;->b:Landroid/net/LocalSocket;

    .line 2
    .line 3
    const-string v1, "Tableware joinStop  ------- 0"

    .line 4
    .line 5
    const-string v2, "HDL"

    .line 6
    .line 7
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_1
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catch_2
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_2
    const-string v0, "Tableware joinStop  ------- 6"

    .line 42
    .line 43
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/syu/carlink/carplay/b;->b:Landroid/net/LocalSocket;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string v1, "HDL"

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Tableware: "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "  ------- run() ios ERROR!!"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v1, v0

    .line 43
    :goto_0
    if-nez v1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string v2, "HDL"

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Tableware: "

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, "  ------- run() isRunning: "

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-boolean v4, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, "  isInterrupted: "

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :catch_1
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 92
    .line 93
    if-eqz v2, :cond_10

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_10

    .line 100
    .line 101
    iget v2, p0, Lcom/syu/carlink/carplay/b;->c:I

    .line 102
    .line 103
    new-array v2, v2, [B

    .line 104
    .line 105
    const/4 v3, -0x1

    .line 106
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 107
    .line 108
    .line 109
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    goto :goto_2

    .line 111
    :catch_2
    move v4, v3

    .line 112
    :goto_2
    const-string v5, "Data"

    .line 113
    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v7, "Tableware: "

    .line 117
    .line 118
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v7, "  ------- read data len: "

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-static {v5, v6}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    if-ltz v4, :cond_d

    .line 144
    .line 145
    invoke-static {v2, v4}, Lt/c;->J([BI)[B

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_e

    .line 154
    .line 155
    iget-boolean v4, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 156
    .line 157
    if-eqz v4, :cond_e

    .line 158
    .line 159
    iget-object v4, p0, Lcom/syu/carlink/carplay/b;->f:Ljava/io/FileOutputStream;

    .line 160
    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 164
    .line 165
    .line 166
    :cond_2
    iget-object v4, p0, Lcom/syu/carlink/carplay/b;->f:Ljava/io/FileOutputStream;

    .line 167
    .line 168
    if-eqz v4, :cond_3

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 171
    .line 172
    .line 173
    :cond_3
    array-length v4, v2

    .line 174
    const/4 v5, 0x0

    .line 175
    move v6, v5

    .line 176
    :goto_3
    if-ge v6, v4, :cond_e

    .line 177
    .line 178
    aget-byte v7, v2, v6

    .line 179
    .line 180
    iget-object v8, p0, Lcom/syu/carlink/carplay/b;->g:Ls/a;

    .line 181
    .line 182
    invoke-interface {v8}, Ls/a;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Lcom/syu/carlink/carplay/c;

    .line 187
    .line 188
    iget-boolean v9, v8, Lcom/syu/carlink/carplay/c;->f:Z

    .line 189
    .line 190
    const/4 v10, 0x1

    .line 191
    if-eqz v9, :cond_4

    .line 192
    .line 193
    iget-object v9, v8, Lcom/syu/carlink/carplay/c;->b:Ls/a;

    .line 194
    .line 195
    invoke-interface {v9}, Ls/a;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, [B

    .line 200
    .line 201
    iget v11, v8, Lcom/syu/carlink/carplay/c;->d:I

    .line 202
    .line 203
    add-int/lit8 v12, v11, 0x1

    .line 204
    .line 205
    iput v12, v8, Lcom/syu/carlink/carplay/c;->d:I

    .line 206
    .line 207
    aput-byte v7, v9, v11

    .line 208
    .line 209
    iget v7, v8, Lcom/syu/carlink/carplay/c;->c:I

    .line 210
    .line 211
    if-lez v7, :cond_9

    .line 212
    .line 213
    if-ne v12, v7, :cond_9

    .line 214
    .line 215
    goto/16 :goto_7

    .line 216
    .line 217
    :cond_4
    invoke-virtual {v8}, Lcom/syu/carlink/carplay/c;->a()[B

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    iget v11, v8, Lcom/syu/carlink/carplay/c;->h:I

    .line 222
    .line 223
    add-int/lit8 v12, v11, 0x1

    .line 224
    .line 225
    iput v12, v8, Lcom/syu/carlink/carplay/c;->h:I

    .line 226
    .line 227
    aput-byte v7, v9, v11

    .line 228
    .line 229
    const/16 v7, 0x8

    .line 230
    .line 231
    if-lt v12, v7, :cond_9

    .line 232
    .line 233
    invoke-virtual {v8}, Lcom/syu/carlink/carplay/c;->a()[B

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    iget v11, v8, Lcom/syu/carlink/carplay/c;->i:I

    .line 238
    .line 239
    add-int/lit8 v12, v11, 0x1

    .line 240
    .line 241
    iput v12, v8, Lcom/syu/carlink/carplay/c;->i:I

    .line 242
    .line 243
    array-length v12, v9

    .line 244
    add-int/lit8 v12, v12, -0x3

    .line 245
    .line 246
    :goto_4
    const/4 v13, 0x4

    .line 247
    if-ge v11, v12, :cond_6

    .line 248
    .line 249
    add-int/lit8 v14, v11, 0x0

    .line 250
    .line 251
    aget-byte v14, v9, v14

    .line 252
    .line 253
    if-nez v14, :cond_5

    .line 254
    .line 255
    add-int/lit8 v14, v11, 0x1

    .line 256
    .line 257
    aget-byte v14, v9, v14

    .line 258
    .line 259
    if-nez v14, :cond_5

    .line 260
    .line 261
    add-int/lit8 v14, v11, 0x2

    .line 262
    .line 263
    aget-byte v14, v9, v14

    .line 264
    .line 265
    if-nez v14, :cond_5

    .line 266
    .line 267
    add-int/lit8 v14, v11, 0x3

    .line 268
    .line 269
    aget-byte v14, v9, v14

    .line 270
    .line 271
    if-ne v14, v10, :cond_5

    .line 272
    .line 273
    iput v13, v8, Lcom/syu/carlink/carplay/c;->j:I

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_6
    move v11, v3

    .line 280
    :goto_5
    if-lez v11, :cond_9

    .line 281
    .line 282
    iget v9, v8, Lcom/syu/carlink/carplay/c;->j:I

    .line 283
    .line 284
    if-ne v9, v13, :cond_8

    .line 285
    .line 286
    sub-int v12, v11, v9

    .line 287
    .line 288
    if-gez v12, :cond_8

    .line 289
    .line 290
    add-int/lit8 v9, v9, -0x1

    .line 291
    .line 292
    iput v9, v8, Lcom/syu/carlink/carplay/c;->j:I

    .line 293
    .line 294
    sget-object v7, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 295
    .line 296
    if-eqz v7, :cond_7

    .line 297
    .line 298
    invoke-virtual {v7}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    if-eqz v7, :cond_9

    .line 303
    .line 304
    iget-object v7, v7, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 305
    .line 306
    if-eqz v7, :cond_9

    .line 307
    .line 308
    new-array v8, v10, [I

    .line 309
    .line 310
    aput v13, v8, v5

    .line 311
    .line 312
    const/16 v9, 0xd2

    .line 313
    .line 314
    invoke-virtual {v7, v9, v0, v8}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_7
    const-string v1, "me"

    .line 319
    .line 320
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :cond_8
    iput-boolean v10, v8, Lcom/syu/carlink/carplay/c;->f:Z

    .line 325
    .line 326
    invoke-virtual {v8}, Lcom/syu/carlink/carplay/c;->a()[B

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    add-int/lit8 v10, v11, -0x1

    .line 331
    .line 332
    aget-byte v9, v9, v10

    .line 333
    .line 334
    invoke-virtual {v8}, Lcom/syu/carlink/carplay/c;->a()[B

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    add-int/lit8 v12, v11, -0x2

    .line 339
    .line 340
    aget-byte v10, v10, v12

    .line 341
    .line 342
    invoke-virtual {v8}, Lcom/syu/carlink/carplay/c;->a()[B

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    add-int/lit8 v13, v11, -0x3

    .line 347
    .line 348
    aget-byte v12, v12, v13

    .line 349
    .line 350
    invoke-virtual {v8}, Lcom/syu/carlink/carplay/c;->a()[B

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    add-int/lit8 v11, v11, -0x4

    .line 355
    .line 356
    aget-byte v11, v13, v11

    .line 357
    .line 358
    and-int/lit16 v9, v9, 0xff

    .line 359
    .line 360
    shl-int/lit8 v9, v9, 0x18

    .line 361
    .line 362
    and-int/lit16 v10, v10, 0xff

    .line 363
    .line 364
    shl-int/lit8 v10, v10, 0x10

    .line 365
    .line 366
    or-int/2addr v9, v10

    .line 367
    and-int/lit16 v10, v12, 0xff

    .line 368
    .line 369
    shl-int/lit8 v7, v10, 0x8

    .line 370
    .line 371
    or-int/2addr v7, v9

    .line 372
    and-int/lit16 v9, v11, 0xff

    .line 373
    .line 374
    or-int/2addr v7, v9

    .line 375
    iput v7, v8, Lcom/syu/carlink/carplay/c;->c:I

    .line 376
    .line 377
    iget-object v7, v8, Lcom/syu/carlink/carplay/c;->b:Ls/a;

    .line 378
    .line 379
    invoke-interface {v7}, Ls/a;->getValue()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    check-cast v7, [B

    .line 384
    .line 385
    iget-object v9, v8, Lcom/syu/carlink/carplay/c;->a:[B

    .line 386
    .line 387
    array-length v10, v9

    .line 388
    iget v11, v8, Lcom/syu/carlink/carplay/c;->j:I

    .line 389
    .line 390
    sub-int/2addr v10, v11

    .line 391
    array-length v11, v9

    .line 392
    const-string v12, "destination"

    .line 393
    .line 394
    invoke-static {v7, v12}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    sub-int/2addr v11, v10

    .line 398
    invoke-static {v9, v10, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    .line 400
    .line 401
    iget v7, v8, Lcom/syu/carlink/carplay/c;->j:I

    .line 402
    .line 403
    iput v7, v8, Lcom/syu/carlink/carplay/c;->d:I

    .line 404
    .line 405
    :cond_9
    :goto_6
    move v10, v5

    .line 406
    :goto_7
    if-eqz v10, :cond_b

    .line 407
    .line 408
    iget-object v7, p0, Lcom/syu/carlink/carplay/b;->g:Ls/a;

    .line 409
    .line 410
    invoke-interface {v7}, Ls/a;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    check-cast v7, Lcom/syu/carlink/carplay/c;

    .line 415
    .line 416
    iget-object v8, v7, Lcom/syu/carlink/carplay/c;->b:Ls/a;

    .line 417
    .line 418
    invoke-interface {v8}, Ls/a;->getValue()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    check-cast v8, [B

    .line 423
    .line 424
    iget v7, v7, Lcom/syu/carlink/carplay/c;->c:I

    .line 425
    .line 426
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    const-string v8, "copyOf(this, newSize)"

    .line 431
    .line 432
    invoke-static {v7, v8}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-object v8, p0, Lcom/syu/carlink/carplay/b;->g:Ls/a;

    .line 436
    .line 437
    invoke-interface {v8}, Ls/a;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    check-cast v8, Lcom/syu/carlink/carplay/c;

    .line 442
    .line 443
    iput-boolean v5, v8, Lcom/syu/carlink/carplay/c;->f:Z

    .line 444
    .line 445
    iget-object v9, v8, Lcom/syu/carlink/carplay/c;->e:Ls/a;

    .line 446
    .line 447
    invoke-interface {v9}, Ls/a;->getValue()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    check-cast v9, Landroid/util/SparseArray;

    .line 452
    .line 453
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 454
    .line 455
    .line 456
    iput v5, v8, Lcom/syu/carlink/carplay/c;->j:I

    .line 457
    .line 458
    iput v5, v8, Lcom/syu/carlink/carplay/c;->d:I

    .line 459
    .line 460
    iput v5, v8, Lcom/syu/carlink/carplay/c;->h:I

    .line 461
    .line 462
    iput v5, v8, Lcom/syu/carlink/carplay/c;->i:I

    .line 463
    .line 464
    iput v5, v8, Lcom/syu/carlink/carplay/c;->c:I

    .line 465
    .line 466
    iget-object v8, p0, Lcom/syu/carlink/carplay/b;->h:Lh/i;

    .line 467
    .line 468
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    iget-object v9, v8, Lh/i;->h:Ljava/lang/Object;

    .line 472
    .line 473
    monitor-enter v9

    .line 474
    :try_start_2
    iget-object v8, v8, Lh/i;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 475
    .line 476
    invoke-virtual {v8, v7}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    .line 478
    .line 479
    monitor-exit v9

    .line 480
    iget-object v8, p0, Lcom/syu/carlink/carplay/b;->e:Ljava/io/FileOutputStream;

    .line 481
    .line 482
    if-eqz v8, :cond_a

    .line 483
    .line 484
    invoke-virtual {v8, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 485
    .line 486
    .line 487
    :cond_a
    iget-object v7, p0, Lcom/syu/carlink/carplay/b;->e:Ljava/io/FileOutputStream;

    .line 488
    .line 489
    if-eqz v7, :cond_c

    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 492
    .line 493
    .line 494
    goto :goto_8

    .line 495
    :catchall_0
    move-exception v0

    .line 496
    monitor-exit v9

    .line 497
    throw v0

    .line 498
    :cond_b
    iget-object v7, p0, Lcom/syu/carlink/carplay/b;->g:Ls/a;

    .line 499
    .line 500
    invoke-interface {v7}, Ls/a;->getValue()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    check-cast v7, Lcom/syu/carlink/carplay/c;

    .line 505
    .line 506
    iget v7, v7, Lcom/syu/carlink/carplay/c;->j:I

    .line 507
    .line 508
    if-ne v7, v3, :cond_c

    .line 509
    .line 510
    iget-object v7, p0, Lcom/syu/carlink/carplay/b;->g:Ls/a;

    .line 511
    .line 512
    invoke-interface {v7}, Ls/a;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    check-cast v7, Lcom/syu/carlink/carplay/c;

    .line 517
    .line 518
    iget v8, v7, Lcom/syu/carlink/carplay/c;->j:I

    .line 519
    .line 520
    if-ne v8, v3, :cond_c

    .line 521
    .line 522
    iput v5, v7, Lcom/syu/carlink/carplay/c;->j:I

    .line 523
    .line 524
    :cond_c
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 525
    .line 526
    goto/16 :goto_3

    .line 527
    .line 528
    :cond_d
    iget-boolean v2, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 529
    .line 530
    if-eqz v2, :cond_e

    .line 531
    .line 532
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-nez v2, :cond_e

    .line 537
    .line 538
    const-wide/16 v2, 0xc8

    .line 539
    .line 540
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 541
    .line 542
    .line 543
    goto :goto_9

    .line 544
    :catch_3
    move-exception v2

    .line 545
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    .line 547
    .line 548
    :cond_e
    :goto_9
    iget-boolean v2, p0, Lcom/syu/carlink/carplay/b;->d:Z

    .line 549
    .line 550
    if-eqz v2, :cond_f

    .line 551
    .line 552
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_1

    .line 557
    .line 558
    :cond_f
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 559
    .line 560
    .line 561
    iget-object v2, p0, Lcom/syu/carlink/carplay/b;->b:Landroid/net/LocalSocket;

    .line 562
    .line 563
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 564
    .line 565
    .line 566
    goto/16 :goto_1

    .line 567
    .line 568
    :cond_10
    return-void
.end method
