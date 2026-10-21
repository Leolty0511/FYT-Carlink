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
.method public abstract clearWindowAnimationFrameStats()V
.end method

.method public abstract clearWindowContentFrameStats(I)Z
.end method

.method public abstract connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
.end method

.method public abstract getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;Z)Z
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setRotation(I)Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract takeScreenshot(II)Landroid/graphics/Bitmap;
.end method
