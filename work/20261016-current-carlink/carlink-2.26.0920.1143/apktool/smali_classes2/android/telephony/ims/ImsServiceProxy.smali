.class public Landroid/telephony/ims/ImsServiceProxy;
.super Landroid/telephony/ims/ImsServiceProxyCompat;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/ims/feature/IRcsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;
    }
.end annotation


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field private mFeatureStatusCached:Ljava/lang/Integer;

.field private mIsAvailable:Z

.field private final mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

.field private final mLock:Ljava/lang/Object;

.field private mStatusCallback:Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

.field private final mSupportedFeature:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;-><init>(ILandroid/os/IBinder;)V

    const-string p1, "ImsServiceProxy"

    .line 9
    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    .line 11
    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 13
    new-instance p1, Landroid/telephony/ims/ImsServiceProxy$1;

    invoke-direct {p1, p0}, Landroid/telephony/ims/ImsServiceProxy$1;-><init>(Landroid/telephony/ims/ImsServiceProxy;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

    .line 14
    iput p2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsServiceProxyCompat;-><init>(ILandroid/os/IBinder;)V

    const-string p1, "ImsServiceProxy"

    .line 2
    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Landroid/telephony/ims/ImsServiceProxy$1;

    invoke-direct {p1, p0}, Landroid/telephony/ims/ImsServiceProxy$1;-><init>(Landroid/telephony/ims/ImsServiceProxy;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

    .line 7
    iput p3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/telephony/ims/ImsServiceProxy;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    return p0
.end method

.method public static synthetic access$102(Landroid/telephony/ims/ImsServiceProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/telephony/ims/ImsServiceProxy;)I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    return p0
.end method

.method public static synthetic access$302(Landroid/telephony/ims/ImsServiceProxy;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$400(Landroid/telephony/ims/ImsServiceProxy;)Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsServiceProxy;->mStatusCallback:Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    return-object p0
.end method

.method private getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;
    .locals 0

    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object p1

    return-object p1
.end method

.method private retrieveFeatureStatus()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 10
    .line 11
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/android/ims/internal/IImsServiceController;->getFeatureStatus(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1}, Lcom/android/ims/internal/IImsServiceController;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public checkServiceIsReady()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->isBinderReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 9
    .line 10
    const-string v1, "ImsServiceProxy is not ready to accept commands."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v4, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    move v5, p1

    .line 18
    move v6, p2

    .line 19
    move v7, p3

    .line 20
    invoke-interface/range {v2 .. v7}, Lcom/android/ims/internal/IImsServiceController;->createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v4, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    move v5, p1

    .line 18
    move-object v6, p2

    .line 19
    move-object v7, p3

    .line 20
    invoke-interface/range {v2 .. v7}, Lcom/android/ims/internal/IImsServiceController;->createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public endSession(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1}, Lcom/android/ims/internal/IImsServiceController;->endSession(III)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public getFeatureStatus()I
    .locals 4

    .line 1
    const-string v0, "getFeatureStatus - returning cached: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->isBinderAlive()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    monitor-exit v1

    .line 42
    return v0

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    invoke-direct {p0}, Landroid/telephony/ims/ImsServiceProxy;->retrieveFeatureStatus()Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    :try_start_1
    monitor-exit v2

    .line 54
    const/4 v0, 0x0

    .line 55
    return v0

    .line 56
    :cond_1
    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    .line 57
    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "getFeatureStatus - returning "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    return v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw v0

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    throw v0
.end method

.method public getListener()Lcom/android/ims/internal/IImsServiceFeatureListener;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getUtInterface(II)Lcom/android/ims/internal/IImsUt;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public isBinderAlive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinderReady()Z
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->getFeatureStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->isConnected(IIII)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    monitor-exit v0

    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public isOpened()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->isOpened(II)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1}, Lcom/android/ims/internal/IImsServiceController;->removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public setStatusCallback(Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mStatusCallback:Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->setUiTTYMode(IIILandroid/os/Message;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    monitor-exit v0

    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public turnOffIms()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->turnOffIms(II)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method public turnOnIms()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 14
    .line 15
    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->turnOnIms(II)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method
