.class public interface abstract Landroid/hardware/input/IInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelVibrate(ILandroid/os/IBinder;)V
.end method

.method public abstract getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInputDevice(I)Landroid/view/InputDevice;
.end method

.method public abstract getInputDeviceIds()[I
.end method

.method public abstract getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
.end method

.method public abstract getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
.end method

.method public abstract getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract hasKeys(II[I[Z)Z
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;I)Z
.end method

.method public abstract registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
.end method

.method public abstract removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract tryPointerSpeed(I)V
.end method

.method public abstract vibrate(I[JILandroid/os/IBinder;)V
.end method
