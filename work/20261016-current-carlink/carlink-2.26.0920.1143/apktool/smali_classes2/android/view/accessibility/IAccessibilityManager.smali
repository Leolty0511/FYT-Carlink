.class public interface abstract Landroid/view/accessibility/IAccessibilityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
.end method

.method public abstract addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
.end method

.method public abstract getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWindowToken(II)Landroid/os/IBinder;
.end method

.method public abstract interrupt(I)V
.end method

.method public abstract notifyAccessibilityButtonClicked()V
.end method

.method public abstract notifyAccessibilityButtonVisibilityChanged(Z)V
.end method

.method public abstract performAccessibilityShortcut()V
.end method

.method public abstract registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
.end method

.method public abstract removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
.end method

.method public abstract sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
.end method

.method public abstract sendFingerprintGesture(I)Z
.end method

.method public abstract setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
.end method

.method public abstract temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
.end method

.method public abstract unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
.end method
