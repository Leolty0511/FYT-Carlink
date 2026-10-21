.class public Landroid/net/lowpan/LowpanInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanInterface$Callback;
    }
.end annotation


# static fields
.field public static final EMPTY_PARTITION_ID:Ljava/lang/String; = ""

.field public static final NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final STATE_OFFLINE:Ljava/lang/String; = "offline"

.field private static final TAG:Ljava/lang/String; = "LowpanInterface"


# instance fields
.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 12
    .line 13
    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addExternalRoute(Landroid/net/IpPrefix;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addExternalRoute(Landroid/net/IpPrefix;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1

    .line 13
    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1

    .line 13
    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public attach(Landroid/net/lowpan/LowpanProvision;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->attach(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1

    .line 13
    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public createScanner()Landroid/net/lowpan/LowpanScanner;
    .locals 2

    new-instance v0, Landroid/net/lowpan/LowpanScanner;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanScanner;-><init>(Landroid/net/lowpan/ILowpanInterface;)V

    return-object v0
.end method

.method public form(Landroid/net/lowpan/LowpanProvision;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->form(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1

    .line 13
    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public getLinkAddresses()[Landroid/net/LinkAddress;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLinkAddresses()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    new-array v1, v1, [Landroid/net/LinkAddress;

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v5, v0, v3

    .line 16
    .line 17
    add-int/lit8 v6, v4, 0x1

    .line 18
    .line 19
    new-instance v7, Landroid/net/LinkAddress;

    .line 20
    .line 21
    invoke-direct {v7, v5}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    aput-object v7, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    move v4, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    throw v0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    throw v0
.end method

.method public getLinkNetworks()[Landroid/net/IpPrefix;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLinkNetworks()[Landroid/net/IpPrefix;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method

.method public getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

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
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    new-instance v0, Landroid/net/lowpan/LowpanIdentity;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public getPartitionId()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getPartitionId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getRole()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const-string v0, "detached"

    .line 15
    .line 16
    return-object v0
.end method

.method public getService()Landroid/net/lowpan/ILowpanInterface;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getState()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const-string v0, "fault"

    .line 15
    .line 16
    return-object v0
.end method

.method public getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method

.method public getSupportedNetworkTypes()[Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedNetworkTypes()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method

.method public isCommissioned()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isCommissioned()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isUp()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isUp()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0

    .line 14
    :catch_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public join(Landroid/net/lowpan/LowpanProvision;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->join(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1

    .line 13
    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public leave()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/lowpan/LowpanInterface$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanInterface$1;-><init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {p2, v0}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter p2

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public removeExternalRoute(Landroid/net/IpPrefix;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeExternalRoute(Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1

    .line 13
    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1
.end method

.method public startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)Landroid/net/lowpan/LowpanCommissioningSession;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/net/lowpan/LowpanCommissioningSession;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 9
    .line 10
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Landroid/net/lowpan/LowpanCommissioningSession;-><init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1

    .line 22
    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 32
    .line 33
    invoke-interface {p1, v1}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1

    .line 43
    :catch_1
    :cond_0
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p1
.end method
