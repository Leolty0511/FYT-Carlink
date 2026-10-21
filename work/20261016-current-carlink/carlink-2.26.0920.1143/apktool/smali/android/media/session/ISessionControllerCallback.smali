.class public interface abstract Landroid/media/session/ISessionControllerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionControllerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onExtrasChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onMetadataChanged(Landroid/media/MediaMetadata;)V
.end method

.method public abstract onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract onQueueTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract onSessionDestroyed()V
.end method

.method public abstract onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
.end method
