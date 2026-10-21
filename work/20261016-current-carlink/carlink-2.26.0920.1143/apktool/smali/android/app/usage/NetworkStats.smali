.class public final Landroid/app/usage/NetworkStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mEndTimeStamp:J

.field private mEnumerationIndex:I

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStartTimeStamp:J

.field private mSummary:Landroid/net/NetworkStats;

.field private mTag:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 15
    .line 16
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 17
    .line 18
    iput v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 19
    .line 20
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 21
    .line 22
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 23
    .line 24
    const-string/jumbo v1, "netstats"

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v1, p3, p1}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 44
    .line 45
    const-string p1, "close"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 51
    .line 52
    iput-wide p4, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 53
    .line 54
    iput-wide p6, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 55
    .line 56
    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 2
    .line 3
    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 4
    .line 5
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$100(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$002(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 13
    .line 14
    iget v0, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 15
    .line 16
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$300(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$202(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 24
    .line 25
    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 26
    .line 27
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$500(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$402(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 35
    .line 36
    iget v0, v0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 37
    .line 38
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$700(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$602(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 46
    .line 47
    iget v0, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 48
    .line 49
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$900(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$802(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1002(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 62
    .line 63
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1102(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 67
    .line 68
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1202(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 74
    .line 75
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 76
    .line 77
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 81
    .line 82
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 88
    .line 89
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 90
    .line 91
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 16
    .line 17
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 22
    .line 23
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$100(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$002(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 40
    .line 41
    .line 42
    iget v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 43
    .line 44
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$300(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$202(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 49
    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$402(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$602(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$802(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 62
    .line 63
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1002(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 69
    .line 70
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 71
    .line 72
    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 73
    .line 74
    add-long/2addr v1, v3

    .line 75
    invoke-static {p1, v1, v2}, Landroid/app/usage/NetworkStats$Bucket;->access$1102(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 79
    .line 80
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 81
    .line 82
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1202(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 86
    .line 87
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 88
    .line 89
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 93
    .line 94
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 95
    .line 96
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 100
    .line 101
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 102
    .line 103
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :cond_0
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    return p1

    .line 122
    :cond_1
    const/4 p1, 0x0

    .line 123
    return p1
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 4
    .line 5
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 14
    .line 15
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 20
    .line 21
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method private getUid()I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Index="

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " mUids.length="

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 39
    .line 40
    array-length v2, v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 53
    .line 54
    return v0
.end method

.method private hasNextUid()Z
    .locals 3

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUidEnumeration()Z
    .locals 1

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSingleUidTag(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 2
    .line 3
    iput p2, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 4
    .line 5
    return-void
.end method

.method private stepHistory()V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 14
    .line 15
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, -0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, -0x1

    .line 24
    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 25
    .line 26
    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 27
    .line 28
    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "NetworkStats"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private stepUid()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "NetworkStats"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

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
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 4
    .line 5
    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 6
    .line 7
    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 8
    .line 9
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/net/NetworkStats$Entry;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public hasNextBucket()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v3, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v3, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    return v1

    .line 18
    :cond_1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget v3, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lt v3, v0, :cond_3

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v1, v2

    .line 38
    :cond_3
    :goto_1
    return v1

    .line 39
    :cond_4
    return v2
.end method

.method public startHistoryEnumeration(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(II)V

    return-void
.end method

.method public startHistoryEnumeration(II)V
    .locals 11

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v4, -0x1

    const/4 v6, -0x1

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    move v3, p1

    move v5, p2

    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/usage/NetworkStats;->setSingleUidTag(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NetworkStats"

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    return-void
.end method

.method public startSummaryEnumeration()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 4
    .line 5
    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 6
    .line 7
    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 18
    .line 19
    return-void
.end method

.method public startUserUidEnumeration()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/IntArray;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 11
    .line 12
    .line 13
    array-length v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_1

    .line 16
    .line 17
    aget v14, v0, v3

    .line 18
    .line 19
    :try_start_0
    iget-object v4, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 20
    .line 21
    iget-object v5, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 22
    .line 23
    const/4 v7, -0x1

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, -0x1

    .line 26
    iget-wide v10, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 27
    .line 28
    iget-wide v12, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 29
    .line 30
    move v6, v14

    .line 31
    invoke-interface/range {v4 .. v13}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lez v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v14}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v4

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "Error while getting history of uid "

    .line 51
    .line 52
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "NetworkStats"

    .line 63
    .line 64
    invoke-static {v6, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 75
    .line 76
    const/4 v0, -0x1

    .line 77
    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 78
    .line 79
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
