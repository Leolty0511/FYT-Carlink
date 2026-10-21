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
.method public abstract onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
.end method

.method public abstract onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
.end method

.method public abstract onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
.end method

.method public abstract onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
.end method

.method public abstract onExecuteWrite(Ljava/lang/String;IZ)V
.end method

.method public abstract onScanResult(Ljava/lang/String;I[B)V
.end method

.method public abstract onServerConnectionState(IIZLjava/lang/String;)V
.end method

.method public abstract onServerRegistered(II)V
.end method

.method public abstract onServiceAdded(IIILandroid/os/ParcelUuid;)V
.end method
