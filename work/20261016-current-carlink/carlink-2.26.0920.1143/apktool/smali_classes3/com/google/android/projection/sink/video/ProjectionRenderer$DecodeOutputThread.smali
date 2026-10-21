.class final Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DecodeOutputThread"
.end annotation


# instance fields
.field private mShutdownThread:Z

.field final synthetic this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 2
    .line 3
    const-string p1, "ProjectionRenderer.DecodeOutputThread"

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
    .locals 7

    .line 1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->mShutdownThread:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Landroid/media/MediaCodec;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-wide/16 v2, 0x3e8

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x3

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-gez v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$300(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->onDecodingFinish(J)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$600(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/FrameCounter;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-wide/16 v3, 0x0

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->getLatestLatency()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move-wide v5, v3

    .line 87
    :goto_1
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$700(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$700(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->getLatestLatency()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$600(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/FrameCounter;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/google/android/projection/sink/video/FrameCounter;->onRenderFrame(JJ)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 115
    .line 116
    invoke-static {v2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$200(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Landroid/media/MediaCodec;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const/4 v3, 0x1

    .line 121
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
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
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$DecodeOutputThread;->mShutdownThread:Z

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
