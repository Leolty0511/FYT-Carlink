.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field mActivelyScanningWifiDisplays:Z

.field final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final mAudioService:Landroid/media/IAudioService;

.field mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCanConfigureWifiDisplays:Z

.field final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/media/IMediaRouterClient;

.field mClientState:Landroid/media/MediaRouterClientState;

.field final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mCurrentUserId:I

.field mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field mDiscoverRequestActiveScan:Z

.field mDiscoveryRequestRouteTypes:I

.field final mDisplayService:Landroid/hardware/display/DisplayManager;

.field final mHandler:Landroid/os/Handler;

.field final mMediaRouterService:Landroid/media/IMediaRouterService;

.field final mPackageName:Ljava/lang/String;

.field mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final mResources:Landroid/content/res/Resources;

.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Landroid/media/AudioRoutesInfo;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    iput v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 34
    .line 35
    new-instance v0, Landroid/media/MediaRouter$Static$1;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 53
    .line 54
    new-instance v0, Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    const-string v0, "audio"

    .line 66
    .line 67
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 76
    .line 77
    const-string v0, "display"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 84
    .line 85
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 86
    .line 87
    const-string/jumbo v0, "media_router"

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 99
    .line 100
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    .line 101
    .line 102
    const v1, 0x1040197

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    .line 114
    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const-string v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 124
    .line 125
    invoke-virtual {p1, v4, v0, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_0

    .line 130
    .line 131
    move v3, v1

    .line 132
    :cond_0
    iput-boolean v3, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    .line 133
    .line 134
    return-void
.end method

.method private updatePresentationDisplays(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, p1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public getAllPresentationDisplays()[Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 7
    .line 8
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    const-string v2, "MediaRouter"

    .line 18
    .line 19
    const-string v3, "Error querying Bluetooth A2DP state"

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public isPlaybackActive()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Landroid/media/IMediaRouterService;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "MediaRouter"

    .line 14
    .line 15
    const-string v2, "Unable to retrieve playback active state."

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 19
    .line 20
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 21
    .line 22
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 23
    .line 24
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 25
    .line 26
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 27
    .line 28
    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 31
    .line 32
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 35
    .line 36
    .line 37
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 38
    .line 39
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 40
    .line 41
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 42
    .line 43
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 44
    .line 45
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 46
    .line 47
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 48
    .line 49
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 50
    .line 51
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 52
    .line 53
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 54
    .line 55
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 56
    .line 57
    iget p1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 58
    .line 59
    iput p1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    return-void
.end method

.method public publishClientDiscoveryRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 6
    .line 7
    iget v2, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 10
    .line 11
    invoke-interface {v1, v0, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "MediaRouter"

    .line 17
    .line 18
    const-string v2, "Unable to publish media router client discovery request."

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public publishClientSelectedRoute(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const-string v0, "MediaRouter"

    .line 21
    .line 22
    const-string v1, "Unable to publish media router client selected route."

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_1
    return-void
.end method

.method public rebindAsUser(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 12
    .line 13
    const-string v1, "MediaRouter"

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 18
    .line 19
    invoke-interface {v2, v0}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v2, "Unable to unregister media router client."

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 31
    .line 32
    :cond_1
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 33
    .line 34
    :try_start_1
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 40
    .line 41
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p1

    .line 50
    const-string v0, "Unable to register media router client."

    .line 51
    .line 52
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 10
    .line 11
    invoke-interface {v1, v0, p1, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string p2, "MediaRouter"

    .line 17
    .line 18
    const-string v0, "Unable to request volume change."

    .line 19
    .line 20
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 10
    .line 11
    invoke-interface {v1, v0, p1, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string p2, "MediaRouter"

    .line 17
    .line 18
    const-string v0, "Unable to request volume change."

    .line 19
    .line 20
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startMonitoringRoutes(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    const v1, 0x1040198

    .line 11
    .line 12
    .line 13
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 19
    .line 20
    .line 21
    const-string v0, "audio"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/media/AudioManager;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    .line 55
    .line 56
    invoke-direct {v0}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    .line 60
    .line 61
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 62
    .line 63
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/media/MediaRouter$VolumeChangeReceiver;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    .line 75
    .line 76
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 77
    .line 78
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 85
    .line 86
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 92
    .line 93
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 94
    .line 95
    invoke-interface {p1, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    if-eqz p1, :cond_1

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 114
    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method public updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 4
    .line 5
    iget v2, v1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v2, :cond_5

    .line 10
    .line 11
    iput v0, v1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 12
    .line 13
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 14
    .line 15
    and-int/lit8 v1, v0, 0x2

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    and-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 v1, v0, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const v0, 0x1040199

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    and-int/lit8 v0, v0, 0x8

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const v0, 0x104019c

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const v0, 0x1040198

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    const v0, 0x104019a

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 48
    .line 49
    iput v0, v1, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 50
    .line 51
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 52
    .line 53
    .line 54
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 55
    .line 56
    and-int/lit8 v0, v0, 0x13

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    move v0, v3

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    move v0, v4

    .line 63
    :goto_2
    move v1, v3

    .line 64
    goto :goto_3

    .line 65
    :cond_5
    move v0, v4

    .line 66
    move v1, v0

    .line 67
    :goto_3
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 68
    .line 69
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 70
    .line 71
    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 72
    .line 73
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_9

    .line 78
    .line 79
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 80
    .line 81
    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 82
    .line 83
    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 84
    .line 85
    if-eqz v1, :cond_7

    .line 86
    .line 87
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    .line 92
    .line 93
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 99
    .line 100
    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 101
    .line 102
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 103
    .line 104
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 105
    .line 106
    const v2, 0x10400df

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 114
    .line 115
    iput v3, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 116
    .line 117
    const/4 v1, 0x3

    .line 118
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 119
    .line 120
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 121
    .line 122
    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 127
    .line 128
    invoke-static {v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    invoke-static {v0}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 141
    .line 142
    :cond_8
    :goto_4
    move v1, v3

    .line 143
    move v0, v4

    .line 144
    :cond_9
    if-eqz v1, :cond_d

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "Audio routes updated: "

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, ", a2dp="

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v1, "MediaRouter"

    .line 173
    .line 174
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 182
    .line 183
    if-eq p1, v1, :cond_a

    .line 184
    .line 185
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 186
    .line 187
    if-ne p1, v1, :cond_d

    .line 188
    .line 189
    :cond_a
    if-nez v0, :cond_c

    .line 190
    .line 191
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 192
    .line 193
    if-nez p1, :cond_b

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_b
    invoke-static {v3, p1, v4}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_c
    :goto_5
    iget-object p1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 201
    .line 202
    invoke-static {v3, p1, v4}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 203
    .line 204
    .line 205
    :cond_d
    :goto_6
    return-void
.end method

.method public updateClientState()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    .line 3
    .line 4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 9
    .line 10
    invoke-interface {v2, v1}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    const-string v2, "MediaRouter"

    .line 19
    .line 20
    const-string v3, "Unable to retrieve media router client state."

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, v1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v2, v1

    .line 40
    :goto_1
    move v3, v1

    .line 41
    :goto_2
    if-ge v3, v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 48
    .line 49
    iget-object v5, v4, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, v4}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {p0, v5, v4}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    .line 66
    .line 67
    .line 68
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_4
    add-int/lit8 v4, v3, -0x1

    .line 78
    .line 79
    if-lez v3, :cond_8

    .line 80
    .line 81
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 88
    .line 89
    iget-object v5, v3, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    move v6, v1

    .line 94
    :goto_5
    if-ge v6, v2, :cond_6

    .line 95
    .line 96
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 101
    .line 102
    iget-object v7, v7, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_5

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    invoke-static {v3}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_6
    move v3, v4

    .line 118
    goto :goto_4

    .line 119
    :cond_8
    return-void
.end method

.method public updateDiscoveryRequest()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    move v6, v5

    .line 13
    :goto_0
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x1

    .line 15
    if-ge v2, v0, :cond_4

    .line 16
    .line 17
    iget-object v9, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v9, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    check-cast v9, Landroid/media/MediaRouter$CallbackInfo;

    .line 24
    .line 25
    iget v10, v9, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    .line 26
    .line 27
    and-int/lit8 v11, v10, 0x5

    .line 28
    .line 29
    if-eqz v11, :cond_0

    .line 30
    .line 31
    iget v11, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 32
    .line 33
    :goto_1
    or-int/2addr v3, v11

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    and-int/lit8 v11, v10, 0x8

    .line 36
    .line 37
    if-eqz v11, :cond_1

    .line 38
    .line 39
    iget v11, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 40
    .line 41
    or-int/2addr v5, v11

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget v11, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :goto_2
    and-int/lit8 v10, v10, 0x1

    .line 47
    .line 48
    if-eqz v10, :cond_3

    .line 49
    .line 50
    iget v4, v9, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 51
    .line 52
    and-int/2addr v4, v7

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    move v4, v8

    .line 56
    move v6, v4

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    move v4, v8

    .line 59
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    if-nez v3, :cond_5

    .line 63
    .line 64
    if-eqz v4, :cond_6

    .line 65
    .line 66
    :cond_5
    or-int/2addr v3, v5

    .line 67
    :cond_6
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    .line 68
    .line 69
    if-eqz v0, :cond_9

    .line 70
    .line 71
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    invoke-virtual {v0, v7}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    move v6, v1

    .line 82
    :cond_7
    if-eqz v6, :cond_8

    .line 83
    .line 84
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 85
    .line 86
    if-nez v0, :cond_9

    .line 87
    .line 88
    iput-boolean v8, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 89
    .line 90
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_8
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 97
    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    iput-boolean v1, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 101
    .line 102
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    .line 105
    .line 106
    .line 107
    :cond_9
    :goto_4
    iget v0, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 108
    .line 109
    if-ne v3, v0, :cond_a

    .line 110
    .line 111
    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 112
    .line 113
    if-eq v4, v0, :cond_b

    .line 114
    .line 115
    :cond_a
    iput v3, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 116
    .line 117
    iput-boolean v4, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 120
    .line 121
    .line 122
    :cond_b
    return-void
.end method

.method public updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v1, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    iget-object v0, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 33
    .line 34
    move v0, v1

    .line 35
    :cond_1
    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 36
    .line 37
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 38
    .line 39
    if-eq v3, v4, :cond_2

    .line 40
    .line 41
    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 42
    .line 43
    move v0, v1

    .line 44
    :cond_2
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 45
    .line 46
    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 47
    .line 48
    if-eq v4, v5, :cond_3

    .line 49
    .line 50
    iput-boolean v5, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 51
    .line 52
    move v0, v1

    .line 53
    :cond_3
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->access$000(Landroid/media/MediaRouter$RouteInfo;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 58
    .line 59
    if-eq v4, v5, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 62
    .line 63
    .line 64
    move v0, v1

    .line 65
    :cond_4
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 66
    .line 67
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 68
    .line 69
    if-eq v4, v5, :cond_5

    .line 70
    .line 71
    iput v5, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 72
    .line 73
    move v0, v1

    .line 74
    :cond_5
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 75
    .line 76
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 77
    .line 78
    if-eq v4, v5, :cond_6

    .line 79
    .line 80
    iput v5, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 81
    .line 82
    move v0, v1

    .line 83
    :cond_6
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 84
    .line 85
    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 86
    .line 87
    if-eq v4, v5, :cond_7

    .line 88
    .line 89
    iput v5, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 90
    .line 91
    move v0, v1

    .line 92
    move v4, v0

    .line 93
    goto :goto_1

    .line 94
    :cond_7
    move v4, v2

    .line 95
    :goto_1
    iget v5, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 96
    .line 97
    iget v6, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 98
    .line 99
    if-eq v5, v6, :cond_8

    .line 100
    .line 101
    iput v6, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 102
    .line 103
    move v0, v1

    .line 104
    move v4, v0

    .line 105
    :cond_8
    iget v5, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 106
    .line 107
    iget v6, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 108
    .line 109
    if-eq v5, v6, :cond_9

    .line 110
    .line 111
    iput v6, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 112
    .line 113
    move v0, v1

    .line 114
    move v4, v0

    .line 115
    :cond_9
    iget v5, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 116
    .line 117
    iget p2, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 118
    .line 119
    if-eq v5, p2, :cond_a

    .line 120
    .line 121
    iput p2, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 124
    .line 125
    .line 126
    move v2, v1

    .line 127
    goto :goto_2

    .line 128
    :cond_a
    move v1, v0

    .line 129
    :goto_2
    if-eqz v1, :cond_b

    .line 130
    .line 131
    invoke-static {p1, v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 132
    .line 133
    .line 134
    :cond_b
    if-eqz v4, :cond_c

    .line 135
    .line 136
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 137
    .line 138
    .line 139
    :cond_c
    if-eqz v2, :cond_d

    .line 140
    .line 141
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 142
    .line 143
    .line 144
    :cond_d
    return-void
.end method
