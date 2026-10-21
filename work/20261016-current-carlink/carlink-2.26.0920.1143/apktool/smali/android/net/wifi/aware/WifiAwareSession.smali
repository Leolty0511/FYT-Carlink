.class public Landroid/net/wifi/aware/WifiAwareSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareSession"

.field private static final VDBG:Z = false


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 6
    .line 7
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    .line 21
    .line 22
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 26
    .line 27
    const-string p1, "close"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "WifiAwareSession"

    .line 12
    .line 13
    const-string v1, "destroy: called post GC on WifiAwareManager"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 20
    .line 21
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->disconnect(ILandroid/os/Binder;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 28
    .line 29
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 35
    .line 36
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public createNetworkSpecifierOpen(I[B)Landroid/net/NetworkSpecifier;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v2, "WifiAwareSession"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p1, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    .line 16
    .line 17
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const-string p1, "createNetworkSpecifierOpen: called after termination"

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move v3, p1

    .line 36
    move-object v4, p2

    .line 37
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public createNetworkSpecifierPassphrase(I[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v2, "WifiAwareSession"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p1, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    .line 16
    .line 17
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const-string p1, "createNetworkSpecifierPassphrase: called after termination"

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    move v3, p1

    .line 41
    move-object v4, p2

    .line 42
    move-object v6, p3

    .line 43
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "Passphrase must meet length requirements"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public createNetworkSpecifierPmk(I[B[B)Landroid/net/NetworkSpecifier;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v2, "WifiAwareSession"

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p1, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    .line 16
    .line 17
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const-string p1, "createNetworkSpecifierPmk: called after termination"

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    move v3, p1

    .line 41
    move-object v4, p2

    .line 42
    move-object v5, p3

    .line 43
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "PMK must 32 bytes"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

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
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public publish(Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 8
    .line 9
    const-string v1, "WifiAwareSession"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p1, "publish: called post GC on WifiAwareManager"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const-string/jumbo p1, "publish: called after termination"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    :goto_0
    invoke-virtual {v0, v1, p3, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public subscribe(Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 8
    .line 9
    const-string v1, "WifiAwareSession"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p1, "publish: called post GC on WifiAwareManager"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const-string/jumbo p1, "publish: called after termination"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    :goto_0
    invoke-virtual {v0, v1, p3, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
