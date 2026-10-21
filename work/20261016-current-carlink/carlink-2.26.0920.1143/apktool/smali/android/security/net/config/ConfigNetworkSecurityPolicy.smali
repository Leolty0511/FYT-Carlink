.class public Landroid/security/net/config/ConfigNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "SourceFile"


# instance fields
.field private final mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/ApplicationConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
