.class public interface abstract Landroid/media/session/ISession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession$Stub;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getCallingPackage()Ljava/lang/String;
.end method

.method public abstract getController()Landroid/media/session/ISessionController;
.end method

.method public abstract sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setCurrentVolume(I)V
.end method

.method public abstract setExtras(Landroid/os/Bundle;)V
.end method

.method public abstract setFlags(I)V
.end method

.method public abstract setLaunchPendingIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setMediaButtonReceiver(Landroid/app/PendingIntent;)V
.end method

.method public abstract setMetadata(Landroid/media/MediaMetadata;)V
.end method

.method public abstract setPlaybackState(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract setPlaybackToLocal(Landroid/media/AudioAttributes;)V
.end method

.method public abstract setPlaybackToRemote(II)V
.end method

.method public abstract setQueue(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract setQueueTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setRatingType(I)V
.end method
