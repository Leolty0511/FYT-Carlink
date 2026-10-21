.class public interface abstract Landroid/accessibilityservice/IAccessibilityServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
.end method

.method public abstract findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
.end method

.method public abstract performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract performGlobalAction(I)Z
.end method

.method public abstract setOnKeyEventResult(ZI)V
.end method

.method public abstract setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
.end method
