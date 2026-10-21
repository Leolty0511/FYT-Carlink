.class public interface abstract Landroid/net/ethernet/IEthernetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/IEthernetManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getEthernetCarrierState()I
.end method

.method public abstract getEthernetConnectState()I
.end method

.method public abstract getEthernetIfaceName()Ljava/lang/String;
.end method

.method public abstract getEthernetIfaceState()I
.end method

.method public abstract setEthernetEnabled(Z)Z
.end method
