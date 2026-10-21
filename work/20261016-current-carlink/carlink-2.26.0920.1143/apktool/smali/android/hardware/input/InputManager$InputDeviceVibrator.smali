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

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 7
    .line 8
    new-instance p1, Landroid/os/Binder;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/input/InputManager;->access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 8
    .line 9
    iget-object v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method public hasAmplitudeControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasVibrator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 2

    .line 1
    instance-of p1, p3, Landroid/os/VibrationEffect$OneShot;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p3, Landroid/os/VibrationEffect$OneShot;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    new-array p1, p1, [J

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    aput-wide v0, p1, p2

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p3}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    .line 17
    .line 18
    .line 19
    move-result-wide p3

    .line 20
    aput-wide p3, p1, p2

    .line 21
    .line 22
    const/4 p2, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of p1, p3, Landroid/os/VibrationEffect$Waveform;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    check-cast p3, Landroid/os/VibrationEffect$Waveform;

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p3}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    :goto_0
    :try_start_0
    iget-object p3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    .line 39
    .line 40
    invoke-static {p3}, Landroid/hardware/input/InputManager;->access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget p4, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    .line 45
    .line 46
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    .line 47
    .line 48
    invoke-interface {p3, p4, p1, p2, v0}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_1
    const-string p1, "InputManager"

    .line 59
    .line 60
    const-string p2, "Pre-baked effects aren\'t supported on input devices"

    .line 61
    .line 62
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void
.end method
