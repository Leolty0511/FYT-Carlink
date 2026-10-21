.class Landroid/security/net/config/KeyStoreCertificateSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final mKeyStore:Ljava/security/KeyStore;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    .line 12
    .line 13
    return-void
.end method

.method private ensureInitialized()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/util/ArraySet;

    .line 16
    .line 17
    iget-object v3, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iput-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 62
    .line 63
    iput-object v2, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    :try_start_2
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    new-instance v2, Ljava/lang/RuntimeException;

    .line 69
    .line 70
    const-string v3, "Failed to load certificates from KeyStore"

    .line 71
    .line 72
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v2

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw v1
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getCertificates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    .line 5
    .line 6
    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 0

    return-void
.end method
