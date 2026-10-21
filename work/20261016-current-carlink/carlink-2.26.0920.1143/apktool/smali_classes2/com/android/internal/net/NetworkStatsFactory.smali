.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field private static final IPV4V6_HEADER_DELTA:I = 0x14

.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStackedIfaces"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 5
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/NetworkStats;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/16 v4, 0x18

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/net/NetworkStats$Entry;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    .line 24
    .line 25
    new-instance v6, Ljava/io/FileInputStream;

    .line 26
    .line 27
    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    move p0, v3

    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-int/lit8 v4, v3, 0x1

    .line 48
    .line 49
    if-ne p0, v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    iput-wide v3, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 102
    .line 103
    if-eqz p2, :cond_0

    .line 104
    .line 105
    iget-object v3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    :cond_0
    const/4 v3, -0x1

    .line 114
    if-eq p1, v3, :cond_1

    .line 115
    .line 116
    iget v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 117
    .line 118
    if-ne p1, v4, :cond_3

    .line 119
    .line 120
    :cond_1
    if-eq p3, v3, :cond_2

    .line 121
    .line 122
    iget v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 123
    .line 124
    if-ne p3, v3, :cond_3

    .line 125
    .line 126
    :cond_2
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 130
    .line 131
    .line 132
    move v3, p0

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string p3, "inconsistent idx="

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p3, " after lastIdx="

    .line 150
    .line 151
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :catch_0
    move-exception p1

    .line 173
    goto :goto_1

    .line 174
    :catch_1
    move-exception p1

    .line 175
    :goto_1
    move v3, p0

    .line 176
    goto :goto_2

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    move-object v4, v5

    .line 179
    goto :goto_4

    .line 180
    :catch_2
    move-exception p1

    .line 181
    goto :goto_2

    .line 182
    :catch_3
    move-exception p1

    .line 183
    :goto_2
    move-object v4, v5

    .line 184
    goto :goto_3

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto :goto_4

    .line 187
    :catch_4
    move-exception p1

    .line 188
    goto :goto_3

    .line 189
    :catch_5
    move-exception p1

    .line 190
    :goto_3
    :try_start_3
    new-instance p0, Ljava/net/ProtocolException;

    .line 191
    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string p3, "problem parsing idx "

    .line 198
    .line 199
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-direct {p0, p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 3

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p4, v0, v1}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p4, Landroid/net/NetworkStats;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-direct {p4, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p4, v0, p1, p2, p3}, Lcom/android/internal/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    return-object p4

    .line 34
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string p2, "Failed to parse network stats"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move-object v1, v0

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Expected row "

    .line 43
    .line 44
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ": "

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", actual row "

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Expected size "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, ", actual size "

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 23

    .line 2
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v1, Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 8
    invoke-virtual {v0, v6, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 9
    iget-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string/jumbo v8, "v4-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v7, Landroid/net/NetworkStats$Entry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v22}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 12
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v14, 0x14

    mul-long v16, v12, v14

    add-long v16, v16, v10

    sub-long v8, v8, v16

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 13
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long v16, v4, v14

    add-long v16, v16, v10

    sub-long v8, v8, v16

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 14
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v12

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 15
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v4

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 16
    invoke-virtual {v1, v7}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 17
    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    mul-long/2addr v4, v14

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 18
    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v4, v14

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    .line 19
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 20
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 21
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/NetworkStats;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/4 v4, 0x6

    .line 12
    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/net/NetworkStats$Entry;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    .line 22
    .line 23
    new-instance v5, Ljava/io/FileInputStream;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 47
    .line 48
    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    add-long/2addr v5, v7

    .line 93
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 94
    .line 95
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    add-long/2addr v5, v7

    .line 102
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 103
    .line 104
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    add-long/2addr v5, v7

    .line 111
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 112
    .line 113
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 116
    .line 117
    .line 118
    move-result-wide v7

    .line 119
    add-long/2addr v5, v7

    .line 120
    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 121
    .line 122
    :cond_1
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 133
    .line 134
    .line 135
    return-object v1

    .line 136
    :catchall_0
    move-exception v1

    .line 137
    move-object v3, v4

    .line 138
    goto :goto_3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    .line 142
    :goto_1
    move-object v3, v4

    .line 143
    goto :goto_2

    .line 144
    :catchall_1
    move-exception v1

    .line 145
    goto :goto_3

    .line 146
    :catch_2
    move-exception v1

    .line 147
    goto :goto_2

    .line 148
    :catch_3
    move-exception v1

    .line 149
    :goto_2
    :try_start_2
    new-instance v2, Ljava/net/ProtocolException;

    .line 150
    .line 151
    const-string v4, "problem parsing stats"

    .line 152
    .line 153
    invoke-direct {v2, v4, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 161
    .line 162
    .line 163
    throw v1
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    new-instance v1, Landroid/net/NetworkStats;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const/4 v5, 0x6

    .line 22
    invoke-direct {v1, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/net/NetworkStats$Entry;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    .line 31
    .line 32
    new-instance v5, Ljava/io/FileInputStream;

    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v2, -0x1

    .line 58
    iput v2, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 59
    .line 60
    iput v2, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    iput v2, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    iput-wide v5, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    move-object v2, v4

    .line 105
    goto :goto_3

    .line 106
    :catch_0
    move-exception v1

    .line 107
    goto :goto_1

    .line 108
    :catch_1
    move-exception v1

    .line 109
    :goto_1
    move-object v2, v4

    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception v1

    .line 112
    goto :goto_3

    .line 113
    :catch_2
    move-exception v1

    .line 114
    goto :goto_2

    .line 115
    :catch_3
    move-exception v1

    .line 116
    :goto_2
    :try_start_2
    new-instance v3, Ljava/net/ProtocolException;

    .line 117
    .line 118
    const-string v4, "problem parsing stats"

    .line 119
    .line 120
    invoke-direct {v3, v4, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 128
    .line 129
    .line 130
    throw v1
.end method
