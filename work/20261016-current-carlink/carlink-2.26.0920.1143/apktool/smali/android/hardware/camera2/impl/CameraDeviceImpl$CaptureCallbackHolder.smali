.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasBatchedOutputs:Z

.field private final mRepeating:Z

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/os/Handler;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-eqz p3, :cond_3

    .line 7
    .line 8
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    .line 9
    .line 10
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance p3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    .line 18
    .line 19
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 20
    .line 21
    iput p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    move p3, p1

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-ge p3, p4, :cond_2

    .line 30
    .line 31
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    check-cast p4, Landroid/hardware/camera2/CaptureRequest;

    .line 36
    .line 37
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    if-nez p5, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-nez p3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    const/4 p5, 0x2

    .line 55
    if-eq p4, p5, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p1, 0x1

    .line 62
    :goto_1
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHasBatchedOutputs:Z

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 66
    .line 67
    const-string p2, "Must have a valid handler and a valid callback"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method


# virtual methods
.method public getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Requested subsequenceId %d is negative"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Requested subsequenceId %d is larger than request list size %d."

    .line 8
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestCount()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    return v0
.end method

.method public hasBatchedOutputs()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    return v0
.end method
