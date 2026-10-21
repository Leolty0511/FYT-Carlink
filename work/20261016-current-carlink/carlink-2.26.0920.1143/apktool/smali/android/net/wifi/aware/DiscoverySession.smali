.class public Landroid/net/wifi/aware/DiscoverySession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final MAX_SEND_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DiscoverySession"

.field private static final VDBG:Z = false


# instance fields
.field protected final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSessionId:I

.field protected mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 6
    .line 7
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    iput p2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 21
    .line 22
    iput p3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 23
    .line 24
    const-string p1, "close"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static getMaxSendRetryCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

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
    const-string v0, "DiscoverySession"

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
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 20
    .line 21
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->terminateSession(II)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 28
    .line 29
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 35
    .line 36
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public createNetworkSpecifierOpen(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/NetworkSpecifier;
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "DiscoverySession"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "createNetworkSpecifierOpen: called on terminated session"

    .line 9
    .line 10
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Landroid/net/wifi/aware/WifiAwareManager;

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    const-string p1, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    instance-of v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .line 32
    .line 33
    xor-int/lit8 v5, v0, 0x1

    .line 34
    .line 35
    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 36
    .line 37
    iget v6, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v7, p1

    .line 42
    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public createNetworkSpecifierPassphrase(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 10

    .line 1
    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "DiscoverySession"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "createNetworkSpecifierPassphrase: called on terminated session"

    .line 15
    .line 16
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Landroid/net/wifi/aware/WifiAwareManager;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const-string p1, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    .line 32
    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    instance-of v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .line 38
    .line 39
    xor-int/lit8 v5, v0, 0x1

    .line 40
    .line 41
    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 42
    .line 43
    iget v6, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v7, p1

    .line 47
    move-object v9, p2

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p2, "Passphrase must meet length requirements"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public createNetworkSpecifierPmk(Landroid/net/wifi/aware/PeerHandle;[B)Landroid/net/NetworkSpecifier;
    .locals 10

    .line 1
    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "DiscoverySession"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "createNetworkSpecifierPmk: called on terminated session"

    .line 15
    .line 16
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Landroid/net/wifi/aware/WifiAwareManager;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const-string p1, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    .line 32
    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    instance-of v0, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .line 38
    .line 39
    xor-int/lit8 v5, v0, 0x1

    .line 40
    .line 41
    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 42
    .line 43
    iget v6, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    move-object v7, p1

    .line 47
    move-object v8, p2

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p2, "PMK must 32 bytes"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

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
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/aware/DiscoverySession;->close()V
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

.method public sendMessage(Landroid/net/wifi/aware/PeerHandle;I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/aware/DiscoverySession;->sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V

    return-void
.end method

.method public sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    const-string v1, "DiscoverySession"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "sendMessage: called on terminated session"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v2, :cond_1

    const-string/jumbo p1, "sendMessage: called post GC on WifiAwareManager"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v4, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v5, p1

    move-object v6, p3

    move v7, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/net/wifi/aware/WifiAwareManager;->sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V

    return-void
.end method

.method public setTerminated()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DiscoverySession"

    .line 6
    .line 7
    const-string/jumbo v1, "terminate: already terminated."

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23
    .line 24
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 2
    .line 3
    const-string v1, "DiscoverySession"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p1, "startRanging: called on terminated session"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string/jumbo p1, "startRanging: called post GC on WifiAwareManager"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 32
    .line 33
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->startRanging(II[Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
