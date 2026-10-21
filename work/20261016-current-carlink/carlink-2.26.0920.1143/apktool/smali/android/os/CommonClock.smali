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
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    .line 15
    .line 16
    iput-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    iput-object v1, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Landroid/os/CommonClock$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Landroid/os/CommonClock$1;-><init>(Landroid/os/CommonClock;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 28
    .line 29
    iput-object v0, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 30
    .line 31
    const-string v0, "common_time.clock"

    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v1, Landroid/os/CommonTimeUtils;

    .line 48
    .line 49
    iget-object v2, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 50
    .line 51
    invoke-direct {v1, v2, v0}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 55
    .line 56
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 57
    .line 58
    iget-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Landroid/os/CommonClock;->registerTimelineChangeListener()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public static synthetic access$000(Landroid/os/CommonClock;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;
    .locals 0

    iget-object p0, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;
    .locals 0

    iget-object p0, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    return-object p0
.end method

.method public static create()Landroid/os/CommonClock;
    .locals 1

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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/os/CommonClock$TimelineChangedListener;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, p0, v3}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;Landroid/os/CommonClock$1;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 34
    .line 35
    const/16 v5, 0xc

    .line 36
    .line 37
    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v2

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    .line 54
    .line 55
    throw v2

    .line 56
    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    iput-object v3, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 65
    .line 66
    iput-object v3, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 67
    .line 68
    iput-object v3, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private throwOnDeadServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private unregisterTimelineChangeListener()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 26
    .line 27
    const/16 v4, 0xd

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v3

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 42
    .line 43
    throw v3

    .line 44
    :catch_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CommonClock;->release()V

    return-void
.end method

.method public getEstimatedError()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getMasterAddr()Ljava/net/InetSocketAddress;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getState()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getTime()J
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getTimelineId()J
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public release()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonClock;->unregisterTimelineChangeListener()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    iput-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 18
    .line 19
    return-void
.end method

.method public setServerDiedListener(Landroid/os/CommonClock$OnServerDiedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public setTimelineChangedListener(Landroid/os/CommonClock$OnTimelineChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method
