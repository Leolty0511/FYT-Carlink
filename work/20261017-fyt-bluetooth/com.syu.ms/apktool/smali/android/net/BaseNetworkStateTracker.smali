.class public abstract Landroid/net/BaseNetworkStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final PROP_TCP_BUFFER_UNKNOWN:Ljava/lang/String; = "net.tcp.buffersize.unknown"

.field public static final PROP_TCP_BUFFER_WIFI:Ljava/lang/String; = "net.tcp.buffersize.wifi"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLinkCapabilities:Landroid/net/LinkCapabilities;

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 6
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    iput-object p1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 7
    new-instance p1, Landroid/net/LinkCapabilities;

    invoke-direct {p1}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object p1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0

    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final dispatchConfigurationChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const v2, 0x70001

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final dispatchStateChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/high16 v2, 0x70000

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getNetworkInterfaceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0

    return-void
.end method

.method public setRadio(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setTeardownRequested(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lu/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lu/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->startMonitoringInternal()V

    return-void
.end method

.method public startMonitoringInternal()V
    .locals 0

    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0

    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0

    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method
