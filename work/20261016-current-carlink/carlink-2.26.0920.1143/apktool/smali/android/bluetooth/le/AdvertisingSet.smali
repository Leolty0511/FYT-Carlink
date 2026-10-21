.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertisingSet"


# instance fields
.field private advertiserId:I

.field private final gatt:Landroid/bluetooth/IBluetoothGatt;


# direct methods
.method public constructor <init>(ILandroid/bluetooth/IBluetoothManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string p2, "AdvertisingSet"

    .line 15
    .line 16
    const-string v0, "Failed to get Bluetooth gatt - "

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p2, "Failed to get Bluetooth"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method


# virtual methods
.method public enableAdvertising(ZII)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string p2, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo p3, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public getAdvertiserId()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    return v0
.end method

.method public getOwnAddress()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v2, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setAdvertiserId(I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    return-void
.end method

.method public setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v1, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v1, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v1, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingEnabled(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v1, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v1, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2
    .line 3
    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const-string v0, "AdvertisingSet"

    .line 11
    .line 12
    const-string/jumbo v1, "remote exception - "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
