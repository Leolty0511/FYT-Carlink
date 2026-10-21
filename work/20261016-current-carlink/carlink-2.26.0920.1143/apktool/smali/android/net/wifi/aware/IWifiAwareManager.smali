.class public interface abstract Landroid/net/wifi/aware/IWifiAwareManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
.end method

.method public abstract disconnect(ILandroid/os/IBinder;)V
.end method

.method public abstract getCharacteristics()Landroid/net/wifi/aware/Characteristics;
.end method

.method public abstract isUsageEnabled()Z
.end method

.method public abstract publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
.end method

.method public abstract sendMessage(III[BII)V
.end method

.method public abstract startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I
.end method

.method public abstract subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
.end method

.method public abstract terminateSession(II)V
.end method

.method public abstract updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
.end method

.method public abstract updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
.end method
