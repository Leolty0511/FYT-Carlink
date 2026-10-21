.class public interface abstract Landroid/security/IKeyChainService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub;
    }
.end annotation


# virtual methods
.method public abstract containsCaAlias(Ljava/lang/String;)Z
.end method

.method public abstract deleteCaCertificate(Ljava/lang/String;)Z
.end method

.method public abstract getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaCertificates(Ljava/lang/String;)[B
.end method

.method public abstract getCertificate(Ljava/lang/String;)[B
.end method

.method public abstract getEncodedCaCertificate(Ljava/lang/String;Z)[B
.end method

.method public abstract getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;
.end method

.method public abstract getUserCaAliases()Landroid/content/pm/StringParceledListSlice;
.end method

.method public abstract hasGrant(ILjava/lang/String;)Z
.end method

.method public abstract installCaCertificate([B)Ljava/lang/String;
.end method

.method public abstract installKeyPair([B[B[BLjava/lang/String;)Z
.end method

.method public abstract removeKeyPair(Ljava/lang/String;)Z
.end method

.method public abstract requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reset()Z
.end method

.method public abstract setGrant(ILjava/lang/String;Z)V
.end method
