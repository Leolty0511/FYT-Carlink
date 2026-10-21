.class public interface abstract Landroid/view/IWindowSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
.end method

.method public abstract addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I
.end method

.method public abstract addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I
.end method

.method public abstract addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
.end method

.method public abstract dragRecipientEntered(Landroid/view/IWindow;)V
.end method

.method public abstract dragRecipientExited(Landroid/view/IWindow;)V
.end method

.method public abstract finishDrawing(Landroid/view/IWindow;)V
.end method

.method public abstract getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
.end method

.method public abstract getInTouchMode()Z
.end method

.method public abstract getRotation(Landroid/view/IWindow;)I
.end method

.method public abstract getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
.end method

.method public abstract hideWindowLayer(Landroid/view/IWindow;Z)V
.end method

.method public abstract onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V
.end method

.method public abstract outOfMemory(Landroid/view/IWindow;)Z
.end method

.method public abstract performDeferredDestroy(Landroid/view/IWindow;)V
.end method

.method public abstract performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
.end method

.method public abstract performHapticFeedback(Landroid/view/IWindow;IZ)Z
.end method

.method public abstract prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;
.end method

.method public abstract relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
.end method

.method public abstract remove(Landroid/view/IWindow;)V
.end method

.method public abstract reportDropResult(Landroid/view/IWindow;Z)V
.end method

.method public abstract sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
.end method

.method public abstract setInTouchMode(Z)V
.end method

.method public abstract setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
.end method

.method public abstract setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
.end method

.method public abstract setUniverseTransform(Landroid/os/IBinder;FFFFFFF)V
.end method

.method public abstract setWallpaperPosition(Landroid/os/IBinder;FFFF)V
.end method

.method public abstract updatePositionAndSize(Landroid/view/IWindow;IIII)V
.end method

.method public abstract wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
.end method

.method public abstract wallpaperOffsetsComplete(Landroid/os/IBinder;)V
.end method
