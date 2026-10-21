.class abstract Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mAdditionalAuthenticationDataStreamerClosed:Z

.field private mCachedException:Ljava/lang/Exception;

.field private mEncrypting:Z

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterPurposeOverride:I

.field private mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mRng:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 6
    .line 7
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 12
    .line 13
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 12
    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v5}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForBegin()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    :goto_0
    move v3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 41
    .line 42
    xor-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 46
    .line 47
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x1

    .line 54
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    iget-object v1, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 67
    .line 68
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 69
    .line 70
    iget-wide v1, v0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 71
    .line 72
    iput-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 73
    .line 74
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 75
    .line 76
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 77
    .line 78
    iget v3, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 79
    .line 80
    invoke-static {v1, v2, v3}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    instance-of v0, v1, Ljava/security/InvalidKeyException;

    .line 87
    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    instance-of v0, v1, Ljava/security/InvalidAlgorithmParameterException;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    .line 95
    .line 96
    throw v1

    .line 97
    :cond_3
    new-instance v0, Ljava/security/ProviderException;

    .line 98
    .line 99
    const-string v2, "Unexpected exception type"

    .line 100
    .line 101
    invoke-direct {v0, v2, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_4
    check-cast v1, Ljava/security/InvalidKeyException;

    .line 106
    .line 107
    throw v1

    .line 108
    :cond_5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    iget-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 113
    .line 114
    const-wide/16 v3, 0x0

    .line 115
    .line 116
    cmp-long v1, v1, v3

    .line 117
    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    iget-object v1, v0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 126
    .line 127
    iget-object v2, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 128
    .line 129
    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 134
    .line 135
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 136
    .line 137
    iget-object v0, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 138
    .line 139
    invoke-virtual {p0, v1, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    new-instance v0, Ljava/security/ProviderException;

    .line 150
    .line 151
    const-string v1, "Keystore returned invalid operation handle"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_7
    new-instance v0, Ljava/security/ProviderException;

    .line 158
    .line 159
    const-string v1, "Keystore returned null operation token"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_8
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    .line 166
    .line 167
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    const-string v1, "Not initialized"

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method

.method private flushAAD()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    :try_start_0
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iput-boolean v6, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    if-gtz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "AAD update unexpectedly returned data: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    array-length v0, v0

    .line 38
    const-string v3, " bytes"

    .line 39
    .line 40
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    iput-boolean v6, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method private init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/security/InvalidParameterException;

    .line 15
    .line 16
    const-string p3, "Unsupported opmode: "

    .line 17
    .line 18
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p2

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    new-instance p1, Ljava/security/ProviderException;

    .line 43
    .line 44
    const-string/jumbo p2, "initKey did not initialize the key"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public static opmodeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UNWRAP_MODE"

    return-object p0

    :cond_1
    const-string p0, "WRAP_MODE"

    return-object p0

    :cond_2
    const-string p0, "DECRYPT_MODE"

    return-object p0

    :cond_3
    const-string p0, "ENCRYPT_MODE"

    return-object p0
.end method


# virtual methods
.method public abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method public createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method public final engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    .line 26
    invoke-virtual {p0, v1, v4, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 28
    :cond_0
    new-array v1, v0, [B

    .line 29
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 31
    array-length v2, v1

    :cond_1
    if-lez v2, :cond_2

    .line 32
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    .line 33
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    new-instance p2, Ljavax/crypto/ShortBufferException;

    const-string v0, "Output buffer too small. Produced: "

    const-string v1, ", available: "

    .line 35
    invoke-static {v0, v2, v1, p1}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    return v2

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "output == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "input == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final engineDoFinal([BII[BI)I
    .locals 1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 18
    :cond_0
    array-length p3, p4

    sub-int/2addr p3, p5

    .line 19
    array-length v0, p1

    if-gt v0, p3, :cond_1

    .line 20
    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 21
    array-length p1, p1

    return p1

    .line 22
    :cond_1
    new-instance p2, Ljavax/crypto/ShortBufferException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Output buffer too short. Produced: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", available: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final engineDoFinal([BII)[B
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_3

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 4
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 5
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForFinish()I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    .line 7
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object p1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p2

    const/16 p3, -0x26

    if-eq p2, p3, :cond_2

    const/16 p3, -0x1e

    if-eq p2, p3, :cond_1

    const/16 p3, -0x15

    if-eq p2, p3, :cond_0

    .line 10
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    .line 11
    :cond_0
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    .line 12
    :cond_1
    new-instance p2, Ljavax/crypto/AEADBadTagException;

    invoke-direct {p2}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/AEADBadTagException;

    throw p1

    .line 13
    :cond_2
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-direct {p2}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;

    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 14
    :goto_0
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object p2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    throw p1
.end method

.method public final engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method public final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 8
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 9
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    .line 10
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    throw p1
.end method

.method public final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    throw p1
.end method

.method public final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 13
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 14
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 15
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    throw p1
.end method

.method public final engineSetMode(Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final engineSetPadding(Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    :try_start_0
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p1, v1, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p3, v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p3, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-ne p3, v0, :cond_0

    .line 27
    .line 28
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 29
    .line 30
    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p3

    .line 34
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    .line 35
    .line 36
    const-string p2, "Unsupported wrappedKeyType: "

    .line 37
    .line 38
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :try_start_1
    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 51
    .line 52
    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    return-object p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 62
    .line 63
    const-string p3, "Failed to create private key from its PKCS#8 encoded form"

    .line 64
    .line 65
    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p2

    .line 69
    :cond_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :try_start_2
    new-instance p3, Ljava/security/spec/X509EncodedKeySpec;

    .line 74
    .line 75
    invoke-direct {p3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    return-object p1

    .line 83
    :catch_1
    move-exception p1

    .line 84
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 85
    .line 86
    const-string p3, "Failed to create public key from its X.509 encoded form"

    .line 87
    .line 88
    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :catch_2
    move-exception p1

    .line 93
    goto :goto_0

    .line 94
    :catch_3
    move-exception p1

    .line 95
    :goto_0
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 96
    .line 97
    const-string p3, "Failed to unwrap key"

    .line 98
    .line 99
    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p2

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 104
    .line 105
    const-string/jumbo p2, "wrappedKey == null"

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string p2, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string p2, "Not initilized"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public final engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    .line 17
    invoke-virtual {p0, v1, v4, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 19
    :cond_0
    new-array v1, v0, [B

    .line 20
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 22
    array-length v2, v1

    :cond_1
    if-lez v2, :cond_2

    .line 23
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    .line 24
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25
    :catch_0
    new-instance p2, Ljavax/crypto/ShortBufferException;

    const-string v0, "Output buffer too small. Produced: "

    const-string v1, ", available: "

    .line 26
    invoke-static {v0, v2, v1, p1}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    return v2

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "output == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "input == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final engineUpdate([BII[BI)I
    .locals 1

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 9
    :cond_0
    array-length p3, p4

    sub-int/2addr p3, p5

    .line 10
    array-length v0, p1

    if-gt v0, p3, :cond_1

    .line 11
    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 12
    array-length p1, p1

    return p1

    .line 13
    :cond_1
    new-instance p2, Ljavax/crypto/ShortBufferException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Output buffer too short. Produced: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", available: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final engineUpdate([BII)[B
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 4
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object p1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    array-length p2, p1

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    .line 6
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-object v1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 7
    :goto_0
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-object v1
.end method

.method public final engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 22
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 24
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    return-void

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "src == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final engineUpdateAAD([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_3

    .line 5
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object p1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_2

    .line 6
    array-length p2, p1

    if-gtz p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Ljava/security/ProviderException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "AAD update unexpectedly produced output: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v0, " bytes"

    .line 8
    invoke-static {p3, p1, v0}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This cipher does not support AAD"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 13
    :goto_1
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method public final engineWrap(Ljava/security/Key;)[B
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    if-eqz p1, :cond_8

    .line 12
    .line 13
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    .line 14
    .line 15
    const-string v1, "Failed to wrap key because it does not export its key material"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "RAW"

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_0
    if-nez v2, :cond_5

    .line 37
    .line 38
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast p1, Ljavax/crypto/SecretKey;

    .line 47
    .line 48
    const-class v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 49
    .line 50
    invoke-virtual {v0, p1, v2}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    :goto_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 66
    .line 67
    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_1
    instance-of v0, p1, Ljava/security/PrivateKey;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    const-string v0, "PKCS8"

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :cond_2
    if-nez v2, :cond_5

    .line 92
    .line 93
    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-class v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 102
    .line 103
    invoke-virtual {v0, p1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    .line 110
    .line 111
    .line 112
    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    .line 113
    goto :goto_3

    .line 114
    :catch_2
    move-exception p1

    .line 115
    goto :goto_1

    .line 116
    :catch_3
    move-exception p1

    .line 117
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 118
    .line 119
    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_3
    instance-of v0, p1, Ljava/security/PublicKey;

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    const-string v0, "X.509"

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_4
    if-nez v2, :cond_5

    .line 144
    .line 145
    :try_start_2
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-class v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 154
    .line 155
    invoke-virtual {v0, p1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    .line 162
    .line 163
    .line 164
    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_4

    .line 165
    goto :goto_3

    .line 166
    :catch_4
    move-exception p1

    .line 167
    goto :goto_2

    .line 168
    :catch_5
    move-exception p1

    .line 169
    :goto_2
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 170
    .line 171
    invoke-direct {v0, v1, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 176
    .line 177
    :try_start_3
    array-length p1, v2

    .line 178
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v2, v0, p1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    .line 180
    .line 181
    .line 182
    move-result-object p1
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_6

    .line 183
    return-object p1

    .line 184
    :catch_6
    move-exception p1

    .line 185
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    .line 186
    .line 187
    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Ljavax/crypto/IllegalBlockSizeException;

    .line 195
    .line 196
    throw p1

    .line 197
    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 198
    .line 199
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string v1, "Unsupported key type: "

    .line 214
    .line 215
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    .line 224
    .line 225
    const-string/jumbo v0, "key == null"

    .line 226
    .line 227
    .line 228
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    const-string v0, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    .line 235
    .line 236
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 241
    .line 242
    const-string v0, "Not initilized"

    .line 243
    .line 244
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

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

.method public abstract getAdditionalEntropyAmountForBegin()I
.end method

.method public abstract getAdditionalEntropyAmountForFinish()I
.end method

.method public final getConsumedInputSizeBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Not initialized"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public final getKeymasterPurposeOverride()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method public final getProducedOutputSizeBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Not initialized"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public abstract initAlgorithmSpecificParameters()V
.end method

.method public abstract initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
.end method

.method public abstract initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
.end method

.method public abstract initKey(ILjava/security/Key;)V
.end method

.method public final isEncrypting()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method public abstract loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method public resetAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 18
    .line 19
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 20
    .line 21
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 26
    .line 27
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 28
    .line 29
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 30
    .line 31
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 32
    .line 33
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 34
    .line 35
    return-void
.end method

.method public resetWhilePreservingInitState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    .line 16
    .line 17
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 18
    .line 19
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 23
    .line 24
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 25
    .line 26
    return-void
.end method

.method public final setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    return-void
.end method

.method public final setKeymasterPurposeOverride(I)V
    .locals 0

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return-void
.end method
