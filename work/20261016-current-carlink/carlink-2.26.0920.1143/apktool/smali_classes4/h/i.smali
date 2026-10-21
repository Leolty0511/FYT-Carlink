.class public final Lh/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:Landroid/net/LocalServerSocket;

.field public c:Landroid/media/MediaCodec;

.field public d:Z

.field public e:Lcom/syu/carlink/carplay/b;

.field public f:Z

.field public final g:Ljava/util/concurrent/LinkedBlockingDeque;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/LocalServerSocket;

    .line 5
    .line 6
    const-string v1, "/proc/mysocket"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lh/i;->b:Landroid/net/LocalServerSocket;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 14
    .line 15
    const/16 v1, 0x2710

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lh/i;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lh/i;->h:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    .line 30
    .line 31
    const-string v1, "logcat-thread"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh/i;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lh/i;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method

.method public final b(Ljava/lang/String;IIILandroid/view/Surface;)V
    .locals 10

    .line 1
    const-string v0, "initMediaCodec ============>>> reset 1"

    .line 2
    .line 3
    const-string v1, "initMediaCodec ============>>> reset 0"

    .line 4
    .line 5
    const-string v2, "type"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    const-string v6, "HDL"

    .line 16
    .line 17
    if-eqz v2, :cond_c

    .line 18
    .line 19
    const-string v2, "initMediaCodec ============>>> configure"

    .line 20
    .line 21
    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v7, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 30
    .line 31
    invoke-static {v7}, Lt/b;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v8, 0x3e8

    .line 35
    .line 36
    invoke-virtual {v7, v2, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ltz v7, :cond_1

    .line 41
    .line 42
    iget-object v8, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 43
    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v9, "initMediaCodec ============>>> dequeueOutputBuffer "

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v6, v7}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    :cond_1
    :try_start_1
    const-string v2, "initMediaCodec ============>>> stop 0"

    .line 71
    .line 72
    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v2, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 87
    .line 88
    .line 89
    :cond_3
    const-string v2, "initMediaCodec ============>>> stop 1"

    .line 90
    .line 91
    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :try_start_2
    iget-object v1, p0, Lh/i;->c:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :try_start_3
    iget-object p2, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 107
    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/media/MediaCodec;->reset()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    .line 112
    .line 113
    :catch_1
    :cond_4
    invoke-static {v6, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :catch_2
    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :try_start_4
    iget-object v1, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 125
    .line 126
    .line 127
    :catch_3
    :cond_5
    invoke-static {v6, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "initMediaCodec ============>>>  000 type : "

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "  width : "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, "  height : "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, " fps : "

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v6, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :try_start_5
    iget-object v1, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 176
    .line 177
    if-eqz v1, :cond_6

    .line 178
    .line 179
    invoke-virtual {v1, v0, p5, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    iget-object v0, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 183
    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 187
    .line 188
    .line 189
    :cond_7
    iget-object v0, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 190
    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 194
    .line 195
    .line 196
    :cond_8
    const-string v0, "initMediaCodec ============>>>00 mediaCodec?.start()"

    .line 197
    .line 198
    invoke-static {v6, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iput-boolean v5, p0, Lh/i;->d:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :catch_4
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    .line 207
    .line 208
    :try_start_6
    iget-object v0, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 209
    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 213
    .line 214
    .line 215
    :cond_9
    iget-object v0, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :catchall_1
    move-exception p1

    .line 224
    iget-object p2, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 225
    .line 226
    if-eqz p2, :cond_a

    .line 227
    .line 228
    invoke-virtual {p2}, Landroid/media/MediaCodec;->release()V

    .line 229
    .line 230
    .line 231
    :cond_a
    throw p1

    .line 232
    :catch_5
    iget-object v0, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 233
    .line 234
    if-eqz v0, :cond_b

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_b
    :goto_3
    iput-object v4, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 238
    .line 239
    const-string v0, "initMediaCodec ============>>>  005 mediaCodec ERROR!!"

    .line 240
    .line 241
    invoke-static {v6, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p0 .. p5}, Lh/i;->b(Ljava/lang/String;IIILandroid/view/Surface;)V

    .line 245
    .line 246
    .line 247
    :goto_4
    return-void

    .line 248
    :cond_c
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    iput-object p4, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 253
    .line 254
    if-eqz p4, :cond_d

    .line 255
    .line 256
    invoke-virtual {p4}, Landroid/media/MediaCodec;->reset()V

    .line 257
    .line 258
    .line 259
    :cond_d
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iget-object p2, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 264
    .line 265
    if-eqz p2, :cond_e

    .line 266
    .line 267
    invoke-virtual {p2, p1, p5, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 268
    .line 269
    .line 270
    :cond_e
    iget-object p1, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 271
    .line 272
    if-eqz p1, :cond_f

    .line 273
    .line 274
    invoke-virtual {p1, v5}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 275
    .line 276
    .line 277
    :cond_f
    const-string p1, "initMediaCodec ============>>> init and configure"

    .line 278
    .line 279
    invoke-static {v6, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-boolean p1, p0, Lh/i;->d:Z

    .line 283
    .line 284
    if-eqz p1, :cond_10

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_10
    iget-object p1, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 288
    .line 289
    if-eqz p1, :cond_11

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 292
    .line 293
    .line 294
    const-string p1, "initMediaCodec ============>>>01 mediaCodec?.start()"

    .line 295
    .line 296
    invoke-static {v6, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iput-boolean v5, p0, Lh/i;->d:Z

    .line 300
    .line 301
    :cond_11
    :goto_5
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh/i;->e:Lcom/syu/carlink/carplay/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/syu/carlink/carplay/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 13
    :try_start_1
    iput-object v0, p0, Lh/i;->e:Lcom/syu/carlink/carplay/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Lh/i;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final run()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lh/i;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const-string v0, "localServerSocket accept()  Waitting!! ---- "

    .line 12
    .line 13
    const-string v1, "HDL"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lh/i;->b:Landroid/net/LocalServerSocket;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "localServerSocket accept()  last tableware : "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lh/i;->e:Lcom/syu/carlink/carplay/b;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, "  mediaCodec: "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lh/i;->c:Landroid/media/MediaCodec;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, "  codecStarted : "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v3, p0, Lh/i;->d:Z

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "===============>>>>  localServerSocket accept new localSocket\uff01\uff01"

    .line 71
    .line 72
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lh/i;->c()V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/syu/carlink/carplay/b;

    .line 79
    .line 80
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, p0, v0}, Lcom/syu/carlink/carplay/b;-><init>(Lh/i;Landroid/net/LocalSocket;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lh/i;->e:Lcom/syu/carlink/carplay/b;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "localServerSocket accept()  new tableware : "

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lh/i;->e:Lcom/syu/carlink/carplay/b;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    const-string v0, "===============>>>>  Receiver exit\uff01\uff01"

    .line 120
    .line 121
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lh/i;->c()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh/i;->f:Z

    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
