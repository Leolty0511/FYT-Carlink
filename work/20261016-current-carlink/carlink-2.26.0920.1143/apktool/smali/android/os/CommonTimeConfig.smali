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
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Landroid/os/CommonTimeConfig$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/os/CommonTimeConfig$1;-><init>(Landroid/os/CommonTimeConfig;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 26
    .line 27
    const-string v0, "common_time.config"

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v1, Landroid/os/CommonTimeUtils;

    .line 44
    .line 45
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 51
    .line 52
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 53
    .line 54
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public static synthetic access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;
    .locals 0

    iget-object p0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    return-object p0
.end method

.method private checkDeadServer()Z
    .locals 1

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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CommonTimeConfig;->release()V

    return-void
.end method

.method public forceNetworklessMasterMode()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 15
    .line 16
    const/16 v3, 0x11

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :catchall_0
    move-exception v2

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    throw v2

    .line 41
    :catch_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    .line 46
    .line 47
    const/4 v0, -0x7

    .line 48
    return v0
.end method

.method public getAutoDisable()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    return v2
.end method

.method public getClientSyncInterval()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0xb

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

.method public getInterfaceBinding()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetString(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_0
    return-object v0
.end method

.method public getMasterAnnounceInterval()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0x9

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

.method public getMasterElectionEndpoint()Ljava/net/InetSocketAddress;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getMasterElectionGroupId()J
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/4 v1, 0x5

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

.method public getMasterElectionPriority()B
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-byte v0, v0

    .line 13
    return v0
.end method

.method public getPanicThreshold()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 5
    .line 6
    const/16 v1, 0xd

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

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 15
    .line 16
    return-void
.end method

.method public setAutoDisable(Z)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public setClientSyncInterval(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public setMasterAnnounceInterval(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public setMasterElectionEndpoint(Ljava/net/InetSocketAddress;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetSockaddr(ILjava/net/InetSocketAddress;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setMasterElectionGroupId(J)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/CommonTimeUtils;->transactSetLong(IJ)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setMasterElectionPriority(B)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setNetworkBinding(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetString(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public setPanicThreshold(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

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
