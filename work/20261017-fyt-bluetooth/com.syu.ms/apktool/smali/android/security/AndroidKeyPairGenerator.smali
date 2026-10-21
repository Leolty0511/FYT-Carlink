.class public Landroid/security/AndroidKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mSpec:Landroid/security/KeyPairGeneratorSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method

.method private static getArgsForKeyType(ILjava/security/spec/AlgorithmParameterSpec;)[[B
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x74

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of p0, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz p0, :cond_2

    .line 2
    check-cast p1, Ljava/security/spec/DSAParameterSpec;

    const/4 p0, 0x3

    new-array p0, p0, [[B

    .line 3
    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    aput-object v0, p0, v2

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    aput-object p1, p0, v0

    return-object p0

    .line 4
    :cond_1
    instance-of p0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz p0, :cond_2

    .line 5
    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    new-array p0, v2, [[B

    .line 6
    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "RSA"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "sha256WithRSA"

    return-object p0

    :cond_0
    const-string v0, "DSA"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "sha1WithDSA"

    return-object p0

    :cond_1
    const-string v0, "EC"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "sha256WithECDSA"

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Android keystore must be in initialized and unlocked state if encryption is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v1, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 6
    iget-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I

    move-result v5

    .line 7
    iget-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/security/AndroidKeyPairGenerator;->getArgsForKeyType(ILjava/security/spec/AlgorithmParameterSpec;)[[B

    move-result-object v8

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    const/4 v4, -0x1

    iget-object v3, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v3}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v6

    iget-object v3, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v3}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v7

    move-object v3, v1

    invoke-virtual/range {v2 .. v8}, Landroid/security/KeyStore;->generate(Ljava/lang/String;IIII[[B)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "keystore"

    .line 10
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v2

    .line 11
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4

    .line 12
    iget-object v3, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v1}, Landroid/security/KeyStore;->getPubkey(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    :try_start_1
    iget-object v3, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v3}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 14
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    .line 15
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 16
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 17
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 18
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 19
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 20
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 21
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 22
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/AndroidKeyPairGenerator;->getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 23
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 24
    :try_start_3
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 25
    iget-object v4, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    iget-object v7, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 27
    :cond_2
    iget-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v1, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t store certificate in AndroidKeyStore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    .line 29
    iget-object v2, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t get encoding of certificate"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 31
    iget-object v2, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t generate certificate"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "keystore returned invalid key encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t instantiate key generator"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t get key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not generate key in keystore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call initialize with an android.security.KeyPairGeneratorSpec first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot specify keysize with AndroidKeyPairGenerator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 2
    instance-of p2, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Landroid/security/KeyPairGeneratorSpec;

    .line 4
    iput-object p1, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    .line 5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "params must be of type android.security.KeyPairGeneratorSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "must supply params of type android.security.KeyPairGeneratorSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
