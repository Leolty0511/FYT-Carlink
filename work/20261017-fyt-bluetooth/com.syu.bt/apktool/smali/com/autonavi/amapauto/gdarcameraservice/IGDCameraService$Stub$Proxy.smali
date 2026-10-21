.class Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGDCameraService.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 297
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public closeCamera(Ljava/lang/String;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 562
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 563
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->closeCamera(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    :goto_0
    return v2

    .line 565
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 569
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 568
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 571
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string v0, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    return-object v0
.end method

.method public getRecommendSize(Ljava/lang/String;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 403
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 406
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 407
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->getRecommendSize(Ljava/lang/String;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    :goto_0
    return-object v2

    .line 409
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/amapauto/gdarcameraservice/IGDSize$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 413
    .local v2, "_result":Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 412
    .end local v2    # "_result":Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw v4
.end method

.method public initCamera(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;Landroid/view/Surface;)Z
    .locals 8
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "gdArCameraParam"    # Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;
    .param p3, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    if-eqz p2, :cond_0

    .line 494
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    :goto_0
    if-eqz p3, :cond_1

    .line 501
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v5, 0x0

    invoke-virtual {p3, v0, v5}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    :goto_1
    iget-object v5, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 508
    .local v3, "_status":Z
    if-nez v3, :cond_2

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 509
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->initCamera(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;Landroid/view/Surface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    :goto_2
    return v2

    .line 498
    .end local v3    # "_status":Z
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v4

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    throw v4

    .line 505
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 511
    .restart local v3    # "_status":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 515
    .local v2, "_result":Z
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .end local v2    # "_result":Z
    :cond_3
    move v2, v4

    .line 512
    goto :goto_3
.end method

.method public isCameraConnected(Ljava/lang/String;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 433
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 434
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->isCameraConnected(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    :goto_0
    return v2

    .line 436
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 440
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 439
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw v4
.end method

.method public isCameraOpened(Ljava/lang/String;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 460
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 461
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->isCameraOpened(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    :goto_0
    return v2

    .line 463
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 467
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 466
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw v4
.end method

.method public isSupportArNavi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 379
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 380
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->isSupportArNavi(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    :goto_0
    return v2

    .line 382
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 386
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 385
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v4
.end method

.method public openCamera(Ljava/lang/String;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 535
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 536
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->openCamera(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    :goto_0
    return v2

    .line 538
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 542
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 541
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v4
.end method

.method public registerCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .locals 8
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "gdCameraStateCallBack"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 322
    iget-object v5, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 323
    .local v3, "_status":Z
    if-nez v3, :cond_1

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 324
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->registerCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    :goto_1
    return v2

    .line 321
    .end local v3    # "_status":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 326
    .restart local v3    # "_status":Z
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .end local v2    # "_result":Z
    :cond_2
    move v2, v4

    .line 327
    goto :goto_2

    .line 329
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    throw v4
.end method

.method public unInitCamera(Ljava/lang/String;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 589
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 590
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->unInitCamera(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 599
    :goto_0
    return v2

    .line 592
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 596
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 595
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    throw v4
.end method

.method public unregisterCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "gdCameraStateCallBack"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 348
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.autonavi.amapauto.gdarcameraservice.IGDCameraService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 351
    iget-object v4, p0, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 352
    .local v3, "_status":Z
    if-nez v3, :cond_1

    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 353
    invoke-static {}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;->getDefaultImpl()Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;->unregisterCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 362
    :goto_1
    return v2

    .line 350
    .end local v3    # "_status":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 355
    .restart local v3    # "_status":Z
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 359
    .local v2, "_result":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 358
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_0
    move-exception v4

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v4
.end method
