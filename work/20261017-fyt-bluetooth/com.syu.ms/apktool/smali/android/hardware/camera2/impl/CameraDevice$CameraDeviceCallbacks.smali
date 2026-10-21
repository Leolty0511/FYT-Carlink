.class public Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# static fields
.field public static final ERROR_CAMERA_DEVICE:I = 0x1

.field public static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field public static final ERROR_CAMERA_SERVICE:I = 0x2


# instance fields
.field public final synthetic this$0:Landroid/hardware/camera2/impl/CameraDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onCameraError(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error from camera device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraDevice;->access$300(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;

    move-result-object v1

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraDevice;->access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCameraIdle()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera now idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$700(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$800(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$702(Landroid/hardware/camera2/impl/CameraDevice;Z)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureStarted(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture started for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResultReceived(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received result for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->QUIRKS_PARTIAL_RESULT:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->isRepeating()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 8
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->isRepeating()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$1000(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 10
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$1000(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 11
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 13
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 15
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    return-void

    .line 16
    :cond_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 17
    :cond_6
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 18
    new-instance v3, Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v3, p2, v1, p1}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;I)V

    if-eqz v0, :cond_7

    .line 19
    new-instance p1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$3;

    invoke-direct {p1, p0, v2, v1, v3}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_2

    .line 20
    :cond_7
    new-instance p1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;

    invoke-direct {p1, p0, v2, v1, v3}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 21
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
