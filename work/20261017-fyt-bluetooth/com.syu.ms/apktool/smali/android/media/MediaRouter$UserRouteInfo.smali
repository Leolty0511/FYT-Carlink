.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation


# instance fields
.field public mRcc:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    const/high16 p1, 0x800000

    .line 2
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return-void
.end method

.method private setPlaybackInfoOnRcc(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    :cond_0
    return-void
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x3

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 3
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x2

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 4
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x4

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 5
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x5

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 6
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 7
    :try_start_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Error registering remote volume observer"

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    const-string p1, "MediaRouter"

    const-string v0, "Cannot requestSetVolume on user route - no volume callback set"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    :cond_1
    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    const-string p1, "MediaRouter"

    const-string v0, "Cannot requestChangeVolume on user route - no volumec callback set"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    :cond_1
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setName(I)V
    .locals 0

    .line 3
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 2
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 5
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 6
    iget-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    :cond_0
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    :cond_0
    return-void
.end method
