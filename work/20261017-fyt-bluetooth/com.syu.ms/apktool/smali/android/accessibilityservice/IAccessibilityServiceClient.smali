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
.method public abstract clearAccessibilityNodeInfoCache()V
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onGesture(I)V
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;I)V
.end method

.method public abstract setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
.end method
