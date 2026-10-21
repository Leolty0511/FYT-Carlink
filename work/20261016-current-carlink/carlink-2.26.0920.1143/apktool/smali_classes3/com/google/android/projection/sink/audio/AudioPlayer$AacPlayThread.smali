.class Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;
.super Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AacPlayThread"
.end annotation


# instance fields
.field private mAacDecoder:Landroid/media/MediaCodec;

.field private mOutputHandingThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;

.field final synthetic this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Aac-"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, -0xf

    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "AAC thread starts "

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " AacPlayThread :"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v3, "AHU.AUDIO"

    .line 37
    .line 38
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$600(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$700(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/16 v5, 0xc

    .line 54
    .line 55
    const/4 v6, 0x2

    .line 56
    const/4 v7, 0x1

    .line 57
    if-ne v4, v5, :cond_0

    .line 58
    .line 59
    move v4, v6

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v4, v7

    .line 62
    :goto_0
    const-string v5, "audio/mp4a-latm"

    .line 63
    .line 64
    invoke-static {v5, v0, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :try_start_0
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-virtual {v4, v0, v5, v5, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;

    .line 85
    .line 86
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 87
    .line 88
    iget-object v5, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 89
    .line 90
    invoke-direct {v0, v4, v5}, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Landroid/media/MediaCodec;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mOutputHandingThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    .line 97
    .line 98
    move v0, v8

    .line 99
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->shouldQuit()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_c

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->waitForEvent()V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->isPlaying()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mOutputHandingThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->startPlaying()V

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    :catch_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->isPlaying()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_4

    .line 130
    .line 131
    iget-object v5, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 132
    .line 133
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-eqz v5, :cond_3

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mOutputHandingThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->stopPlaying()V

    .line 147
    .line 148
    .line 149
    :try_start_1
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    .line 154
    :catch_1
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->mStopWait:Ljava/util/concurrent/Semaphore;

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 157
    .line 158
    .line 159
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 160
    .line 161
    invoke-static {v4}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_1

    .line 170
    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v5, "data still left in Q, clearing "

    .line 174
    .line 175
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v5, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 179
    .line 180
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 199
    .line 200
    invoke-static {v4}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    :goto_3
    :try_start_2
    iget-object v5, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 209
    .line 210
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 215
    .line 216
    const-wide/16 v10, 0xc8

    .line 217
    .line 218
    invoke-virtual {v5, v10, v11, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    .line 224
    if-nez v5, :cond_5

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_5
    iget-object v9, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 228
    .line 229
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$800(Lcom/google/android/projection/sink/audio/AudioPlayer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    if-eqz v9, :cond_6

    .line 234
    .line 235
    iget-object v9, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 236
    .line 237
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$800(Lcom/google/android/projection/sink/audio/AudioPlayer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    iget-wide v10, v5, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->presentationTimeUs:J

    .line 242
    .line 243
    invoke-virtual {v9, v10, v11}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->onDecoded(J)V

    .line 244
    .line 245
    .line 246
    :cond_6
    iget-object v9, v5, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->payload:[B

    .line 247
    .line 248
    if-nez v9, :cond_8

    .line 249
    .line 250
    if-nez v0, :cond_7

    .line 251
    .line 252
    iget-object v9, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 253
    .line 254
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$900(Lcom/google/android/projection/sink/audio/AudioPlayer;)[B

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    if-eqz v9, :cond_7

    .line 259
    .line 260
    iget-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 261
    .line 262
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$900(Lcom/google/android/projection/sink/audio/AudioPlayer;)[B

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    move v0, v7

    .line 267
    move v10, v0

    .line 268
    goto :goto_4

    .line 269
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v9, "payload null, codecconfigset:"

    .line 272
    .line 273
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v9, " codecConfig:"

    .line 280
    .line 281
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v9, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 285
    .line 286
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$900(Lcom/google/android/projection/sink/audio/AudioPlayer;)[B

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_8
    move v10, v8

    .line 307
    :goto_4
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    if-eqz v11, :cond_9

    .line 312
    .line 313
    new-instance v11, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v12, "payload "

    .line 316
    .line 317
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v12, " isCodecConfig:"

    .line 328
    .line 329
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    :cond_9
    iget-object v11, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 343
    .line 344
    const-wide/32 v12, 0x493e0

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    if-gez v15, :cond_a

    .line 352
    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v9, "No input buffer available "

    .line 356
    .line 357
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object v9, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 361
    .line 362
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    goto/16 :goto_2

    .line 383
    .line 384
    :cond_a
    aget-object v11, v4, v15

    .line 385
    .line 386
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 387
    .line 388
    .line 389
    aget-object v11, v4, v15

    .line 390
    .line 391
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    .line 393
    .line 394
    iget-object v14, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 395
    .line 396
    const/16 v16, 0x0

    .line 397
    .line 398
    array-length v9, v9

    .line 399
    iget-wide v11, v5, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->presentationTimeUs:J

    .line 400
    .line 401
    if-eqz v10, :cond_b

    .line 402
    .line 403
    move/from16 v20, v6

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_b
    move/from16 v20, v8

    .line 407
    .line 408
    :goto_5
    move/from16 v17, v9

    .line 409
    .line 410
    move-wide/from16 v18, v11

    .line 411
    .line 412
    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_c
    iget-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mOutputHandingThread:Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->release()V

    .line 420
    .line 421
    .line 422
    iget-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 423
    .line 424
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 425
    .line 426
    .line 427
    iget-object v0, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 428
    .line 429
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 430
    .line 431
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v4, "AAC thread ends "

    .line 435
    .line 436
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iget-object v4, v1, Lcom/google/android/projection/sink/audio/AudioPlayer$AacPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 440
    .line 441
    invoke-static {v4}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :catch_2
    move-exception v0

    .line 463
    new-instance v2, Ljava/lang/RuntimeException;

    .line 464
    .line 465
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 466
    .line 467
    .line 468
    throw v2
.end method
