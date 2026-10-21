.class Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/utils/Decorator$DecoratorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CameraBinderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraBinderDecoratorListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/utils/CameraBinderDecorator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_b

    .line 2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, -0x5f

    const/4 p3, 0x1

    if-eq p1, p2, :cond_9

    const/16 p2, -0x57

    const/4 v0, 0x2

    if-eq p1, p2, :cond_7

    const/16 p2, -0x20

    if-eq p1, p2, :cond_4

    const/16 p2, -0x16

    if-eq p1, p2, :cond_3

    const/16 p2, -0x13

    if-eq p1, p2, :cond_8

    const/16 p2, -0xd

    if-eq p1, p2, :cond_5

    const/16 p2, -0x11

    if-eq p1, p2, :cond_2

    const/16 p2, -0x10

    if-eq p1, p2, :cond_6

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Lacking privileges to access camera service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad argument passed to camera service"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    new-instance p2, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {p2, v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {p2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    .line 6
    :cond_5
    new-instance p2, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {p2, p3}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {p2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    .line 7
    :cond_6
    new-instance p2, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {p2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    .line 8
    :cond_7
    new-instance p2, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {p2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    .line 9
    :cond_8
    new-instance p2, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {p2, v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {p2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    .line 10
    :cond_9
    new-instance p2, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/16 v0, 0x3e8

    invoke-direct {p2, v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {p2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :goto_0
    if-ltz p1, :cond_a

    goto :goto_1

    .line 11
    :cond_a
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Unknown error %d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_1
    return-void
.end method

.method public onBeforeInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of p1, p3, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 p2, 0x2

    const-string v0, "Process hosting the camera service has died unexpectedly"

    invoke-direct {p1, p2, v0, p3}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p1, p3, Landroid/os/RemoteException;

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {p1, p2, p3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
