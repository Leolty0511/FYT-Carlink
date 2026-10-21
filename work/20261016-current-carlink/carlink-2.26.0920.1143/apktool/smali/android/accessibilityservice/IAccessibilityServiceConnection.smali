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
.method public abstract disableSelf()V
.end method

.method public abstract findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)Z
.end method

.method public abstract findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract getMagnificationCenterX()F
.end method

.method public abstract getMagnificationCenterY()F
.end method

.method public abstract getMagnificationRegion()Landroid/graphics/Region;
.end method

.method public abstract getMagnificationScale()F
.end method

.method public abstract getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
.end method

.method public abstract getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
.end method

.method public abstract getWindows()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAccessibilityButtonAvailable()Z
.end method

.method public abstract isFingerprintGestureDetectionAvailable()Z
.end method

.method public abstract performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
.end method

.method public abstract performGlobalAction(I)Z
.end method

.method public abstract resetMagnification(Z)Z
.end method

.method public abstract sendGesture(ILandroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract setMagnificationCallbackEnabled(Z)V
.end method

.method public abstract setMagnificationScaleAndCenter(FFFZ)Z
.end method

.method public abstract setOnKeyEventResult(ZI)V
.end method

.method public abstract setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
.end method

.method public abstract setSoftKeyboardCallbackEnabled(Z)V
.end method

.method public abstract setSoftKeyboardShowMode(I)Z
.end method
