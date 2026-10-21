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
.method public abstract disable(Z)Z
.end method

.method public abstract disableRadio()Z
.end method

.method public abstract enable()Z
.end method

.method public abstract enableNoAutoConnect()Z
.end method

.method public abstract enableRadio()Z
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isRadioEnabled()Z
.end method

.method public abstract registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
.end method

.method public abstract registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
.end method

.method public abstract unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
.end method

.method public abstract unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
.end method
