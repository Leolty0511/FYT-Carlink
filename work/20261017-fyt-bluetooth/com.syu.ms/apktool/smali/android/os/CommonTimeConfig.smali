.class public Landroid/os/CommonTimeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonTimeConfig$OnServerDiedListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final INVALID_GROUP_ID:J = -0x1L

.field private static final METHOD_FORCE_NETWORKLESS_MASTER_MODE:I = 0x11

.field private static final METHOD_GET_AUTO_DISABLE:I = 0xf

.field private static final METHOD_GET_CLIENT_SYNC_INTERVAL:I = 0xb

.field private static final METHOD_GET_INTERFACE_BINDING:I = 0x7

.field private static final METHOD_GET_MASTER_ANNOUNCE_INTERVAL:I = 0x9

.field private static final METHOD_GET_MASTER_ELECTION_ENDPOINT:I = 0x3

.field private static final METHOD_GET_MASTER_ELECTION_GROUP_ID:I = 0x5

.field private static final METHOD_GET_MASTER_ELECTION_PRIORITY:I = 0x1

.field private static final METHOD_GET_PANIC_THRESHOLD:I = 0xd

.field private static final METHOD_SET_AUTO_DISABLE:I = 0x10

.field private static final METHOD_SET_CLIENT_SYNC_INTERVAL:I = 0xc

.field private static final METHOD_SET_INTERFACE_BINDING:I = 0x8

.field private static final METHOD_SET_MASTER_ANNOUNCE_INTERVAL:I = 0xa

.field private static final METHOD_SET_MASTER_ELECTION_ENDPOINT:I = 0x4

.field private static final METHOD_SET_MASTER_ELECTION_GROUP_ID:I = 0x6

.field private static final METHOD_SET_MASTER_ELECTION_PRIORITY:I = 0x2

.field private static final METHOD_SET_PANIC_THRESHOLD:I = 0xe

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.config"

.field public static final SUCCESS:I


# instance fields
.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mUtils:Landroid/os/CommonTimeUtils;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 4
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/os/CommonTimeConfig$1;

    invoke-direct {v0, p0}, Landroid/os/CommonTimeConfig$1;-><init>(Landroid/os/CommonTimeConfig;)V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const-string v0, "common_time.config"

    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 9
    new-instance v1, Landroid/os/CommonTimeUtils;

    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    invoke-direct {v1, v2, v0}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public static synthetic access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    return-object p0
.end method

.method private checkDeadServer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static create()Landroid/os/CommonTimeConfig;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/CommonTimeConfig;

    invoke-direct {v0}, Landroid/os/CommonTimeConfig;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private throwOnDeadServer()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/CommonTimeConfig;->release()V

    return-void
.end method

.method public forceNetworklessMasterMode()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :catch_0
    const/4 v2, -0x7

    goto :goto_0
.end method

.method public getAutoDisable()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getClientSyncInterval()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getInterfaceBinding()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public getMasterAnnounceInterval()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getMasterElectionEndpoint()Ljava/net/InetSocketAddress;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMasterElectionGroupId()J
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasterElectionPriority()B
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getPanicThreshold()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 4
    :cond_0
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    return-void
.end method

.method public setAutoDisable(Z)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result p1

    return p1
.end method

.method public setClientSyncInterval(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result p1

    return p1
.end method

.method public setMasterAnnounceInterval(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result p1

    return p1
.end method

.method public setMasterElectionEndpoint(Ljava/net/InetSocketAddress;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetSockaddr(ILjava/net/InetSocketAddress;)I

    move-result p1

    return p1
.end method

.method public setMasterElectionGroupId(J)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/CommonTimeUtils;->transactSetLong(IJ)I

    move-result p1

    return p1
.end method

.method public setMasterElectionPriority(B)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result p1

    return p1
.end method

.method public setNetworkBinding(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x8

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetString(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPanicThreshold(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result p1

    return p1
.end method

.method public setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

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
