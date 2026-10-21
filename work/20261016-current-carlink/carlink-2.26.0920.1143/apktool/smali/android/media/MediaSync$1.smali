.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method public constructor <init>(Landroid/media/MediaSync;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaSync;->access$000(Landroid/media/MediaSync;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/media/MediaSync;->access$100(Landroid/media/MediaSync;)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    float-to-double v1, v1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmpl-double v1, v1, v3

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/media/MediaSync$AudioBuffer;

    .line 49
    .line 50
    iget-object v3, v1, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_2

    .line 57
    .line 58
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 59
    .line 60
    invoke-static {v4}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 65
    .line 66
    .line 67
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v5, 0x3

    .line 69
    if-eq v4, v5, :cond_2

    .line 70
    .line 71
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 72
    .line 73
    invoke-static {v4}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    :try_start_2
    const-string v4, "MediaSync"

    .line 82
    .line 83
    const-string v5, "could not start audio track"

    .line 84
    .line 85
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 89
    .line 90
    invoke-static {v4}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v5, v1, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    invoke-virtual {v4, v5, v3, v6}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-lez v4, :cond_5

    .line 102
    .line 103
    iget-wide v5, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 104
    .line 105
    const-wide/16 v7, -0x1

    .line 106
    .line 107
    cmp-long v9, v5, v7

    .line 108
    .line 109
    if-eqz v9, :cond_3

    .line 110
    .line 111
    iget-object v9, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 112
    .line 113
    invoke-static {v9, v3, v5, v6}, Landroid/media/MediaSync;->access$400(Landroid/media/MediaSync;IJ)V

    .line 114
    .line 115
    .line 116
    iput-wide v7, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 117
    .line 118
    :cond_3
    if-ne v4, v3, :cond_5

    .line 119
    .line 120
    iget-object v3, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 121
    .line 122
    invoke-static {v3, v1}, Landroid/media/MediaSync;->access$500(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 126
    .line 127
    invoke-static {v1}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 135
    .line 136
    invoke-static {v1}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 147
    .line 148
    const-wide/16 v2, 0x0

    .line 149
    .line 150
    invoke-static {v1, v2, v3}, Landroid/media/MediaSync;->access$600(Landroid/media/MediaSync;J)V

    .line 151
    .line 152
    .line 153
    :cond_4
    monitor-exit v0

    .line 154
    return-void

    .line 155
    :cond_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    .line 157
    iget-object v2, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 158
    .line 159
    invoke-static {v2}, Landroid/media/MediaSync;->access$700(Landroid/media/MediaSync;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    iget-object v3, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 168
    .line 169
    const-wide/16 v4, 0x2

    .line 170
    .line 171
    div-long/2addr v1, v4

    .line 172
    invoke-static {v3, v1, v2}, Landroid/media/MediaSync;->access$600(Landroid/media/MediaSync;J)V

    .line 173
    .line 174
    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception v1

    .line 178
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    throw v1
.end method
