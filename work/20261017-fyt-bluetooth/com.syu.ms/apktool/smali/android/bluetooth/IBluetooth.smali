.class public interface abstract Landroid/bluetooth/IBluetooth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract cancelDiscovery()Z
.end method

.method public abstract configHciSnoopLog(Z)Z
.end method

.method public abstract connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract createBond(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract disable()Z
.end method

.method public abstract disableRadio()Z
.end method

.method public abstract enable()Z
.end method

.method public abstract enableNoAutoConnect()Z
.end method

.method public abstract enableRadio()Z
.end method

.method public abstract fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getAdapterConnectionState()I
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getBondState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getDiscoverableTimeout()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getProfileConnectionState(I)I
.end method

.method public abstract getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
.end method

.method public abstract getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
.end method

.method public abstract getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
.end method

.method public abstract getScanMode()I
.end method

.method public abstract getState()I
.end method

.method public abstract getUuids()[Landroid/os/ParcelUuid;
.end method

.method public abstract isDiscovering()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isRadioEnabled()Z
.end method

.method public abstract registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
.end method

.method public abstract removeBond(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
.end method

.method public abstract setDiscoverableTimeout(I)Z
.end method

.method public abstract setName(Ljava/lang/String;)Z
.end method

.method public abstract setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
.end method

.method public abstract setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
.end method

.method public abstract setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
.end method

.method public abstract setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
.end method

.method public abstract setScanMode(II)Z
.end method

.method public abstract startDiscovery()Z
.end method

.method public abstract unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
.end method
