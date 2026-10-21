.class public interface abstract Landroid/net/wifi/IWifiNetworkEventObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiNetworkEventObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
.end method

.method public abstract onRssiChanged(I)V
.end method

.method public abstract onWifiNetworkConnected(Landroid/net/wifi/WifiInfo;Z)V
.end method

.method public abstract onWifiNetworkConnecting(Landroid/net/wifi/WifiInfo;Z)V
.end method

.method public abstract onWifiNetworkDisconnected(Landroid/net/wifi/WifiInfo;ZZ)V
.end method

.method public abstract onWifiPreClose()V
.end method
