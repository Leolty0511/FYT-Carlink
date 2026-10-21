.class public Landroid/net/metrics/ConnectStats;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EALREADY:I

.field private static final EINPROGRESS:I


# instance fields
.field public connectBlockingCount:I

.field public connectCount:I

.field public final errnos:Landroid/util/SparseIntArray;

.field public ipv6ConnectCount:I

.field public final latencies:Landroid/util/IntArray;

.field public final mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field public final mMaxLatencyRecords:I

.field public final netId:I

.field public final transports:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/system/OsConstants;->EALREADY:I

    .line 2
    .line 3
    sput v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    .line 4
    .line 5
    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    .line 6
    .line 7
    sput v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IJLcom/android/internal/util/TokenBucket;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/IntArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 20
    .line 21
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 22
    .line 23
    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 24
    .line 25
    iput p1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    .line 26
    .line 27
    iput-wide p2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    .line 28
    .line 29
    iput-object p4, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    .line 30
    .line 31
    iput p5, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    .line 32
    .line 33
    return-void
.end method

.method private countConnect(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 18
    .line 19
    :cond_0
    invoke-static {p2}, Landroid/net/metrics/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget p1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private countError(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private countLatency(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/util/TokenBucket;->get()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    .line 24
    .line 25
    if-lt p1, v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/util/IntArray;->add(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static isIPv6(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static isNonBlocking(I)Z
    .locals 1

    sget v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    if-eq p0, v0, :cond_1

    sget v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSuccess(I)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isSuccess(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p3}, Landroid/net/metrics/ConnectStats;->countConnect(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/net/metrics/ConnectStats;->countLatency(II)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->countError(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConnectStats("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    .line 19
    .line 20
    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    const/4 v4, 0x0

    .line 26
    move v5, v4

    .line 27
    :goto_0
    if-ge v5, v3, :cond_0

    .line 28
    .line 29
    aget v6, v2, v5

    .line 30
    .line 31
    invoke-static {v6}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x1

    .line 45
    new-array v2, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    iget v3, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v2, v4

    .line 54
    .line 55
    const-string v3, "%d success, "

    .line 56
    .line 57
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    new-array v2, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    iget v3, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    aput-object v3, v2, v4

    .line 73
    .line 74
    const-string v3, "%d blocking, "

    .line 75
    .line 76
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-array v2, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    iget v3, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    aput-object v3, v2, v4

    .line 92
    .line 93
    const-string v3, "%d IPv6 dst"

    .line 94
    .line 95
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move v2, v4

    .line 103
    :goto_1
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-ge v2, v3, :cond_1

    .line 110
    .line 111
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-static {v3}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 122
    .line 123
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const/4 v6, 0x2

    .line 128
    new-array v6, v6, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v3, v6, v4

    .line 131
    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    aput-object v3, v6, v1

    .line 137
    .line 138
    const-string v3, ", %s: %d"

    .line 139
    .line 140
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    const-string v1, ")"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    return-object v0
.end method
