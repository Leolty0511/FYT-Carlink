.class public interface abstract Landroid/media/session/ISessionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAdjustVolume(I)V
.end method

.method public abstract onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onFastForward()V
.end method

.method public abstract onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
.end method

.method public abstract onNext()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepare()V
.end method

.method public abstract onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract onPrevious()V
.end method

.method public abstract onRate(Landroid/media/Rating;)V
.end method

.method public abstract onRewind()V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onSetVolumeTo(I)V
.end method

.method public abstract onSkipToTrack(J)V
.end method

.method public abstract onStop()V
.end method
