.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 6
    .line 7
    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const-string v0, "USRPKEY_"

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 16
    .line 17
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 26
    .line 27
    invoke-static {p1, v0, p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    return-object p2
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 0

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 9

    .line 1
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "EC"

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const-string v2, "NONE"

    .line 22
    .line 23
    const-string v3, "SHA-1"

    .line 24
    .line 25
    const-string v4, "SHA-224"

    .line 26
    .line 27
    const-string v5, "SHA-256"

    .line 28
    .line 29
    const-string v6, "SHA-384"

    .line 30
    .line 31
    const-string v7, "SHA-512"

    .line 32
    .line 33
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "RSA"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance p0, Landroid/security/keystore/KeyProtection$Builder;

    .line 50
    .line 51
    const/16 v0, 0xf

    .line 52
    .line 53
    invoke-direct {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string v2, "NONE"

    .line 57
    .line 58
    const-string v3, "MD5"

    .line 59
    .line 60
    const-string v4, "SHA-1"

    .line 61
    .line 62
    const-string v5, "SHA-224"

    .line 63
    .line 64
    const-string v6, "SHA-256"

    .line 65
    .line 66
    const-string v7, "SHA-384"

    .line 67
    .line 68
    const-string v8, "SHA-512"

    .line 69
    .line 70
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 75
    .line 76
    .line 77
    const-string v0, "PKCS1Padding"

    .line 78
    .line 79
    const-string v2, "OAEPPadding"

    .line 80
    .line 81
    const-string v3, "NoPadding"

    .line 82
    .line 83
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 88
    .line 89
    .line 90
    const-string v0, "PKCS1"

    .line 91
    .line 92
    const-string v2, "PSS"

    .line 93
    .line 94
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    .line 113
    .line 114
    const-string v1, "Unsupported key algorithm: "

    .line 115
    .line 116
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 2
    .line 3
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_3

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    const/16 v5, 0x5f

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, -0x1

    .line 38
    if-eq v5, v6, :cond_2

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-gt v6, v5, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v6, Ljava/lang/String;

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    const-string/jumbo v5, "invalid alias: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "AndroidKeyStore"

    .line 70
    .line 71
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-object v1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    .line 5
    const-string v1, "CACERT_"

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v0, "alias == null"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    .line 5
    const-string v1, "USRPKEY_"

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v0, "alias == null"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    .line 5
    const-string v1, "USRSKEY_"

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v0, "alias == null"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const/16 v5, 0x8

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of v7, v4, Landroid/security/KeyStoreParameter;

    .line 22
    .line 23
    if-eqz v7, :cond_1

    .line 24
    .line 25
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v4, Landroid/security/KeyStoreParameter;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    instance-of v7, v4, Landroid/security/keystore/KeyProtection;

    .line 37
    .line 38
    if-eqz v7, :cond_17

    .line 39
    .line 40
    check-cast v4, Landroid/security/keystore/KeyProtection;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    move-object v7, v4

    .line 49
    move v4, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    move-object v7, v4

    .line 52
    move v4, v6

    .line 53
    :goto_1
    if-eqz v3, :cond_16

    .line 54
    .line 55
    array-length v8, v3

    .line 56
    if-eqz v8, :cond_16

    .line 57
    .line 58
    array-length v8, v3

    .line 59
    new-array v9, v8, [Ljava/security/cert/X509Certificate;

    .line 60
    .line 61
    move v10, v6

    .line 62
    :goto_2
    array-length v11, v3

    .line 63
    if-ge v10, v11, :cond_5

    .line 64
    .line 65
    aget-object v11, v3, v10

    .line 66
    .line 67
    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    const-string v12, "X.509"

    .line 72
    .line 73
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    const-string v12, "Certificates must be in X.509 format: invalid cert #"

    .line 78
    .line 79
    if-eqz v11, :cond_4

    .line 80
    .line 81
    aget-object v11, v3, v10

    .line 82
    .line 83
    instance-of v13, v11, Ljava/security/cert/X509Certificate;

    .line 84
    .line 85
    if-eqz v13, :cond_3

    .line 86
    .line 87
    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 88
    .line 89
    aput-object v11, v9, v10

    .line 90
    .line 91
    add-int/lit8 v10, v10, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    .line 95
    .line 96
    invoke-static {v12, v10}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    .line 105
    .line 106
    invoke-static {v12, v10}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_5
    :try_start_0
    aget-object v10, v9, v6

    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 117
    .line 118
    .line 119
    move-result-object v15
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 120
    array-length v3, v3

    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v11, 0x1

    .line 123
    if-le v3, v11, :cond_8

    .line 124
    .line 125
    sub-int/2addr v8, v11

    .line 126
    new-array v3, v8, [[B

    .line 127
    .line 128
    move v11, v6

    .line 129
    move v12, v11

    .line 130
    :goto_3
    if-ge v11, v8, :cond_6

    .line 131
    .line 132
    add-int/lit8 v13, v11, 0x1

    .line 133
    .line 134
    :try_start_1
    aget-object v14, v9, v13

    .line 135
    .line 136
    invoke-virtual {v14}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    aput-object v14, v3, v11

    .line 141
    .line 142
    array-length v11, v14
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    add-int/2addr v12, v11

    .line 144
    move v11, v13

    .line 145
    goto :goto_3

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v2, Ljava/security/KeyStoreException;

    .line 148
    .line 149
    const-string v3, "Failed to encode certificate #"

    .line 150
    .line 151
    invoke-static {v3, v11}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw v2

    .line 159
    :cond_6
    new-array v9, v12, [B

    .line 160
    .line 161
    move v11, v6

    .line 162
    move v12, v11

    .line 163
    :goto_4
    if-ge v11, v8, :cond_7

    .line 164
    .line 165
    aget-object v13, v3, v11

    .line 166
    .line 167
    array-length v14, v13

    .line 168
    invoke-static {v13, v6, v9, v12, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 169
    .line 170
    .line 171
    add-int/2addr v12, v14

    .line 172
    aput-object v10, v3, v11

    .line 173
    .line 174
    add-int/lit8 v11, v11, 0x1

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    move-object v3, v9

    .line 178
    goto :goto_5

    .line 179
    :cond_8
    move-object v3, v10

    .line 180
    :goto_5
    instance-of v8, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    .line 181
    .line 182
    if-eqz v8, :cond_9

    .line 183
    .line 184
    move-object v8, v0

    .line 185
    check-cast v8, Landroid/security/keystore/AndroidKeyStoreKey;

    .line 186
    .line 187
    invoke-virtual {v8}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    goto :goto_6

    .line 192
    :cond_9
    move-object v8, v10

    .line 193
    :goto_6
    const-string v9, "USRPKEY_"

    .line 194
    .line 195
    if-eqz v8, :cond_b

    .line 196
    .line 197
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_b

    .line 202
    .line 203
    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_a

    .line 212
    .line 213
    const/4 v0, 0x1

    .line 214
    move-object v11, v10

    .line 215
    goto/16 :goto_8

    .line 216
    .line 217
    :cond_a
    new-instance v3, Ljava/security/KeyStoreException;

    .line 218
    .line 219
    const-string v4, "Can only replace keys with same alias: "

    .line 220
    .line 221
    const-string v5, " != "

    .line 222
    .line 223
    invoke-static {v4, v2, v5, v0}, Landroid/accessibilityservice/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v3

    .line 231
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    if-eqz v5, :cond_15

    .line 236
    .line 237
    const-string v8, "PKCS#8"

    .line 238
    .line 239
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-eqz v8, :cond_15

    .line 244
    .line 245
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    if-eqz v5, :cond_14

    .line 250
    .line 251
    new-instance v8, Landroid/security/keymaster/KeymasterArguments;

    .line 252
    .line 253
    invoke-direct {v8}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 254
    .line 255
    .line 256
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    const v10, 0x10000002

    .line 265
    .line 266
    .line 267
    invoke-virtual {v8, v10, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    const v11, 0x20000001

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v11, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-eqz v10, :cond_c

    .line 289
    .line 290
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    const v11, 0x20000005

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8, v11, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 302
    .line 303
    .line 304
    :cond_c
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    const v11, 0x20000004

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v11, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    const/4 v11, 0x1

    .line 327
    and-int/2addr v0, v11

    .line 328
    if-eqz v0, :cond_e

    .line 329
    .line 330
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_e

    .line 335
    .line 336
    array-length v0, v10

    .line 337
    :goto_7
    if-ge v6, v0, :cond_e

    .line 338
    .line 339
    aget v12, v10, v6

    .line 340
    .line 341
    invoke-static {v12}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    .line 342
    .line 343
    .line 344
    move-result v13

    .line 345
    if-eqz v13, :cond_d

    .line 346
    .line 347
    add-int/lit8 v6, v6, 0x1

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    .line 351
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v3, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    .line 358
    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-static {v12}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v3, ". See KeyProtection documentation."

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_e
    const v0, 0x20000006

    .line 383
    .line 384
    .line 385
    invoke-virtual {v8, v0, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v8, v0, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    .line 400
    .line 401
    .line 402
    move-result v17

    .line 403
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    .line 404
    .line 405
    .line 406
    move-result v18

    .line 407
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    .line 408
    .line 409
    .line 410
    move-result v19

    .line 411
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    .line 412
    .line 413
    .line 414
    move-result v20

    .line 415
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    .line 416
    .line 417
    .line 418
    move-result-wide v21

    .line 419
    move-object/from16 v16, v8

    .line 420
    .line 421
    invoke-static/range {v16 .. v22}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const v6, 0x60000190

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const v6, 0x60000191

    .line 439
    .line 440
    .line 441
    invoke-virtual {v8, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    const v6, 0x60000192

    .line 449
    .line 450
    .line 451
    invoke-virtual {v8, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 452
    .line 453
    .line 454
    move-object v10, v8

    .line 455
    move v0, v11

    .line 456
    move v6, v0

    .line 457
    move-object v11, v5

    .line 458
    :goto_8
    if-eqz v6, :cond_10

    .line 459
    .line 460
    :try_start_3
    iget-object v5, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 461
    .line 462
    iget v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 463
    .line 464
    invoke-static {v5, v2, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 465
    .line 466
    .line 467
    new-instance v14, Landroid/security/keymaster/KeyCharacteristics;

    .line 468
    .line 469
    invoke-direct {v14}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 470
    .line 471
    .line 472
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 473
    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    const/4 v5, 0x1

    .line 490
    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 491
    .line 492
    move-object v9, v10

    .line 493
    move v10, v5

    .line 494
    move v13, v4

    .line 495
    invoke-virtual/range {v7 .. v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-ne v5, v0, :cond_f

    .line 500
    .line 501
    goto :goto_9

    .line 502
    :cond_f
    new-instance v0, Ljava/security/KeyStoreException;

    .line 503
    .line 504
    const-string v3, "Failed to store private key"

    .line 505
    .line 506
    invoke-static {v5}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    invoke-direct {v0, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    throw v0

    .line 514
    :cond_10
    iget-object v5, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 515
    .line 516
    iget v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 517
    .line 518
    invoke-static {v5, v2, v7}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 519
    .line 520
    .line 521
    iget-object v5, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 522
    .line 523
    iget v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 524
    .line 525
    invoke-static {v5, v2, v7}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 526
    .line 527
    .line 528
    :goto_9
    iget-object v5, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 529
    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v8, "USRCERT_"

    .line 536
    .line 537
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 548
    .line 549
    invoke-virtual {v5, v7, v15, v8, v4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    if-ne v5, v0, :cond_12

    .line 554
    .line 555
    iget-object v5, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 556
    .line 557
    new-instance v7, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    const-string v8, "CACERT_"

    .line 563
    .line 564
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 575
    .line 576
    invoke-virtual {v5, v7, v3, v8, v4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-ne v3, v0, :cond_11

    .line 581
    .line 582
    return-void

    .line 583
    :cond_11
    new-instance v0, Ljava/security/KeyStoreException;

    .line 584
    .line 585
    const-string v4, "Failed to store certificate chain"

    .line 586
    .line 587
    invoke-static {v3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-direct {v0, v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    .line 593
    .line 594
    throw v0

    .line 595
    :cond_12
    new-instance v0, Ljava/security/KeyStoreException;

    .line 596
    .line 597
    const-string v3, "Failed to store certificate #0"

    .line 598
    .line 599
    invoke-static {v5}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    invoke-direct {v0, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 604
    .line 605
    .line 606
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    :catchall_0
    move-exception v0

    .line 608
    if-eqz v6, :cond_13

    .line 609
    .line 610
    iget-object v3, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 611
    .line 612
    iget v4, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 613
    .line 614
    invoke-static {v3, v2, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 615
    .line 616
    .line 617
    goto :goto_a

    .line 618
    :cond_13
    iget-object v3, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 619
    .line 620
    iget v4, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 621
    .line 622
    invoke-static {v3, v2, v4}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 623
    .line 624
    .line 625
    iget-object v3, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 626
    .line 627
    iget v4, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 628
    .line 629
    invoke-static {v3, v2, v4}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 630
    .line 631
    .line 632
    :goto_a
    throw v0

    .line 633
    :catch_1
    move-exception v0

    .line 634
    goto :goto_b

    .line 635
    :catch_2
    move-exception v0

    .line 636
    :goto_b
    new-instance v2, Ljava/security/KeyStoreException;

    .line 637
    .line 638
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 639
    .line 640
    .line 641
    throw v2

    .line 642
    :cond_14
    new-instance v0, Ljava/security/KeyStoreException;

    .line 643
    .line 644
    const-string v2, "Private key did not export any key material"

    .line 645
    .line 646
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    throw v0

    .line 650
    :cond_15
    new-instance v0, Ljava/security/KeyStoreException;

    .line 651
    .line 652
    const-string v2, "Unsupported private key export format: "

    .line 653
    .line 654
    const-string v3, ". Only private keys which export their key material in PKCS#8 format are supported."

    .line 655
    .line 656
    invoke-static {v2, v5, v3}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    throw v0

    .line 664
    :catch_3
    move-exception v0

    .line 665
    new-instance v2, Ljava/security/KeyStoreException;

    .line 666
    .line 667
    const-string v3, "Failed to encode certificate #0"

    .line 668
    .line 669
    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    .line 671
    .line 672
    throw v2

    .line 673
    :cond_16
    new-instance v0, Ljava/security/KeyStoreException;

    .line 674
    .line 675
    const-string v2, "Must supply at least one Certificate with PrivateKey"

    .line 676
    .line 677
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v0

    .line 681
    :cond_17
    new-instance v0, Ljava/security/KeyStoreException;

    .line 682
    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    const-string v3, "Unsupported protection parameter class:"

    .line 686
    .line 687
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v3, ". Supported: "

    .line 702
    .line 703
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    const-class v3, Landroid/security/keystore/KeyProtection;

    .line 707
    .line 708
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v3, ", "

    .line 716
    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-class v3, Landroid/security/KeyStoreParameter;

    .line 721
    .line 722
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v0
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "Unsupported digests specification: "

    .line 10
    .line 11
    const-string v5, "HMAC key algorithm digest unknown for key algorithm "

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    instance-of v6, v3, Landroid/security/keystore/KeyProtection;

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "Unsupported protection parameter class: "

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ". Supported: "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-class v3, Landroid/security/keystore/KeyProtection;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_1
    :goto_0
    check-cast v3, Landroid/security/keystore/KeyProtection;

    .line 63
    .line 64
    instance-of v6, v2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 65
    .line 66
    const/16 v7, 0x8

    .line 67
    .line 68
    const-string v8, "USRSKEY_"

    .line 69
    .line 70
    if-eqz v6, :cond_6

    .line 71
    .line 72
    check-cast v2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    if-nez v3, :cond_2

    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    .line 100
    .line 101
    const-string v2, "Modifying KeyStore-backed key using protection parameters not supported"

    .line 102
    .line 103
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_3
    new-instance v3, Ljava/security/KeyStoreException;

    .line 108
    .line 109
    const-string v4, "Can only replace KeyStore-backed keys with same alias: "

    .line 110
    .line 111
    const-string v5, " != "

    .line 112
    .line 113
    invoke-static {v4, v0, v5, v2}, Landroid/accessibilityservice/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v3

    .line 121
    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    .line 122
    .line 123
    const-string v3, "KeyStore-backed secret key has invalid alias: "

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_5
    new-instance v0, Ljava/security/KeyStoreException;

    .line 134
    .line 135
    const-string v2, "KeyStore-backed secret key does not have an alias"

    .line 136
    .line 137
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_6
    if-eqz v3, :cond_15

    .line 142
    .line 143
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    if-eqz v6, :cond_14

    .line 148
    .line 149
    const-string v9, "RAW"

    .line 150
    .line 151
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_13

    .line 156
    .line 157
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    if-eqz v14, :cond_12

    .line 162
    .line 163
    new-instance v12, Landroid/security/keymaster/KeymasterArguments;

    .line 164
    .line 165
    invoke-direct {v12}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 166
    .line 167
    .line 168
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    const v9, 0x10000002

    .line 177
    .line 178
    .line 179
    invoke-virtual {v12, v9, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 180
    .line 181
    .line 182
    const/16 v9, 0x80

    .line 183
    .line 184
    const/4 v10, 0x0

    .line 185
    const/4 v13, 0x1

    .line 186
    if-ne v6, v9, :cond_9

    .line 187
    .line 188
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    const/4 v11, -0x1

    .line 197
    if-eq v9, v11, :cond_8

    .line 198
    .line 199
    new-array v5, v13, [I

    .line 200
    .line 201
    aput v9, v5, v10

    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-eqz v11, :cond_b

    .line 208
    .line 209
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-static {v11}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    array-length v15, v11

    .line 218
    if-ne v15, v13, :cond_7

    .line 219
    .line 220
    aget v11, v11, v10

    .line 221
    .line 222
    if-ne v11, v9, :cond_7

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_7
    new-instance v0, Ljava/security/KeyStoreException;

    .line 226
    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v3, ". Only "

    .line 244
    .line 245
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v3, " supported for HMAC key algorithm "

    .line 256
    .line 257
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_8
    new-instance v0, Ljava/security/ProviderException;

    .line 276
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_9
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_a

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    goto :goto_1

    .line 312
    :cond_a
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    .line 313
    .line 314
    :cond_b
    :goto_1
    const v2, 0x20000005

    .line 315
    .line 316
    .line 317
    invoke-virtual {v12, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    and-int/lit8 v9, v2, 0x1

    .line 333
    .line 334
    if-eqz v9, :cond_d

    .line 335
    .line 336
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-eqz v11, :cond_d

    .line 341
    .line 342
    array-length v11, v4

    .line 343
    move v15, v10

    .line 344
    :goto_2
    if-ge v15, v11, :cond_d

    .line 345
    .line 346
    aget v16, v4, v15

    .line 347
    .line 348
    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    .line 349
    .line 350
    .line 351
    move-result v17

    .line 352
    if-eqz v17, :cond_c

    .line 353
    .line 354
    add-int/lit8 v15, v15, 0x1

    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_c
    new-instance v0, Ljava/security/KeyStoreException;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v3, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v3, ". See KeyProtection documentation."

    .line 377
    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_d
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    const v11, 0x20000001

    .line 394
    .line 395
    .line 396
    invoke-virtual {v12, v11, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 397
    .line 398
    .line 399
    const v2, 0x20000004

    .line 400
    .line 401
    .line 402
    invoke-virtual {v12, v2, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    array-length v2, v2

    .line 410
    if-gtz v2, :cond_11

    .line 411
    .line 412
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    const v11, 0x20000006

    .line 421
    .line 422
    .line 423
    invoke-virtual {v12, v11, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    .line 427
    .line 428
    .line 429
    move-result v16

    .line 430
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    .line 431
    .line 432
    .line 433
    move-result v17

    .line 434
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    .line 435
    .line 436
    .line 437
    move-result v18

    .line 438
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    .line 439
    .line 440
    .line 441
    move-result v19

    .line 442
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    .line 443
    .line 444
    .line 445
    move-result-wide v20

    .line 446
    move-object v15, v12

    .line 447
    invoke-static/range {v15 .. v21}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    .line 448
    .line 449
    .line 450
    invoke-static {v12, v6, v4, v5}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    const v4, 0x60000190

    .line 458
    .line 459
    .line 460
    invoke-virtual {v12, v4, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    const v4, 0x60000191

    .line 468
    .line 469
    .line 470
    invoke-virtual {v12, v4, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    const v4, 0x60000192

    .line 478
    .line 479
    .line 480
    invoke-virtual {v12, v4, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 481
    .line 482
    .line 483
    if-eqz v9, :cond_e

    .line 484
    .line 485
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    if-nez v2, :cond_e

    .line 490
    .line 491
    const v2, 0x70000007

    .line 492
    .line 493
    .line 494
    invoke-virtual {v12, v2}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .line 496
    .line 497
    :cond_e
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_f

    .line 502
    .line 503
    move/from16 v16, v7

    .line 504
    .line 505
    goto :goto_3

    .line 506
    :cond_f
    move/from16 v16, v10

    .line 507
    .line 508
    :goto_3
    iget-object v2, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 509
    .line 510
    iget v3, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 511
    .line 512
    invoke-static {v2, v0, v3}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 513
    .line 514
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v11

    .line 527
    iget-object v10, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 528
    .line 529
    const/4 v0, 0x3

    .line 530
    iget v15, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 531
    .line 532
    new-instance v17, Landroid/security/keymaster/KeyCharacteristics;

    .line 533
    .line 534
    invoke-direct/range {v17 .. v17}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 535
    .line 536
    .line 537
    move v2, v13

    .line 538
    move v13, v0

    .line 539
    invoke-virtual/range {v10 .. v17}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-ne v0, v2, :cond_10

    .line 544
    .line 545
    return-void

    .line 546
    :cond_10
    new-instance v2, Ljava/security/KeyStoreException;

    .line 547
    .line 548
    const-string v3, "Failed to import secret key. Keystore error code: "

    .line 549
    .line 550
    invoke-static {v3, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v2

    .line 558
    :cond_11
    :try_start_1
    new-instance v0, Ljava/security/KeyStoreException;

    .line 559
    .line 560
    const-string v2, "Signature paddings not supported for symmetric keys"

    .line 561
    .line 562
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    goto :goto_4

    .line 568
    :catch_1
    move-exception v0

    .line 569
    :goto_4
    new-instance v2, Ljava/security/KeyStoreException;

    .line 570
    .line 571
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    throw v2

    .line 575
    :cond_12
    new-instance v0, Ljava/security/KeyStoreException;

    .line 576
    .line 577
    const-string v2, "Key did not export its key material despite supporting RAW format export"

    .line 578
    .line 579
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_13
    new-instance v0, Ljava/security/KeyStoreException;

    .line 584
    .line 585
    const-string v2, "Unsupported secret key material export format: "

    .line 586
    .line 587
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    throw v0

    .line 595
    :cond_14
    new-instance v0, Ljava/security/KeyStoreException;

    .line 596
    .line 597
    const-string v2, "Only secret keys that export their key material are supported"

    .line 598
    .line 599
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    throw v0

    .line 603
    :cond_15
    new-instance v0, Ljava/security/KeyStoreException;

    .line 604
    .line 605
    const-string v2, "Protection parameters must be specified when importing a symmetric key"

    .line 606
    .line 607
    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v0
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v0, "AndroidKeyStore"

    .line 21
    .line 22
    const-string v1, "Couldn\'t parse certificate in keystore"

    .line 23
    .line 24
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "AndroidKeyStore"

    .line 19
    .line 20
    const-string v1, "Couldn\'t parse certificates in keystore"

    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    .line 5
    const-string v1, "USRPKEY_"

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 20
    .line 21
    const-string v1, "USRSKEY_"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 36
    .line 37
    const-string v1, "USRCERT_"

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 52
    .line 53
    const-string v1, "CACERT_"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p1, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 71
    :goto_1
    return p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 73
    .line 74
    const-string v0, "alias == null"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 2
    .line 3
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    .line 13
    .line 14
    const-string v1, "Failed to delete entry: "

    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    .line 5
    const-string v1, "USRCERT_"

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 25
    .line 26
    const-string v1, "CACERT_"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 48
    .line 49
    const-string v0, "alias == null"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "X.509"

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 31
    .line 32
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 33
    .line 34
    const-string v4, "USRCERT_"

    .line 35
    .line 36
    invoke-virtual {v2, v4, v3}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    array-length v5, v2

    .line 44
    move v6, v3

    .line 45
    :goto_0
    if-ge v6, v5, :cond_5

    .line 46
    .line 47
    aget-object v7, v2, v6

    .line 48
    .line 49
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 50
    .line 51
    invoke-static {v4, v7}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 56
    .line 57
    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-nez v8, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v8, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_4

    .line 72
    .line 73
    return-object v7

    .line 74
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 78
    .line 79
    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 80
    .line 81
    const-string v6, "CACERT_"

    .line 82
    .line 83
    invoke-virtual {v4, v6, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v2, :cond_9

    .line 88
    .line 89
    array-length v2, v4

    .line 90
    :goto_2
    if-ge v3, v2, :cond_9

    .line 91
    .line 92
    aget-object v5, v4, v3

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 102
    .line 103
    invoke-static {v6, v5}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 108
    .line 109
    invoke-virtual {v7, v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-nez v7, :cond_7

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    invoke-static {v7, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_8

    .line 121
    .line 122
    return-object v5

    .line 123
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    :cond_9
    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 14
    .line 15
    const-string v2, "CACERT_"

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    add-int/lit8 v3, v1, 0x1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/security/cert/Certificate;

    .line 58
    .line 59
    aput-object v4, v2, v1

    .line 60
    .line 61
    move v1, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-array v2, v1, [Ljava/security/cert/Certificate;

    .line 64
    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    aput-object v0, v2, p1

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string v0, "alias == null"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-string v0, "USRPKEY_"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, "USRSKEY_"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    const-string v0, "USRCERT_"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    const-string v0, "CACERT_"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    const-string v0, "alias == null"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p2, "USRPKEY_"

    .line 8
    .line 9
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 14
    .line 15
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 16
    .line 17
    invoke-static {p2, p1, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    const-string p2, "USRSKEY_"

    .line 29
    .line 30
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 35
    .line 36
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 37
    .line 38
    invoke-static {p2, p1, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "password not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 5
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    move-result p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported param type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, -0x1

    .line 9
    :goto_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 10
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 10
    .line 11
    .line 12
    move-result-object p2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 14
    .line 15
    const-string v1, "CACERT_"

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    .line 32
    .line 33
    const-string p2, "Couldn\'t insert certificate; is KeyStore initialized?"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Ljava/security/KeyStoreException;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 47
    .line 48
    const-string p2, "cert == null"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/security/KeyStoreException;

    .line 55
    .line 56
    const-string p2, "Entry exists and is not a trusted certificate"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    .line 5
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    check-cast p2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :cond_2
    new-instance p1, Ljava/security/KeyStoreException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    .line 61
    .line 62
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/security/KeyStoreException;

    .line 77
    .line 78
    const-string p2, "entry == null"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    array-length p3, p3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "entries cannot be protected with passwords"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    instance-of p3, p2, Ljava/security/PrivateKey;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 4
    check-cast p2, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_1

    .line 5
    :cond_2
    instance-of p3, p2, Ljavax/crypto/SecretKey;

    if-eqz p3, :cond_3

    .line 6
    check-cast p2, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_1
    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Only PrivateKey and SecretKey are supported"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 8
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Operation not supported because key encoding is unknown"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSize()I
    .locals 1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
