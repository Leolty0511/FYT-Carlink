.class public Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# static fields
.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;

.field private static volatile sRng:Ljava/security/SecureRandom;


# instance fields
.field private isAutoAddCounterWhenGetPublicKey:Z

.field private isAutoSignedWithAttkWhenGetPublicKey:Z

.field private isAutoSignedWithCommonkWhenGetPublicKey:Z

.field private isForSoter:Z

.field private isNeedNextAttk:Z

.field private isSecmsgFidCounterSignedWhenSign:Z

.field private mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .line 26
    .line 27
    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v1, 0x500000c8

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const v0, 0x70002af8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-long v0, v0

    .line 26
    const v2, 0x30002aff

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 33
    .line 34
    const v1, -0x6fffd505

    .line 35
    .line 36
    .line 37
    const-string v2, "USRPKEY_"

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const v0, 0x70002af9

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "Soter"

    .line 75
    .line 76
    const-string/jumbo v3, "use mEntryAlias as key name, pass it to args"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    const v0, 0x70002afa

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 147
    .line 148
    .line 149
    :cond_3
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    const v0, 0x70002afc

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 157
    .line 158
    .line 159
    :cond_4
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 160
    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    const v0, 0x70002afd

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    const v0, 0x70002afe

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 177
    .line 178
    .line 179
    :cond_6
    return-void
.end method

