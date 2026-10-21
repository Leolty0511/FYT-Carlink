.class public interface abstract Landroid/bluetooth/IBluetoothManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
.end method

.method public abstract disable(Ljava/lang/String;Z)Z
.end method

.method public abstract enable(Ljava/lang/String;)Z
.end method

.method public abstract enableNoAutoConnect(Ljava/lang/String;)Z
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract isBleAppPresent()Z
.end method

.method public abstract isBleScanAlwaysAvailable()Z
.end method

.method public abstract isBleSupport()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
.end method

.method public abstract registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
.end method

.method public abstract unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
.end method

.method public abstract unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
.end method

.method public abstract unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
.end method

.method public abstract updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
.end method
