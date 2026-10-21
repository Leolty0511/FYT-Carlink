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
.method public abstract deleteCaCertificate(Ljava/lang/String;)Z
.end method

.method public abstract getCertificate(Ljava/lang/String;)[B
.end method

.method public abstract hasGrant(ILjava/lang/String;)Z
.end method

.method public abstract installCaCertificate([B)V
.end method

.method public abstract requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reset()Z
.end method

.method public abstract setGrant(ILjava/lang/String;Z)V
.end method
