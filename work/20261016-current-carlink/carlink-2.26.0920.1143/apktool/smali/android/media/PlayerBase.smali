.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard;,
        Landroid/media/PlayerBase$IPlayerWrapper;,
        Landroid/media/PlayerBase$IAppOpsCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_APP_OPS:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerBase"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field private mHasAppOpsPlayAudio:Z

.field private final mImplType:I

.field protected mLeftVolume:F

.field private final mLock:Ljava/lang/Object;

.field private mPanMultiplierL:F

.field private mPanMultiplierR:F

.field private mPlayerIId:I

.field protected mRightVolume:F

.field private mStartDelayMs:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 7
    .line 8
    iput v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 15
    .line 16
    new-instance v2, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 25
    .line 26
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 27
    .line 28
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 33
    .line 34
    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 35
    .line 36
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "Illegal null AudioAttributes"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public static synthetic access$000(Landroid/media/PlayerBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    return-void
.end method

.method public static deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "Use of stream types is deprecated for operations other than volume control"

    .line 6
    .line 7
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "See the documentation of "

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, " for what to use instead with android.media.AudioAttributes to qualify your playback use case"

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

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
    sput-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    .line 17
    .line 18
    return-object v0
.end method

.method private updateAppOpsPlayAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V

    .line 6
    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method


# virtual methods
.method public basePause()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 v1, 0x3

    .line 5
    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 6
    .line 7
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 12
    .line 13
    iget v3, p0, Landroid/media/PlayerBase;->mState:I

    .line 14
    .line 15
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->playerEvent(II)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "PlayerBase"

    .line 25
    .line 26
    const-string v2, "Error talking to audio service, PAUSED state will not be tracked"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public baseRegisterPlayer()V
    .locals 5

    .line 1
    const-string v0, "appops"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;-><init>(Landroid/media/PlayerBase;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 24
    .line 25
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 30
    .line 31
    const/16 v3, 0x1c

    .line 32
    .line 33
    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 39
    .line 40
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Landroid/media/PlayerBase$PlayerIdCard;

    .line 45
    .line 46
    iget v2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 47
    .line 48
    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 49
    .line 50
    new-instance v4, Landroid/media/PlayerBase$IPlayerWrapper;

    .line 51
    .line 52
    invoke-direct {v4, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2, v3, v4}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    goto :goto_1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    const-string v1, "PlayerBase"

    .line 65
    .line 66
    const-string v2, "Error talking to audio service, player will not be tracked"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    :goto_1
    iput v0, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 73
    .line 74
    return-void
.end method

.method public baseRelease()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 13
    .line 14
    invoke-interface {v1, v2}, Landroid/media/IAudioService;->releasePlayer(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "PlayerBase"

    .line 27
    .line 28
    const-string v2, "Error talking to audio service, the player will still be tracked"

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_3
    iget-object v0, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 40
    .line 41
    .line 42
    :catch_1
    :cond_1
    return-void
.end method

.method public baseSetAuxEffectSendLevel(F)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p0, v2, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public baseSetPan(F)V
    .locals 3

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    const/4 v2, 0x0

    .line 17
    cmpl-float v2, p1, v2

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    sub-float p1, v0, p1

    .line 22
    .line 23
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 24
    .line 25
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 29
    .line 30
    add-float/2addr p1, v0

    .line 31
    iput p1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 32
    .line 33
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 35
    .line 36
    iget v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Landroid/media/PlayerBase;->baseSetVolume(FF)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p1
.end method

.method public baseSetStartDelayMs(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public baseSetVolume(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 5
    .line 6
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 14
    .line 15
    mul-float/2addr p1, v0

    .line 16
    iget v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 17
    .line 18
    mul-float/2addr p2, v0

    .line 19
    invoke-virtual {p0, v1, p1, p2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public baseStart()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 v1, 0x2

    .line 5
    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 6
    .line 7
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 12
    .line 13
    iget v3, p0, Landroid/media/PlayerBase;->mState:I

    .line 14
    .line 15
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->playerEvent(II)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "PlayerBase"

    .line 25
    .line 26
    const-string v2, "Error talking to audio service, STARTED state will not be tracked"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_3
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v1, v2, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 43
    .line 44
    .line 45
    :cond_0
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_1
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    throw v1
.end method

.method public baseStop()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 v1, 0x4

    .line 5
    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 6
    .line 7
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 12
    .line 13
    iget v3, p0, Landroid/media/PlayerBase;->mState:I

    .line 14
    .line 15
    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->playerEvent(II)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "PlayerBase"

    .line 25
    .line 26
    const-string v2, "Error talking to audio service, STOPPED state will not be tracked"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "PlayerBase"

    .line 15
    .line 16
    const-string v2, "Error talking to audio service, STARTED state will not be tracked"

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_1
    iget-object v1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 25
    .line 26
    if-eq v1, p1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_1
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Illegal null AudioAttributes"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public getStartDelayMs()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public isRestricted_sync()Z
    .locals 5

    .line 1
    const-string v0, "PlayerBase"

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v1, v1, 0x40

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    iget-object v1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    and-int/2addr v1, v3

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v4, 0xd

    .line 37
    .line 38
    if-ne v1, v4, :cond_2

    .line 39
    .line 40
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    const-string v1, "Null AudioService in isRestricted_sync()"

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_1
    const-string v1, "Cannot access AudioService in isRestricted_sync()"

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    move v0, v2

    .line 61
    :goto_1
    if-eqz v0, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    return v3
.end method

.method public abstract playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method public abstract playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method public abstract playerPause()V
.end method

.method public abstract playerSetAuxEffectSendLevel(ZF)I
.end method

.method public abstract playerSetVolume(ZFF)V
.end method

.method public abstract playerStart()V
.end method

.method public abstract playerStop()V
.end method

.method public setStartDelayMs(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    return-void
.end method

.method public updateAppOpsPlayAudio_sync(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    iget-object v3, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/16 v7, 0x1c

    .line 24
    .line 25
    invoke-interface {v3, v7, v4, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v2

    .line 31
    :goto_0
    if-nez v3, :cond_1

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v3, v1

    .line 36
    :goto_1
    iput-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catch_0
    iput-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 40
    .line 41
    :goto_2
    :try_start_1
    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 42
    .line 43
    if-ne v0, v3, :cond_2

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    :cond_2
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget v0, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 52
    .line 53
    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 54
    .line 55
    invoke-interface {p1, v0, v3}, Landroid/media/IAudioService;->playerHasOpPlayAudio(IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 65
    .line 66
    iget v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 67
    .line 68
    mul-float/2addr p1, v0

    .line 69
    iget v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 70
    .line 71
    iget v2, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 72
    .line 73
    mul-float/2addr v0, v2

    .line 74
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 75
    .line 76
    .line 77
    iget p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 78
    .line 79
    invoke-virtual {p0, v1, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, v2, p1, p1}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    :catch_1
    :cond_4
    :goto_3
    return-void
.end method
