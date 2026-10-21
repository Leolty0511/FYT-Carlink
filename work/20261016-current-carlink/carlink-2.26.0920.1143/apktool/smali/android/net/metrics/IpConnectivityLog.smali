.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String; = "IpConnectivityLog"


# instance fields
.field private mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/IIpConnectivityMetrics;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method

.method private checkLoggerService()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-string v0, "connmetrics"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_1
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    .line 22
    .line 23
    return v1
.end method

.method private static makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ConnectivityMetricsEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public log(I[ILandroid/os/Parcelable;)Z
    .locals 0

    .line 12
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p3

    .line 13
    iput p1, p3, Landroid/net/ConnectivityMetricsEvent;->netId:I

    .line 14
    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide p1

    iput-wide p1, p3, Landroid/net/ConnectivityMetricsEvent;->transports:J

    .line 15
    invoke-virtual {p0, p3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public log(JLandroid/os/Parcelable;)Z
    .locals 0

    .line 6
    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p3

    .line 7
    iput-wide p1, p3, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 8
    invoke-virtual {p0, p3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public log(Landroid/net/ConnectivityMetricsEvent;)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v0, p1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    const-string v2, "Error logging event"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public log(Landroid/os/Parcelable;)Z
    .locals 0

    .line 16
    invoke-static {p1}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method

.method public log(Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 0

    .line 9
    invoke-static {p2}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p2

    .line 10
    iput-object p1, p2, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p2}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result p1

    return p1
.end method
