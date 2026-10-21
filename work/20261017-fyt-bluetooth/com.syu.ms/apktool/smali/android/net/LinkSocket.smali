.class public Landroid/net/LinkSocket;
.super Ljava/net/Socket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkSocket$LinkRequestReason;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const-string v0, "LinkSocket() EX"

    .line 2
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const-string p1, "LinkSocket(notifier) EX"

    .line 4
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;Landroid/net/Proxy;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const-string p1, "LinkSocket(notifier, proxy) EX"

    .line 6
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LinkSocket"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "bind(localAddr) EX throws IOException"

    .line 1
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "bind is deprecated for LinkSocket"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "close() EX"

    .line 1
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1

    const-string v0, "connect() EX"

    .line 6
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(I)V
    .locals 0

    const-string p1, "connect(timeout) EX"

    .line 5
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "connect(dstName, dstPort, timeout) EX"

    .line 2
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;II)V
    .locals 0

    const-string p1, "connect(dstName, dstPort, timeout) EX"

    .line 1
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "connect(remoteAddr) EX DEPRECATED"

    .line 4
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "connect(remoteAddr, timeout) EX DEPRECATED"

    .line 3
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    const-string v0, "getCapabilities() EX"

    .line 1
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilities(Ljava/util/Set;)Landroid/net/LinkCapabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/LinkCapabilities;"
        }
    .end annotation

    const-string p1, "getCapabilities(capabilities) EX"

    .line 2
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/net/LinkCapabilities;

    invoke-direct {p1}, Landroid/net/LinkCapabilities;-><init>()V

    return-object p1
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    const-string v0, "LinkProperties() EX"

    .line 1
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    return-object v0
.end method

.method public getNeededCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    const-string v0, "getNeeds() EX"

    .line 1
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackedCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "getTrackedCapabilities(capabilities) EX"

    .line 1
    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public requestNewLink(Landroid/net/LinkSocket$LinkRequestReason;)V
    .locals 0

    const-string/jumbo p1, "requestNewLink(linkRequestReason) EX"

    .line 1
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setNeededCapabilities(Landroid/net/LinkCapabilities;)Z
    .locals 0

    const-string/jumbo p1, "setNeeds() EX"

    .line 1
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setTrackedCapabilities(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p1, "setTrackedCapabilities(capabilities) EX"

    .line 1
    invoke-static {p1}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method
