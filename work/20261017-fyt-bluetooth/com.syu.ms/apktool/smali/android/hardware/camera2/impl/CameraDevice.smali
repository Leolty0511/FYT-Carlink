.class public Landroid/hardware/camera2/impl/CameraDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/CameraDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    }
.end annotation


# static fields
.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private mIdle:Z

.field private final mLock:Ljava/lang/Object;

.field private mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

.field private mRepeatingRequestId:I

.field private final mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallbacks:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 9
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$1;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnOpened:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$2;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$3;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$3;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnActive:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$4;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnBusy:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$5;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnClosed:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$6;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$6;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$7;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDevice$7;-><init>(Landroid/hardware/camera2/impl/CameraDevice;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnDisconnected:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 16
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCameraId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 18
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "CameraDevice-%s-JV"

    .line 19
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const/4 p2, 0x3

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/hardware/camera2/CameraDevice$StateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z

    return p0
.end method

.method public static synthetic access$700(Landroid/hardware/camera2/impl/CameraDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    return p0
.end method

.method public static synthetic access$702(Landroid/hardware/camera2/impl/CameraDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    return p1
.end method

.method public static synthetic access$800(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method private checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p1, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No handler given, and current thread has no looper!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private checkIfCameraClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isClosed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private submitCaptureRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;Z)I
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p3}, Landroid/hardware/camera2/impl/CameraDevice;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p3

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)I

    move-result v1
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 6
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    invoke-direct {v3, p2, p1, p3, p4}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;-><init>(Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;Z)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 7
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 8
    :cond_3
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z

    .line 11
    monitor-exit v0

    return v1

    :catch_0
    const/4 p1, -0x1

    .line 12
    monitor-exit v0

    return p1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDevice;->submitCaptureRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;Z)I

    move-result p1

    return p1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraDevice$CaptureListener;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const-string p2, "Capture burst request list is empty, do nothing!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Burst capture implemented yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Exception while closing: "

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :catch_1
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 8
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public configureOutputs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 6
    :goto_0
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 7
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 8
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 9
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->waitUntilIdle()V

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 16
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    .line 17
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 19
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v4, v3, v3, v3, v2}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(IIILandroid/view/Surface;)I

    move-result v4

    .line 20
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 21
    :cond_4
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 22
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 23
    :cond_5
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :goto_4
    monitor-exit v0

    return-void

    .line 25
    :catch_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 3
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v2, p1, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance p1, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 6
    monitor-exit v0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 7
    monitor-exit v0

    return-object p1

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->flush()I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit v0

    return-void

    .line 6
    :catch_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallbacks:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/ICameraDeviceUser;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 3
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraDevice$CaptureListener;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;

    const-string p2, "Set Repeating burst request list is empty, do nothing!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Burst capture implemented yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDevice;->submitCaptureRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;Z)I

    move-result p1

    return p1
.end method

.method public stopRepeating()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 3
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 5
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v2, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(I)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    .line 8
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public waitUntilIdle()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDevice;->checkIfCameraClosed()V

    .line 3
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestId:I

    .line 6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :catch_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    .line 10
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active repeating request ongoing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
