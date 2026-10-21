.class public final Landroid/bluetooth/le/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanFilter;
    .locals 13

    new-instance v12, Landroid/bluetooth/le/ScanFilter;

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    iget-object v7, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    iget v8, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iget-object v9, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v10, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLandroid/bluetooth/le/ScanFilter$1;)V

    return-object v12
.end method

.method public setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string/jumbo v1, "invalid device address "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 24
    .line 25
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 3
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_4

    .line 7
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    if-eqz v1, :cond_3

    .line 8
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    :goto_1
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 12
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 13
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 2
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    if-eqz v1, :cond_1

    .line 7
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "size mismatch for service data and service data mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 11
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 12
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uuid is null while uuidMask is not null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 6
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method
