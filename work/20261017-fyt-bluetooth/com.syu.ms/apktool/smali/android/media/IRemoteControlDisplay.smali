.class public interface abstract Landroid/media/IRemoteControlDisplay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlDisplay$Stub;
    }
.end annotation


# virtual methods
.method public abstract setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setArtwork(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setCurrentClientId(ILandroid/app/PendingIntent;Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setMetadata(ILandroid/os/Bundle;)V
.end method

.method public abstract setPlaybackState(IIJJF)V
.end method

.method public abstract setTransportControlInfo(III)V
.end method
