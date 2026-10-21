.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field public final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 2
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 3
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InputManager"

    const-string v2, "Failed to cancel vibration."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;J)V
    .locals 0

    .line 6
    invoke-virtual {p0, p3, p4}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate(J)V

    return-void
.end method

.method public vibrate(ILjava/lang/String;[JI)V
    .locals 0

    .line 7
    invoke-virtual {p0, p3, p4}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate([JI)V

    return-void
.end method

.method public vibrate(J)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;->vibrate([JI)V

    return-void
.end method

.method public vibrate([JI)V
    .locals 3

    .line 2
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/InputManager;->access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InputManager"

    const-string v0, "Failed to vibrate."

    .line 4
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
