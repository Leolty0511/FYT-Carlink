.class public interface abstract Landroid/bluetooth/IBluetoothGatt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub;
    }
.end annotation


# virtual methods
.method public abstract addService(ILandroid/bluetooth/BluetoothGattService;)V
.end method

.method public abstract beginReliableWrite(ILjava/lang/String;)V
.end method

.method public abstract clearServices(I)V
.end method

.method public abstract clientConnect(ILjava/lang/String;ZIZI)V
.end method

.method public abstract clientDisconnect(ILjava/lang/String;)V
.end method

.method public abstract clientReadPhy(ILjava/lang/String;)V
.end method

.method public abstract clientSetPreferredPhy(ILjava/lang/String;III)V
.end method

.method public abstract configureMTU(ILjava/lang/String;I)V
.end method

.method public abstract connectionParameterUpdate(ILjava/lang/String;I)V
.end method

.method public abstract disconnectAll()V
.end method

.method public abstract discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V
.end method

.method public abstract discoverServices(ILjava/lang/String;)V
.end method

.method public abstract enableAdvertisingSet(IZII)V
.end method

.method public abstract endReliableWrite(ILjava/lang/String;Z)V
.end method

.method public abstract flushPendingBatchResults(I)V
.end method

.method public abstract getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOwnAddress(I)V
.end method

.method public abstract numHwTrackFiltersAvailable()I
.end method

.method public abstract readCharacteristic(ILjava/lang/String;II)V
.end method

.method public abstract readDescriptor(ILjava/lang/String;II)V
.end method

.method public abstract readRemoteRssi(ILjava/lang/String;)V
.end method

.method public abstract readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V
.end method

.method public abstract refreshDevice(ILjava/lang/String;)V
.end method

.method public abstract registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
.end method

.method public abstract registerForNotification(ILjava/lang/String;IZ)V
.end method

.method public abstract registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V
.end method

.method public abstract registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
.end method

.method public abstract registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
.end method

.method public abstract removeService(II)V
.end method

.method public abstract sendNotification(ILjava/lang/String;IZ[B)V
.end method

.method public abstract sendResponse(ILjava/lang/String;III[B)V
.end method

.method public abstract serverConnect(ILjava/lang/String;ZI)V
.end method

.method public abstract serverDisconnect(ILjava/lang/String;)V
.end method

.method public abstract serverReadPhy(ILjava/lang/String;)V
.end method

.method public abstract serverSetPreferredPhy(ILjava/lang/String;III)V
.end method

.method public abstract setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
.end method

.method public abstract setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
.end method

.method public abstract setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
.end method

.method public abstract setPeriodicAdvertisingEnable(IZ)V
.end method

.method public abstract setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
.end method

.method public abstract setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
.end method

.method public abstract startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
.end method

.method public abstract startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
.end method

.method public abstract stopScan(I)V
.end method

.method public abstract stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method public abstract unregAll()V
.end method

.method public abstract unregisterClient(I)V
.end method

.method public abstract unregisterScanner(I)V
.end method

.method public abstract unregisterServer(I)V
.end method

.method public abstract unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
.end method

.method public abstract writeCharacteristic(ILjava/lang/String;III[B)V
.end method

.method public abstract writeDescriptor(ILjava/lang/String;II[B)V
.end method
