.class public final Lh/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final synthetic c:Lh/h;


# direct methods
.method public constructor <init>(Lh/h;)V
    .locals 0

    iput-object p1, p0, Lh/f;->c:Lh/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 9

    .line 1
    iget-object v0, p0, Lh/f;->c:Lh/h;

    .line 2
    .line 3
    iget-object v1, v0, Lh/h;->e:Lh/i;

    .line 4
    .line 5
    iget-object v2, v1, Lh/i;->c:Landroid/media/MediaCodec;

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    move v4, v1

    .line 14
    :cond_0
    iget-boolean v5, p0, Lh/f;->b:Z

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    iget-wide v7, v0, Lh/h;->h:J

    .line 20
    .line 21
    invoke-virtual {v2, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    const-string v5, "HDL"

    .line 28
    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v8, "=================================>> dequeueInputBuffer index: "

    .line 32
    .line 33
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v8, "  dequeFails: "

    .line 40
    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v5, v7}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    add-int/2addr v4, v6

    .line 55
    iget v5, v0, Lh/h;->i:I

    .line 56
    .line 57
    if-lt v4, v5, :cond_0

    .line 58
    .line 59
    iget-object v0, v0, Lh/h;->e:Lh/i;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v4, v0, Lh/i;->h:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v4

    .line 67
    :try_start_0
    iget-object v0, v0, Lh/i;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit v4

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v4

    .line 76
    throw p1

    .line 77
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    const/16 v0, 0x3e8

    .line 82
    .line 83
    int-to-long v7, v0

    .line 84
    div-long v7, v4, v7

    .line 85
    .line 86
    if-ltz v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    :try_start_1
    array-length v5, p1

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    const-string p1, "Data"

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, " =========>> Codec Len: "

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, "  presentationTimeUs: "

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    if-lez v5, :cond_2

    .line 139
    .line 140
    move v1, v6

    .line 141
    :cond_2
    const/4 v4, 0x0

    .line 142
    move-wide v6, v7

    .line 143
    move v8, v1

    .line 144
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const-string p1, "HDL"

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v1, "111 =================================>> dequeueInputBuffer index: "

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, "  presentationTimeUs: "

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {p1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lh/f;->c:Lh/h;

    .line 2
    .line 3
    iget-object v1, v0, Lh/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, v0, Lh/h;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lh/h;->e:Lh/i;

    .line 16
    .line 17
    iget-object v1, v1, Lh/i;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    :try_start_0
    iget-object v1, v0, Lh/h;->e:Lh/i;

    .line 26
    .line 27
    iget-object v1, v1, Lh/i;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 28
    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-wide/16 v3, 0xc8

    .line 32
    .line 33
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, [B

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lh/f;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_1
    iget-object v0, v0, Lh/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :try_start_1
    iget-boolean v1, v0, Lh/h;->c:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const-wide/16 v0, 0x320

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget v0, v0, Lh/h;->f:I

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    const-wide/16 v2, 0x3e8

    .line 63
    .line 64
    div-long v0, v2, v0

    .line 65
    .line 66
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method
