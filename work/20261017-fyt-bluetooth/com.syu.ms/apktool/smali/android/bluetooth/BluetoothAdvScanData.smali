.class public final Landroid/bluetooth/BluetoothAdvScanData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AD:I = 0x0

.field public static final EIR:I = 0x2

.field public static final SCAN_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothAdvScanData"


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mDataType:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothGatt;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 3
    iput p2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    return v0
.end method

.method public getManufacturerData()[B
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothGatt;->getAdvManufacturerData()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdvScanData"

    const-string v3, "Unable to get manufacturer data."

    .line 3
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getServiceData()[B
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothGatt;->getAdvServiceData()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdvScanData"

    const-string v3, "Unable to get service data."

    .line 3
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothGatt;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdvScanData"

    const-string v2, "Unable to get service uuids."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeManufacturerCodeAndData(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothGatt;->removeAdvManufacturerCodeAndData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove manufacturer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothAdvScanData"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setManufacturerData(I[B)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGatt;->setAdvManufacturerCodeAndData(I[B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAdvScanData"

    const-string v0, "Unable to set manufacturer id and data."

    .line 3
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setServiceData([B)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 2
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvServiceData([B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "BluetoothAdvScanData"

    const-string v2, "Unable to set service data."

    .line 3
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
