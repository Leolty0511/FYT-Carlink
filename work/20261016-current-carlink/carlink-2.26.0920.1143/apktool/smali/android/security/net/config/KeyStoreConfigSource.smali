.class Landroid/security/net/config/KeyStoreConfigSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# instance fields
.field private final mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 10
    .line 11
    new-instance v2, Landroid/security/net/config/KeyStoreCertificateSource;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Landroid/security/net/config/KeyStoreCertificateSource;-><init>(Ljava/security/KeyStore;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {v1, v2, p1}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroid/security/net/config/KeyStoreConfigSource;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/KeyStoreConfigSource;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
