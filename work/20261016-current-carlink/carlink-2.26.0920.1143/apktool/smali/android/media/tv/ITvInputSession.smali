.class public interface abstract Landroid/media/tv/ITvInputSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract dispatchSurfaceChanged(III)V
.end method

.method public abstract relayoutOverlayView(Landroid/graphics/Rect;)V
.end method

.method public abstract release()V
.end method

.method public abstract removeOverlayView()V
.end method

.method public abstract selectTrack(ILjava/lang/String;)V
.end method

.method public abstract setCaptionEnabled(Z)V
.end method

.method public abstract setMain(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract startRecording(Landroid/net/Uri;)V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract timeShiftEnablePositionTracking(Z)V
.end method

.method public abstract timeShiftPause()V
.end method

.method public abstract timeShiftPlay(Landroid/net/Uri;)V
.end method

.method public abstract timeShiftResume()V
.end method

.method public abstract timeShiftSeekTo(J)V
.end method

.method public abstract timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public abstract tune(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract unblockContent(Ljava/lang/String;)V
.end method