.method private static checkValidKeySize(II)V
    .locals 0

    const/16 p0, 0x200

    if-lt p1, p0, :cond_0

    const/16 p0, 0x2000

    if-gt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 4

    .line 1
    const-string v0, "generateSelfSignedCertificate"

    .line 2
    .line 3
    const-string v1, "Soter"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 9
    .line 10
    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 11
    .line 12
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 13
    .line 14
    invoke-static {v0, v2, v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string p1, "generateSelfSignedCertificateWithFakeSignature1"

    .line 21
    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    :try_start_0
    const-string v2, "generateSelfSignedCertificateWithValidSignature"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p1

    .line 40
    :catch_0
    const-string p1, "generateSelfSignedCertificateWithFakeSignature2"

    .line 41
    .line 42
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    .line 16
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/security/ProviderException;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Unsupported key algorithm: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    .line 78
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 79
    .line 80
    sget-object v4, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    .line 81
    .line 82
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    .line 84
    .line 85
    new-array v1, v2, [B

    .line 86
    .line 87
    move-object v2, v3

    .line 88
    :goto_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 112
    .line 113
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 114
    .line 115
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-direct {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lcom/android/org/bouncycastle/jce/X509Principal;

    .line 126
    .line 127
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-direct {p1, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 147
    .line 148
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-direct {p1, v3}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 161
    .line 162
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 163
    .line 164
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-direct {p1, v3}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 182
    .line 183
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    .line 191
    .line 192
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 193
    .line 194
    invoke-direct {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    .line 201
    .line 202
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    .line 212
    .line 213
    .line 214
    return-object p1

    .line 215
    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    :try_start_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catchall_2
    move-exception v1

    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :goto_1
    throw v0
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Failed to obtain application Context from ActivityThread"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    aget v4, p0, v3

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    array-length v1, p1

    .line 37
    :goto_1
    if-ge v2, v1, :cond_1

    .line 38
    .line 39
    aget v3, p1, v2

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/lit8 p0, p0, 0x4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_3
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    add-int/lit16 p1, p1, -0xf0

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 p2, -0x1

    .line 60
    move v1, p2

    .line 61
    move v2, v1

    .line 62
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_7

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-static {v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDigestOutputSizeBits(I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-le v4, p1, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    if-ne v1, p2, :cond_6

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    if-le v4, v2, :cond_4

    .line 89
    .line 90
    :goto_1
    move v1, v3

    .line 91
    move v2, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_7
    if-ne v1, p2, :cond_8

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, "WithRSA"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.method private static getDefaultKeySize(I)I
    .locals 0

    const/16 p0, 0x800

    return p0
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "Unknown digest: "

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    const/16 p0, 0x200

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_1
    const/16 p0, 0x180

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_2
    const/16 p0, 0x100

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_3
    const/16 p0, 0xe0

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_4
    const/16 p0, 0xa0

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_5
    const/16 p0, 0x80

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_6
    const/4 p0, -0x1

    .line 35
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRng()Ljava/security/SecureRandom;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_1
    new-array p1, p1, [B

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method private getRealKeyBlobByKeyName(Ljava/lang/String;)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "start retrieve key blob by key name: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Soter"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "USRPKEY_"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    .line 13
    .line 14
    return-object v0
.end method

.method private static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "NONE"

    .line 2
    .line 3
    const-string v1, "SHA-1"

    .line 4
    .line 5
    const-string v2, "SHA-224"

    .line 6
    .line 7
    const-string v3, "SHA-256"

    .line 8
    .line 9
    const-string v4, "SHA-384"

    .line 10
    .line 11
    const-string v5, "SHA-512"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private initAlgorithmSpecificParameters()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 8
    .line 9
    instance-of v2, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 15
    .line 16
    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v2, v3, :cond_3

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-lt v0, v2, :cond_2

    .line 46
    .line 47
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-gtz v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "Unsupported RSA public exponent: "

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ". Maximum supported value: "

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v2

    .line 84
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, "RSA public exponent must be positive: "

    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "RSA key size must match  between "

    .line 109
    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v4, " and "

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ": "

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " vs "

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v2

    .line 156
    :cond_4
    :goto_1
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    .line 157
    .line 158
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->getAutoSignedKeyNameWhenGetPublicKey()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 211
    .line 212
    :cond_5
    return-void
.end method

.method public static intToByteArray(I)[B
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Unsupported asymmetric encryption padding scheme: "

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    return v0

    .line 24
    :cond_2
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method private resetAll()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 8
    .line 9
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    .line 10
    .line 11
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    .line 12
    .line 13
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 14
    .line 15
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 16
    .line 17
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 21
    .line 22
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 23
    .line 24
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    .line 25
    .line 26
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    .line 27
    .line 28
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 29
    .line 30
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 31
    .line 32
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 41
    .line 42
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    .line 47
    .line 48
    return-void
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 11

    .line 1
    const-string v0, "USRCERT_"

    .line 2
    .line 3
    const-string v1, "Generated key pair algorithm does not match requested algorithm: "

    .line 4
    .line 5
    iget-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    iget-object v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 10
    .line 11
    if-eqz v3, :cond_8

    .line 12
    .line 13
    iget-boolean v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    .line 14
    .line 15
    and-int/lit8 v4, v3, 0x1

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 24
    .line 25
    if-ne v2, v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 39
    .line 40
    .line 41
    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 42
    .line 43
    int-to-long v4, v4

    .line 44
    const v6, 0x30000003

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v6, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 48
    .line 49
    .line 50
    const v4, 0x10000002

    .line 51
    .line 52
    .line 53
    iget v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    .line 54
    .line 55
    invoke-virtual {v2, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 56
    .line 57
    .line 58
    const v4, 0x20000001

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    .line 62
    .line 63
    invoke-virtual {v2, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 64
    .line 65
    .line 66
    const v4, 0x20000004

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    .line 70
    .line 71
    invoke-virtual {v2, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 75
    .line 76
    const v5, 0x20000006

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 83
    .line 84
    invoke-virtual {v2, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 85
    .line 86
    .line 87
    const v4, 0x20000005

    .line 88
    .line 89
    .line 90
    iget-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    .line 91
    .line 92
    invoke-virtual {v2, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x1

    .line 109
    const-wide/16 v9, 0x0

    .line 110
    .line 111
    move-object v4, v2

    .line 112
    invoke-static/range {v4 .. v10}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    .line 113
    .line 114
    .line 115
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const v5, 0x60000190

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-eqz v4, :cond_3

    .line 142
    .line 143
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const v5, 0x60000191

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 156
    .line 157
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_4

    .line 162
    .line 163
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 164
    .line 165
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const v5, 0x60000192

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-direct {p0, v2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    .line 176
    .line 177
    .line 178
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 179
    .line 180
    iget v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 181
    .line 182
    add-int/lit8 v5, v5, 0x7

    .line 183
    .line 184
    div-int/lit8 v5, v5, 0x8

    .line 185
    .line 186
    invoke-static {v4, v5}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v5, "USRPKEY_"

    .line 193
    .line 194
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    :try_start_0
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 207
    .line 208
    iget-object v5, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v4, v5}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    .line 214
    .line 215
    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 219
    .line 220
    move-object v5, v10

    .line 221
    move-object v6, v2

    .line 222
    move v8, v3

    .line 223
    invoke-virtual/range {v4 .. v9}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    .line 224
    .line 225
    .line 226
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/4 v4, 0x1

    .line 228
    if-ne v2, v4, :cond_7

    .line 229
    .line 230
    :try_start_1
    iget-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 231
    .line 232
    invoke-static {v2, v10}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;

    .line 233
    .line 234
    .line 235
    move-result-object v2
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-interface {v5}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    if-eqz v4, :cond_6

    .line 251
    .line 252
    :try_start_3
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-direct {p0, v1, v4}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    .line 261
    .line 262
    .line 263
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    :try_start_4
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 265
    .line 266
    .line 267
    move-result-object v1
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    :try_start_5
    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 269
    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const/4 v5, -0x1

    .line 285
    invoke-virtual {v4, v0, v1, v5, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_5

    .line 290
    .line 291
    return-object v2

    .line 292
    :cond_5
    new-instance v0, Ljava/security/ProviderException;

    .line 293
    .line 294
    const-string v1, "Failed to store self-signed certificate"

    .line 295
    .line 296
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Ljava/security/ProviderException;

    .line 302
    .line 303
    const-string v2, "Failed to obtain encoded form of self-signed certificate"

    .line 304
    .line 305
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    throw v1

    .line 309
    :catch_1
    move-exception v0

    .line 310
    new-instance v1, Ljava/security/ProviderException;

    .line 311
    .line 312
    const-string v2, "Failed to generate self-signed certificate"

    .line 313
    .line 314
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    throw v1

    .line 318
    :cond_6
    new-instance v0, Ljava/security/ProviderException;

    .line 319
    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, " vs "

    .line 337
    .line 338
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :catch_2
    move-exception v0

    .line 355
    new-instance v1, Ljava/security/ProviderException;

    .line 356
    .line 357
    const-string v2, "Failed to load generated key pair from keystore"

    .line 358
    .line 359
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    throw v1

    .line 363
    :cond_7
    new-instance v0, Ljava/security/ProviderException;

    .line 364
    .line 365
    const-string v1, "Failed to generate key pair"

    .line 366
    .line 367
    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-direct {v0, v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    .line 373
    .line 374
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    :catchall_0
    move-exception v0

    .line 376
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 377
    .line 378
    iget-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {v1, v2}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 385
    .line 386
    const-string v1, "Not initialized"

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-class p2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, " required to initialize this KeyPairGenerator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9

    const-string v0, "Unsupported params class: "

    const-string v1, "Must supply params of type "

    .line 3
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    .line 4
    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    const-class v3, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz p1, :cond_6

    .line 5
    :try_start_0
    iget v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .line 6
    instance-of v4, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v4, :cond_5

    .line 7
    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 8
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 10
    iput v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    .line 12
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    iput v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 13
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->initAlgorithmSpecificParameters()V

    .line 14
    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 15
    invoke-static {v1}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDefaultKeySize(I)I

    move-result v2

    iput v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    .line 16
    :cond_0
    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->checkValidKeySize(II)V

    .line 17
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 18
    :try_start_1
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    .line 20
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    .line 21
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    .line 23
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    iget-object v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget v5, v2, v0

    .line 26
    invoke-static {v5}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". See "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " documentation."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    .line 32
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_1

    .line 34
    :cond_3
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    .line 35
    :goto_1
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    iget-object p1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 36
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v3

    iget-object p1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 37
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    .line 38
    invoke-static/range {v2 .. v8}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 42
    :goto_2
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "KeyStore entry alias not provided"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_5
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Supported: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 48
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :goto_3
    invoke-direct {p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    throw p1
.end method
