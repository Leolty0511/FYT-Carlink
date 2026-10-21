.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 3
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$1;)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    :catch_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object p0
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    :catch_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    return-object v1
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    return-object v1
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    return-object v1
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    return-object v1
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getState()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    return v1
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    return-object v1
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public isAlive()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :pswitch_0
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInCall()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    return v1
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    return v1
.end method

.method public merge()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public reject(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public terminate(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ImsCallSession objId:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " state:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " callId:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "]"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method
