.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_METERED:I = 0x1


# instance fields
.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing INetworkPolicyManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 3

    .line 1
    iget v0, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 4
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/text/format/Time;->second:I

    iput p1, p0, Landroid/text/format/Time;->minute:I

    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 6
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {p0, v1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 7
    invoke-static {p0, v0}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 8
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 9
    iput p1, v1, Landroid/text/format/Time;->second:I

    iput p1, v1, Landroid/text/format/Time;->minute:I

    iput p1, v1, Landroid/text/format/Time;->hour:I

    .line 10
    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 11
    iget p1, v1, Landroid/text/format/Time;->month:I

    sub-int/2addr p1, v2

    iput p1, v1, Landroid/text/format/Time;->month:I

    .line 12
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 13
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 14
    iget p1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {p0, p1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    return-wide p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to compute boundary without cycleDay"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 3

    .line 1
    iget v0, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 4
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/text/format/Time;->second:I

    iput p1, p0, Landroid/text/format/Time;->minute:I

    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 6
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {p0, v1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 7
    invoke-static {p0, v0}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    .line 8
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 9
    iput p1, v1, Landroid/text/format/Time;->second:I

    iput p1, v1, Landroid/text/format/Time;->minute:I

    iput p1, v1, Landroid/text/format/Time;->hour:I

    .line 10
    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 11
    iget p1, v1, Landroid/text/format/Time;->month:I

    add-int/2addr p1, v2

    iput p1, v1, Landroid/text/format/Time;->month:I

    .line 12
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 13
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 14
    iget p1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {p0, p1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    return-wide p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to compute boundary without cycleDay"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1

    const-string v0, "["

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "REJECT_METERED_BACKGROUND"

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string p1, "]"

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1

    const-string v0, "["

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "REJECT_METERED"

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string p1, "]"

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1

    const-string v0, "netpolicy"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    .line 2
    iget p1, p0, Landroid/text/format/Time;->month:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/format/Time;->month:I

    .line 3
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroid/text/format/Time;->second:I

    goto :goto_0

    .line 5
    :cond_0
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 6
    :goto_0
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-void
.end method


# virtual methods
.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestrictBackground()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUidPolicy(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setUidPolicy(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
