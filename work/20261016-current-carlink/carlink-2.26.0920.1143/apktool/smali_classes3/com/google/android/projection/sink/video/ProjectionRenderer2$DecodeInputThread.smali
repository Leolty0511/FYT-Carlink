.class final Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/ProjectionRenderer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DecodeInputThread"
.end annotation


# instance fields
.field private mShutdownThread:Z

.field final synthetic this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 2
    .line 3
    const-string p1, "ProjectionRenderer2.DecodeInputThread"

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
    iget-boolean v5, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->mShutdownThread:Z

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
    iget-object v3, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Ljava/util/concurrent/LinkedBlockingQueue;

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
    iget-boolean v2, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->mShutdownThread:Z

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
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 76
    .line 77
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-eqz v10, :cond_3

    .line 82
    .line 83
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 84
    .line 85
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

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
    move v10, v2

    .line 95
    :cond_4
    const/4 v11, -0x1

    .line 96
    :try_start_4
    iget-object v12, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 97
    .line 98
    invoke-static {v12}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$400(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Landroid/media/MediaCodec;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    const-wide/32 v13, 0x186a0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 106
    .line 107
    .line 108
    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 109
    move v13, v12

    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move v13, v11

    .line 112
    :goto_2
    const/16 v19, 0x1

    .line 113
    .line 114
    if-ne v13, v11, :cond_5

    .line 115
    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 117
    .line 118
    const/16 v11, 0xa

    .line 119
    .line 120
    if-le v10, v11, :cond_4

    .line 121
    .line 122
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 123
    .line 124
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$500(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 125
    .line 126
    .line 127
    move/from16 v10, v19

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move v10, v2

    .line 131
    :goto_3
    if-eqz v10, :cond_6

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_6
    iget-object v10, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 135
    .line 136
    invoke-static {v10}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$600(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)[Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    aget-object v10, v10, v13

    .line 141
    .line 142
    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v5, v6, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    iget-object v12, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 157
    .line 158
    invoke-static {v12}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$400(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Landroid/media/MediaCodec;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    const/4 v14, 0x0

    .line 163
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    move/from16 v18, v2

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    const/4 v10, 0x2

    .line 173
    move/from16 v18, v10

    .line 174
    .line 175
    :goto_4
    move-wide/from16 v16, v8

    .line 176
    .line 177
    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 178
    .line 179
    .line 180
    if-nez v4, :cond_8

    .line 181
    .line 182
    iget-object v4, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 183
    .line 184
    invoke-static {v4}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$500(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 185
    .line 186
    .line 187
    move/from16 v4, v19

    .line 188
    .line 189
    :cond_8
    sub-int/2addr v7, v11

    .line 190
    add-int/2addr v6, v11

    .line 191
    goto :goto_1

    .line 192
    :cond_9
    :goto_5
    if-nez v7, :cond_a

    .line 193
    .line 194
    iget-object v5, v1, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 195
    .line 196
    invoke-static {v5}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$700(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v5, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_a
    iget-object v5, v3, Lcom/google/android/projection/protocol/VideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    invoke-static {v5}, Lcom/google/android/projection/common/BufferPool;->returnBuffer(Ljava/nio/ByteBuffer;)V

    .line 206
    .line 207
    .line 208
    iput-object v0, v3, Lcom/google/android/projection/protocol/VideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 209
    .line 210
    move-object v3, v0

    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :catchall_1
    move-exception v0

    .line 214
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
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
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$DecodeInputThread;->mShutdownThread:Z

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
