.class public interface abstract Landroid/media/IRemoteControlClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
.end method

.method public abstract informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
.end method

.method public abstract onInformationRequested(II)V
.end method

.method public abstract plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
.end method

.method public abstract setCurrentClientGenerationId(I)V
.end method

.method public abstract setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
.end method

.method public abstract unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
.end method

.method public abstract updateMetadata(IILandroid/media/Rating;)V
.end method
