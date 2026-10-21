.class Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureListenerHolder"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRepeating:Z

    .line 3
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mHandler:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 5
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Must have a valid handler and a valid listener"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getListener()Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public isRepeating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRepeating:Z

    return v0
.end method
