.class public final Landroid/app/usage/CacheQuotaHint$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mQuota:J

.field private mUid:I

.field private mUsageStats:Landroid/app/usage/UsageStats;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/CacheQuotaHint;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 4
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 5
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUsageStats()Landroid/app/usage/UsageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 6
    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    return-void
.end method

.method public static synthetic access$000(Landroid/app/usage/CacheQuotaHint$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/app/usage/CacheQuotaHint$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    return p0
.end method

.method public static synthetic access$200(Landroid/app/usage/CacheQuotaHint$Builder;)Landroid/app/usage/UsageStats;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/app/usage/CacheQuotaHint$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    return-wide v0
.end method


# virtual methods
.method public build()Landroid/app/usage/CacheQuotaHint;
    .locals 1

    new-instance v0, Landroid/app/usage/CacheQuotaHint;

    invoke-direct {v0, p0}, Landroid/app/usage/CacheQuotaHint;-><init>(Landroid/app/usage/CacheQuotaHint$Builder;)V

    return-object v0
.end method

.method public setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    .line 14
    .line 15
    return-object p0
.end method

.method public setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 1

    .line 1
    const-string v0, "Proposed uid was negative."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    .line 7
    .line 8
    return-object p0
.end method

.method public setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    return-object p0
.end method
