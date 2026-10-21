.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    .line 5
    .line 6
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    const v0, 0x10000002

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 26
    .line 27
    .line 28
    const v0, 0x20000004

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 34
    .line 35
    .line 36
    const v0, 0x20000006

    .line 37
    .line 38
    .line 39
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const v1, -0x6ffffc17

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final engineGetBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final engineGetIV()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    return-object v0
.end method

.method public final initKey(ILjava/security/Key;)V
    .locals 2

    .line 1
    instance-of p1, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p2, "null"

    .line 19
    .line 20
    .line 21
    :goto_0
    const-string v0, "Unsupported key: "

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "AES"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "Unsupported key algorithm: "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ". Only AES supported"

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 3
    .line 4
    const v0, -0x6ffffc17

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, p1

    .line 19
    :goto_0
    iget-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p1, Ljava/security/ProviderException;

    .line 36
    .line 37
    const-string v0, "IV in use differs from provided IV"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_3
    :goto_1
    return-void
.end method

.method public resetAll()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 6
    .line 7
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setIv([B)V
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    return-void
.end method
