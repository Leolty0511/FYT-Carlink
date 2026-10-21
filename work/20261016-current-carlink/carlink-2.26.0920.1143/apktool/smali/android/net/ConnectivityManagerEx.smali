.class public Landroid/net/ConnectivityManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManagerEx$CallbackHandler;,
        Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;
    }
.end annotation


# static fields
.field public static final APN_TYPE_MMS:I = 0x8

.field public static final APN_TYPE_NORMAL:I = 0x1

.field public static final APN_TYPE_SOS:I = 0x2

.field public static final APN_TYPE_XCAP:I = 0x4

.field private static final DBG:Z = true

.field public static final NETID_UNSET:I = 0x0

.field public static final REQUEST_ID_UNSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectivityManagerEx"

.field static sCallbackHandler:Landroid/net/ConnectivityManagerEx$CallbackHandler;

.field static final sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final sNetworkCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IConnectivityManagerEx;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/ConnectivityManagerEx;->sNetworkCallback:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/net/ConnectivityManagerEx;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Landroid/net/ConnectivityManagerEx;->sCallbackHandler:Landroid/net/ConnectivityManagerEx$CallbackHandler;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManagerEx;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ConnectivityManagerEx"

    .line 5
    .line 6
    const-string v1, "ConnectivityManagerEx: Creat"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "missing context"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/content/Context;

    .line 19
    .line 20
    iput-object p1, p0, Landroid/net/ConnectivityManagerEx;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string/jumbo p1, "missing IConnectivityManagerEx"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/net/IConnectivityManagerEx;

    .line 30
    .line 31
    iput-object p1, p0, Landroid/net/ConnectivityManagerEx;->mService:Landroid/net/IConnectivityManagerEx;

    .line 32
    .line 33
    return-void
.end method

.method private decCallbackHandlerRefCount()V
    .locals 2

    .line 1
    sget-object v0, Landroid/net/ConnectivityManagerEx;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    sput-object v1, Landroid/net/ConnectivityManagerEx;->sCallbackHandler:Landroid/net/ConnectivityManagerEx$CallbackHandler;

    .line 12
    .line 13
    :cond_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManagerEx;
    .locals 1

    .line 1
    const-string v0, "connectionEx"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManagerEx;

    .line 8
    .line 9
    return-object p0
.end method

.method private incCallbackHandlerRefCount()V
    .locals 8

    .line 1
    sget-object v6, Landroid/net/ConnectivityManagerEx;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    monitor-enter v6

    .line 4
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    .line 12
    .line 13
    const-string v1, "ConnectivityManagerEx"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    new-instance v7, Landroid/net/ConnectivityManagerEx$CallbackHandler;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroid/net/ConnectivityManagerEx;->sNetworkCallback:Ljava/util/HashMap;

    .line 28
    .line 29
    move-object v0, v7

    .line 30
    move-object v1, p0

    .line 31
    move-object v4, v6

    .line 32
    move-object v5, p0

    .line 33
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManagerEx$CallbackHandler;-><init>(Landroid/net/ConnectivityManagerEx;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManagerEx;)V

    .line 34
    .line 35
    .line 36
    sput-object v7, Landroid/net/ConnectivityManagerEx;->sCallbackHandler:Landroid/net/ConnectivityManagerEx$CallbackHandler;

    .line 37
    .line 38
    :cond_0
    monitor-exit v6

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method


# virtual methods
.method public getVowifiNetwork(II)Landroid/net/VowifiNetwork;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mService:Landroid/net/IConnectivityManagerEx;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManagerEx;->getVowifiNetwork(II)Landroid/net/VowifiNetwork;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public requestImsNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;I)V
    .locals 4

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManagerEx;->incCallbackHandlerRefCount()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/net/ConnectivityManagerEx;->sNetworkCallback:Ljava/util/HashMap;

    .line 7
    .line 8
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mService:Landroid/net/IConnectivityManagerEx;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    new-instance v2, Landroid/os/Messenger;

    .line 14
    .line 15
    sget-object v3, Landroid/net/ConnectivityManagerEx;->sCallbackHandler:Landroid/net/ConnectivityManagerEx$CallbackHandler;

    .line 16
    .line 17
    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroid/os/Binder;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1, v2, v3, p3}, Landroid/net/IConnectivityManagerEx;->requestImsNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;I)Landroid/net/NetworkRequest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, p1}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$002(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-static {p2}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {p2}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/net/ConnectivityManagerEx;->decCallbackHandlerRefCount()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string/jumbo p2, "requestImsNetwork null NetworkCallback"

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public unregisterImsNetworkCallback(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManagerEx;->mService:Landroid/net/IConnectivityManagerEx;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManagerEx;->releaseImsNetworkRequest(Landroid/net/NetworkRequest;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    sget-object p2, Landroid/net/ConnectivityManagerEx;->sNetworkCallback:Ljava/util/HashMap;

    .line 27
    .line 28
    monitor-enter p2

    .line 29
    :try_start_1
    invoke-static {p1}, Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;->access$000(Landroid/net/ConnectivityManagerEx$VowifiNetworkCallback;)Landroid/net/NetworkRequest;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    monitor-exit p2

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    throw p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "Invalid NetworkCallback"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
