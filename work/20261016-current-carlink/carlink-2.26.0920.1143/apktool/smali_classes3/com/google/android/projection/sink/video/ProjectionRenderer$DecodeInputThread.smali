.class final Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DecodeInputThread"
.end annotation


# instance fields
.field private mShutdownThread:Z

.field final synthetic this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 2
    .line 3
    const-string p1, "ProjectionRenderer.DecodeInputThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v3, v0

    .line 6
    move v4, v2

    .line 7
    :goto_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v5, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->mShutdownThread:Z

    .line 9
    .line 10
    if-eqz v5, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-nez v3, :cond_2

    .line 16
    .line 17
    :try_start_1
    iget-object v3, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$000(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    const-wide/16 v6, 0xc8

    .line 26
    .line 27
    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/google/android/projection/protocol/VideoFrame;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    monitor-enter p0

    .line 38
    :try_start_2
    iget-boolean v2, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->mShutdownThread:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v2

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    throw v0

    .line 54
    :cond_2
    iget-object v5, v3, Lcom/google/android/projection/protocol/VideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    const-wide/16 v10, 0x3e8

    .line 73
    .line 74
    div-long/2addr v8, v10

    .line 75
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 76
    .line 77
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-eqz v10, :cond_3

    .line 82
    .line 83
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 84
    .line 85
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v10, v7, v8, v9}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->onDecodingStart(IJ)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    if-lez v7, :cond_9

    .line 93
    .line 94
    const-string v10, "dequeueInputBuffer"

    .line 95
    .line 96
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move v10, v2

    .line 100
    :cond_4
    const/4 v11, -0x1

    .line 101
    :try_start_4
    iget-object v12, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 102
    .line 103
    invoke-static {v12}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Landroid/media/MediaCodec;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    const-wide/32 v13, 0x186a0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 111
    .line 112
    .line 113
    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 114
    move v13, v12

    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move v13, v11

    .line 117
    :goto_2
    const/16 v19, 0x1

    .line 118
    .line 119
    if-ne v13, v11, :cond_5

    .line 120
    .line 121
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    const/16 v11, 0xa

    .line 124
    .line 125
    if-le v10, v11, :cond_4

    .line 126
    .line 127
    const-string v10, "AHU.VIDEO"

    .line 128
    .line 129
    const-string v11, "dequeueInputBuffer failed, lost a frame."

    .line 130
    .line 131
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 135
    .line 136
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 137
    .line 138
    .line 139
    move/from16 v10, v19

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move v10, v2

    .line 143
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 144
    .line 145
    .line 146
    if-eqz v10, :cond_6

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_6
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 150
    .line 151
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$400(Lcom/google/android/projection/sink/video/ProjectionRenderer;)[Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    aget-object v10, v10, v13

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v5, v6, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    .line 171
    const-string v12, "queueInputBuffer"

    .line 172
    .line 173
    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v12, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 177
    .line 178
    invoke-static {v12}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Landroid/media/MediaCodec;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    const/4 v14, 0x0

    .line 183
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    if-eqz v4, :cond_7

    .line 188
    .line 189
    move/from16 v18, v2

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_7
    const/4 v10, 0x2

    .line 193
    move/from16 v18, v10

    .line 194
    .line 195
    :goto_4
    move-wide/from16 v16, v8

    .line 196
    .line 197
    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 201
    .line 202
    .line 203
    if-nez v4, :cond_8

    .line 204
    .line 205
    iget-object v4, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 206
    .line 207
    invoke-static {v4}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 208
    .line 209
    .line 210
    move/from16 v4, v19

    .line 211
    .line 212
    :cond_8
    sub-int/2addr v7, v11

    .line 213
    add-int/2addr v6, v11

    .line 214
    goto :goto_1

    .line 215
    :cond_9
    :goto_5
    if-nez v7, :cond_a

    .line 216
    .line 217
    iget-object v5, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 218
    .line 219
    invoke-static {v5}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$500(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v5, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_a
    iget-object v5, v3, Lcom/google/android/projection/protocol/VideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 227
    .line 228
    invoke-static {v5}, Lcom/google/android/projection/common/BufferPool;->returnBuffer(Ljava/nio/ByteBuffer;)V

    .line 229
    .line 230
    .line 231
    iput-object v0, v3, Lcom/google/android/projection/protocol/VideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 232
    .line 233
    move-object v3, v0

    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :catchall_1
    move-exception v0

    .line 237
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 238
    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeInputThread;->mShutdownThread:Z

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    throw v0
.end method
