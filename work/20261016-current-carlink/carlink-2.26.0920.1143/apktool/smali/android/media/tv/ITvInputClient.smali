.class public interface abstract Landroid/media/tv/ITvInputClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChannelRetuned(Landroid/net/Uri;I)V
.end method

.method public abstract onContentAllowed(I)V
.end method

.method public abstract onContentBlocked(Ljava/lang/String;I)V
.end method

.method public abstract onError(II)V
.end method

.method public abstract onLayoutSurface(IIIII)V
.end method

.method public abstract onRecordingStopped(Landroid/net/Uri;I)V
.end method

.method public abstract onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
.end method

.method public abstract onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract onSessionReleased(I)V
.end method

.method public abstract onTimeShiftCurrentPositionChanged(JI)V
.end method

.method public abstract onTimeShiftStartPositionChanged(JI)V
.end method

.method public abstract onTimeShiftStatusChanged(II)V
.end method

.method public abstract onTrackSelected(ILjava/lang/String;I)V
.end method

.method public abstract onTracksChanged(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onTuned(ILandroid/net/Uri;)V
.end method

.method public abstract onVideoAvailable(I)V
.end method

.method public abstract onVideoUnavailable(II)V
.end method
