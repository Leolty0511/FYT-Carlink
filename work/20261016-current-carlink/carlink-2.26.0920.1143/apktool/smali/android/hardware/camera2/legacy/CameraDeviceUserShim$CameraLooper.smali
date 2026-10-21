.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraLooper"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private volatile mInitErrors:I

.field private mLooper:Landroid/os/Looper;

.field private final mStartDone:Landroid/os/ConditionVariable;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/hardware/Camera;->openUninitialized()Landroid/hardware/Camera;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    .line 9
    .line 10
    new-instance v0, Landroid/os/ConditionVariable;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    .line 16
    .line 17
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    .line 18
    .line 19
    new-instance p1, Ljava/lang/Thread;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/AssertionError;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    .line 11
    .line 12
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->cameraInitUnspecified(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    .line 19
    .line 20
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public waitForOpen(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    const-string/jumbo p1, "waitForOpen - Camera failed to open after timeout of 5000 ms"

    .line 14
    .line 15
    .line 16
    const-string v0, "CameraDeviceUserShim"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    const-string v1, "connectBinderShim - Failed to release camera after timeout "

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 34
    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    invoke-direct {p1, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
