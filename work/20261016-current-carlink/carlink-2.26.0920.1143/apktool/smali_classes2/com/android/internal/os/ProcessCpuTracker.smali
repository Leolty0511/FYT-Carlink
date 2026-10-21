.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z = false

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 9
    .line 10
    const/16 v0, 0x17

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    fill-array-data v0, :array_3

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 35
    .line 36
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [J

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 17
    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    new-array v0, v0, [J

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [F

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 34
    .line 35
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 36
    .line 37
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 55
    .line 56
    const/16 v0, 0x1000

    .line 57
    .line 58
    new-array v0, v0, [B

    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 63
    .line 64
    sget-object p1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    .line 65
    .line 66
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    .line 67
    .line 68
    invoke-interface {p1, v0}, Llibcore/io/Os;->sysconf(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    const-wide/16 v2, 0x3e8

    .line 73
    .line 74
    div-long/2addr v2, v0

    .line 75
    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 76
    .line 77
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v0, p1

    .line 6
    .line 7
    move-object/from16 v1, p4

    .line 8
    .line 9
    move-object/from16 v8, p5

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    const/4 v10, 0x0

    .line 16
    if-nez v9, :cond_0

    .line 17
    .line 18
    move v11, v10

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length v0, v9

    .line 21
    move v11, v0

    .line 22
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    move v12, v0

    .line 27
    move v0, v10

    .line 28
    move v13, v0

    .line 29
    :goto_1
    if-ge v13, v11, :cond_10

    .line 30
    .line 31
    aget v2, v9, v13

    .line 32
    .line 33
    if-gez v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_b

    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    if-ge v0, v12, :cond_2

    .line 39
    .line 40
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 45
    .line 46
    move-object v15, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v15, v1

    .line 49
    :goto_2
    if-eqz v15, :cond_9

    .line 50
    .line 51
    iget v5, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 52
    .line 53
    if-ne v5, v2, :cond_9

    .line 54
    .line 55
    iput-boolean v10, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 56
    .line 57
    iput-boolean v10, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 58
    .line 59
    add-int/lit8 v16, v0, 0x1

    .line 60
    .line 61
    iget-boolean v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 70
    .line 71
    iget-object v5, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sget-object v14, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 78
    .line 79
    invoke-static {v5, v14, v1, v0, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_3
    move-wide/from16 v17, v3

    .line 88
    .line 89
    aget-wide v3, v0, v10

    .line 90
    .line 91
    move-wide/from16 v19, v3

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    aget-wide v3, v0, v1

    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    aget-wide v21, v0, v1

    .line 98
    .line 99
    move/from16 v23, v11

    .line 100
    .line 101
    iget-wide v10, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 102
    .line 103
    move-wide/from16 v24, v3

    .line 104
    .line 105
    mul-long v3, v21, v10

    .line 106
    .line 107
    const/4 v1, 0x3

    .line 108
    aget-wide v21, v0, v1

    .line 109
    .line 110
    mul-long v10, v10, v21

    .line 111
    .line 112
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 113
    .line 114
    cmp-long v0, v3, v0

    .line 115
    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 119
    .line 120
    cmp-long v0, v10, v0

    .line 121
    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 126
    .line 127
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 128
    .line 129
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 130
    .line 131
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 132
    .line 133
    iget-boolean v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 134
    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    iput-boolean v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 138
    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_4
    iget-boolean v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 142
    .line 143
    if-nez v0, :cond_5

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 147
    .line 148
    :cond_5
    if-gez v7, :cond_6

    .line 149
    .line 150
    iget-object v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 151
    .line 152
    invoke-direct {v6, v15, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v5, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 156
    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    iget-object v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 160
    .line 161
    const/16 v21, 0x0

    .line 162
    .line 163
    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 164
    .line 165
    move-object/from16 v22, v0

    .line 166
    .line 167
    move-object/from16 v0, p0

    .line 168
    .line 169
    move-wide/from16 v32, v3

    .line 170
    .line 171
    move-wide/from16 v26, v17

    .line 172
    .line 173
    move-wide/from16 v28, v19

    .line 174
    .line 175
    move-wide/from16 v30, v24

    .line 176
    .line 177
    move/from16 v3, v21

    .line 178
    .line 179
    move-object/from16 v4, v22

    .line 180
    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    move-wide/from16 v32, v3

    .line 189
    .line 190
    move-wide/from16 v26, v17

    .line 191
    .line 192
    move-wide/from16 v28, v19

    .line 193
    .line 194
    move-wide/from16 v30, v24

    .line 195
    .line 196
    :goto_3
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 197
    .line 198
    move-wide/from16 v2, v26

    .line 199
    .line 200
    sub-long v0, v2, v0

    .line 201
    .line 202
    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 203
    .line 204
    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 205
    .line 206
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 207
    .line 208
    move-wide/from16 v2, v32

    .line 209
    .line 210
    sub-long v0, v2, v0

    .line 211
    .line 212
    long-to-int v0, v0

    .line 213
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 214
    .line 215
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 216
    .line 217
    sub-long v0, v10, v0

    .line 218
    .line 219
    long-to-int v0, v0

    .line 220
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 221
    .line 222
    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 223
    .line 224
    iput-wide v10, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 225
    .line 226
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 227
    .line 228
    move-wide/from16 v2, v28

    .line 229
    .line 230
    sub-long v0, v2, v0

    .line 231
    .line 232
    long-to-int v0, v0

    .line 233
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 234
    .line 235
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 236
    .line 237
    move-wide/from16 v4, v30

    .line 238
    .line 239
    sub-long v0, v4, v0

    .line 240
    .line 241
    long-to-int v0, v0

    .line 242
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 243
    .line 244
    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 245
    .line 246
    iput-wide v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_7
    :goto_4
    move/from16 v23, v11

    .line 253
    .line 254
    :cond_8
    :goto_5
    move/from16 v0, v16

    .line 255
    .line 256
    :goto_6
    const/4 v1, 0x1

    .line 257
    goto/16 :goto_a

    .line 258
    .line 259
    :cond_9
    move/from16 v23, v11

    .line 260
    .line 261
    if-eqz v15, :cond_b

    .line 262
    .line 263
    iget v3, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 264
    .line 265
    if-le v3, v2, :cond_a

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    const/4 v3, 0x0

    .line 269
    iput v3, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 270
    .line 271
    iput v3, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 272
    .line 273
    iput v3, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 274
    .line 275
    iput v3, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 276
    .line 277
    const/4 v1, 0x1

    .line 278
    iput-boolean v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 279
    .line 280
    iput-boolean v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 281
    .line 282
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    add-int/lit8 v12, v12, -0x1

    .line 286
    .line 287
    add-int/lit8 v13, v13, -0x1

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_b
    :goto_7
    new-instance v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 291
    .line 292
    iget-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 293
    .line 294
    invoke-direct {v10, v2, v7, v3}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v11, v0, 0x1

    .line 301
    .line 302
    add-int/lit8 v12, v12, 0x1

    .line 303
    .line 304
    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 305
    .line 306
    iget-object v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 307
    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 309
    .line 310
    .line 311
    move-result-wide v4

    .line 312
    iput-wide v4, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 313
    .line 314
    iget-object v4, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 321
    .line 322
    invoke-static {v4, v5, v0, v3, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_c

    .line 327
    .line 328
    const/4 v1, 0x5

    .line 329
    aget-wide v4, v3, v1

    .line 330
    .line 331
    iput-wide v4, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 332
    .line 333
    const/4 v1, 0x1

    .line 334
    iput-boolean v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    aget-object v0, v0, v4

    .line 338
    .line 339
    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 340
    .line 341
    aget-wide v4, v3, v1

    .line 342
    .line 343
    iput-wide v4, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 344
    .line 345
    const/4 v0, 0x2

    .line 346
    aget-wide v0, v3, v0

    .line 347
    .line 348
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 349
    .line 350
    const/4 v0, 0x3

    .line 351
    aget-wide v0, v3, v0

    .line 352
    .line 353
    iget-wide v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 354
    .line 355
    mul-long/2addr v0, v4

    .line 356
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 357
    .line 358
    const/4 v0, 0x4

    .line 359
    aget-wide v0, v3, v0

    .line 360
    .line 361
    mul-long/2addr v0, v4

    .line 362
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v1, "Skipping unknown process pid "

    .line 368
    .line 369
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const-string v1, "ProcessCpuTracker"

    .line 380
    .line 381
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    const-string v0, "<unknown>"

    .line 385
    .line 386
    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 387
    .line 388
    const-wide/16 v0, 0x0

    .line 389
    .line 390
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 391
    .line 392
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 393
    .line 394
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 395
    .line 396
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 397
    .line 398
    :goto_8
    if-gez v7, :cond_d

    .line 399
    .line 400
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    .line 401
    .line 402
    invoke-direct {v6, v10, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object v5, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 406
    .line 407
    if-eqz v5, :cond_e

    .line 408
    .line 409
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    .line 410
    .line 411
    const/4 v3, 0x1

    .line 412
    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 413
    .line 414
    move-object/from16 v0, p0

    .line 415
    .line 416
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_d
    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 424
    .line 425
    if-eqz v0, :cond_e

    .line 426
    .line 427
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 428
    .line 429
    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v6, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 436
    .line 437
    :cond_e
    :goto_9
    const/4 v0, 0x0

    .line 438
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 439
    .line 440
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 441
    .line 442
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 443
    .line 444
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 445
    .line 446
    const/4 v1, 0x1

    .line 447
    iput-boolean v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 448
    .line 449
    if-nez p3, :cond_f

    .line 450
    .line 451
    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 452
    .line 453
    if-eqz v0, :cond_f

    .line 454
    .line 455
    iput-boolean v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 456
    .line 457
    :cond_f
    move v0, v11

    .line 458
    :goto_a
    add-int/2addr v13, v1

    .line 459
    move/from16 v11, v23

    .line 460
    .line 461
    const/4 v10, 0x0

    .line 462
    goto/16 :goto_1

    .line 463
    .line 464
    :cond_10
    :goto_b
    const/4 v1, 0x1

    .line 465
    :goto_c
    if-ge v0, v12, :cond_11

    .line 466
    .line 467
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 472
    .line 473
    const/4 v3, 0x0

    .line 474
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 475
    .line 476
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 477
    .line 478
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 479
    .line 480
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 481
    .line 482
    iput-boolean v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 483
    .line 484
    iput-boolean v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 485
    .line 486
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    add-int/lit8 v12, v12, -0x1

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_11
    return-object v9
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "app_process"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "<pre-initialized>"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-le v1, v2, :cond_2

    .line 36
    .line 37
    const-string v0, "/"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-lez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sub-int/2addr v1, v2

    .line 50
    if-ge v0, v1, :cond_1

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :cond_1
    move-object v0, p2

    .line 58
    :cond_2
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 61
    .line 62
    :cond_3
    iget-object p2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_5

    .line 71
    .line 72
    :cond_4
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    iput p2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 17

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move/from16 v7, p3

    .line 4
    .line 5
    move/from16 v8, p6

    .line 6
    .line 7
    move/from16 v9, p7

    .line 8
    .line 9
    move/from16 v10, p8

    .line 10
    .line 11
    move/from16 v11, p9

    .line 12
    .line 13
    move/from16 v12, p10

    .line 14
    .line 15
    move/from16 v13, p11

    .line 16
    .line 17
    move/from16 v14, p12

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-nez p5, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move/from16 v0, p5

    .line 27
    .line 28
    :goto_0
    add-int v1, v8, v9

    .line 29
    .line 30
    add-int/2addr v1, v10

    .line 31
    add-int/2addr v1, v11

    .line 32
    add-int/2addr v1, v12

    .line 33
    int-to-long v2, v1

    .line 34
    int-to-long v4, v0

    .line 35
    move-object/from16 v0, p0

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    move-wide v15, v4

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 41
    .line 42
    .line 43
    const-string v0, "% "

    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-ltz v7, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 51
    .line 52
    .line 53
    const-string v0, "/"

    .line 54
    .line 55
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    move-object/from16 v0, p4

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, ": "

    .line 64
    .line 65
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    int-to-long v2, v8

    .line 69
    move-object/from16 v0, p0

    .line 70
    .line 71
    move-object/from16 v1, p1

    .line 72
    .line 73
    move-wide v4, v15

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 75
    .line 76
    .line 77
    const-string v0, "% user + "

    .line 78
    .line 79
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    int-to-long v0, v9

    .line 83
    move-object/from16 p2, p0

    .line 84
    .line 85
    move-object/from16 p3, p1

    .line 86
    .line 87
    move-wide/from16 p4, v0

    .line 88
    .line 89
    move-wide/from16 p6, v15

    .line 90
    .line 91
    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 92
    .line 93
    .line 94
    const-string v0, "% kernel"

    .line 95
    .line 96
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, " + "

    .line 100
    .line 101
    if-lez v10, :cond_2

    .line 102
    .line 103
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    int-to-long v1, v10

    .line 107
    move-object/from16 p2, p0

    .line 108
    .line 109
    move-object/from16 p3, p1

    .line 110
    .line 111
    move-wide/from16 p4, v1

    .line 112
    .line 113
    move-wide/from16 p6, v15

    .line 114
    .line 115
    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 116
    .line 117
    .line 118
    const-string v1, "% iowait"

    .line 119
    .line 120
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    if-lez v11, :cond_3

    .line 124
    .line 125
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    int-to-long v1, v11

    .line 129
    move-object/from16 p2, p0

    .line 130
    .line 131
    move-object/from16 p3, p1

    .line 132
    .line 133
    move-wide/from16 p4, v1

    .line 134
    .line 135
    move-wide/from16 p6, v15

    .line 136
    .line 137
    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 138
    .line 139
    .line 140
    const-string v1, "% irq"

    .line 141
    .line 142
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    if-lez v12, :cond_4

    .line 146
    .line 147
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    int-to-long v0, v12

    .line 151
    move-object/from16 p2, p0

    .line 152
    .line 153
    move-object/from16 p3, p1

    .line 154
    .line 155
    move-wide/from16 p4, v0

    .line 156
    .line 157
    move-wide/from16 p6, v15

    .line 158
    .line 159
    invoke-direct/range {p2 .. p7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 160
    .line 161
    .line 162
    const-string v0, "% softirq"

    .line 163
    .line 164
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    if-gtz v13, :cond_5

    .line 168
    .line 169
    if-lez v14, :cond_7

    .line 170
    .line 171
    :cond_5
    const-string v0, " / faults:"

    .line 172
    .line 173
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, " "

    .line 177
    .line 178
    if-lez v13, :cond_6

    .line 179
    .line 180
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 184
    .line 185
    .line 186
    const-string v1, " minor"

    .line 187
    .line 188
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    if-lez v14, :cond_7

    .line 192
    .line 193
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 197
    .line 198
    .line 199
    const-string v0, " major"

    .line 200
    .line 201
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    mul-long/2addr p2, v0

    .line 4
    div-long/2addr p2, p4

    .line 5
    const-wide/16 p4, 0xa

    .line 6
    .line 7
    div-long v0, p2, p4

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 10
    .line 11
    .line 12
    cmp-long v2, v0, p4

    .line 13
    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    mul-long/2addr v0, p4

    .line 17
    sub-long/2addr p2, v0

    .line 18
    const-wide/16 p4, 0x0

    .line 19
    .line 20
    cmp-long p4, p2, p4

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    const/16 p4, 0x2e

    .line 25
    .line 26
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 18
    .line 19
    .line 20
    if-lez p1, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, p1, :cond_1

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 27
    .line 28
    aget-byte v5, v5, v4

    .line 29
    .line 30
    if-ne v5, p2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 39
    .line 40
    invoke-direct {p1, p2, v3, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    move-object v1, v2

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :catch_0
    move-object v2, v1

    .line 62
    :catch_1
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method


# virtual methods
.method public final buildWorkingProcs()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    const/4 v3, 0x1

    .line 19
    if-ge v2, v0, :cond_3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 28
    .line 29
    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-le v5, v3, :cond_2

    .line 47
    .line 48
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    move v5, v1

    .line 60
    :goto_1
    if-ge v5, v3, :cond_1

    .line 61
    .line 62
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 69
    .line 70
    iget-boolean v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 71
    .line 72
    if-eqz v7, :cond_0

    .line 73
    .line 74
    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 83
    .line 84
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    .line 85
    .line 86
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 93
    .line 94
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    .line 95
    .line 96
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    .line 98
    .line 99
    iput-boolean v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 6

    .line 1
    const-string v0, "/proc/"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "/stat"

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 24
    .line 25
    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {p1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    aget-wide v2, v0, p1

    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    aget-wide v4, v0, p1

    .line 39
    .line 40
    add-long/2addr v2, v4

    .line 41
    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 42
    .line 43
    mul-long/2addr v2, v4

    .line 44
    monitor-exit v1

    .line 45
    return-wide v2

    .line 46
    :cond_0
    monitor-exit v1

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    return-wide v0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1
.end method

.method public final getLastIdleTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object p1
.end method

.method public final getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 5
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 5

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object p1
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x80

    .line 10
    .line 11
    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 12
    .line 13
    .line 14
    const-string v2, "Load: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 22
    .line 23
    .line 24
    const-string v2, " / "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 12
    .line 13
    .line 14
    new-instance v14, Ljava/io/StringWriter;

    .line 15
    .line 16
    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v15, Lcom/android/internal/util/FastPrintWriter;

    .line 20
    .line 21
    const/16 v1, 0x400

    .line 22
    .line 23
    const/4 v12, 0x0

    .line 24
    invoke-direct {v15, v14, v12, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 25
    .line 26
    .line 27
    const-string v1, "CPU usage from "

    .line 28
    .line 29
    invoke-virtual {v15, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 33
    .line 34
    cmp-long v3, p1, v1

    .line 35
    .line 36
    const-string v4, "ms to "

    .line 37
    .line 38
    if-lez v3, :cond_0

    .line 39
    .line 40
    sub-long v1, p1, v1

    .line 41
    .line 42
    invoke-virtual {v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15, v4}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 49
    .line 50
    sub-long v1, p1, v1

    .line 51
    .line 52
    invoke-virtual {v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(J)V

    .line 53
    .line 54
    .line 55
    const-string v1, "ms ago"

    .line 56
    .line 57
    invoke-virtual {v15, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sub-long v1, v1, p1

    .line 62
    .line 63
    invoke-virtual {v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v15, v4}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 70
    .line 71
    sub-long v1, v1, p1

    .line 72
    .line 73
    invoke-virtual {v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->print(J)V

    .line 74
    .line 75
    .line 76
    const-string v1, "ms later"

    .line 77
    .line 78
    invoke-virtual {v15, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    const-string v1, " ("

    .line 82
    .line 83
    invoke-virtual {v15, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/util/Date;

    .line 87
    .line 88
    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 89
    .line 90
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v15, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, " to "

    .line 101
    .line 102
    invoke-virtual {v15, v1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Ljava/util/Date;

    .line 106
    .line 107
    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 108
    .line 109
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v15, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, ")"

    .line 120
    .line 121
    invoke-virtual {v15, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 125
    .line 126
    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 127
    .line 128
    sub-long/2addr v0, v2

    .line 129
    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 130
    .line 131
    iget-wide v4, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 132
    .line 133
    sub-long/2addr v2, v4

    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .line 136
    cmp-long v6, v2, v4

    .line 137
    .line 138
    const-wide/16 v7, 0x64

    .line 139
    .line 140
    if-lez v6, :cond_1

    .line 141
    .line 142
    mul-long/2addr v0, v7

    .line 143
    div-long v4, v0, v2

    .line 144
    .line 145
    :cond_1
    cmp-long v0, v4, v7

    .line 146
    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    const-string v0, " with "

    .line 150
    .line 151
    invoke-virtual {v15, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15, v4, v5}, Lcom/android/internal/util/FastPrintWriter;->print(J)V

    .line 155
    .line 156
    .line 157
    const-string v0, "% awake"

    .line 158
    .line 159
    invoke-virtual {v15, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    const-string v0, ":"

    .line 163
    .line 164
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 168
    .line 169
    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 170
    .line 171
    add-int/2addr v0, v1

    .line 172
    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 173
    .line 174
    add-int/2addr v0, v1

    .line 175
    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 176
    .line 177
    add-int/2addr v0, v1

    .line 178
    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 179
    .line 180
    add-int/2addr v0, v1

    .line 181
    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 182
    .line 183
    add-int v16, v0, v1

    .line 184
    .line 185
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    move v10, v12

    .line 192
    :goto_1
    if-ge v10, v11, :cond_8

    .line 193
    .line 194
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v9, v0

    .line 201
    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 202
    .line 203
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 204
    .line 205
    if-eqz v0, :cond_3

    .line 206
    .line 207
    const-string v0, " +"

    .line 208
    .line 209
    :goto_2
    move-object v2, v0

    .line 210
    goto :goto_3

    .line 211
    :cond_3
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 212
    .line 213
    if-eqz v0, :cond_4

    .line 214
    .line 215
    const-string v0, " -"

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_4
    const-string v0, "  "

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_3
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 222
    .line 223
    iget-object v4, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 224
    .line 225
    iget-wide v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 226
    .line 227
    long-to-int v5, v0

    .line 228
    iget v6, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 229
    .line 230
    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 231
    .line 232
    const/4 v8, 0x0

    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    iget v1, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 238
    .line 239
    iget v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 240
    .line 241
    move/from16 v19, v0

    .line 242
    .line 243
    move-object/from16 v0, p0

    .line 244
    .line 245
    move/from16 v20, v1

    .line 246
    .line 247
    move-object v1, v15

    .line 248
    move-object/from16 v21, v9

    .line 249
    .line 250
    move/from16 v9, v17

    .line 251
    .line 252
    move/from16 v17, v10

    .line 253
    .line 254
    move/from16 v10, v18

    .line 255
    .line 256
    move/from16 v18, v11

    .line 257
    .line 258
    move/from16 v11, v20

    .line 259
    .line 260
    move/from16 v20, v12

    .line 261
    .line 262
    move/from16 v12, v19

    .line 263
    .line 264
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 265
    .line 266
    .line 267
    move-object/from16 v12, v21

    .line 268
    .line 269
    iget-boolean v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 270
    .line 271
    if-nez v0, :cond_7

    .line 272
    .line 273
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 274
    .line 275
    if-eqz v0, :cond_7

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    move/from16 v10, v20

    .line 282
    .line 283
    :goto_4
    if-ge v10, v11, :cond_7

    .line 284
    .line 285
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 292
    .line 293
    iget-boolean v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 294
    .line 295
    if-eqz v1, :cond_5

    .line 296
    .line 297
    const-string v1, "   +"

    .line 298
    .line 299
    :goto_5
    move-object v2, v1

    .line 300
    goto :goto_6

    .line 301
    :cond_5
    iget-boolean v1, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 302
    .line 303
    if-eqz v1, :cond_6

    .line 304
    .line 305
    const-string v1, "   -"

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_6
    const-string v1, "    "

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :goto_6
    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 312
    .line 313
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 314
    .line 315
    iget-wide v5, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 316
    .line 317
    long-to-int v5, v5

    .line 318
    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 319
    .line 320
    iget v7, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 321
    .line 322
    const/4 v8, 0x0

    .line 323
    const/4 v9, 0x0

    .line 324
    const/16 v19, 0x0

    .line 325
    .line 326
    const/16 v21, 0x0

    .line 327
    .line 328
    const/16 v22, 0x0

    .line 329
    .line 330
    move-object/from16 v0, p0

    .line 331
    .line 332
    move-object v1, v15

    .line 333
    move/from16 v23, v10

    .line 334
    .line 335
    move/from16 v10, v19

    .line 336
    .line 337
    move/from16 v19, v11

    .line 338
    .line 339
    move/from16 v11, v21

    .line 340
    .line 341
    move-object/from16 v21, v12

    .line 342
    .line 343
    move/from16 v12, v22

    .line 344
    .line 345
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 346
    .line 347
    .line 348
    add-int/lit8 v10, v23, 0x1

    .line 349
    .line 350
    move/from16 v11, v19

    .line 351
    .line 352
    move-object/from16 v12, v21

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_7
    add-int/lit8 v10, v17, 0x1

    .line 356
    .line 357
    move/from16 v11, v18

    .line 358
    .line 359
    move/from16 v12, v20

    .line 360
    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :cond_8
    const-string v2, ""

    .line 364
    .line 365
    const/4 v3, -0x1

    .line 366
    const-string v4, "TOTAL"

    .line 367
    .line 368
    iget v6, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 369
    .line 370
    iget v7, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 371
    .line 372
    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 373
    .line 374
    iget v9, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 375
    .line 376
    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 377
    .line 378
    const/4 v11, 0x0

    .line 379
    const/4 v12, 0x0

    .line 380
    move-object/from16 v0, p0

    .line 381
    .line 382
    move-object v1, v15

    .line 383
    move/from16 v5, v16

    .line 384
    .line 385
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v15}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    return-object v0
.end method

.method public update()V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-object v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 16
    .line 17
    sget-object v8, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 18
    .line 19
    const-string v9, "/proc/stat"

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    invoke-static {v9, v8, v10, v6, v10}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const/4 v9, 0x2

    .line 27
    const/4 v11, 0x1

    .line 28
    const/4 v12, 0x0

    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    aget-wide v13, v6, v12

    .line 32
    .line 33
    aget-wide v15, v6, v11

    .line 34
    .line 35
    add-long/2addr v13, v15

    .line 36
    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 37
    .line 38
    mul-long/2addr v13, v10

    .line 39
    aget-wide v16, v6, v9

    .line 40
    .line 41
    mul-long v8, v16, v10

    .line 42
    .line 43
    const/16 v16, 0x3

    .line 44
    .line 45
    aget-wide v16, v6, v16

    .line 46
    .line 47
    move-wide/from16 v18, v13

    .line 48
    .line 49
    mul-long v12, v16, v10

    .line 50
    .line 51
    const/4 v14, 0x4

    .line 52
    aget-wide v16, v6, v14

    .line 53
    .line 54
    mul-long v14, v16, v10

    .line 55
    .line 56
    const/16 v16, 0x5

    .line 57
    .line 58
    aget-wide v16, v6, v16

    .line 59
    .line 60
    move-wide/from16 v20, v4

    .line 61
    .line 62
    mul-long v4, v16, v10

    .line 63
    .line 64
    const/16 v16, 0x6

    .line 65
    .line 66
    aget-wide v16, v6, v16

    .line 67
    .line 68
    mul-long v10, v10, v16

    .line 69
    .line 70
    move-wide/from16 v16, v2

    .line 71
    .line 72
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 73
    .line 74
    sub-long v2, v18, v2

    .line 75
    .line 76
    long-to-int v2, v2

    .line 77
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 78
    .line 79
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 80
    .line 81
    sub-long v2, v8, v2

    .line 82
    .line 83
    long-to-int v2, v2

    .line 84
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 85
    .line 86
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 87
    .line 88
    sub-long v2, v14, v2

    .line 89
    .line 90
    long-to-int v2, v2

    .line 91
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 92
    .line 93
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 94
    .line 95
    sub-long v2, v4, v2

    .line 96
    .line 97
    long-to-int v2, v2

    .line 98
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 99
    .line 100
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 101
    .line 102
    sub-long v2, v10, v2

    .line 103
    .line 104
    long-to-int v2, v2

    .line 105
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 106
    .line 107
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .line 108
    .line 109
    sub-long v2, v12, v2

    .line 110
    .line 111
    long-to-int v2, v2

    .line 112
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    iput-boolean v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 116
    .line 117
    move-wide/from16 v2, v18

    .line 118
    .line 119
    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 120
    .line 121
    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 122
    .line 123
    iput-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 124
    .line 125
    iput-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 126
    .line 127
    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 128
    .line 129
    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    move-wide/from16 v16, v2

    .line 133
    .line 134
    move-wide/from16 v20, v4

    .line 135
    .line 136
    :goto_0
    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 137
    .line 138
    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 139
    .line 140
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 141
    .line 142
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 143
    .line 144
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 145
    .line 146
    move-wide/from16 v0, v16

    .line 147
    .line 148
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 149
    .line 150
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 151
    .line 152
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 153
    .line 154
    move-wide/from16 v0, v20

    .line 155
    .line 156
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 157
    .line 158
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    :try_start_0
    const-string v2, "/proc"

    .line 163
    .line 164
    const/4 v3, -0x1

    .line 165
    iget-boolean v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 166
    .line 167
    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    .line 168
    .line 169
    iget-object v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 170
    .line 171
    move-object/from16 v1, p0

    .line 172
    .line 173
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 183
    .line 184
    const-string v1, "/proc/loadavg"

    .line 185
    .line 186
    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 187
    .line 188
    const/4 v3, 0x0

    .line 189
    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_2

    .line 194
    .line 195
    const/4 v1, 0x0

    .line 196
    aget v2, v0, v1

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    aget v1, v0, v1

    .line 200
    .line 201
    const/4 v3, 0x2

    .line 202
    aget v0, v0, v3

    .line 203
    .line 204
    iget v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 205
    .line 206
    cmpl-float v3, v2, v3

    .line 207
    .line 208
    if-nez v3, :cond_1

    .line 209
    .line 210
    iget v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 211
    .line 212
    cmpl-float v3, v1, v3

    .line 213
    .line 214
    if-nez v3, :cond_1

    .line 215
    .line 216
    iget v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 217
    .line 218
    cmpl-float v3, v0, v3

    .line 219
    .line 220
    if-eqz v3, :cond_2

    .line 221
    .line 222
    :cond_1
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 223
    .line 224
    iput v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 225
    .line 226
    iput v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 227
    .line 228
    invoke-virtual {v7, v2, v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 229
    .line 230
    .line 231
    :cond_2
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 233
    .line 234
    iput-boolean v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 235
    .line 236
    return-void

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 239
    .line 240
    .line 241
    throw v0
.end method
