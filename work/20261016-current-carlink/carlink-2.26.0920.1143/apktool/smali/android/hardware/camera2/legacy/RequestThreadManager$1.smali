.class Landroid/hardware/camera2/legacy/RequestThreadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    if-eq p1, p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 5
    .line 6
    invoke-static {p2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "Received error "

    .line 11
    .line 12
    const-string v1, " from the Camera1 ErrorCallback"

    .line 13
    .line 14
    invoke-static {v0, p1, v1, p2}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$1;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
