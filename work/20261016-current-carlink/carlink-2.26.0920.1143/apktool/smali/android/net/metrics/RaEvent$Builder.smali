.class public Landroid/net/metrics/RaEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/RaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field dnsslLifetime:J

.field prefixPreferredLifetime:J

.field prefixValidLifetime:J

.field rdnssLifetime:J

.field routeInfoLifetime:J

.field routerLifetime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    .line 9
    .line 10
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    .line 11
    .line 12
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    .line 17
    .line 18
    return-void
.end method

.method private updateLifetime(JJ)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public build()Landroid/net/metrics/RaEvent;
    .locals 14

    new-instance v13, Landroid/net/metrics/RaEvent;

    iget-wide v1, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    iget-wide v3, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    iget-wide v5, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    iget-wide v7, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    iget-wide v9, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    iget-wide v11, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/net/metrics/RaEvent;-><init>(JJJJJJ)V

    return-object v13
.end method

.method public updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    return-object p0
.end method

.method public updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    return-object p0
.end method

.method public updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    return-object p0
.end method

.method public updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    return-object p0
.end method

.method public updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    return-object p0
.end method

.method public updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    return-object p0
.end method
