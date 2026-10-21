.class public final Landroid/net/IpSecTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecTransform$Builder;,
        Landroid/net/IpSecTransform$EncapType;,
        Landroid/net/IpSecTransform$TransformDirection;
    }
.end annotation


# static fields
.field public static final DIRECTION_IN:I = 0x0

.field public static final DIRECTION_OUT:I = 0x1

.field public static final ENCAP_ESPINUDP:I = 0x2

.field public static final ENCAP_ESPINUDP_NON_IKE:I = 0x1

.field public static final ENCAP_NONE:I = 0x0

.field private static final MODE_TRANSPORT:I = 0x1

.field private static final MODE_TUNNEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpSecTransform"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mContext:Landroid/content/Context;

.field private mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

.field private mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private mKeepaliveStatus:I

.field private mKeepaliveSyncLock:Ljava/lang/Object;

.field private mResourceId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/net/IpSecTransform$1;

    invoke-direct {v0, p0}, Landroid/net/IpSecTransform$1;-><init>(Landroid/net/IpSecTransform;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 7
    iput-object p1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/net/IpSecTransform;I)I
    .locals 0

    iput p1, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I

    return p1
.end method

.method public static synthetic access$300(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;
    .locals 0

    invoke-direct {p0}, Landroid/net/IpSecTransform;->activate()Landroid/net/IpSecTransform;

    move-result-object p0

    return-object p0
.end method

.method private activate()Landroid/net/IpSecTransform;
    .locals 4

    .line 1
    const-string v0, "Added Transform with Id "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 9
    .line 10
    new-instance v3, Landroid/os/Binder;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2, v3}, Landroid/net/IIpSecService;->createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, v1, Landroid/net/IpSecTransformResponse;->status:I

    .line 20
    .line 21
    invoke-direct {p0, v2}, Landroid/net/IpSecTransform;->checkResultStatusAndThrow(I)V

    .line 22
    .line 23
    .line 24
    iget v1, v1, Landroid/net/IpSecTransformResponse;->resourceId:I

    .line 25
    .line 26
    iput v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 27
    .line 28
    iget-object v1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/net/IpSecTransform;->startKeepalive(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "IpSecTransform"

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 53
    .line 54
    const-string v1, "build"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_1
    monitor-exit p0

    .line 60
    return-object p0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    throw v0

    .line 69
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw v0
.end method

.method private checkResultStatusAndThrow(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "IpSecTransform"

    .line 11
    .line 12
    const-string v1, "Attempting to use an SPI that was somehow not reserved"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "Failed to Create a Transform with status code "

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    new-instance p1, Landroid/net/IpSecManager$ResourceUnavailableException;

    .line 30
    .line 31
    const-string v0, "Failed to allocate a new IpSecTransform"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_2
    return-void
.end method

.method private getIpSecService()Landroid/net/IIpSecService;
    .locals 2

    .line 1
    const-string/jumbo v0, "ipsec"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/IIpSecService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 16
    .line 17
    const-string v1, "Failed to connect to IpSecService"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Removing Transform with Id "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 9
    .line 10
    const-string v2, "IpSecTransform"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 20
    .line 21
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 31
    .line 32
    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->deleteTransportModeTransform(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->stopKeepalive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    iput v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 39
    .line 40
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 41
    .line 42
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    iput v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 55
    .line 56
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 57
    .line 58
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getConfig()Landroid/net/IpSecConfig;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return v0
.end method

.method public startKeepalive(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getNattKeepaliveInterval()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    iget-object p1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string p1, "IpSecTransform"

    .line 24
    .line 25
    const-string v0, "Keepalive already started for this IpSecTransform."

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getNattKeepaliveInterval()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v3, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 47
    .line 48
    iget-object v4, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/16 v5, 0x1234

    .line 55
    .line 56
    iget-object v6, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :try_start_1
    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    .line 69
    .line 70
    const-wide/16 v1, 0x7d0

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    iget p1, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I

    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 82
    .line 83
    const-string v0, "Packet Keepalive cannot be started"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    throw v0
.end method

.method public stopKeepalive()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :try_start_1
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    .line 17
    .line 18
    const-wide/16 v2, 0x7d0

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw v1
.end method
