.class public interface abstract Landroid/app/IUiAutomationConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiAutomationConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;Z)Z
.end method

.method public abstract setRotation(I)Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract takeScreenshot(II)Landroid/graphics/Bitmap;
.end method
