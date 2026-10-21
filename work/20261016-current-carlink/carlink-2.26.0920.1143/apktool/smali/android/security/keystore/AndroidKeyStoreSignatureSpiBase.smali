.class abstract Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "SourceFile"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mCachedException:Ljava/lang/Exception;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mSigning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 9
    .line 10
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v5}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x3

    .line 38
    :goto_0
    move v3, v0

    .line 39
    const/4 v4, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    iget-object v1, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 54
    .line 55
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 56
    .line 57
    iget-wide v1, v0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 58
    .line 59
    iput-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    .line 60
    .line 61
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 62
    .line 63
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 64
    .line 65
    iget v3, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 66
    .line 67
    invoke-static {v1, v2, v3}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    iget-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    .line 78
    .line 79
    const-wide/16 v3, 0x0

    .line 80
    .line 81
    cmp-long v1, v1, v3

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 86
    .line 87
    iget-object v0, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 88
    .line 89
    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    new-instance v0, Ljava/security/ProviderException;

    .line 97
    .line 98
    const-string v1, "Keystore returned invalid operation handle"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_4
    new-instance v0, Ljava/security/ProviderException;

    .line 105
    .line 106
    const-string v1, "Keystore returned null operation token"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_5
    throw v1

    .line 113
    :cond_6
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string v1, "Not initialized"

    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method


# virtual methods
.method public abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method public createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method public final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public final engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2

    const-string v0, "Unsupported private key type: "

    .line 2
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreKey;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 6
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 7
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 8
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Unsupported key: null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    throw p1
.end method

.method public final engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    .line 1
    const-string v0, "Unsupported public key type: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 22
    .line 23
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 48
    .line 49
    const-string v0, "Unsupported key: null"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public final engineSign([BII)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result p1

    return p1
.end method

.method public final engineSign()[B
    .locals 8

    .line 2
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    .line 4
    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 5
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    .line 7
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    :goto_0
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final engineUpdate(B)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 14
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    return-void
.end method

.method public final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    .line 19
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 20
    :cond_0
    new-array v1, v0, [B

    .line 21
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    :goto_1
    return-void
.end method

.method public final engineUpdate([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object p1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    array-length p2, p1

    if-nez p2, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p2, Ljava/security/ProviderException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Update operation unexpectedly produced output: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v0, " bytes"

    .line 6
    invoke-static {p3, p1, v0}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/security/SignatureException;

    invoke-direct {p2, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9
    new-instance p2, Ljava/security/SignatureException;

    invoke-direct {p2, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_2
    new-instance p1, Ljava/security/SignatureException;

    iget-object p2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final engineVerify([B)Z
    .locals 8

    const-string v0, "Signature verification unexpected produced output: "

    .line 1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v1, :cond_2

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object p1

    .line 4
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x1e

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return p1

    .line 8
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 9
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_2
    new-instance p1, Ljava/security/SignatureException;

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final engineVerify([BII)Z
    .locals 0

    .line 11
    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    move-result p1

    return p1
.end method

.method public abstract getAdditionalEntropyAmountForSign()I
.end method

.method public final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public final getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method public initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    return-void
.end method

.method public final isSigning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    return v0
.end method

.method public resetAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 15
    .line 16
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 17
    .line 18
    iput-object v1, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 19
    .line 20
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    .line 25
    .line 26
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 27
    .line 28
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 29
    .line 30
    return-void
.end method

.method public resetWhilePreservingInitState()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    .line 16
    .line 17
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 18
    .line 19
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 20
    .line 21
    return-void
.end method
