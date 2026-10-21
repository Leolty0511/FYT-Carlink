.class public interface abstract Landroid/net/lowpan/ILowpanInterfaceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectedChanged(Z)V
.end method

.method public abstract onEnabledChanged(Z)V
.end method

.method public abstract onLinkAddressAdded(Ljava/lang/String;)V
.end method

.method public abstract onLinkAddressRemoved(Ljava/lang/String;)V
.end method

.method public abstract onLinkNetworkAdded(Landroid/net/IpPrefix;)V
.end method

.method public abstract onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
.end method

.method public abstract onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
.end method

.method public abstract onReceiveFromCommissioner([B)V
.end method

.method public abstract onRoleChanged(Ljava/lang/String;)V
.end method

.method public abstract onStateChanged(Ljava/lang/String;)V
.end method

.method public abstract onUpChanged(Z)V
.end method
