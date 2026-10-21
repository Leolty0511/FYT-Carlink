.class public interface abstract Landroid/view/IWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract dispatchAppVisibility(Z)V
.end method

.method public abstract dispatchDragEvent(Landroid/view/DragEvent;)V
.end method

.method public abstract dispatchGetNewSurface()V
.end method

.method public abstract dispatchPointerCaptureChanged(Z)V
.end method

.method public abstract dispatchSystemUiVisibilityChanged(IIII)V
.end method

.method public abstract dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
.end method

.method public abstract dispatchWallpaperOffsets(FFFFZ)V
.end method

.method public abstract dispatchWindowShown()V
.end method

.method public abstract executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract moved(II)V
.end method

.method public abstract requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
.end method

.method public abstract resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V
.end method

.method public abstract updatePointerIcon(FF)V
.end method

.method public abstract windowFocusChanged(ZZ)V
.end method
