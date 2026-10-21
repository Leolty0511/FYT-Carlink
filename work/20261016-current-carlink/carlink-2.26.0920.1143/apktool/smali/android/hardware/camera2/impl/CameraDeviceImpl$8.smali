.class Landroid/hardware/camera2/impl/CameraDeviceImpl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$code:I

.field final synthetic val$isError:Z


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-boolean p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$isError:Z

    iput p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$isError:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 12
    .line 13
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$code:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
