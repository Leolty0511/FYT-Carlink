.class public interface abstract Landroid/hardware/display/IDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract connectWifiDisplay(Ljava/lang/String;)V
.end method

.method public abstract createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
.end method

.method public abstract disconnectWifiDisplay()V
.end method

.method public abstract forgetWifiDisplay(Ljava/lang/String;)V
.end method

.method public abstract getDisplayIds()[I
.end method

.method public abstract getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public abstract getStableDisplaySize()Landroid/graphics/Point;
.end method

.method public abstract getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
.end method

.method public abstract pauseWifiDisplay()V
.end method

.method public abstract registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
.end method

.method public abstract releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
.end method

.method public abstract renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestColorMode(II)V
.end method

.method public abstract resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
.end method

.method public abstract resumeWifiDisplay()V
.end method

.method public abstract setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
.end method

.method public abstract startWifiDisplayScan()V
.end method

.method public abstract stopWifiDisplayScan()V
.end method
