.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;,
        Lcom/android/internal/app/ResolverComparator$AfterCompute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final DEBUG:Z = false

.field private static final NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field private static final RECENCY_MULTIPLIER:F = 2.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final RESOLVER_RANKER_RESULT_TIMEOUT:I = 0x1

.field private static final RESOLVER_RANKER_SERVICE_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x240c8400L

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

.field private mAnnotations:[Ljava/lang/String;

.field private final mCollator:Ljava/text/Collator;

.field private mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurrentTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHttp:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRanker:Landroid/service/resolver/IResolverRankerService;

.field private mRankerServiceName:Landroid/content/ComponentName;

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolvedRankerName:Landroid/content/ComponentName;

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetsDict:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/app/ResolverComparator$1;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ResolverComparator$1;-><init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "http"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    const-string v1, "https"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    .line 70
    .line 71
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p4, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 82
    .line 83
    const-string/jumbo p3, "usagestats"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide p3

    .line 98
    iput-wide p3, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    .line 99
    .line 100
    const-wide/32 v0, 0x240c8400

    .line 101
    .line 102
    .line 103
    sub-long v0, p3, v0

    .line 104
    .line 105
    iput-wide v0, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 127
    .line 128
    new-instance p1, Landroid/content/ComponentName;

    .line 129
    .line 130
    iget-object p2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 140
    .line 141
    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-object p1
.end method

.method private addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x402379a7    # 2.5543f

    .line 6
    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    const v1, 0x4035d639

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    mul-float/2addr v2, v1

    .line 17
    add-float/2addr v2, v0

    .line 18
    const v0, 0x3e89ba5e    # 0.269f

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    mul-float/2addr v1, v0

    .line 26
    add-float/2addr v1, v2

    .line 27
    const v0, 0x40871c43    # 4.2222f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-float/2addr v2, v0

    .line 35
    add-float/2addr v2, v1

    .line 36
    const v0, 0x3fd41206    # 1.6568f

    .line 37
    .line 38
    .line 39
    sub-float/2addr v0, v2

    .line 40
    float-to-double v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 46
    .line 47
    add-double/2addr v0, v2

    .line 48
    div-double/2addr v2, v0

    .line 49
    double-to-float v0, v2

    .line 50
    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private initRanker(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-direct {p0}, Lcom/android/internal/app/ResolverComparator;->resolveRankerService()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    new-instance v3, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 31
    .line 32
    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 36
    .line 37
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 19
    .line 20
    and-int/lit8 p0, p0, 0x8

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_0
    return v0
.end method

.method private logMetrics(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/metrics/LogMaker;

    .line 11
    .line 12
    const/16 v2, 0x43d

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    :goto_0
    const/16 v3, 0x43e

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x43f

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, v2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private predictSelectProbabilities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v2, 0xc8

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    .line 25
    .line 26
    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string v0, "ResolverComparator"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Error in Predict: "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    const-string p1, "ResolverComparator"

    .line 58
    .line 59
    const-string v0, "Error in Wait for Service Connection."

    .line 60
    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method private reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v1, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 23
    .line 24
    const/16 v0, 0x1f4

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->startWatchDog(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->initRanker(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private resolveRankerService()Landroid/content/Intent;
    .locals 10

    .line 1
    const-string v0, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    .line 2
    .line 3
    const-string v1, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    .line 4
    .line 5
    const-string v2, "ResolverComparator"

    .line 6
    .line 7
    new-instance v3, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v4, "android.service.resolver.ResolverRankerService"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 44
    .line 45
    if-nez v7, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v7, Landroid/content/ComponentName;

    .line 49
    .line 50
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 51
    .line 52
    iget-object v9, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v7, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 62
    .line 63
    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const-string v9, "ResolverRankerService "

    .line 74
    .line 75
    if-nez v8, :cond_2

    .line 76
    .line 77
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v8, " does not require permission "

    .line 89
    .line 90
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v8, " - this service will not be queried for ResolverComparator. add android:permission=\""

    .line 97
    .line 98
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v8, "\" to the <service> tag for "

    .line 105
    .line 106
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v8, " in the manifest."

    .line 113
    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    iget-object v8, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 126
    .line 127
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 128
    .line 129
    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v8, v0, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v8, " does not hold permission "

    .line 149
    .line 150
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v8, " - this service will not be queried for ResolverComparator."

    .line 157
    .line 158
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_3
    iput-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 171
    .line 172
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    return-object v3

    .line 176
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v8, "Could not look up service "

    .line 179
    .line 180
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v7, "; component name not found"

    .line 187
    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_4
    const/4 v0, 0x0

    .line 201
    return-object v0
.end method

.method private setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private startWatchDog(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ResolverComparator"

    .line 6
    .line 7
    const-string v1, "Error: Handler is Null; Needs to be initialized."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    int-to-long v2, p1

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 4
    iget v3, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v4, 0x1

    const/4 v5, -0x2

    if-eq v3, v5, :cond_1

    .line 5
    iget p1, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    return v0

    .line 6
    :cond_1
    iget v0, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x1

    if-eq v0, v5, :cond_2

    return v3

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v0, :cond_4

    .line 8
    iget v0, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v0

    .line 9
    iget v5, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v5

    if-eq v0, v5, :cond_4

    if-eqz v0, :cond_3

    move v4, v3

    :cond_3
    return v4

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result p1

    .line 11
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result p2

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    return v3

    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    return v4

    :cond_6
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 12
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/resolver/ResolverTarget;

    .line 14
    iget-object p2, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/resolver/ResolverTarget;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 15
    invoke-virtual {p2}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result p2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result p1

    .line 16
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_8

    if-lez p1, :cond_7

    goto :goto_1

    :cond_7
    move v4, v3

    :goto_1
    return v4

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_9

    .line 18
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 19
    :cond_9
    iget-object p2, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_a

    .line 20
    iget-object p2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 21
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method

.method public compute(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverComparator;->reset()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, v6, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    .line 7
    .line 8
    const-wide/32 v2, 0x2932e00

    .line 9
    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    move v7, v3

    .line 19
    move v8, v7

    .line 20
    move v9, v8

    .line 21
    move v10, v9

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_7

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 33
    .line 34
    new-instance v4, Landroid/service/resolver/ResolverTarget;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/service/resolver/ResolverTarget;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v5, v6, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    iget-object v11, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-virtual {v5, v11, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v5, v6, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    .line 47
    .line 48
    iget-object v11, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 49
    .line 50
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/app/usage/UsageStats;

    .line 59
    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    iget-object v11, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    iget-object v12, v6, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-nez v11, :cond_0

    .line 75
    .line 76
    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_0

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    sub-long/2addr v11, v0

    .line 87
    const-wide/16 v13, 0x0

    .line 88
    .line 89
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v11

    .line 93
    long-to-float v3, v11

    .line 94
    invoke-virtual {v4, v3}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 95
    .line 96
    .line 97
    cmpl-float v11, v3, v7

    .line 98
    .line 99
    if-lez v11, :cond_0

    .line 100
    .line 101
    move v7, v3

    .line 102
    :cond_0
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    long-to-float v3, v11

    .line 107
    invoke-virtual {v4, v3}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 108
    .line 109
    .line 110
    cmpl-float v11, v3, v8

    .line 111
    .line 112
    if-lez v11, :cond_1

    .line 113
    .line 114
    move v8, v3

    .line 115
    :cond_1
    iget v3, v5, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 116
    .line 117
    int-to-float v3, v3

    .line 118
    invoke-virtual {v4, v3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 119
    .line 120
    .line 121
    cmpl-float v11, v3, v9

    .line 122
    .line 123
    if-lez v11, :cond_2

    .line 124
    .line 125
    move v9, v3

    .line 126
    :cond_2
    iget-object v3, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 127
    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    iget-object v11, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v11, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    iget-object v3, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 141
    .line 142
    iget-object v11, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Landroid/util/ArrayMap;

    .line 149
    .line 150
    iget-object v11, v6, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    .line 151
    .line 152
    const/4 v12, 0x0

    .line 153
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    invoke-interface {v3, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    int-to-float v3, v3

    .line 168
    iget-object v11, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v11, :cond_3

    .line 171
    .line 172
    array-length v11, v11

    .line 173
    move v13, v12

    .line 174
    :goto_1
    if-ge v13, v11, :cond_3

    .line 175
    .line 176
    iget-object v14, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 177
    .line 178
    iget-object v15, v6, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    check-cast v14, Landroid/util/ArrayMap;

    .line 185
    .line 186
    iget-object v15, v6, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 187
    .line 188
    aget-object v15, v15, v13

    .line 189
    .line 190
    move-wide/from16 v16, v0

    .line 191
    .line 192
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    int-to-float v0, v0

    .line 207
    add-float/2addr v3, v0

    .line 208
    add-int/lit8 v13, v13, 0x1

    .line 209
    .line 210
    move-wide/from16 v0, v16

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    move-wide/from16 v16, v0

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_4
    move-wide/from16 v16, v0

    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    :goto_2
    invoke-virtual {v4, v3}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 220
    .line 221
    .line 222
    cmpl-float v0, v3, v10

    .line 223
    .line 224
    if-lez v0, :cond_6

    .line 225
    .line 226
    move v10, v3

    .line 227
    goto :goto_3

    .line 228
    :cond_5
    move-wide/from16 v16, v0

    .line 229
    .line 230
    :cond_6
    :goto_3
    move-wide/from16 v0, v16

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 235
    .line 236
    iget-object v1, v6, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    .line 244
    .line 245
    iput-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_8

    .line 256
    .line 257
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object v12, v0

    .line 262
    check-cast v12, Landroid/service/resolver/ResolverTarget;

    .line 263
    .line 264
    invoke-virtual {v12}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    div-float/2addr v0, v7

    .line 269
    mul-float/2addr v0, v0

    .line 270
    const/high16 v1, 0x40000000    # 2.0f

    .line 271
    .line 272
    mul-float v2, v0, v1

    .line 273
    .line 274
    invoke-virtual {v12}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    div-float v3, v0, v9

    .line 279
    .line 280
    invoke-virtual {v12}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    div-float v4, v0, v8

    .line 285
    .line 286
    invoke-virtual {v12}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    div-float v5, v0, v10

    .line 291
    .line 292
    move-object/from16 v0, p0

    .line 293
    .line 294
    move-object v1, v12

    .line 295
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    .line 296
    .line 297
    .line 298
    invoke-direct {v6, v12}, Lcom/android/internal/app/ResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_8
    iget-object v0, v6, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    .line 305
    .line 306
    .line 307
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public getContentAnnotations(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "android.intent.extra.CONTENT_ANNOTATIONS"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    aput-object v3, v2, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/service/resolver/ResolverTarget;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    move v2, p2

    .line 11
    move-object v5, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ltz v1, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/service/resolver/ResolverTarget;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    cmpl-float v4, v4, p1

    .line 57
    .line 58
    if-lez v4, :cond_0

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverComparator;->logMetrics(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-interface {p1, v2, v1}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    :try_start_2
    const-string v1, "ResolverComparator"

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "Error in Train: "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p1
.end method
