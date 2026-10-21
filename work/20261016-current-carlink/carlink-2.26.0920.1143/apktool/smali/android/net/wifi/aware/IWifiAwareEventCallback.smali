.class public interface abstract Landroid/net/wifi/aware/IWifiAwareEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectFail(I)V
.end method

.method public abstract onConnectSuccess(I)V
.end method

.method public abstract onIdentityChanged([B)V
.end method

.method public abstract onRangingAborted(I)V
.end method

.method public abstract onRangingFailure(IILjava/lang/String;)V
.end method

.method public abstract onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V
.end method
