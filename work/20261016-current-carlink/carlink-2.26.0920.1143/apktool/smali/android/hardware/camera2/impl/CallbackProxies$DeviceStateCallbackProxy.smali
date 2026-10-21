.class public Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceStateCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dispatchTarget must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 11
    .line 12
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 13
    .line 14
    const-class v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onActive"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onBusy"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onClosed"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onDisconnected"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string/jumbo p1, "onError"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onIdle"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onOpened"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "onUnconfigured"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
