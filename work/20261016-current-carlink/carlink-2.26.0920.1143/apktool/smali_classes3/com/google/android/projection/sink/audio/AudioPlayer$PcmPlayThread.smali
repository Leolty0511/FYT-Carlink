.class Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;
.super Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PcmPlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Pcm-"

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
    .locals 9

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
    const-string v1, "PCM thread starts "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

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
    const-string v1, " PcmPlayThread: "

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
    if-nez v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->waitForEvent()V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    move v3, v0

    .line 50
    move v4, v3

    .line 51
    :catch_0
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->isPlaying()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    iget-object v5, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 58
    .line 59
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    if-nez v3, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioPlayThread;->mStopWait:Ljava/util/concurrent/Semaphore;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v3, "data still left in Q, clearing "

    .line 110
    .line 111
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 115
    .line 116
    invoke-static {v3}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 141
    .line 142
    .line 143
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "buffers written:"

    .line 146
    .line 147
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 168
    .line 169
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$300(Lcom/google/android/projection/sink/audio/AudioPlayer;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    .line 175
    const-wide/16 v7, 0xc8

    .line 176
    .line 177
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    if-eqz v5, :cond_0

    .line 184
    .line 185
    iget-object v6, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 186
    .line 187
    invoke-static {v6}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    iget-object v5, v5, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->payload:[B

    .line 192
    .line 193
    array-length v7, v5

    .line 194
    invoke-virtual {v6, v5, v0, v7}, Landroid/media/AudioTrack;->write([BII)I

    .line 195
    .line 196
    .line 197
    add-int/lit8 v4, v4, 0x1

    .line 198
    .line 199
    if-nez v3, :cond_0

    .line 200
    .line 201
    iget-object v5, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 202
    .line 203
    invoke-static {v5}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$500(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-ne v4, v5, :cond_0

    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v5, "start play  PcmPlayThread: "

    .line 212
    .line 213
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iget-object v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$400(Lcom/google/android/projection/sink/audio/AudioPlayer;)Landroid/media/AudioTrack;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 233
    .line 234
    .line 235
    const/4 v3, 0x1

    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v3, "PCM thread ends "

    .line 241
    .line 242
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v3, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$PcmPlayThread;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 246
    .line 247
    invoke-static {v3}, Lcom/google/android/projection/sink/audio/AudioPlayer;->access$200(Lcom/google/android/projection/sink/audio/AudioPlayer;)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    return-void
.end method
