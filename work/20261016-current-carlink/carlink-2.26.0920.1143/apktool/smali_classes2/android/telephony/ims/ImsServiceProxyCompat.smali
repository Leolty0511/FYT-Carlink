.class public Landroid/telephony/ims/ImsServiceProxyCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/ims/feature/IMMTelFeature;


# static fields
.field private static final SERVICE_ID:I = 0x1


# instance fields
.field protected mBinder:Landroid/os/IBinder;

.field protected final mSlotId:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method

.method private getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .locals 0

    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsService;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public checkBinderConnection()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->isBinderAlive()Z

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
    const-string v1, "ImsServiceProxy is not available for that feature."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public endSession(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsService;->close(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getFeatureStatus()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

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

.method public isConnected(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public isOpened()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public turnOffIms()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public turnOnIms()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
