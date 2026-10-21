.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    iput-boolean p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 13
    .line 14
    iput-boolean p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 15
    .line 16
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    iput-object p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 19
    .line 20
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 21
    .line 22
    return-void
.end method

.method private cleanUp()V
    .locals 0

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    return-void
.end method

.method private closeFile()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    mul-int v0, p1, p2

    .line 6
    .line 7
    mul-int/2addr v0, p3

    .line 8
    mul-int v1, p2, p3

    .line 9
    .line 10
    int-to-short v1, v1

    .line 11
    mul-int/lit8 p2, p2, 0x8

    .line 12
    .line 13
    int-to-short p2, p2

    .line 14
    const/16 v2, 0x2c

    .line 15
    .line 16
    new-array v2, v2, [B

    .line 17
    .line 18
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    new-array v4, v3, [B

    .line 29
    .line 30
    fill-array-data v4, :array_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v4, p4, 0x2c

    .line 37
    .line 38
    add-int/lit8 v4, v4, -0x8

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    new-array v4, v3, [B

    .line 44
    .line 45
    fill-array-data v4, :array_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    new-array v4, v3, [B

    .line 52
    .line 53
    fill-array-data v4, :array_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    const/16 v4, 0x10

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    int-to-short p3, p3

    .line 69
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    new-array p1, v3, [B

    .line 85
    .line 86
    fill-array-data p1, :array_3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_3
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 5
    .line 6
    const/4 v2, -0x2

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    monitor-exit v0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v2, -0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return v2

    .line 20
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    const/4 v3, -0x5

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const-string p1, "FileSynthesisRequest"

    .line 26
    .line 27
    const-string p2, "File not open"

    .line 28
    .line 29
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iput v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return v2

    .line 36
    :cond_2
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    const-string p1, "FileSynthesisRequest"

    .line 41
    .line 42
    const-string p2, "Start method was not called"

    .line 43
    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return v2

    .line 49
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    new-array v0, p3, [B

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 57
    .line 58
    invoke-interface {v5, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    return v4

    .line 69
    :catch_0
    move-exception p1

    .line 70
    const-string p2, "FileSynthesisRequest"

    .line 71
    .line 72
    const-string p3, "Failed to write to output file descriptor"

    .line 73
    .line 74
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter p1

    .line 80
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 81
    .line 82
    .line 83
    iput v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 84
    .line 85
    monitor-exit p1

    .line 86
    return v2

    .line 87
    :catchall_0
    move-exception p2

    .line 88
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p2

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    throw p1
.end method

.method public done()I
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "FileSynthesisRequest"

    .line 10
    .line 11
    const-string v3, "Duplicate call to done()"

    .line 12
    .line 13
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return v2

    .line 18
    :cond_0
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 19
    .line 20
    const/4 v3, -0x2

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    monitor-exit v0

    .line 28
    return v1

    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-eq v1, v3, :cond_2

    .line 32
    .line 33
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 34
    .line 35
    invoke-interface {v3, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :cond_2
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    const-string v1, "FileSynthesisRequest"

    .line 45
    .line 46
    const-string v3, "File not open"

    .line 47
    .line 48
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return v2

    .line 53
    :cond_3
    const/4 v3, 0x1

    .line 54
    iput-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 55
    .line 56
    iget v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 57
    .line 58
    iget v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 59
    .line 60
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    .line 61
    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    const-wide/16 v6, 0x0

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    const-wide/16 v8, 0x2c

    .line 73
    .line 74
    sub-long/2addr v6, v8

    .line 75
    long-to-int v0, v6

    .line 76
    invoke-direct {p0, v3, v4, v5, v0}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 90
    .line 91
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 92
    .line 93
    .line 94
    monitor-exit v0

    .line 95
    const/4 v0, 0x0

    .line 96
    return v0

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "FileSynthesisRequest"

    .line 102
    .line 103
    const-string v3, "Failed to write to output file descriptor"

    .line 104
    .line 105
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v1

    .line 111
    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 112
    .line 113
    .line 114
    monitor-exit v1

    .line 115
    return v2

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    throw v0

    .line 119
    :catchall_2
    move-exception v1

    .line 120
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 121
    throw v1
.end method

.method public error()V
    .locals 1

    const/4 v0, -0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/speech/tts/FileSynthesisCallback;->error(I)V

    return-void
.end method

.method public error(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 6
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMaxBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public hasStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public rangeStart(III)V
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnRangeStart(III)V

    return-void
.end method

.method public start(III)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    const-string v0, "FileSynthesisRequest"

    .line 11
    .line 12
    const-string v1, "Audio format encoding "

    .line 13
    .line 14
    const-string v2, " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT"

    .line 15
    .line 16
    invoke-static {v1, p2, v2, v0}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 28
    .line 29
    const/4 v2, -0x2

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    monitor-exit v0

    .line 37
    return p1

    .line 38
    :cond_1
    const/4 v2, -0x1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v2

    .line 43
    :cond_2
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const-string p1, "FileSynthesisRequest"

    .line 48
    .line 49
    const-string p2, "Start called twice"

    .line 50
    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return v2

    .line 56
    :cond_3
    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 58
    .line 59
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 60
    .line 61
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 62
    .line 63
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    .line 64
    .line 65
    iget-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 66
    .line 67
    invoke-interface {p1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 71
    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    const/16 p2, 0x2c

    .line 74
    .line 75
    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    return p1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    const-string p2, "FileSynthesisRequest"

    .line 86
    .line 87
    const-string p3, "Failed to write wav header to output file descriptor"

    .line 88
    .line 89
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter p1

    .line 95
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 96
    .line 97
    .line 98
    const/4 p2, -0x5

    .line 99
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 100
    .line 101
    monitor-exit p1

    .line 102
    return v2

    .line 103
    :catchall_0
    move-exception p2

    .line 104
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw p2

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    throw p1
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 11
    .line 12
    const/4 v2, -0x2

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_1
    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 23
    .line 24
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method
