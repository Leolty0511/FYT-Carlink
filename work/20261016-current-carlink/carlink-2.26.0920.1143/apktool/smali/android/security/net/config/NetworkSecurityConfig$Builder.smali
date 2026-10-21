.class public final Landroid/security/net/config/NetworkSecurityConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/NetworkSecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private mCleartextTrafficPermitted:Z

.field private mCleartextTrafficPermittedSet:Z

.field private mHstsEnforced:Z

.field private mHstsEnforcedSet:Z

.field private mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

.field private mPinSet:Landroid/security/net/config/PinSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 13
    .line 14
    return-void
.end method

.method private getEffectiveCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private getEffectiveCleartextTrafficPermitted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method private getEffectiveHstsEnforced()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private getEffectivePinSet()Landroid/security/net/config/PinSet;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_1
    sget-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public build()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v6, Landroid/security/net/config/NetworkSecurityConfig;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v0, v6

    .line 21
    invoke-direct/range {v0 .. v5}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig$1;)V

    .line 22
    .line 23
    .line 24
    return-object v6
.end method

.method public getCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-object v0
.end method

.method public hasCertificatesEntryRefs()Z
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    :goto_0
    if-eqz v0, :cond_1

    .line 3
    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Loops are not allowed in Builder parents"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 20
    .line 21
    return-object p0
.end method

.method public setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    return-object p0
.end method
