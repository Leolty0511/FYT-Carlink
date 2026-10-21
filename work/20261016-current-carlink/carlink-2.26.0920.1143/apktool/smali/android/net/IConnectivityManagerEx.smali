.class public interface abstract Landroid/net/IConnectivityManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManagerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVowifiNetwork(II)Landroid/net/VowifiNetwork;
.end method

.method public abstract registerImsDozeObserver(Landroid/net/IImsDozeObserver;)V
.end method

.method public abstract releaseImsNetworkRequest(Landroid/net/NetworkRequest;I)V
.end method

.method public abstract requestImsNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;I)Landroid/net/NetworkRequest;
.end method

.method public abstract setImsDozeEnabled(Z)V
.end method

.method public abstract unregisterImsDozeObserver(Landroid/net/IImsDozeObserver;)V
.end method
