.class Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GattCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_REG_TIMEOUT:I = 0x7d0

.field private static final LE_CALLBACK_REG_WAIT_COUNT:I = 0x5


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

.field private mBluetoothAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mLeHandle:I

.field private final mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mScanFilter:[Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 4
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 9
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 10
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 12
    iput-object p4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-void
.end method

.method public static synthetic access$000(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    return p0
.end method

.method public static synthetic access$100(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-object p0
.end method

.method private waitForRegisteration(I)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-ge v0, p1, :cond_1

    const-wide/16 v3, 0x7d0

    .line 4
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "BluetoothAdapter"

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback reg wait interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const/4 v2, 0x1

    .line 6
    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public advertiseStarted()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public onAdvertiseStateChange(II)V
    .locals 4

    const-string v0, "BluetoothAdapter"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on advertise call back, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {p1, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStart(I)V

    goto :goto_1

    .line 3
    :cond_0
    monitor-enter p0

    if-nez p2, :cond_2

    .line 4
    :try_start_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregistering client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->access$602(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "BluetoothAdapter"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "BluetoothAdapter"

    const-string v0, "cannot unregister client, BluetoothAdapter is null"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {p1, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStop(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0

    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClientRegistered(II)V
    .locals 6

    const-string v0, "BluetoothAdapter"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "BluetoothAdapter"

    const-string v2, "onClientRegistered LE scan canceled"

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_5

    .line 5
    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6
    :try_start_1
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object p1

    .line 8
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    if-eqz p2, :cond_1

    .line 9
    iget p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {p1, p2}, Landroid/bluetooth/IBluetoothGatt;->startAdvertising(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 11
    iget p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {p1, p2, v0}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZ)V

    goto :goto_1

    .line 12
    :cond_2
    array-length p2, p2

    new-array v2, p2, [Landroid/os/ParcelUuid;

    move v3, v0

    :goto_0
    if-eq v3, p2, :cond_3

    .line 13
    new-instance v4, Landroid/os/ParcelUuid;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {p1, p2, v0, v2}, Landroid/bluetooth/IBluetoothGatt;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    goto :goto_1

    :cond_4
    const-string p2, "BluetoothAdapter"

    const-string v0, "onClientRegistered, BluetoothAdapter null"

    .line 15
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v0, "BluetoothAdapter"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to start le scan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 19
    :goto_1
    iget p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    if-eqz p1, :cond_6

    .line 20
    :try_start_3
    invoke-interface {p1, p2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    const-string p2, "BluetoothAdapter"

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to unregister callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 22
    :cond_5
    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 23
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 0

    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 0

    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0

    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    const-string p1, "BluetoothAdapter"

    const-string p2, "onScanResult, BluetoothAdapter null"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAdapter"

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public scanStarted()Z
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public stopAdvertising()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v0, :cond_0

    const-string v0, "BluetoothAdapter"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state, mLeHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertising()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "BluetoothAdapter"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop advertising"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "stopAdvertising, BluetoothAdapter is null"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stopLeScan()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v0, :cond_0

    const-string v0, "BluetoothAdapter"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state, mLeHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 7
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 8
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "BluetoothAdapter"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop scan and unregister"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "stopLeScan, BluetoothAdapter is null"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
