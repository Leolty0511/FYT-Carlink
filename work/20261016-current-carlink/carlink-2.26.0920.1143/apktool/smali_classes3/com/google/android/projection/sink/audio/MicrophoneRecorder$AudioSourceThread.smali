.class Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/MicrophoneRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioSourceThread"
.end annotation


# static fields
.field private static final ACK_TIMEOUT:J = 0x1f4L

.field private static final JOIN_TIMEOUT:J = 0x3e8L


# instance fields
.field private volatile mFinished:Z

.field private final mPauseLock:Ljava/lang/Object;

.field private volatile mPaused:Z

.field final synthetic this$0:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/MicrophoneRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->this$0:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mFinished:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mFinished:Z

    .line 6
    .line 7
    if-nez v4, :cond_8

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "AHU.AUDIO_MIC"

    .line 16
    .line 17
    const-string v3, "start recording"

    .line 18
    .line 19
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/media/AudioRecord;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    const/16 v6, 0x3e80

    .line 26
    .line 27
    const/16 v7, 0x10

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    invoke-static {}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$000()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    mul-int/lit8 v9, v3, 0x4

    .line 35
    .line 36
    move-object v4, v2

    .line 37
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 41
    .line 42
    .line 43
    move v3, v1

    .line 44
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 45
    .line 46
    if-nez v4, :cond_5

    .line 47
    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$000()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    new-array v4, v4, [B

    .line 55
    .line 56
    invoke-static {}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$000()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    :goto_2
    if-lez v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$000()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    sub-int/2addr v6, v5

    .line 73
    invoke-virtual {v2, v4, v6, v5}, Landroid/media/AudioRecord;->read([BII)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ltz v6, :cond_1

    .line 78
    .line 79
    sub-int/2addr v5, v6

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string v1, "Error reading from AudioRecord "

    .line 84
    .line 85
    const-string v2, " while trying to read "

    .line 86
    .line 87
    invoke-static {v1, v6, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$000()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    sub-int/2addr v2, v5

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_2
    iget-boolean v5, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mFinished:Z

    .line 108
    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    iget-object v5, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->this$0:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 113
    .line 114
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$100(Lcom/google/android/projection/sink/audio/MicrophoneRecorder;)Lcom/google/android/projection/protocol/AudioSource;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-wide/16 v6, 0x0

    .line 119
    .line 120
    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/projection/protocol/AudioSource;->send(J[B)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    iget-boolean v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mFinished:Z

    .line 126
    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->this$0:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 131
    .line 132
    invoke-static {v4}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->access$200(Lcom/google/android/projection/sink/audio/MicrophoneRecorder;)Ljava/util/concurrent/Semaphore;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 137
    .line 138
    const-wide/16 v6, 0x1f4

    .line 139
    .line 140
    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_0

    .line 145
    .line 146
    const-string v4, "AHU.AUDIO_MIC"

    .line 147
    .line 148
    const-string v5, "mic ACK timeout, move on"

    .line 149
    .line 150
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_0
    const-string v4, "AHU.AUDIO_MIC"

    .line 155
    .line 156
    const-string v5, "Dropping audio frame."

    .line 157
    .line 158
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_3
    iget-boolean v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 162
    .line 163
    if-eqz v4, :cond_6

    .line 164
    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    const-string v4, "AHU.AUDIO_MIC"

    .line 168
    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v6, "stopping, sent frames "

    .line 172
    .line 173
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 190
    .line 191
    .line 192
    move-object v2, v0

    .line 193
    :cond_6
    iget-object v4, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 194
    .line 195
    monitor-enter v4

    .line 196
    :goto_4
    :try_start_1
    iget-boolean v5, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 197
    .line 198
    if-eqz v5, :cond_7

    .line 199
    .line 200
    iget-boolean v5, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    if-nez v5, :cond_7

    .line 203
    .line 204
    :try_start_2
    iget-object v5, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catch_1
    :cond_7
    :try_start_3
    monitor-exit v4

    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :catchall_0
    move-exception v0

    .line 214
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    throw v0

    .line 216
    :cond_8
    const-string v0, "AHU.AUDIO_MIC"

    .line 217
    .line 218
    const-string v1, "Reached end of AudioThread"

    .line 219
    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mFinished:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPaused:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/MicrophoneRecorder$AudioSourceThread;->mPauseLock:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw v1
.end method
