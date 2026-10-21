.class public Landroid/os/CommonClock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonClock$TimelineChangedListener;,
        Landroid/os/CommonClock$OnServerDiedListener;,
        Landroid/os/CommonClock$OnTimelineChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_ESTIMATE_UNKNOWN:I = 0x7fffffff

.field public static final INVALID_TIMELINE_ID:J = 0x0L

.field private static final METHOD_CBK_ON_TIMELINE_CHANGED:I = 0x1

.field private static final METHOD_COMMON_TIME_TO_LOCAL_TIME:I = 0x2

.field private static final METHOD_GET_COMMON_FREQ:I = 0x5

.field private static final METHOD_GET_COMMON_TIME:I = 0x4

.field private static final METHOD_GET_ESTIMATED_ERROR:I = 0x8

.field private static final METHOD_GET_LOCAL_FREQ:I = 0x7

.field private static final METHOD_GET_LOCAL_TIME:I = 0x6

.field private static final METHOD_GET_MASTER_ADDRESS:I = 0xb

.field private static final METHOD_GET_STATE:I = 0xa

.field private static final METHOD_GET_TIMELINE_ID:I = 0x9

.field private static final METHOD_IS_COMMON_TIME_VALID:I = 0x1

.field private static final METHOD_LOCAL_TIME_TO_COMMON_TIME:I = 0x3

.field private static final METHOD_REGISTER_LISTENER:I = 0xc

.field private static final METHOD_UNREGISTER_LISTENER:I = 0xd

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.clock"

.field public static final STATE_CLIENT:I = 0x1

.field public static final STATE_INITIAL:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_MASTER:I = 0x2

.field public static final STATE_RONIN:I = 0x3

.field public static final STATE_WAIT_FOR_ELECTION:I = 0x4

.field public static final TIME_NOT_SYNCED:J = -0x1L


# instance fields
.field private mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

.field private mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

.field private mUtils:Landroid/os/CommonTimeUtils;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 4
    iput-object v0, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    .line 5
    iput-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    const-string v1, ""

    .line 6
    iput-object v1, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 7
    new-instance v1, Landroid/os/CommonClock$1;

    invoke-direct {v1, p0}, Landroid/os/CommonClock$1;-><init>(Landroid/os/CommonClock;)V

    iput-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 8
    iput-object v0, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    const-string v0, "common_time.clock"

    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 11
    new-instance v1, Landroid/os/CommonTimeUtils;

    iget-object v2, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    invoke-direct {v1, v2, v0}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 12
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 13
    invoke-direct {p0}, Landroid/os/CommonClock;->registerTimelineChangeListener()V

    return-void

    .line 14
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public static synthetic access$000(Landroid/os/CommonClock;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    return-object p0
.end method

.method public static create()Landroid/os/CommonClock;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/CommonClock;

    invoke-direct {v0}, Landroid/os/CommonClock;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private registerTimelineChangeListener()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/os/CommonClock$TimelineChangedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;Landroid/os/CommonClock$1;)V

    iput-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v4, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 11
    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_2

    .line 13
    iput-object v3, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 14
    iput-object v3, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 15
    iput-object v3, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    :cond_2
    return-void
.end method

.method private throwOnDeadServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private unregisterTimelineChangeListener()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6
    iget-object v3, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9
    iput-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    throw v3

    .line 10
    :catch_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12
    iput-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/CommonClock;->release()V

    return-void
.end method

.method public getEstimatedError()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x8

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getMasterAddr()Ljava/net/InetSocketAddress;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimelineId()J
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x9

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->unregisterTimelineChangeListener()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iput-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 5
    :cond_0
    iput-object v1, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    return-void
.end method

.method public setServerDiedListener(Landroid/os/CommonClock$OnServerDiedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimelineChangedListener(Landroid/os/CommonClock$OnTimelineChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
