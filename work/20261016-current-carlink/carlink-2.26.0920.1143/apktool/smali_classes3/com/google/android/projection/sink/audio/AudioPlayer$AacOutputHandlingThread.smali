.class Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;
.super Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AacOutputHandlingThread"
.end annotation


# instance fields
.field private final mAacDecoder:Landroid/media/MediaCodec;

.field private final mDecodedBuffer:[B

.field final synthetic this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Landroid/media/MediaCodec;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "AacOutput-"

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
    const/16 p1, 0x2000

    .line 25
    .line 26
    new-array p1, p1, [B

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mDecodedBuffer:[B

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    const/16 v0, -0x10

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Aac output handling thread starts "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " AacOutputHandlingThread:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "AHU.AUDIO"

    .line 35
    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->shouldQuit()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_a

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->waitForEvent()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    .line 55
    .line 56
    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    move v5, v4

    .line 61
    move v6, v5

    .line 62
    move v7, v6

    .line 63
    move v8, v7

    .line 64
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->isPlaying()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_3

    .line 69
    .line 70
    if-ltz v5, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    if-nez v6, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->mStopWait:Ljava/util/concurrent/Semaphore;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "bytes written:"

    .line 101
    .line 102
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 117
    .line 118
    const-wide/32 v9, 0x493e0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v3, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    const/4 v9, -0x3

    .line 126
    if-ne v5, v9, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    if-gez v5, :cond_5

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    aget-object v9, v0, v5

    .line 139
    .line 140
    iget v10, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 141
    .line 142
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    .line 144
    .line 145
    iget v10, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 146
    .line 147
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 148
    .line 149
    add-int/2addr v10, v11

    .line 150
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 151
    .line 152
    .line 153
    iget v10, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 154
    .line 155
    and-int/lit8 v11, v10, 0x2

    .line 156
    .line 157
    if-eqz v11, :cond_6

    .line 158
    .line 159
    iget-object v9, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 160
    .line 161
    invoke-virtual {v9, v5, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    and-int/lit8 v11, v10, -0x3

    .line 166
    .line 167
    if-eqz v11, :cond_7

    .line 168
    .line 169
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    goto :goto_1

    .line 176
    :cond_7
    and-int/lit8 v10, v10, 0x4

    .line 177
    .line 178
    if-eqz v10, :cond_8

    .line 179
    .line 180
    const-string v9, "EOS from AAC decoder"

    .line 181
    .line 182
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    iget-object v10, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 187
    .line 188
    invoke-static {v10}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1000(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 193
    .line 194
    if-eq v10, v11, :cond_9

    .line 195
    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v11, " protocol buffer size "

    .line 199
    .line 200
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v11, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 204
    .line 205
    invoke-static {v11}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$1000(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v11, " while actual size "

    .line 213
    .line 214
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 218
    .line 219
    invoke-static {v10, v11, v2}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    iget-object v10, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mDecodedBuffer:[B

    .line 223
    .line 224
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 225
    .line 226
    invoke-virtual {v9, v10, v4, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 227
    .line 228
    .line 229
    iget-object v9, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mAacDecoder:Landroid/media/MediaCodec;

    .line 230
    .line 231
    invoke-virtual {v9, v5, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 232
    .line 233
    .line 234
    iget-object v9, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 235
    .line 236
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    iget-object v10, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->mDecodedBuffer:[B

    .line 241
    .line 242
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 243
    .line 244
    invoke-virtual {v9, v10, v4, v11}, Landroid/media/AudioTrack;->write([BII)I

    .line 245
    .line 246
    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 248
    .line 249
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 250
    .line 251
    add-int/2addr v7, v9

    .line 252
    if-nez v6, :cond_0

    .line 253
    .line 254
    iget-object v9, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 255
    .line 256
    invoke-static {v9}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$500(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-ne v8, v9, :cond_0

    .line 261
    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v9, "start play  AacOutputHandlingThread:"

    .line 265
    .line 266
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    iget-object v6, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 280
    .line 281
    invoke-static {v6}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V

    .line 286
    .line 287
    .line 288
    const/4 v6, 0x1

    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v3, "Aac output thread ends "

    .line 294
    .line 295
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AacOutputHandlingThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 299
    .line 300
    invoke-static {v3}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    return-void
.end method
