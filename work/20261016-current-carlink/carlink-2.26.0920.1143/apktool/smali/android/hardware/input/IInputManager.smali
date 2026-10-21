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
.method public abstract addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
.end method

.method public abstract cancelVibrate(ILandroid/os/IBinder;)V
.end method

.method public abstract createInputForwarder(I)Landroid/app/IInputForwarder;
.end method

.method public abstract disableInputDevice(I)V
.end method

.method public abstract enableInputDevice(I)V
.end method

.method public abstract getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
.end method

.method public abstract getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
.end method

.method public abstract getInputDevice(I)Landroid/view/InputDevice;
.end method

.method public abstract getInputDeviceIds()[I
.end method

.method public abstract getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
.end method

.method public abstract getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
.end method

.method public abstract getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
.end method

.method public abstract getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end method

.method public abstract getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
.end method

.method public abstract hasKeys(II[I[Z)Z
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;I)Z
.end method

.method public abstract isInTabletMode()I
.end method

.method public abstract isInputDeviceEnabled(I)Z
.end method

.method public abstract registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
.end method

.method public abstract registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
.end method

.method public abstract removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
.end method

.method public abstract requestPointerCapture(Landroid/os/IBinder;Z)V
.end method

.method public abstract setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
.end method

.method public abstract setCustomPointerIcon(Landroid/view/PointerIcon;)V
.end method

.method public abstract setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
.end method

.method public abstract setPointerIconType(I)V
.end method

.method public abstract setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
.end method

.method public abstract tryPointerSpeed(I)V
.end method

.method public abstract vibrate(I[JILandroid/os/IBinder;)V
.end method
