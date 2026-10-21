.class public interface abstract Landroid/media/tv/ITvInputSessionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChannelRetuned(Landroid/net/Uri;)V
.end method

.method public abstract onContentAllowed()V
.end method

.method public abstract onContentBlocked(Ljava/lang/String;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onLayoutSurface(IIII)V
.end method

.method public abstract onRecordingStopped(Landroid/net/Uri;)V
.end method

.method public abstract onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
.end method

.method public abstract onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onTimeShiftCurrentPositionChanged(J)V
.end method

.method public abstract onTimeShiftStartPositionChanged(J)V
.end method

.method public abstract onTimeShiftStatusChanged(I)V
.end method

.method public abstract onTrackSelected(ILjava/lang/String;)V
.end method

.method public abstract onTracksChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTuned(Landroid/net/Uri;)V
.end method

.method public abstract onVideoAvailable()V
.end method

.method public abstract onVideoUnavailable(I)V
.end method
