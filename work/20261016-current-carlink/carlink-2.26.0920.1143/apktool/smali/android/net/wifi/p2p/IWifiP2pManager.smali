.class public interface abstract Landroid/net/wifi/p2p/IWifiP2pManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkConfigureWifiDisplayPermission()V
.end method

.method public abstract close(Landroid/os/IBinder;)V
.end method

.method public abstract getMessenger(Landroid/os/IBinder;)Landroid/os/Messenger;
.end method

.method public abstract getP2pBand()I
.end method

.method public abstract getP2pStateMachineMessenger()Landroid/os/Messenger;
.end method

.method public abstract setMiracastMode(I)V
.end method

.method public abstract setP2pBand(I)V
.end method
