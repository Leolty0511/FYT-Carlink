.class public interface abstract Landroid/net/IEthernetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Landroid/net/IEthernetServiceListener;)V
.end method

.method public abstract getConfiguration()Landroid/net/IpConfiguration;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract removeListener(Landroid/net/IEthernetServiceListener;)V
.end method

.method public abstract setConfiguration(Landroid/net/IpConfiguration;)V
.end method
