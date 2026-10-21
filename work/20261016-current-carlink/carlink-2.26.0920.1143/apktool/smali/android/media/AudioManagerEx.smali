.class public Landroid/media/AudioManagerEx;
.super Landroid/media/AudioManager;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "AudioManagerEx"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    .line 16
    .line 17
    sget-object p1, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "new AudioManagerEx"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "audio"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioService;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public getSafeMediaVolumeEnabled()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getSafeMediaVolumeEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/media/AudioManagerEx;->getService()Landroid/media/IAudioService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getSafeMediaVolumeEnabled(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    sget-object v1, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Dead object in getSafeMediaVolumeEnabled"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public setFmSpeakerOn(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/AudioManagerEx;->getService()Landroid/media/IAudioService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x7

    .line 14
    invoke-interface {v0, v3, p1, v1, v2}, Landroid/media/IAudioService;->setForceUseSpeaker(IZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    sget-object v0, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Dead object in setFmSpeakerOn "

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public setMediaSpeakerOn(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/AudioManagerEx;->getService()Landroid/media/IAudioService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-interface {v0, v3, p1, v1, v2}, Landroid/media/IAudioService;->setForceUseSpeaker(IZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    sget-object v0, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Dead object in setMediaSpeakerOn "

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
