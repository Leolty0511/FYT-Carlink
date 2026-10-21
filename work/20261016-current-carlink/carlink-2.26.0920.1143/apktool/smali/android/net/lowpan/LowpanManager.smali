.class public Landroid/net/lowpan/LowpanManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LowpanManager"


# instance fields
.field private final mBinderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/lowpan/ILowpanInterface;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInterfaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mService:Landroid/net/lowpan/ILowpanManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanManager;Landroid/os/Looper;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    .line 12
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 14
    iput-object p3, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/net/lowpan/ILowpanManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    .line 7
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public static synthetic access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static from(Landroid/content/Context;)Landroid/net/lowpan/LowpanManager;
    .locals 1

    .line 1
    const-string/jumbo v0, "lowpan"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/net/lowpan/LowpanManager;

    .line 9
    .line 10
    return-object p0
.end method

.method public static getManager()Landroid/net/lowpan/LowpanManager;
    .locals 2

    .line 1
    const-string/jumbo v0, "lowpan"

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
    invoke-static {v0}, Landroid/net/lowpan/ILowpanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/net/lowpan/LowpanManager;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/net/lowpan/LowpanManager;-><init>(Landroid/net/lowpan/ILowpanManager;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method


# virtual methods
.method public getInterface()Landroid/net/lowpan/LowpanInterface;
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanManager;->getInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 23
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanInterface;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/net/lowpan/LowpanInterface;

    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3, p1, v4}, Landroid/net/lowpan/LowpanInterface;-><init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V

    .line 6
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/net/lowpan/LowpanInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/net/lowpan/LowpanManager$1;

    invoke-direct {v4, p0, v1, p1}, Landroid/net/lowpan/LowpanManager$1;-><init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V

    const/4 p1, 0x0

    .line 11
    invoke-interface {v3, v4, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    .line 13
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/lowpan/LowpanInterface;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v1, p1}, Landroid/net/lowpan/ILowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getInterfaceList()[Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanManager;->getInterfaceList()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/lowpan/LowpanManager$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanManager$2;-><init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {p2, v0}, Landroid/net/lowpan/ILowpanManager;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p2, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter p2

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/lowpan/ILowpanManagerListener;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object p1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 29
    .line 30
    invoke-interface {p1, v1}, Landroid/net/lowpan/ILowpanManager;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    throw p1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    const-string v0, "Attempt to unregister an unknown callback"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p1
.end method
