.class public Landroid/net/lowpan/LowpanCommissioningSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;,
        Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    }
.end annotation


# instance fields
.field private final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

.field private volatile mIsClosed:Z

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 11
    .line 12
    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 16
    .line 17
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 18
    .line 19
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 20
    .line 21
    iput-object p3, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    new-instance p2, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1
.end method

.method public static synthetic a(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lambda$lockedCleanup$0()V

    return-void
.end method

.method public static synthetic access$100(Landroid/net/lowpan/LowpanCommissioningSession;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    return p0
.end method

.method public static synthetic access$200(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V

    return-void
.end method

.method public static synthetic access$300(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    return-object p0
.end method

.method private synthetic lambda$lockedCleanup$0()V
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onClosed()V

    return-void
.end method

.method private lockedCleanup()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0

    .line 19
    :catch_1
    :goto_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v1, Landroid/net/lowpan/h;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {v1, p0, v2}, Landroid/net/lowpan/h;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->closeCommissioningSession()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :catch_1
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public getBeaconInfo()Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method public sendToCommissioner([B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->sendToCommissioner([B)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    throw p1

    .line 17
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanCommissioningSession$Callback;Landroid/os/Handler;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    :goto_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :cond_2
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method
