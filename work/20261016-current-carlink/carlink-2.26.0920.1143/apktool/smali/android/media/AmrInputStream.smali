.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field mCodec:Landroid/media/MediaCodec;

.field mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B

.field mSawInputEOS:Z

.field mSawOutputEOS:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x140

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 12
    .line 13
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v2, v1, [B

    .line 17
    .line 18
    iput-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 19
    .line 20
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 21
    .line 22
    new-instance p1, Landroid/media/MediaFormat;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "mime"

    .line 28
    .line 29
    .line 30
    const-string v3, "audio/3gpp"

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v2, "sample-rate"

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x1f40

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v2, "channel-count"

    .line 44
    .line 45
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string v2, "bitrate"

    .line 49
    .line 50
    const/16 v3, 0x2fa8

    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroid/media/MediaCodecList;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 72
    .line 73
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    iget-object p1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 83
    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 87
    .line 88
    .line 89
    :cond_0
    iput-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 90
    .line 91
    :cond_1
    :goto_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    .line 92
    .line 93
    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 23
    .line 24
    throw v1

    .line 25
    :catchall_1
    move-exception v1

    .line 26
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 27
    .line 28
    :try_start_2
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 36
    .line 37
    throw v1

    .line 38
    :catchall_2
    move-exception v1

    .line 39
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 40
    .line 41
    throw v1
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AmrInputStream"

    .line 6
    .line 7
    const-string v1, "AmrInputStream wasn\'t closed"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/AmrInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 15

    move-object v0, p0

    .line 4
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_9

    .line 5
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_5

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-nez v1, :cond_5

    .line 6
    iput v4, v0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 7
    iput v4, v0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 8
    :goto_0
    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    const/4 v2, 0x1

    const/4 v5, 0x4

    if-nez v1, :cond_4

    .line 9
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-gez v9, :cond_0

    goto :goto_4

    :cond_0
    move v11, v4

    :goto_1
    const/16 v1, 0x140

    if-ge v11, v1, :cond_2

    .line 10
    iget-object v1, v0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v6, v0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v7, v11, 0x140

    invoke-virtual {v1, v6, v11, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 11
    iput-boolean v2, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    goto :goto_2

    :cond_1
    add-int/2addr v11, v1

    goto :goto_1

    .line 12
    :cond_2
    :goto_2
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    iget-object v2, v0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-virtual {v1, v2, v4, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v8, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v1, :cond_3

    move v14, v5

    goto :goto_3

    :cond_3
    move v14, v4

    :goto_3
    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 15
    :cond_4
    :goto_4
    iget-object v1, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v6, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, -0x1

    invoke-virtual {v1, v6, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_4

    .line 16
    iget-object v6, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v6, v0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 17
    iget-object v6, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 18
    iget-object v7, v0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v8, v0, Landroid/media/AmrInputStream;->mBufIn:I

    invoke-virtual {v6, v7, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 19
    iget-object v6, v0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 20
    iget-object v1, v0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_5

    .line 21
    iput-boolean v2, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    .line 22
    :cond_5
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, v0, Landroid/media/AmrInputStream;->mBufIn:I

    if-ge v1, v2, :cond_7

    sub-int v3, v2, v1

    move/from16 v4, p3

    if-le v4, v3, :cond_6

    sub-int/2addr v2, v1

    goto :goto_5

    :cond_6
    move v2, v4

    .line 23
    :goto_5
    iget-object v3, v0, Landroid/media/AmrInputStream;->mBuf:[B

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 24
    iget v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/media/AmrInputStream;->mBufOut:I

    return v2

    .line 25
    :cond_7
    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-eqz v1, :cond_8

    return v3

    :cond_8
    return v4

    .line 26
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
