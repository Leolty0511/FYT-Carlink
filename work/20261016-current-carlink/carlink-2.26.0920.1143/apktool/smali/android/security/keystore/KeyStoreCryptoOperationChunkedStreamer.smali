.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mBuffered:[B

.field private mBufferedLength:I

.field private mBufferedOffset:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private final mMaxChunkSize:I

.field private mProducedOutputSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .locals 1

    const/high16 v0, 0x10000

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 4
    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 5
    iput p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->flush()[B

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 19
    .line 20
    invoke-interface {p2, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)Landroid/security/keymaster/OperationResult;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget p3, p2, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 27
    .line 28
    const/4 p4, 0x1

    .line 29
    if-ne p3, p4, :cond_1

    .line 30
    .line 31
    iget-wide p3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 32
    .line 33
    iget-object p2, p2, Landroid/security/keymaster/OperationResult;->output:[B

    .line 34
    .line 35
    array-length p5, p2

    .line 36
    int-to-long v0, p5

    .line 37
    add-long/2addr p3, v0

    .line 38
    iput-wide p3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 39
    .line 40
    invoke-static {p1, p2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_2
    new-instance p1, Landroid/security/keystore/KeyStoreConnectException;

    .line 51
    .line 52
    invoke-direct {p1}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public flush()[B
    .locals 6

    .line 1
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :cond_1
    :goto_0
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-lez v1, :cond_9

    .line 13
    .line 14
    iget-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 15
    .line 16
    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 17
    .line 18
    invoke-static {v3, v4, v1}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 23
    .line 24
    invoke-interface {v3, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_8

    .line 29
    .line 30
    iget v4, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 31
    .line 32
    if-ne v4, v2, :cond_7

    .line 33
    .line 34
    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 35
    .line 36
    if-gtz v4, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    array-length v2, v1

    .line 40
    if-lt v4, v2, :cond_3

    .line 41
    .line 42
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    .line 43
    .line 44
    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 48
    .line 49
    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 53
    .line 54
    iput v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 55
    .line 56
    array-length v2, v1

    .line 57
    sub-int/2addr v2, v4

    .line 58
    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 59
    .line 60
    :goto_1
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 61
    .line 62
    array-length v4, v1

    .line 63
    if-gt v2, v4, :cond_6

    .line 64
    .line 65
    iget-object v1, v3, Landroid/security/keymaster/OperationResult;->output:[B

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    array-length v2, v1

    .line 70
    if-lez v2, :cond_1

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 79
    .line 80
    array-length v0, v1

    .line 81
    int-to-long v4, v0

    .line 82
    add-long/2addr v2, v4

    .line 83
    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .line 90
    .line 91
    :cond_5
    :try_start_0
    iget-object v1, v3, Landroid/security/keymaster/OperationResult;->output:[B

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/security/ProviderException;

    .line 99
    .line 100
    const-string v2, "Failed to buffer output"

    .line 101
    .line 102
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_6
    new-instance v0, Landroid/security/KeyStoreException;

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v4, "Keystore consumed more input than provided. Provided: "

    .line 111
    .line 112
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    array-length v1, v1

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, ", consumed: "

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v1, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const/16 v2, -0x3e8

    .line 134
    .line 135
    invoke-direct {v0, v2, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_7
    invoke-static {v4}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    throw v0

    .line 144
    :cond_8
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    .line 145
    .line 146
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_9
    :goto_2
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 151
    .line 152
    if-lez v1, :cond_b

    .line 153
    .line 154
    new-instance v0, Landroid/security/KeyStoreException;

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "Keystore failed to consume last "

    .line 159
    .line 160
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 164
    .line 165
    if-eq v3, v2, :cond_a

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 173
    .line 174
    const-string v4, " bytes"

    .line 175
    .line 176
    invoke-static {v2, v3, v4}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    goto :goto_3

    .line 181
    :cond_a
    const-string v2, "byte"

    .line 182
    .line 183
    :goto_3
    const-string v3, " of input"

    .line 184
    .line 185
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/16 v2, -0x15

    .line 190
    .line 191
    invoke-direct {v0, v2, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_b
    if-eqz v0, :cond_c

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    goto :goto_4

    .line 202
    :cond_c
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 203
    .line 204
    :goto_4
    iget-wide v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 205
    .line 206
    array-length v3, v0

    .line 207
    int-to-long v3, v3

    .line 208
    add-long/2addr v1, v3

    .line 209
    iput-wide v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 210
    .line 211
    return-object v0
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :cond_1
    :goto_0
    if-lez p3, :cond_c

    .line 8
    .line 9
    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 10
    .line 11
    add-int v1, v3, p3

    .line 12
    .line 13
    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    .line 14
    .line 15
    if-le v1, v2, :cond_2

    .line 16
    .line 17
    sub-int v7, v2, v3

    .line 18
    .line 19
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 20
    .line 21
    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 22
    .line 23
    move-object v4, p1

    .line 24
    move v5, p2

    .line 25
    move v6, v7

    .line 26
    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    if-nez v3, :cond_3

    .line 32
    .line 33
    if-nez p2, :cond_3

    .line 34
    .line 35
    array-length v1, p1

    .line 36
    if-ne p3, v1, :cond_3

    .line 37
    .line 38
    array-length v7, p1

    .line 39
    move-object v1, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 42
    .line 43
    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 44
    .line 45
    move-object v4, p1

    .line 46
    move v5, p2

    .line 47
    move v6, p3

    .line 48
    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move v7, p3

    .line 53
    :goto_1
    add-int/2addr p2, v7

    .line 54
    sub-int/2addr p3, v7

    .line 55
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 56
    .line 57
    int-to-long v4, v7

    .line 58
    add-long/2addr v2, v4

    .line 59
    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 60
    .line 61
    iget-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 62
    .line 63
    invoke-interface {v2, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_b

    .line 68
    .line 69
    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    if-ne v3, v4, :cond_a

    .line 73
    .line 74
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 75
    .line 76
    array-length v4, v1

    .line 77
    const/4 v5, 0x0

    .line 78
    if-ne v3, v4, :cond_4

    .line 79
    .line 80
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 81
    .line 82
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 83
    .line 84
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 85
    .line 86
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/16 v4, -0x3e8

    .line 90
    .line 91
    if-gtz v3, :cond_6

    .line 92
    .line 93
    if-gtz p3, :cond_5

    .line 94
    .line 95
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 96
    .line 97
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 98
    .line 99
    array-length v1, v1

    .line 100
    iput v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    new-instance p1, Landroid/security/KeyStoreException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p3, "Keystore consumed nothing from max-sized chunk: "

    .line 108
    .line 109
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    array-length p3, v1

    .line 113
    const-string v0, " bytes"

    .line 114
    .line 115
    invoke-static {p2, p3, v0}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-direct {p1, v4, p2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_6
    array-length v5, v1

    .line 124
    if-ge v3, v5, :cond_9

    .line 125
    .line 126
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 127
    .line 128
    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 129
    .line 130
    array-length v1, v1

    .line 131
    sub-int/2addr v1, v3

    .line 132
    iput v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 133
    .line 134
    :goto_2
    iget-object v1, v2, Landroid/security/keymaster/OperationResult;->output:[B

    .line 135
    .line 136
    if-eqz v1, :cond_1

    .line 137
    .line 138
    array-length v3, v1

    .line 139
    if-lez v3, :cond_1

    .line 140
    .line 141
    const-string v3, "Failed to buffer output"

    .line 142
    .line 143
    if-lez p3, :cond_7

    .line 144
    .line 145
    if-nez v0, :cond_1

    .line 146
    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .line 151
    .line 152
    :try_start_0
    iget-object v1, v2, Landroid/security/keymaster/OperationResult;->output:[B

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :catch_0
    move-exception p1

    .line 160
    new-instance p2, Ljava/security/ProviderException;

    .line 161
    .line 162
    invoke-direct {p2, v3, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p2

    .line 166
    :cond_7
    if-nez v0, :cond_8

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_3
    iget-wide p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 177
    .line 178
    array-length p3, v1

    .line 179
    int-to-long v2, p3

    .line 180
    add-long/2addr p1, v2

    .line 181
    iput-wide p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 182
    .line 183
    return-object v1

    .line 184
    :catch_1
    move-exception p1

    .line 185
    new-instance p2, Ljava/security/ProviderException;

    .line 186
    .line 187
    invoke-direct {p2, v3, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw p2

    .line 191
    :cond_9
    new-instance p1, Landroid/security/KeyStoreException;

    .line 192
    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string p3, "Keystore consumed more input than provided. Provided: "

    .line 196
    .line 197
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    array-length p3, v1

    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p3, ", consumed: "

    .line 205
    .line 206
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget p3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 210
    .line 211
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, v4, p2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :cond_a
    invoke-static {v3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    throw p1

    .line 227
    :cond_b
    new-instance p1, Landroid/security/keystore/KeyStoreConnectException;

    .line 228
    .line 229
    invoke-direct {p1}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_c
    if-nez v0, :cond_d

    .line 234
    .line 235
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :goto_4
    iget-wide p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 243
    .line 244
    array-length v0, p1

    .line 245
    int-to-long v0, v0

    .line 246
    add-long/2addr p2, v0

    .line 247
    iput-wide p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 248
    .line 249
    return-object p1
.end method
