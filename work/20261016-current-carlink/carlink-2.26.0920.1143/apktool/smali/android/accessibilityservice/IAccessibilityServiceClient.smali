.class public interface abstract Landroid/accessibilityservice/IAccessibilityServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearAccessibilityCache()V
.end method

.method public abstract init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
.end method

.method public abstract onAccessibilityButtonAvailabilityChanged(Z)V
.end method

.method public abstract onAccessibilityButtonClicked()V
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
.end method

.method public abstract onFingerprintCapturingGesturesChanged(Z)V
.end method

.method public abstract onFingerprintGesture(I)V
.end method

.method public abstract onGesture(I)V
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;I)V
.end method

.method public abstract onMagnificationChanged(Landroid/graphics/Region;FFF)V
.end method

.method public abstract onPerformGestureResult(IZ)V
.end method

.method public abstract onSoftKeyboardShowModeChanged(I)V
.end method
