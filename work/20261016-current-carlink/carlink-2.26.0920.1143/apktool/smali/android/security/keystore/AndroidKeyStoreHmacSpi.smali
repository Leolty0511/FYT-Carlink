.class public abstract Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "SourceFile"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;
    }
.end annotation


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 9
    .line 10
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    .line 11
    .line 12
    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    .line 17
    .line 18
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    .line 11
    .line 12
    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 13
    .line 14
    .line 15
    const v0, 0x10000002

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x80

    .line 19
    .line 20
    invoke-virtual {v5, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 21
    .line 22
    .line 23
    const v0, 0x20000005

    .line 24
    .line 25
    .line 26
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    .line 27
    .line 28
    invoke-virtual {v5, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    .line 32
    .line 33
    int-to-long v0, v0

    .line 34
    const v2, 0x300003eb

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 41
    .line 42
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v6, 0x0

    .line 51
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v1, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 64
    .line 65
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 66
    .line 67
    iget-wide v1, v0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 68
    .line 69
    iput-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    .line 70
    .line 71
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 72
    .line 73
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 74
    .line 75
    iget v0, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    .line 88
    .line 89
    const-wide/16 v3, 0x0

    .line 90
    .line 91
    cmp-long v1, v1, v3

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 96
    .line 97
    new-instance v2, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    .line 98
    .line 99
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 100
    .line 101
    invoke-direct {v2, v3, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 108
    .line 109
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/security/ProviderException;

    .line 111
    .line 112
    const-string v1, "Keystore returned invalid operation handle"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_2
    new-instance v0, Ljava/security/ProviderException;

    .line 119
    .line 120
    const-string v1, "Keystore returned null operation token"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_3
    throw v0

    .line 127
    :cond_4
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    .line 128
    .line 129
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v1, "Not initialized"

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 8
    .line 9
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Unsupported algorithm parameters: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Only Android KeyStore secret keys supported. Key: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 55
    .line 56
    const-string/jumbo p2, "key == null"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method private resetAll()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 3
    .line 4
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    .line 18
    .line 19
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 20
    .line 21
    return-void
.end method

.method private resetWhilePreservingInitState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    .line 16
    .line 17
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public engineDoFinal()[B
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    .line 3
    .line 4
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/security/ProviderException;

    .line 21
    .line 22
    const-string v2, "Keystore operation failed"

    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :catch_1
    move-exception v0

    .line 29
    new-instance v1, Ljava/security/ProviderException;

    .line 30
    .line 31
    const-string v2, "Failed to reinitialize MAC"

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public engineGetMacLength()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public engineReset()V
    .locals 0

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-void
.end method

.method public engineUpdate(B)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object p1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_1

    .line 4
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/security/ProviderException;

    const-string p2, "Update operation unexpectedly produced output"

    invoke-direct {p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/security/ProviderException;

    const-string p3, "Keystore operation failed"

    invoke-direct {p2, p3, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7
    new-instance p2, Ljava/security/ProviderException;

    const-string p3, "Failed to reinitialize MAC"

    invoke-direct {p2, p3, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    return-wide v0
.end method
