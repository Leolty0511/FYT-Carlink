.class public abstract synthetic Landroid/media/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/media/AudioRouting;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/media/AudioTrack;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroid/media/AudioTrack$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioTrack;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
