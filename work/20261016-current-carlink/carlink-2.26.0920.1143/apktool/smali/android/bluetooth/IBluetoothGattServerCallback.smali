.class public interface abstract Landroid/bluetooth/IBluetoothGattServerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCharacteristicReadRequest(Ljava/lang/String;IIZI)V
.end method

.method public abstract onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V
.end method

.method public abstract onConnectionUpdated(Ljava/lang/String;IIII)V
.end method

.method public abstract onDescriptorReadRequest(Ljava/lang/String;IIZI)V
.end method

.method public abstract onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V
.end method

.method public abstract onExecuteWrite(Ljava/lang/String;IZ)V
.end method

.method public abstract onMtuChanged(Ljava/lang/String;I)V
.end method

.method public abstract onNotificationSent(Ljava/lang/String;I)V
.end method

.method public abstract onPhyRead(Ljava/lang/String;III)V
.end method

.method public abstract onPhyUpdate(Ljava/lang/String;III)V
.end method

.method public abstract onServerConnectionState(IIZLjava/lang/String;)V
.end method

.method public abstract onServerRegistered(II)V
.end method

.method public abstract onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
.end method
