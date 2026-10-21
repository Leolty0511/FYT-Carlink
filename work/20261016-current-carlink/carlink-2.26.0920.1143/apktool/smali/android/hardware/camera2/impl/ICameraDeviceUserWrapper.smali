.class public Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string v0, "Remote device may not be null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public beginConfigure()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->beginConfigure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v2, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

.method public cancelRequest(I)J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v1, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v1, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public createInputStream(III)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/camera2/ICameraDeviceUser;->createInputStream(III)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p3, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {p2, p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p2
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v1, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public deleteStream(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v1, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public disconnect()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public endConfigure(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->endConfigure(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v1, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v0, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p2
.end method

.method public flush()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->flush()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v2, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v2, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getInputSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v2, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public prepare(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v1, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public prepare2(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare2(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v0, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p2
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v0, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p2
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v0, "Unexpected exception"

    .line 15
    .line 16
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p2
.end method

.method public tearDown(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/camera2/ICameraDeviceUser;->tearDown(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v1, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public waitUntilIdle()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v2, "Unexpected exception"

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method
