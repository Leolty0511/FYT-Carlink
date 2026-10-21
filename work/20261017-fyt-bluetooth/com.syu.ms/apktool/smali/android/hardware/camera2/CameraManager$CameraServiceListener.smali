.class Landroid/hardware/camera2/CameraManager$CameraServiceListener;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraServiceListener"
.end annotation


# static fields
.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraServiceListener"


# instance fields
.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 2
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;-><init>(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method private isAvailable(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private validStatus(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onStatusChanged(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->access$100(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraServiceListener"

    const-string v2, "Camera id %d has status changed to 0x%x"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->validStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "CameraServiceListener"

    const-string v2, "Ignoring invalid device %d status 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iget-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    const-string p2, "CameraServiceListener"

    const-string v1, "Device status changed to 0x%x, which is what it already was"

    new-array v2, v7, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result p2

    if-ne v2, p2, :cond_2

    const-string p2, "CameraServiceListener"

    const-string v1, "Device status was previously available (%d),  and is now again available (%d)so no new client visible update will be sent"

    new-array v2, v3, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_0
    if-ge v6, p2, :cond_4

    .line 15
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 16
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityListener;

    .line 17
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    new-instance v4, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;

    invoke-direct {v4, p0, v3, v1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityListener;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 19
    :cond_3
    new-instance v4, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;

    invoke-direct {v4, p0, v3, v1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityListener;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 20
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
