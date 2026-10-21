.class public interface abstract Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
.end method

.method public abstract setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setPerformAccessibilityActionResult(ZI)V
.end method
