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

.method public abstract connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract createBond(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
.end method

.method public abstract createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract disable()Z
.end method

.method public abstract enable()Z
.end method

.method public abstract enableNoAutoConnect()Z
.end method

.method public abstract factoryReset()Z
.end method

.method public abstract fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getAdapterConnectionState()I
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getBondState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getDiscoverableTimeout()I
.end method

.method public abstract getDiscoveryEndMillis()J
.end method

.method public abstract getLeMaximumAdvertisingDataLength()I
.end method

.method public abstract getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
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

.method public abstract getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getState()I
.end method

.method public abstract getSupportedProfiles()J
.end method

.method public abstract getUuids()[Landroid/os/ParcelUuid;
.end method

.method public abstract isActivityAndEnergyReportingSupported()Z
.end method

.method public abstract isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract isDiscovering()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isLe2MPhySupported()Z
.end method

.method public abstract isLeCodedPhySupported()Z
.end method

.method public abstract isLeExtendedAdvertisingSupported()Z
.end method

.method public abstract isLePeriodicAdvertisingSupported()Z
.end method

.method public abstract isMultiAdvertisementSupported()Z
.end method

.method public abstract isOffloadedFilteringSupported()Z
.end method

.method public abstract isOffloadedScanBatchingSupported()Z
.end method

.method public abstract onBrEdrDown()V
.end method

.method public abstract onLeServiceUp()V
.end method

.method public abstract registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
.end method

.method public abstract removeBond(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
.end method

.method public abstract requestActivityInfo(Landroid/os/ResultReceiver;)V
.end method

.method public abstract sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
.end method

.method public abstract sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
.end method

.method public abstract setDiscoverableTimeout(I)Z
.end method

.method public abstract setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract setName(Ljava/lang/String;)Z
.end method

.method public abstract setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
.end method

.method public abstract setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
.end method

.method public abstract setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
.end method

.method public abstract setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
.end method

.method public abstract setScanMode(II)Z
.end method

.method public abstract setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
.end method

.method public abstract startDiscovery()Z
.end method

.method public abstract unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
.end method
