.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStatsManager$CallbackHandler;,
        Landroid/app/usage/NetworkStatsManager$UsageCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_LIMIT_REACHED:I = 0x0

.field public static final CALLBACK_RELEASED:I = 0x1

.field private static final DBG:Z = false

.field public static final FLAG_AUGMENT_WITH_SUBSCRIPTION_PLAN:I = 0x2

.field public static final FLAG_POLL_ON_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo p1, "netstats"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Cannot create template for network type "

    .line 14
    .line 15
    const-string v2, ", subscriberId \'"

    .line 16
    .line 17
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, "\'."

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    return-object p0
.end method


# virtual methods
.method public queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    .line 2
    .line 3
    .line 4
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance p1, Landroid/app/usage/NetworkStats;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-wide v4, p3

    .line 13
    move-wide v6, p5

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :catch_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v2, p7

    .line 3
    .line 4
    move/from16 v3, p8

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    :try_start_0
    new-instance v0, Landroid/app/usage/NetworkStats;

    .line 11
    .line 12
    iget-object v5, v1, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget v7, v1, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 15
    .line 16
    move-object v4, v0

    .line 17
    move-wide v8, p3

    .line 18
    move-wide/from16 v10, p5

    .line 19
    .line 20
    invoke-direct/range {v4 .. v11}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v4, "Error while querying stats for uid="

    .line 29
    .line 30
    const-string v5, " tag="

    .line 31
    .line 32
    invoke-static {v4, v2, v5, v3}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "NetworkStatsManager"

    .line 37
    .line 38
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    .line 2
    .line 3
    .line 4
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance p1, Landroid/app/usage/NetworkStats;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-wide v4, p3

    .line 13
    move-wide v6, p5

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :catch_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    .line 2
    .line 3
    .line 4
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance p1, Landroid/app/usage/NetworkStats;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-wide v4, p3

    .line 13
    move-wide v6, p5

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :catch_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    .line 2
    .line 3
    .line 4
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance p1, Landroid/app/usage/NetworkStats;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-wide v4, p3

    .line 13
    move-wide v6, p5

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :catch_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V
    .locals 3

    const-string v0, "UsageCallback cannot be null"

    .line 2
    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p6, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p6

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p6

    .line 5
    :goto_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/net/DataUsageRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p3, p4}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    .line 7
    :try_start_0
    new-instance p3, Landroid/app/usage/NetworkStatsManager$CallbackHandler;

    invoke-direct {p3, p6, p1, p2, p5}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;-><init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 8
    iget-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    iget-object p2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Landroid/os/Messenger;

    invoke-direct {p4, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    .line 10
    invoke-interface {p1, p2, v1, p4, p3}, Landroid/net/INetworkStatsService;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$002(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    .line 11
    invoke-static {p5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "NetworkStatsManager"

    const-string p2, "Request from callback is null; should not happen"

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAugmentWithSubscriptionPlan(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x3

    .line 13
    .line 14
    iput p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setPollOnOpen(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x2

    .line 13
    .line 14
    iput p1, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/net/DataUsageRequest;->requestId:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Landroid/net/INetworkStatsService;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v0, "Invalid UsageCallback"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
