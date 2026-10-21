.class public Landroid/security/FrameworkNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "SourceFile"


# instance fields
.field private final mCleartextTrafficPermitted:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/security/FrameworkNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

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
    iget-boolean v0, p0, Landroid/security/FrameworkNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/security/FrameworkNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p1

    return p1
.end method
