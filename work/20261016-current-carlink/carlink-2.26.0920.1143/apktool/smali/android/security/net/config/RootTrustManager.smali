.class public Landroid/security/net/config/RootTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SourceFile"


# instance fields
.field private final mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/ApplicationConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string v0, "config must not be null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .line 5
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_1

    .line 18
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Domain specific configurations require that the hostname be provided"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p3}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Domain specific configurations require that hostname aware checkServerTrusted(X509Certificate[], String, String) is used"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2

    .line 1
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p3

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 3
    invoke-static {v0}, Landroid/net/lowpan/b;->q(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v1, v0}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/RootTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .line 9
    invoke-static {p3}, Landroid/net/lowpan/b;->p(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v1, v0}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
