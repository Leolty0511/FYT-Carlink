.class public interface abstract Landroid/bluetooth/IBluetoothHidDeviceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V
.end method

.method public abstract onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
.end method

.method public abstract onIntrData(Landroid/bluetooth/BluetoothDevice;B[B)V
.end method

.method public abstract onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
.end method

.method public abstract onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
.end method

.method public abstract onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
.end method
