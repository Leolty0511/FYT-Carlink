.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0xa4cb80L

.field public static COMMIT_UPTIME_PERIOD:J = 0x36ee80L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field private static final PARCEL_VERSION:I = 0x15

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    fill-array-data v0, :array_3

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 33
    .line 34
    const/16 v0, 0xe

    .line 35
    .line 36
    new-array v0, v0, [I

    .line 37
    .line 38
    fill-array-data v0, :array_4

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 42
    .line 43
    const-string v0, "^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [I

    .line 60
    .line 61
    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

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
    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    .line 78
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 19
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 20
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 22
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v1, 0x10

    new-array v1, v1, [J

    .line 23
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 24
    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-direct {v1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 3
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 4
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 6
    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v1, 0x10

    new-array v1, v1, [J

    .line 7
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 8
    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-direct {v1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 12
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {p1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    :cond_0
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 3

    .line 1
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    .line 2
    .line 3
    .line 4
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Available pages by page size:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v3, v1

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x1

    .line 37
    aput-object v4, v3, v5

    .line 38
    .line 39
    const-string v4, "Zone %3d  %14s "

    .line 40
    .line 41
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, [I

    .line 51
    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    move v4, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    array-length v4, v3

    .line 57
    :goto_1
    move v6, v1

    .line 58
    :goto_2
    if-ge v6, v4, :cond_1

    .line 59
    .line 60
    new-array v7, v5, [Ljava/lang/Object;

    .line 61
    .line 62
    aget v8, v3, v6

    .line 63
    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    aput-object v8, v7, v1

    .line 69
    .line 70
    const-string v8, "%6d"

    .line 71
    .line 72
    invoke-virtual {p1, v8, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "bad "

    .line 10
    .line 11
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p3, ": "

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-gt p2, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-ltz p2, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    not-int p2, p2

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-gt v0, p2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-gt p2, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    array-length p2, p3

    .line 10
    if-gt p4, p2, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p4, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    int-to-long v1, v1

    .line 22
    aput-wide v1, p3, v0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    not-int v1, v1

    .line 30
    int-to-long v3, v1

    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    shl-long/2addr v3, v1

    .line 34
    int-to-long v1, v2

    .line 35
    or-long/2addr v1, v3

    .line 36
    aput-wide v1, p3, v0

    .line 37
    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_2
    if-ge v0, p2, :cond_3

    .line 42
    .line 43
    const-wide/16 v1, 0x0

    .line 44
    .line 45
    aput-wide v1, p3, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    return-void

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string p3, "bad array lengths: got "

    .line 54
    .line 55
    const-string v0, " array is "

    .line 56
    .line 57
    invoke-static {p3, p4, v0, p2}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public static readFully(Ljava/io/InputStream;[I)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x4000

    .line 11
    .line 12
    :goto_0
    new-array v0, v0, [B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :cond_1
    :goto_1
    array-length v3, v0

    .line 17
    sub-int/2addr v3, v2

    .line 18
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-gez v3, :cond_2

    .line 23
    .line 24
    aput v2, p1, v1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    add-int/2addr v2, v3

    .line 28
    array-length v3, v0

    .line 29
    if-lt v2, v3, :cond_1

    .line 30
    .line 31
    add-int/lit16 v3, v2, 0x4000

    .line 32
    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 36
    .line 37
    .line 38
    move-object v0, v3

    .line 39
    goto :goto_1
.end method

.method private resetCommon()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->resetTable()V

    .line 41
    .line 42
    .line 43
    iput-wide v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    const/16 v5, 0x39

    .line 10
    .line 11
    const/16 v6, 0x30

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    if-ge v2, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    if-lt v8, v6, :cond_0

    .line 21
    .line 22
    if-gt v8, v5, :cond_0

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    move v4, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v4, v1

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-array v2, v3, [I

    .line 35
    .line 36
    move v8, v1

    .line 37
    move v9, v8

    .line 38
    move v10, v9

    .line 39
    :goto_2
    if-ge v8, v0, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-lt v11, v6, :cond_4

    .line 46
    .line 47
    if-gt v11, v5, :cond_4

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    add-int/lit8 v9, v11, -0x30

    .line 52
    .line 53
    move v4, v7

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    mul-int/lit8 v9, v9, 0xa

    .line 56
    .line 57
    add-int/lit8 v11, v11, -0x30

    .line 58
    .line 59
    add-int/2addr v9, v11

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    if-eqz v4, :cond_5

    .line 62
    .line 63
    add-int/lit8 v4, v10, 0x1

    .line 64
    .line 65
    aput v9, v2, v10

    .line 66
    .line 67
    move v10, v4

    .line 68
    move v4, v1

    .line 69
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    if-lez v3, :cond_7

    .line 73
    .line 74
    sub-int/2addr v3, v7

    .line 75
    aput v9, v2, v3

    .line 76
    .line 77
    :cond_7
    return-object v2
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    not-int v0, v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_2

    .line 3
    .line 4
    aget-wide v1, p2, v0

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-gez v5, :cond_0

    .line 11
    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v6, "Time val negative: "

    .line 15
    .line 16
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "ProcessStats"

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-wide v1, v3

    .line 32
    :cond_0
    const-wide/32 v3, 0x7fffffff

    .line 33
    .line 34
    .line 35
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-gtz v5, :cond_1

    .line 38
    .line 39
    long-to-int v1, v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v5, 0x20

    .line 45
    .line 46
    shr-long v5, v1, v5

    .line 47
    .line 48
    and-long/2addr v3, v5

    .line 49
    long-to-int v3, v3

    .line 50
    not-int v3, v3

    .line 51
    const-wide v4, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v1, v4

    .line 57
    long-to-int v1, v1

    .line 58
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    const/4 v10, 0x0

    .line 12
    :goto_0
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ge v10, v0, :cond_6

    .line 17
    .line 18
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v11, v0

    .line 23
    check-cast v11, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v12, v0

    .line 30
    check-cast v12, Landroid/util/SparseArray;

    .line 31
    .line 32
    const/4 v13, 0x0

    .line 33
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ge v13, v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v14

    .line 43
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v15, v0

    .line 48
    check-cast v15, Landroid/util/SparseArray;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_2
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ge v5, v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v3, v0

    .line 66
    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 67
    .line 68
    iget-object v0, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v1, 0x0

    .line 81
    :goto_3
    if-ge v1, v0, :cond_2

    .line 82
    .line 83
    iget-object v9, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Lcom/android/internal/app/procstats/ProcessState;

    .line 90
    .line 91
    move/from16 v16, v0

    .line 92
    .line 93
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eq v0, v9, :cond_1

    .line 98
    .line 99
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v6, v11, v14, v4, v0}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move/from16 v17, v5

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-ne v5, v0, :cond_0

    .line 114
    .line 115
    const/4 v5, 0x1

    .line 116
    invoke-virtual {v0, v5}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v18, v8

    .line 120
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    invoke-virtual {v6, v11, v14, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v5, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_0
    move-object/from16 v18, v8

    .line 144
    .line 145
    :goto_4
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_1
    move/from16 v17, v5

    .line 150
    .line 151
    move-object/from16 v18, v8

    .line 152
    .line 153
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    move-object/from16 v7, p1

    .line 156
    .line 157
    move/from16 v0, v16

    .line 158
    .line 159
    move/from16 v5, v17

    .line 160
    .line 161
    move-object/from16 v8, v18

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_2
    move/from16 v17, v5

    .line 165
    .line 166
    move-object/from16 v18, v8

    .line 167
    .line 168
    const/4 v7, 0x0

    .line 169
    :goto_6
    if-ge v7, v2, :cond_3

    .line 170
    .line 171
    iget-object v0, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move-object v8, v0

    .line 178
    check-cast v8, Lcom/android/internal/app/procstats/ServiceState;

    .line 179
    .line 180
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    move-object/from16 v0, p0

    .line 189
    .line 190
    move-object v1, v11

    .line 191
    move/from16 v16, v2

    .line 192
    .line 193
    move v2, v14

    .line 194
    move-object/from16 v19, v3

    .line 195
    .line 196
    move v3, v4

    .line 197
    move/from16 v20, v4

    .line 198
    .line 199
    move-object v4, v5

    .line 200
    move-object v5, v9

    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 209
    .line 210
    move/from16 v2, v16

    .line 211
    .line 212
    move-object/from16 v3, v19

    .line 213
    .line 214
    move/from16 v4, v20

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_3
    add-int/lit8 v5, v17, 0x1

    .line 218
    .line 219
    move-object/from16 v7, p1

    .line 220
    .line 221
    move-object/from16 v8, v18

    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_4
    move-object/from16 v18, v8

    .line 226
    .line 227
    add-int/lit8 v13, v13, 0x1

    .line 228
    .line 229
    move-object/from16 v7, p1

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_5
    move-object/from16 v18, v8

    .line 234
    .line 235
    add-int/lit8 v10, v10, 0x1

    .line 236
    .line 237
    move-object/from16 v7, p1

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_6
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    const/4 v9, 0x0

    .line 248
    :goto_7
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-ge v9, v0, :cond_a

    .line 253
    .line 254
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    move-object v10, v0

    .line 259
    check-cast v10, Landroid/util/SparseArray;

    .line 260
    .line 261
    const/4 v11, 0x0

    .line 262
    :goto_8
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-ge v11, v0, :cond_9

    .line 267
    .line 268
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    move-object v13, v0

    .line 277
    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 278
    .line 279
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v15

    .line 287
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 292
    .line 293
    invoke-virtual {v0, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 298
    .line 299
    if-nez v0, :cond_8

    .line 300
    .line 301
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 302
    .line 303
    move-object v0, v4

    .line 304
    move-object/from16 v1, p0

    .line 305
    .line 306
    move-object v2, v15

    .line 307
    move v3, v12

    .line 308
    move-object/from16 v16, v8

    .line 309
    .line 310
    move-object v8, v4

    .line 311
    move v4, v5

    .line 312
    move-object/from16 v17, v10

    .line 313
    .line 314
    move v10, v5

    .line 315
    move-object v5, v14

    .line 316
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 320
    .line 321
    invoke-virtual {v0, v14, v12, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v15, v12, v10}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 329
    .line 330
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_7

    .line 335
    .line 336
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 337
    .line 338
    invoke-virtual {v0, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_7
    move-object v0, v8

    .line 342
    goto :goto_9

    .line 343
    :cond_8
    move-object/from16 v16, v8

    .line 344
    .line 345
    move-object/from16 v17, v10

    .line 346
    .line 347
    :goto_9
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 348
    .line 349
    .line 350
    add-int/lit8 v11, v11, 0x1

    .line 351
    .line 352
    move-object/from16 v8, v16

    .line 353
    .line 354
    move-object/from16 v10, v17

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_9
    move-object/from16 v16, v8

    .line 358
    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_a
    const/4 v9, 0x0

    .line 363
    :goto_a
    const/16 v0, 0x8

    .line 364
    .line 365
    if-ge v9, v0, :cond_b

    .line 366
    .line 367
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 368
    .line 369
    aget-wide v1, v0, v9

    .line 370
    .line 371
    iget-object v3, v7, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 372
    .line 373
    aget-wide v4, v3, v9

    .line 374
    .line 375
    add-long/2addr v1, v4

    .line 376
    aput-wide v1, v0, v9

    .line 377
    .line 378
    add-int/lit8 v9, v9, 0x1

    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_b
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 382
    .line 383
    iget-object v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    .line 386
    .line 387
    .line 388
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 389
    .line 390
    iget-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 391
    .line 392
    cmp-long v2, v0, v2

    .line 393
    .line 394
    if-gez v2, :cond_c

    .line 395
    .line 396
    iput-wide v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 397
    .line 398
    iget-object v0, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 399
    .line 400
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 401
    .line 402
    :cond_c
    iget-wide v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 403
    .line 404
    iget-wide v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 405
    .line 406
    iget-wide v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 407
    .line 408
    sub-long/2addr v2, v4

    .line 409
    add-long/2addr v2, v0

    .line 410
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 411
    .line 412
    iget-wide v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 413
    .line 414
    iget-wide v2, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 415
    .line 416
    iget-wide v4, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 417
    .line 418
    sub-long/2addr v2, v4

    .line 419
    add-long/2addr v2, v0

    .line 420
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 421
    .line 422
    iget-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 423
    .line 424
    iget-boolean v1, v7, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 425
    .line 426
    or-int/2addr v0, v1

    .line 427
    iput-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 428
    .line 429
    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v1, v2, :cond_1

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0xe

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 10
    .line 11
    const-wide/16 v3, 0x1

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-wide v3, v2, v5

    .line 15
    .line 16
    move v2, v5

    .line 17
    :goto_0
    const/4 v3, 0x3

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 21
    .line 22
    add-int/lit8 v4, v2, 0x1

    .line 23
    .line 24
    aput-wide p1, v3, v4

    .line 25
    .line 26
    add-int/lit8 v6, v2, 0x4

    .line 27
    .line 28
    aput-wide p3, v3, v6

    .line 29
    .line 30
    add-int/lit8 v6, v2, 0x7

    .line 31
    .line 32
    aput-wide p5, v3, v6

    .line 33
    .line 34
    add-int/lit8 v6, v2, 0xa

    .line 35
    .line 36
    aput-wide p7, v3, v6

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0xd

    .line 39
    .line 40
    aput-wide p9, v3, v2

    .line 41
    .line 42
    move v2, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    .line 47
    .line 48
    invoke-virtual {v2, v1, v3, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p0

    .line 9
    .line 10
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v5, v6, :cond_7

    .line 22
    .line 23
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Landroid/util/SparseArray;

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-ge v8, v9, :cond_6

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    check-cast v9, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/4 v11, 0x0

    .line 53
    :goto_2
    if-ge v11, v10, :cond_5

    .line 54
    .line 55
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    check-cast v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 60
    .line 61
    iget-object v13, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-eqz v14, :cond_0

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_0
    const/4 v14, 0x0

    .line 77
    goto :goto_4

    .line 78
    :cond_1
    :goto_3
    const/4 v14, 0x1

    .line 79
    :goto_4
    const/4 v15, 0x0

    .line 80
    :goto_5
    if-ge v15, v13, :cond_4

    .line 81
    .line 82
    iget-object v4, v12, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    .line 89
    .line 90
    if-nez v14, :cond_2

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_2
    if-eqz p8, :cond_3

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 120
    .line 121
    move-object/from16 v2, p0

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 125
    .line 126
    move-object/from16 v2, p0

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 130
    .line 131
    move-object/from16 v2, p0

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    move-object/from16 v2, p0

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    :goto_7
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-ge v4, v2, :cond_a

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 160
    .line 161
    move-object v5, v2

    .line 162
    move-object/from16 v6, p1

    .line 163
    .line 164
    move-object/from16 v7, p2

    .line 165
    .line 166
    move-object/from16 v8, p3

    .line 167
    .line 168
    move-wide/from16 v9, p5

    .line 169
    .line 170
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    const-wide/16 v7, 0x0

    .line 175
    .line 176
    cmp-long v3, v5, v7

    .line 177
    .line 178
    if-lez v3, :cond_8

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-object/from16 v3, p3

    .line 184
    .line 185
    move-object/from16 v11, p4

    .line 186
    .line 187
    if-eq v3, v11, :cond_9

    .line 188
    .line 189
    move-object v5, v2

    .line 190
    move-object/from16 v6, p1

    .line 191
    .line 192
    move-object/from16 v7, p2

    .line 193
    .line 194
    move-object/from16 v8, p4

    .line 195
    .line 196
    move-wide/from16 v9, p5

    .line 197
    .line 198
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    .line 199
    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_8
    move-object/from16 v3, p3

    .line 203
    .line 204
    move-object/from16 v11, p4

    .line 205
    .line 206
    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_a
    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    .line 210
    .line 211
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    .line 213
    .line 214
    return-object v0
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move v7, v6

    .line 13
    :goto_0
    const/16 v8, 0xe

    .line 14
    .line 15
    const-wide/16 v9, 0x0

    .line 16
    .line 17
    if-ge v7, v8, :cond_0

    .line 18
    .line 19
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 20
    .line 21
    aput-wide v9, v8, v7

    .line 22
    .line 23
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    .line 24
    .line 25
    aput-wide v4, v8, v7

    .line 26
    .line 27
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    .line 28
    .line 29
    aput-wide v4, v8, v7

    .line 30
    .line 31
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 32
    .line 33
    aput v6, v8, v7

    .line 34
    .line 35
    add-int/lit8 v7, v7, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v7, v6

    .line 39
    :goto_1
    const/16 v8, 0x10

    .line 40
    .line 41
    if-ge v7, v8, :cond_1

    .line 42
    .line 43
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .line 44
    .line 45
    aput-wide v4, v8, v7

    .line 46
    .line 47
    add-int/lit8 v7, v7, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 51
    .line 52
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 53
    .line 54
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 55
    .line 56
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 57
    .line 58
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 59
    .line 60
    iput v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 61
    .line 62
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    move v5, v6

    .line 69
    :goto_2
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    .line 70
    .line 71
    array-length v7, v7

    .line 72
    if-ge v5, v7, :cond_5

    .line 73
    .line 74
    move v7, v6

    .line 75
    :goto_3
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    .line 76
    .line 77
    array-length v9, v8

    .line 78
    if-ge v7, v9, :cond_4

    .line 79
    .line 80
    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    .line 81
    .line 82
    aget v9, v9, v5

    .line 83
    .line 84
    aget v8, v8, v7

    .line 85
    .line 86
    add-int/2addr v9, v8

    .line 87
    mul-int/lit8 v8, v9, 0xe

    .line 88
    .line 89
    iget-object v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 90
    .line 91
    aget-wide v11, v10, v9

    .line 92
    .line 93
    iget v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 94
    .line 95
    if-ne v10, v9, :cond_2

    .line 96
    .line 97
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 98
    .line 99
    sub-long v9, v2, v9

    .line 100
    .line 101
    add-long/2addr v11, v9

    .line 102
    :cond_2
    iget-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 103
    .line 104
    add-long/2addr v9, v11

    .line 105
    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 106
    .line 107
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 108
    .line 109
    int-to-byte v8, v8

    .line 110
    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKey(B)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const/4 v9, -0x1

    .line 115
    if-eq v8, v9, :cond_3

    .line 116
    .line 117
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 118
    .line 119
    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getArrayForKey(I)[J

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    add-int/lit8 v10, v8, 0x0

    .line 128
    .line 129
    aget-wide v13, v9, v10

    .line 130
    .line 131
    const-wide/16 v15, 0x3

    .line 132
    .line 133
    cmp-long v10, v13, v15

    .line 134
    .line 135
    if-ltz v10, :cond_3

    .line 136
    .line 137
    iget-object v10, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .line 138
    .line 139
    invoke-static {v10, v6, v4, v6}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_3
    move-object v9, v4

    .line 144
    move v8, v6

    .line 145
    :goto_4
    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 146
    .line 147
    add-int/lit8 v10, v8, 0x2

    .line 148
    .line 149
    move/from16 v16, v7

    .line 150
    .line 151
    aget-wide v6, v9, v10

    .line 152
    .line 153
    long-to-double v6, v6

    .line 154
    long-to-double v10, v11

    .line 155
    mul-double/2addr v6, v10

    .line 156
    add-double/2addr v6, v13

    .line 157
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 158
    .line 159
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 160
    .line 161
    add-int/lit8 v12, v8, 0x5

    .line 162
    .line 163
    aget-wide v12, v9, v12

    .line 164
    .line 165
    long-to-double v12, v12

    .line 166
    mul-double/2addr v12, v10

    .line 167
    add-double/2addr v12, v6

    .line 168
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 169
    .line 170
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 171
    .line 172
    add-int/lit8 v12, v8, 0x8

    .line 173
    .line 174
    aget-wide v12, v9, v12

    .line 175
    .line 176
    long-to-double v12, v12

    .line 177
    mul-double/2addr v12, v10

    .line 178
    add-double/2addr v12, v6

    .line 179
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 180
    .line 181
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 182
    .line 183
    add-int/lit8 v12, v8, 0xb

    .line 184
    .line 185
    aget-wide v12, v9, v12

    .line 186
    .line 187
    long-to-double v12, v12

    .line 188
    mul-double/2addr v12, v10

    .line 189
    add-double/2addr v12, v6

    .line 190
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 191
    .line 192
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 193
    .line 194
    add-int/lit8 v12, v8, 0xe

    .line 195
    .line 196
    aget-wide v12, v9, v12

    .line 197
    .line 198
    long-to-double v12, v12

    .line 199
    mul-double/2addr v12, v10

    .line 200
    add-double/2addr v12, v6

    .line 201
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 202
    .line 203
    iget v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 204
    .line 205
    int-to-long v6, v6

    .line 206
    const/4 v10, 0x0

    .line 207
    add-int/2addr v8, v10

    .line 208
    aget-wide v8, v9, v8

    .line 209
    .line 210
    add-long/2addr v6, v8

    .line 211
    long-to-int v6, v6

    .line 212
    iput v6, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 213
    .line 214
    add-int/lit8 v7, v16, 0x1

    .line 215
    .line 216
    move v6, v10

    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_4
    move v10, v6

    .line 220
    add-int/lit8 v5, v5, 0x1

    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :cond_5
    move v10, v6

    .line 225
    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 226
    .line 227
    iput-boolean v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    .line 228
    .line 229
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 230
    .line 231
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    move v5, v10

    .line 236
    :goto_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-ge v5, v6, :cond_7

    .line 241
    .line 242
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Landroid/util/SparseArray;

    .line 247
    .line 248
    move v7, v10

    .line 249
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-ge v7, v8, :cond_6

    .line 254
    .line 255
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 260
    .line 261
    invoke-virtual {v8, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 262
    .line 263
    .line 264
    add-int/lit8 v7, v7, 0x1

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_7
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v11

    .line 11
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 14
    .line 15
    .line 16
    move-result-object v13

    .line 17
    const-string/jumbo v1, "vers,5"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "period,"

    .line 24
    .line 25
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v14, ","

    .line 34
    .line 35
    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 39
    .line 40
    invoke-virtual {v9, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v9, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 58
    .line 59
    .line 60
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 61
    .line 62
    and-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    const/4 v15, 0x1

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-string v1, ",shutdown"

    .line 70
    .line 71
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move/from16 v1, v16

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v1, v15

    .line 78
    :goto_1
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 79
    .line 80
    and-int/lit8 v2, v2, 0x4

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    const-string v1, ",sysprops"

    .line 85
    .line 86
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move/from16 v1, v16

    .line 90
    .line 91
    :cond_2
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 92
    .line 93
    and-int/2addr v2, v15

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    const-string v1, ",complete"

    .line 97
    .line 98
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move/from16 v1, v16

    .line 102
    .line 103
    :cond_3
    if-eqz v1, :cond_4

    .line 104
    .line 105
    const-string v1, ",partial"

    .line 106
    .line 107
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    const-string v1, ",swapped-out-pss"

    .line 115
    .line 116
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 120
    .line 121
    .line 122
    const-string v1, "config,"

    .line 123
    .line 124
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    move/from16 v7, v16

    .line 133
    .line 134
    :goto_2
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ge v7, v1, :cond_b

    .line 139
    .line 140
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    move-object v8, v1

    .line 145
    check-cast v8, Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v10, :cond_6

    .line 148
    .line 149
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_6
    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    move-object v6, v1

    .line 162
    check-cast v6, Landroid/util/SparseArray;

    .line 163
    .line 164
    move/from16 v5, v16

    .line 165
    .line 166
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v5, v1, :cond_a

    .line 171
    .line 172
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 173
    .line 174
    .line 175
    move-result v17

    .line 176
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    move-object v4, v1

    .line 181
    check-cast v4, Landroid/util/SparseArray;

    .line 182
    .line 183
    move/from16 v3, v16

    .line 184
    .line 185
    :goto_4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-ge v3, v1, :cond_9

    .line 190
    .line 191
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 192
    .line 193
    .line 194
    move-result v18

    .line 195
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    move-object v2, v1

    .line 200
    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 201
    .line 202
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iget-object v15, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    move/from16 v10, v16

    .line 215
    .line 216
    :goto_5
    if-ge v10, v1, :cond_7

    .line 217
    .line 218
    move/from16 v19, v1

    .line 219
    .line 220
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 221
    .line 222
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 227
    .line 228
    move/from16 v20, v3

    .line 229
    .line 230
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 231
    .line 232
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    move-object/from16 v21, v3

    .line 237
    .line 238
    check-cast v21, Ljava/lang/String;

    .line 239
    .line 240
    move-object v3, v2

    .line 241
    move-object/from16 v2, p1

    .line 242
    .line 243
    move-object/from16 v22, v13

    .line 244
    .line 245
    move-object v13, v3

    .line 246
    move-object v3, v8

    .line 247
    move-object/from16 v23, v4

    .line 248
    .line 249
    move/from16 v4, v17

    .line 250
    .line 251
    move/from16 v24, v5

    .line 252
    .line 253
    move/from16 v5, v18

    .line 254
    .line 255
    move-object/from16 v25, v6

    .line 256
    .line 257
    move-object/from16 v6, v21

    .line 258
    .line 259
    move/from16 v21, v7

    .line 260
    .line 261
    move-object/from16 v26, v14

    .line 262
    .line 263
    move-object v14, v8

    .line 264
    move-wide v7, v11

    .line 265
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    .line 266
    .line 267
    .line 268
    add-int/lit8 v10, v10, 0x1

    .line 269
    .line 270
    move-object v2, v13

    .line 271
    move-object v8, v14

    .line 272
    move/from16 v1, v19

    .line 273
    .line 274
    move/from16 v3, v20

    .line 275
    .line 276
    move/from16 v7, v21

    .line 277
    .line 278
    move-object/from16 v13, v22

    .line 279
    .line 280
    move-object/from16 v4, v23

    .line 281
    .line 282
    move/from16 v5, v24

    .line 283
    .line 284
    move-object/from16 v6, v25

    .line 285
    .line 286
    move-object/from16 v14, v26

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_7
    move/from16 v20, v3

    .line 290
    .line 291
    move-object/from16 v23, v4

    .line 292
    .line 293
    move/from16 v24, v5

    .line 294
    .line 295
    move-object/from16 v25, v6

    .line 296
    .line 297
    move/from16 v21, v7

    .line 298
    .line 299
    move-object/from16 v22, v13

    .line 300
    .line 301
    move-object/from16 v26, v14

    .line 302
    .line 303
    move-object v13, v2

    .line 304
    move-object v14, v8

    .line 305
    move/from16 v10, v16

    .line 306
    .line 307
    :goto_6
    if-ge v10, v15, :cond_8

    .line 308
    .line 309
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 310
    .line 311
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v14, v1}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    iget-object v1, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 322
    .line 323
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 328
    .line 329
    move-object/from16 v2, p1

    .line 330
    .line 331
    move-object v3, v14

    .line 332
    move/from16 v4, v17

    .line 333
    .line 334
    move/from16 v5, v18

    .line 335
    .line 336
    move-wide v7, v11

    .line 337
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    .line 338
    .line 339
    .line 340
    add-int/lit8 v10, v10, 0x1

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_8
    add-int/lit8 v3, v20, 0x1

    .line 344
    .line 345
    move-object/from16 v10, p2

    .line 346
    .line 347
    move-object v8, v14

    .line 348
    move/from16 v7, v21

    .line 349
    .line 350
    move-object/from16 v13, v22

    .line 351
    .line 352
    move-object/from16 v4, v23

    .line 353
    .line 354
    move/from16 v5, v24

    .line 355
    .line 356
    move-object/from16 v6, v25

    .line 357
    .line 358
    move-object/from16 v14, v26

    .line 359
    .line 360
    const/4 v15, 0x1

    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :cond_9
    move/from16 v24, v5

    .line 364
    .line 365
    move-object/from16 v25, v6

    .line 366
    .line 367
    move/from16 v21, v7

    .line 368
    .line 369
    move-object/from16 v22, v13

    .line 370
    .line 371
    move-object/from16 v26, v14

    .line 372
    .line 373
    move-object v14, v8

    .line 374
    add-int/lit8 v5, v24, 0x1

    .line 375
    .line 376
    move-object/from16 v10, p2

    .line 377
    .line 378
    move-object/from16 v14, v26

    .line 379
    .line 380
    const/4 v15, 0x1

    .line 381
    goto/16 :goto_3

    .line 382
    .line 383
    :cond_a
    :goto_7
    move/from16 v21, v7

    .line 384
    .line 385
    move-object/from16 v22, v13

    .line 386
    .line 387
    move-object/from16 v26, v14

    .line 388
    .line 389
    add-int/lit8 v7, v21, 0x1

    .line 390
    .line 391
    move-object/from16 v10, p2

    .line 392
    .line 393
    move-object/from16 v13, v22

    .line 394
    .line 395
    move-object/from16 v14, v26

    .line 396
    .line 397
    const/4 v15, 0x1

    .line 398
    goto/16 :goto_2

    .line 399
    .line 400
    :cond_b
    move-object/from16 v26, v14

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    move/from16 v8, v16

    .line 409
    .line 410
    :goto_8
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-ge v8, v1, :cond_d

    .line 415
    .line 416
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    move-object v10, v1

    .line 421
    check-cast v10, Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    move-object v13, v1

    .line 428
    check-cast v13, Landroid/util/SparseArray;

    .line 429
    .line 430
    move/from16 v14, v16

    .line 431
    .line 432
    :goto_9
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-ge v14, v1, :cond_c

    .line 437
    .line 438
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 447
    .line 448
    move-object/from16 v2, p1

    .line 449
    .line 450
    move-object v3, v10

    .line 451
    move-wide v5, v11

    .line 452
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    .line 453
    .line 454
    .line 455
    add-int/lit8 v14, v14, 0x1

    .line 456
    .line 457
    goto :goto_9

    .line 458
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_d
    const-string/jumbo v1, "total"

    .line 462
    .line 463
    .line 464
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v2, ","

    .line 468
    .line 469
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 470
    .line 471
    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 472
    .line 473
    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 474
    .line 475
    move-object/from16 v1, p1

    .line 476
    .line 477
    move-wide v7, v11

    .line 478
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 479
    .line 480
    .line 481
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 482
    .line 483
    .line 484
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 485
    .line 486
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    const-string v2, ":"

    .line 491
    .line 492
    if-lez v1, :cond_10

    .line 493
    .line 494
    const-string/jumbo v3, "sysmemusage"

    .line 495
    .line 496
    .line 497
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    move/from16 v3, v16

    .line 501
    .line 502
    :goto_a
    if-ge v3, v1, :cond_10

    .line 503
    .line 504
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 505
    .line 506
    invoke-virtual {v4, v3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    move-object/from16 v6, v26

    .line 515
    .line 516
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-static {v9, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 520
    .line 521
    .line 522
    move/from16 v5, v16

    .line 523
    .line 524
    :goto_b
    const/16 v7, 0x10

    .line 525
    .line 526
    if-ge v5, v7, :cond_f

    .line 527
    .line 528
    const/4 v7, 0x1

    .line 529
    if-le v5, v7, :cond_e

    .line 530
    .line 531
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :cond_e
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 535
    .line 536
    invoke-virtual {v8, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 537
    .line 538
    .line 539
    move-result-wide v13

    .line 540
    invoke-virtual {v9, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    .line 541
    .line 542
    .line 543
    add-int/lit8 v5, v5, 0x1

    .line 544
    .line 545
    goto :goto_b

    .line 546
    :cond_f
    const/4 v7, 0x1

    .line 547
    add-int/lit8 v3, v3, 0x1

    .line 548
    .line 549
    move-object/from16 v26, v6

    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_10
    move-object/from16 v6, v26

    .line 553
    .line 554
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 555
    .line 556
    .line 557
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    .line 558
    .line 559
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 560
    .line 561
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 562
    .line 563
    invoke-direct {v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 567
    .line 568
    .line 569
    const-string/jumbo v3, "weights,"

    .line 570
    .line 571
    .line 572
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 576
    .line 577
    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 584
    .line 585
    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    iget v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 592
    .line 593
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 600
    .line 601
    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 608
    .line 609
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 616
    .line 617
    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iget v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 624
    .line 625
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 632
    .line 633
    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 640
    .line 641
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 648
    .line 649
    invoke-virtual {v9, v3, v4}, Ljava/io/PrintWriter;->print(D)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 656
    .line 657
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 658
    .line 659
    .line 660
    move/from16 v3, v16

    .line 661
    .line 662
    :goto_c
    const/16 v4, 0xe

    .line 663
    .line 664
    if-ge v3, v4, :cond_11

    .line 665
    .line 666
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 670
    .line 671
    aget-wide v7, v4, v3

    .line 672
    .line 673
    invoke-virtual {v9, v7, v8}, Ljava/io/PrintWriter;->print(D)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 680
    .line 681
    aget v4, v4, v3

    .line 682
    .line 683
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 684
    .line 685
    .line 686
    add-int/lit8 v3, v3, 0x1

    .line 687
    .line 688
    goto :goto_c

    .line 689
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 690
    .line 691
    .line 692
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    move/from16 v2, v16

    .line 699
    .line 700
    :goto_d
    if-ge v2, v1, :cond_15

    .line 701
    .line 702
    const-string v3, "availablepages,"

    .line 703
    .line 704
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 708
    .line 709
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    check-cast v3, Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 722
    .line 723
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 734
    .line 735
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    check-cast v3, [I

    .line 740
    .line 741
    if-nez v3, :cond_12

    .line 742
    .line 743
    move/from16 v4, v16

    .line 744
    .line 745
    goto :goto_e

    .line 746
    :cond_12
    array-length v4, v3

    .line 747
    :goto_e
    move/from16 v5, v16

    .line 748
    .line 749
    :goto_f
    if-ge v5, v4, :cond_14

    .line 750
    .line 751
    if-eqz v5, :cond_13

    .line 752
    .line 753
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    :cond_13
    aget v7, v3, v5

    .line 757
    .line 758
    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 759
    .line 760
    .line 761
    add-int/lit8 v5, v5, 0x1

    .line 762
    .line 763
    goto :goto_f

    .line 764
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 765
    .line 766
    .line 767
    add-int/lit8 v2, v2, 0x1

    .line 768
    .line 769
    goto :goto_d

    .line 770
    :cond_15
    return-void
.end method

.method public dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p4

    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    move-wide/from16 v5, p8

    .line 10
    .line 11
    move-object/from16 v7, p12

    .line 12
    .line 13
    move/from16 v8, p13

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    move-object v1, p1

    .line 34
    move-object v2, p3

    .line 35
    move-object v4, p4

    .line 36
    move-object/from16 v5, p5

    .line 37
    .line 38
    move-object/from16 v6, p7

    .line 39
    .line 40
    move-wide/from16 v7, p8

    .line 41
    .line 42
    move-wide/from16 v9, p10

    .line 43
    .line 44
    invoke-static/range {v1 .. v10}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 40

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move/from16 v3, p6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1
    iget-object v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v11, v6, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v14}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v18

    .line 2
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-lez v0, :cond_0

    const-string v0, "System memory usage:"

    .line 3
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const-string v7, "  "

    invoke-virtual {v0, v5, v7, v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    move/from16 v0, v20

    goto :goto_0

    :cond_0
    move/from16 v0, v21

    .line 5
    :goto_0
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    move/from16 v1, v21

    move v7, v1

    .line 6
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const-string v15, "        "

    const-string v13, " entries)"

    const-string v14, " / "

    const-string v12, "  * "

    const-string v11, ")"

    const-string v10, "      (Not active: "

    const-string v9, ":"

    if-ge v1, v8, :cond_1a

    .line 7
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/util/SparseArray;

    move/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v2, v21

    .line 9
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_19

    .line 10
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 11
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v6

    move-object/from16 v6, v22

    check-cast v6, Landroid/util/SparseArray;

    move/from16 v24, v1

    move/from16 v22, v2

    move/from16 v2, v21

    .line 12
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_18

    .line 13
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 14
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v6

    move-object/from16 v6, v25

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move/from16 v25, v2

    .line 15
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move-object/from16 v27, v10

    .line 16
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    goto :goto_4

    :cond_1
    move/from16 v28, v21

    goto :goto_5

    :cond_2
    :goto_4
    move/from16 v28, v20

    :goto_5
    move-object/from16 v29, v11

    if-nez v28, :cond_5

    move/from16 v11, v21

    :goto_6
    move-object/from16 v30, v13

    if-ge v11, v2, :cond_4

    .line 18
    iget-object v13, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 19
    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move/from16 v11, v20

    goto :goto_7

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v30

    goto :goto_6

    :cond_4
    move/from16 v11, v21

    :goto_7
    if-nez v11, :cond_6

    move-object v6, v4

    move-object v1, v5

    move-object/from16 v33, v8

    move-object v3, v9

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v36, v15

    move-object/from16 v2, v27

    move-object/from16 v5, v29

    move-object/from16 v4, v30

    move/from16 v29, v0

    move/from16 v27, v25

    move/from16 v25, v22

    move-object/from16 v22, v17

    goto/16 :goto_17

    :cond_5
    move-object/from16 v30, v13

    :cond_6
    if-gtz v2, :cond_8

    if-lez v10, :cond_7

    goto :goto_9

    :cond_7
    :goto_8
    move/from16 v31, v7

    move/from16 v32, v16

    goto :goto_a

    :cond_8
    :goto_9
    if-nez v7, :cond_a

    if-eqz v16, :cond_9

    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string v7, "Per-Package Stats:"

    .line 21
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v7, v20

    move/from16 v16, v7

    .line 22
    :cond_a
    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-static {v5, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v11, " / v"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :goto_a
    if-eqz p5, :cond_f

    if-eqz v3, :cond_b

    goto/16 :goto_d

    .line 25
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v7, v21

    :goto_b
    if-ge v7, v2, :cond_e

    .line 26
    iget-object v11, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v28, :cond_c

    .line 27
    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_c

    :cond_c
    if-eqz p7, :cond_d

    .line 28
    invoke-virtual {v11}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_c

    .line 29
    :cond_d
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_e
    const-string v2, "      "

    .line 30
    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v13, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v16, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v7, p1

    move-object/from16 v33, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v1

    move v1, v10

    move-object/from16 v3, v27

    move-object v10, v11

    move/from16 v27, v1

    move-object/from16 v1, v29

    move-object v11, v13

    move-object v13, v12

    move-object/from16 v12, v16

    move/from16 v29, v0

    move-object/from16 v35, v13

    move-object/from16 v34, v14

    move-object/from16 v0, v30

    move-wide/from16 v13, p3

    move-object/from16 v36, v15

    move-wide/from16 v15, v18

    invoke-static/range {v7 .. v16}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    move/from16 v11, p6

    move-object v14, v0

    move-object v13, v1

    move-object v15, v2

    goto/16 :goto_12

    :cond_f
    :goto_d
    move-object/from16 v33, v8

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v36, v15

    move-object/from16 v3, v27

    move-object/from16 v1, v29

    move/from16 v29, v0

    move-object v15, v9

    move/from16 v27, v10

    move-object/from16 v0, v30

    move/from16 v13, v21

    :goto_e
    if-ge v13, v2, :cond_13

    .line 31
    iget-object v7, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v28, :cond_10

    .line 32
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    :goto_f
    move/from16 v11, p6

    move-object v14, v0

    move v8, v2

    move-object v10, v3

    move-object v9, v4

    move-object v7, v5

    move/from16 v38, v13

    move/from16 v12, v27

    move-object/from16 v5, v36

    move-object v13, v1

    move/from16 v27, v25

    move/from16 v25, v22

    move-object/from16 v22, v17

    goto/16 :goto_11

    :cond_10
    if-eqz p7, :cond_11

    .line 33
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v7

    if-nez v7, :cond_11

    .line 34
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v7, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_11
    const-string v7, "      Process "

    .line 36
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    iget-object v7, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, " (multi, "

    .line 39
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    :cond_12
    const-string v7, " (unique, "

    .line 40
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    :goto_10
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 42
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "        "

    .line 44
    sget-object v16, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v30, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v37, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v7, v14

    move-object/from16 v8, p1

    move-object/from16 v10, v16

    move-object/from16 v11, v30

    move-object/from16 v12, v37

    move/from16 v38, v13

    move-object/from16 v39, v14

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v7, "        "

    move-object v14, v0

    move-object/from16 v0, v39

    move-object v13, v1

    move/from16 v12, v27

    move-object/from16 v1, p1

    move v8, v2

    move/from16 v27, v25

    move/from16 v25, v22

    move-object/from16 v22, v17

    move-object v2, v7

    move/from16 v11, p6

    move-object v10, v3

    move-object/from16 v3, v16

    move-object v9, v4

    move-object/from16 v4, v30

    move-object v7, v5

    move-object/from16 v5, v37

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    move-object/from16 v5, v36

    .line 46
    invoke-virtual {v0, v7, v5, v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_11
    add-int/lit8 v0, v38, 0x1

    move-object/from16 v36, v5

    move-object v5, v7

    move v2, v8

    move-object v4, v9

    move-object v3, v10

    move-object v1, v13

    move-object/from16 v17, v22

    move/from16 v22, v25

    move/from16 v25, v27

    move v13, v0

    move/from16 v27, v12

    move-object v0, v14

    goto/16 :goto_e

    :cond_13
    move/from16 v11, p6

    move-object v14, v0

    move-object v13, v1

    :goto_12
    move-object v10, v3

    move-object v9, v4

    move-object v7, v5

    move/from16 v12, v27

    move-object/from16 v5, v36

    move/from16 v27, v25

    move/from16 v25, v22

    move-object/from16 v22, v17

    move/from16 v0, v21

    :goto_13
    if-ge v0, v12, :cond_17

    .line 47
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    if-nez v28, :cond_14

    .line 48
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :goto_14
    move-object/from16 v36, v5

    move-object/from16 v30, v6

    move-object v1, v7

    move-object v6, v9

    move-object v2, v10

    move/from16 v37, v12

    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    goto/16 :goto_16

    :cond_14
    if-eqz p7, :cond_15

    .line 49
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v2

    if-nez v2, :cond_15

    .line 50
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_15
    if-eqz v11, :cond_16

    const-string v2, "      Service "

    .line 52
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_15

    :cond_16
    const-string v2, "      * "

    .line 53
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    :goto_15
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        Process: "

    .line 56
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        "

    const-string v3, "          "

    const-string v4, "    "

    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object/from16 v8, p1

    move-object/from16 v30, v6

    move-object v6, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v3

    move v3, v11

    move-object v11, v4

    move-object/from16 v36, v5

    move v4, v12

    move-object v5, v13

    move-wide/from16 v12, p3

    move/from16 v37, v4

    move-object v4, v14

    move-object v3, v15

    move-wide/from16 v14, v18

    move/from16 v16, p5

    move/from16 v17, p6

    .line 57
    invoke-virtual/range {v7 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    :goto_16
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, p6

    move-object v7, v1

    move-object v10, v2

    move-object v15, v3

    move-object v14, v4

    move-object v13, v5

    move-object v9, v6

    move-object/from16 v6, v30

    move-object/from16 v5, v36

    move/from16 v12, v37

    goto/16 :goto_13

    :cond_17
    move-object/from16 v36, v5

    move-object v1, v7

    move-object v6, v9

    move-object v2, v10

    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    move/from16 v7, v31

    move/from16 v16, v32

    :goto_17
    add-int/lit8 v0, v27, 0x1

    move-object v10, v2

    move-object v9, v3

    move-object v13, v4

    move-object v11, v5

    move-object v4, v6

    move-object/from16 v17, v22

    move/from16 v22, v25

    move-object/from16 v6, v26

    move-object/from16 v8, v33

    move-object/from16 v14, v34

    move-object/from16 v12, v35

    move-object/from16 v15, v36

    move/from16 v3, p6

    move v2, v0

    move-object v5, v1

    move/from16 v0, v29

    goto/16 :goto_3

    :cond_18
    move-object v6, v4

    move-object v1, v5

    move-object/from16 v33, v8

    move-object v3, v9

    move-object v2, v10

    move-object v5, v11

    move-object/from16 v35, v12

    move-object v4, v13

    move-object/from16 v34, v14

    move-object/from16 v36, v15

    move/from16 v25, v22

    move-object/from16 v22, v17

    add-int/lit8 v0, v25, 0x1

    move-object v4, v6

    move-object/from16 v6, v23

    move/from16 v3, p6

    move v2, v0

    move-object v5, v1

    move/from16 v1, v24

    goto/16 :goto_2

    :cond_19
    move/from16 v24, v1

    move-object v6, v4

    move-object v1, v5

    move-object/from16 v22, v17

    add-int/lit8 v0, v24, 0x1

    move/from16 v3, p6

    move-object/from16 v2, v22

    move-object/from16 v6, p0

    move v1, v0

    move/from16 v0, v16

    goto/16 :goto_1

    :cond_1a
    move-object v1, v5

    move-object v3, v9

    move-object v2, v10

    move-object v5, v11

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v36, v15

    move-object v15, v6

    move-object v6, v4

    move-object v4, v13

    .line 58
    iget-object v7, v15, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    move/from16 v7, v21

    move v8, v7

    move v9, v8

    move v14, v9

    .line 59
    :goto_18
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v14, v10, :cond_23

    .line 60
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    .line 61
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/util/SparseArray;

    move-object/from16 v16, v13

    move/from16 v10, v21

    .line 62
    :goto_19
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_22

    .line 63
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    add-int/lit8 v17, v8, 0x1

    .line 64
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 65
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v18

    if-eqz v18, :cond_1b

    :goto_1a
    move/from16 v18, v10

    goto :goto_1b

    .line 66
    :cond_1b
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v18

    if-nez v18, :cond_1c

    goto :goto_1a

    :cond_1c
    if-eqz v6, :cond_1d

    .line 67
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    move/from16 v18, v10

    .line 68
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    :goto_1b
    move/from16 v13, p6

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v19, v7

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move/from16 v29, v14

    move-object/from16 v26, v34

    move-object/from16 v10, v35

    move-object/from16 v7, v36

    move-object v11, v1

    move-object v12, v2

    move-object v14, v3

    goto/16 :goto_1e

    :cond_1d
    move/from16 v18, v10

    :cond_1e
    add-int/lit8 v19, v7, 0x1

    if-eqz v0, :cond_1f

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1f
    if-nez v9, :cond_20

    const-string v0, "Multi-Package Common Processes:"

    .line 70
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v22, v20

    goto :goto_1c

    :cond_20
    move/from16 v22, v9

    :goto_1c
    if-eqz p7, :cond_21

    .line 71
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v0

    if-nez v0, :cond_21

    .line 72
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v13, p6

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move/from16 v29, v14

    move-object/from16 v26, v34

    move-object/from16 v10, v35

    move-object/from16 v7, v36

    move-object v11, v1

    move-object v12, v2

    move-object v14, v3

    goto/16 :goto_1d

    :cond_21
    move-object/from16 v0, v35

    .line 73
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v34

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-static {v1, v13}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v7, " ("

    .line 75
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 76
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "        "

    .line 77
    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v24, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object v7, v8

    move-object v13, v8

    move-object/from16 v8, p1

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    move-object/from16 v27, v11

    move-object/from16 v11, v24

    move-object/from16 v28, v12

    move-object/from16 v12, v25

    move-object/from16 v30, v13

    move/from16 v29, v14

    move-wide/from16 v13, p3

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string v7, "        "

    move-object v10, v0

    move-object/from16 v0, v30

    move-object v11, v1

    move-object/from16 v1, p1

    move-object v12, v2

    move-object v2, v7

    move/from16 v13, p6

    move-object v14, v3

    move-object/from16 v3, v23

    move-object/from16 v23, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v5

    move-object/from16 v7, v36

    move-object/from16 v5, v25

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    move-object/from16 v8, v30

    .line 79
    invoke-virtual {v8, v11, v7, v13}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_1d
    move/from16 v0, v20

    move/from16 v9, v22

    :goto_1e
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v36, v7

    move-object/from16 v35, v10

    move-object v2, v12

    move-object v3, v14

    move/from16 v8, v17

    move/from16 v7, v19

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v34, v26

    move-object/from16 v12, v28

    move/from16 v14, v29

    move v10, v1

    move-object v1, v11

    move-object/from16 v11, v27

    goto/16 :goto_19

    :cond_22
    move/from16 v13, p6

    move-object v11, v1

    move-object v12, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v29, v14

    move-object/from16 v26, v34

    move-object/from16 v10, v35

    move-object/from16 v1, v36

    move-object v14, v3

    add-int/lit8 v2, v29, 0x1

    move-object v1, v11

    move-object/from16 v13, v16

    move v14, v2

    move-object v2, v12

    goto/16 :goto_18

    :cond_23
    move/from16 v13, p6

    move-object v11, v1

    if-eqz v13, :cond_24

    .line 80
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Total procs: "

    .line 81
    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " shown of "

    .line 82
    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " total"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    if-eqz v0, :cond_25

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_25
    if-eqz p5, :cond_26

    const-string v0, "Summary:"

    .line 84
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1f

    :cond_26
    move-wide/from16 v0, p3

    .line 86
    invoke-virtual {v15, v11, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    :goto_1f
    if-eqz v13, :cond_27

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Internal state:"

    .line 88
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mRunning="

    .line 89
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v15, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 90
    :cond_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 15

    .line 1
    move-object v14, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 5
    .line 6
    iget v3, v14, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 7
    .line 8
    iget-wide v4, v14, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 9
    .line 10
    move-wide/from16 v6, p3

    .line 11
    .line 12
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v10

    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "  "

    .line 18
    .line 19
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 20
    .line 21
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 22
    .line 23
    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 24
    .line 25
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    move-wide/from16 v8, p3

    .line 31
    .line 32
    move-object/from16 v12, p2

    .line 33
    .line 34
    move/from16 v13, p5

    .line 35
    .line 36
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 40
    .line 41
    .line 42
    move-object/from16 v0, p1

    .line 43
    .line 44
    move-wide/from16 v1, p3

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 17

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    const-string v0, "Run time Stats:"

    .line 6
    .line 7
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  "

    .line 11
    .line 12
    iget-object v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 13
    .line 14
    iget v3, v11, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 15
    .line 16
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    move-wide/from16 v6, p2

    .line 21
    .line 22
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 26
    .line 27
    .line 28
    const-string v0, "Memory usage:"

    .line 29
    .line 30
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    .line 34
    .line 35
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 36
    .line 37
    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 38
    .line 39
    invoke-direct {v13, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 40
    .line 41
    .line 42
    move-wide/from16 v0, p2

    .line 43
    .line 44
    invoke-virtual {v11, v13, v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v8, 0x0

    .line 48
    .line 49
    const-string v2, "  "

    .line 50
    .line 51
    const-string v3, "Kernel "

    .line 52
    .line 53
    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 54
    .line 55
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 56
    .line 57
    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 58
    .line 59
    move-object/from16 v0, p0

    .line 60
    .line 61
    move-object/from16 v1, p1

    .line 62
    .line 63
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    const-string v2, "  "

    .line 68
    .line 69
    const-string v3, "Native "

    .line 70
    .line 71
    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 72
    .line 73
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 74
    .line 75
    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 76
    .line 77
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    const/4 v14, 0x0

    .line 82
    move-wide v8, v0

    .line 83
    move v15, v14

    .line 84
    :goto_0
    const/16 v0, 0xe

    .line 85
    .line 86
    const/4 v10, 0x7

    .line 87
    if-ge v15, v0, :cond_1

    .line 88
    .line 89
    if-eq v15, v10, :cond_0

    .line 90
    .line 91
    const-string v2, "  "

    .line 92
    .line 93
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 94
    .line 95
    aget-object v3, v0, v15

    .line 96
    .line 97
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 98
    .line 99
    aget-wide v4, v0, v15

    .line 100
    .line 101
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 102
    .line 103
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 104
    .line 105
    aget v10, v0, v15

    .line 106
    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 112
    .line 113
    .line 114
    move-result-wide v8

    .line 115
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const-string v2, "  "

    .line 119
    .line 120
    const-string v3, "Cached "

    .line 121
    .line 122
    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 123
    .line 124
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 125
    .line 126
    iget v15, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 127
    .line 128
    move-object/from16 v0, p0

    .line 129
    .line 130
    move-object/from16 v1, p1

    .line 131
    .line 132
    move/from16 v16, v10

    .line 133
    .line 134
    move v10, v15

    .line 135
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    const-string v2, "  "

    .line 140
    .line 141
    const-string v3, "Free   "

    .line 142
    .line 143
    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 144
    .line 145
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 146
    .line 147
    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 148
    .line 149
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 150
    .line 151
    .line 152
    move-result-wide v8

    .line 153
    const-string v2, "  "

    .line 154
    .line 155
    const-string v3, "Z-Ram  "

    .line 156
    .line 157
    iget-wide v4, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 158
    .line 159
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 160
    .line 161
    iget v10, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 162
    .line 163
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 164
    .line 165
    .line 166
    move-result-wide v8

    .line 167
    const-string v0, "  TOTAL  : "

    .line 168
    .line 169
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v12, v8, v9}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    .line 177
    .line 178
    const-string v2, "  "

    .line 179
    .line 180
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 181
    .line 182
    aget-object v3, v0, v16

    .line 183
    .line 184
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 185
    .line 186
    aget-wide v4, v0, v16

    .line 187
    .line 188
    iget-wide v6, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 189
    .line 190
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 191
    .line 192
    aget v10, v0, v16

    .line 193
    .line 194
    move-object/from16 v0, p0

    .line 195
    .line 196
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 200
    .line 201
    .line 202
    const-string v0, "          Start time: "

    .line 203
    .line 204
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 208
    .line 209
    .line 210
    iget-wide v1, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 211
    .line 212
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 220
    .line 221
    .line 222
    const-string v0, "  Total elapsed time: "

    .line 223
    .line 224
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-boolean v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    .line 228
    .line 229
    if-eqz v0, :cond_2

    .line 230
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    goto :goto_1

    .line 236
    :cond_2
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 237
    .line 238
    :goto_1
    iget-wide v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 239
    .line 240
    sub-long/2addr v0, v2

    .line 241
    invoke-static {v0, v1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 242
    .line 243
    .line 244
    iget v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 245
    .line 246
    and-int/lit8 v0, v0, 0x2

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    if-eqz v0, :cond_3

    .line 250
    .line 251
    const-string v0, " (shutdown)"

    .line 252
    .line 253
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    move v0, v14

    .line 257
    goto :goto_2

    .line 258
    :cond_3
    move v0, v1

    .line 259
    :goto_2
    iget v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 260
    .line 261
    and-int/lit8 v2, v2, 0x4

    .line 262
    .line 263
    if-eqz v2, :cond_4

    .line 264
    .line 265
    const-string v0, " (sysprops)"

    .line 266
    .line 267
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    move v0, v14

    .line 271
    :cond_4
    iget v2, v11, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 272
    .line 273
    and-int/2addr v1, v2

    .line 274
    if-eqz v1, :cond_5

    .line 275
    .line 276
    const-string v0, " (complete)"

    .line 277
    .line 278
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_5
    move v14, v0

    .line 283
    :goto_3
    if-eqz v14, :cond_6

    .line 284
    .line 285
    const-string v0, " (partial)"

    .line 286
    .line 287
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_6
    iget-boolean v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 291
    .line 292
    if-eqz v0, :cond_7

    .line 293
    .line 294
    const-string v0, " (swapped-out-pss)"

    .line 295
    .line 296
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_7
    const/16 v0, 0x20

    .line 300
    .line 301
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 302
    .line 303
    .line 304
    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 2

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "persist.sys.dalvik.vm.lib.2"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 31
    .line 32
    invoke-direct {v1, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 11

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 17
    .line 18
    invoke-virtual {v1, p4, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    move-object v3, p0

    .line 30
    move-object v4, p1

    .line 31
    move v5, p2

    .line 32
    move v6, p3

    .line 33
    move-object v7, p4

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 38
    .line 39
    invoke-virtual {v2, p4, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    move-object v4, v1

    .line 43
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_6

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ne p3, v1, :cond_2

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_2
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {p0, v2, p2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {v4, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v5, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object v5, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    sub-int/2addr v5, v1

    .line 109
    :goto_0
    if-ltz v5, :cond_5

    .line 110
    .line 111
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-ne v6, v4, :cond_3

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "Cloning proc state: no package state "

    .line 134
    .line 135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, "/"

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, " for proc "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v2, "ProcessStats"

    .line 170
    .line 171
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :cond_5
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 175
    .line 176
    move-object v3, v1

    .line 177
    move-object v5, p1

    .line 178
    move v6, p2

    .line 179
    move v7, p3

    .line 180
    move-object v8, p4

    .line 181
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    new-instance v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 186
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v9

    .line 191
    move-object v3, v1

    .line 192
    move-object v5, p1

    .line 193
    move v6, p2

    .line 194
    move v7, p3

    .line 195
    move-object v8, p4

    .line 196
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 197
    .line 198
    .line 199
    :goto_1
    move-object v4, v1

    .line 200
    :goto_2
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 201
    .line 202
    invoke-virtual {p1, p4, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    return-object v4
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/internal/app/procstats/ServiceState;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    if-eqz p4, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, 0x0

    .line 24
    :goto_0
    move-object v6, p2

    .line 25
    new-instance p2, Lcom/android/internal/app/procstats/ServiceState;

    .line 26
    .line 27
    move-object v1, p2

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p5

    .line 31
    move-object v5, p4

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p1, p5, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v0, p4, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 8
    .line 9
    mul-double/2addr p4, v0

    .line 10
    long-to-double p6, p6

    .line 11
    div-double/2addr p4, p6

    .line 12
    double-to-long p4, p4

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p2, ": "

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p4, p5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 25
    .line 26
    .line 27
    const-string p2, " ("

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 33
    .line 34
    .line 35
    const-string p2, " samples)"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    add-long/2addr p8, p4

    .line 44
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aget v0, v0, v3

    .line 14
    .line 15
    invoke-virtual {v2, v1, v3, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "caught exception: "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 25

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    if-gtz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v9, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v9, v8

    .line 35
    :goto_1
    if-eqz v9, :cond_2

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 38
    .line 39
    .line 40
    :cond_2
    const v0, 0x50535454

    .line 41
    .line 42
    .line 43
    const-string v2, "magic number"

    .line 44
    .line 45
    invoke-direct {v6, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    const/16 v0, 0x15

    .line 57
    .line 58
    if-eq v10, v0, :cond_4

    .line 59
    .line 60
    const-string v0, "bad version: "

    .line 61
    .line 62
    invoke-static {v0, v10}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    const/16 v0, 0xe

    .line 70
    .line 71
    const-string/jumbo v2, "state count"

    .line 72
    .line 73
    .line 74
    invoke-direct {v6, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    const/16 v0, 0x8

    .line 82
    .line 83
    const-string v2, "adj count"

    .line 84
    .line 85
    invoke-direct {v6, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    const/4 v0, 0x7

    .line 93
    const-string v2, "pss count"

    .line 94
    .line 95
    invoke-direct {v6, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    return-void

    .line 102
    :cond_7
    const/16 v0, 0x10

    .line 103
    .line 104
    const-string/jumbo v2, "sys mem usage count"

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_8

    .line 112
    .line 113
    return-void

    .line 114
    :cond_8
    const/16 v0, 0x1000

    .line 115
    .line 116
    const-string v2, "longs size"

    .line 117
    .line 118
    invoke-direct {v6, v7, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    return-void

    .line 125
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    .line 137
    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    .line 158
    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    iput-wide v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    move v0, v8

    .line 178
    goto :goto_2

    .line 179
    :cond_a
    move v0, v1

    .line 180
    :goto_2
    iput-boolean v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 187
    .line 188
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 189
    .line 190
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 194
    .line 195
    array-length v2, v0

    .line 196
    invoke-direct {v6, v7, v10, v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 197
    .line 198
    .line 199
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 200
    .line 201
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->readFromParcel(Landroid/os/Parcel;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_b

    .line 206
    .line 207
    return-void

    .line 208
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-gez v0, :cond_c

    .line 213
    .line 214
    const-string v1, "bad process count: "

    .line 215
    .line 216
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 221
    .line 222
    return-void

    .line 223
    :cond_c
    :goto_3
    const-string v11, "bad uid: "

    .line 224
    .line 225
    const-string v12, "bad uid count: "

    .line 226
    .line 227
    if-lez v0, :cond_16

    .line 228
    .line 229
    add-int/lit8 v13, v0, -0x1

    .line 230
    .line 231
    invoke-direct {v6, v7, v10}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    if-nez v14, :cond_d

    .line 236
    .line 237
    const-string v0, "bad process name"

    .line 238
    .line 239
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 240
    .line 241
    return-void

    .line 242
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-gez v0, :cond_e

    .line 247
    .line 248
    invoke-static {v12, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 253
    .line 254
    return-void

    .line 255
    :cond_e
    :goto_4
    if-lez v0, :cond_15

    .line 256
    .line 257
    add-int/lit8 v12, v0, -0x1

    .line 258
    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    if-gez v15, :cond_f

    .line 264
    .line 265
    invoke-static {v11, v15}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 270
    .line 271
    return-void

    .line 272
    :cond_f
    invoke-direct {v6, v7, v10}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    if-nez v2, :cond_10

    .line 277
    .line 278
    const-string v0, "bad process package name"

    .line 279
    .line 280
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 281
    .line 282
    return-void

    .line 283
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v9, :cond_11

    .line 288
    .line 289
    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 290
    .line 291
    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_11
    const/4 v0, 0x0

    .line 299
    :goto_5
    if-eqz v0, :cond_13

    .line 300
    .line 301
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_12

    .line 306
    .line 307
    return-void

    .line 308
    :cond_12
    move/from16 v16, v12

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_13
    new-instance v5, Lcom/android/internal/app/procstats/ProcessState;

    .line 312
    .line 313
    move-object v0, v5

    .line 314
    move-object/from16 v1, p0

    .line 315
    .line 316
    move v3, v15

    .line 317
    move/from16 v16, v12

    .line 318
    .line 319
    move-object v12, v5

    .line 320
    move-object v5, v14

    .line 321
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v12, v7, v8}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_14

    .line 329
    .line 330
    return-void

    .line 331
    :cond_14
    move-object v0, v12

    .line 332
    :goto_6
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 333
    .line 334
    invoke-virtual {v1, v14, v15, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const/4 v1, 0x0

    .line 338
    move/from16 v0, v16

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_15
    move v0, v13

    .line 342
    goto :goto_3

    .line 343
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-gez v0, :cond_17

    .line 348
    .line 349
    const-string v1, "bad package count: "

    .line 350
    .line 351
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 356
    .line 357
    return-void

    .line 358
    :cond_17
    :goto_7
    if-lez v0, :cond_2f

    .line 359
    .line 360
    add-int/lit8 v8, v0, -0x1

    .line 361
    .line 362
    invoke-direct {v6, v7, v10}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    if-nez v5, :cond_18

    .line 367
    .line 368
    const-string v0, "bad package name"

    .line 369
    .line 370
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 371
    .line 372
    return-void

    .line 373
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-gez v0, :cond_19

    .line 378
    .line 379
    invoke-static {v12, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 384
    .line 385
    return-void

    .line 386
    :cond_19
    :goto_8
    if-lez v0, :cond_2e

    .line 387
    .line 388
    add-int/lit8 v21, v0, -0x1

    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-gez v4, :cond_1a

    .line 395
    .line 396
    invoke-static {v11, v4}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 401
    .line 402
    return-void

    .line 403
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-gez v0, :cond_1b

    .line 408
    .line 409
    const-string v1, "bad versions count: "

    .line 410
    .line 411
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 416
    .line 417
    return-void

    .line 418
    :cond_1b
    :goto_9
    if-lez v0, :cond_2d

    .line 419
    .line 420
    add-int/lit8 v22, v0, -0x1

    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 427
    .line 428
    invoke-direct {v3, v5, v4}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 432
    .line 433
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Landroid/util/SparseArray;

    .line 438
    .line 439
    if-nez v1, :cond_1c

    .line 440
    .line 441
    new-instance v1, Landroid/util/SparseArray;

    .line 442
    .line 443
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 444
    .line 445
    .line 446
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 447
    .line 448
    invoke-virtual {v2, v5, v4, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    :cond_1c
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-gez v1, :cond_1d

    .line 459
    .line 460
    const-string v0, "bad package process count: "

    .line 461
    .line 462
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 467
    .line 468
    return-void

    .line 469
    :cond_1d
    :goto_a
    if-lez v1, :cond_25

    .line 470
    .line 471
    add-int/lit8 v1, v1, -0x1

    .line 472
    .line 473
    invoke-direct {v6, v7, v10}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    if-nez v2, :cond_1e

    .line 478
    .line 479
    const-string v0, "bad package process name"

    .line 480
    .line 481
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 482
    .line 483
    return-void

    .line 484
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 485
    .line 486
    .line 487
    move-result v13

    .line 488
    iget-object v14, v6, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 489
    .line 490
    invoke-virtual {v14, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    .line 495
    .line 496
    if-nez v14, :cond_1f

    .line 497
    .line 498
    const-string v0, "no common proc: "

    .line 499
    .line 500
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 505
    .line 506
    return-void

    .line 507
    :cond_1f
    if-eqz v13, :cond_24

    .line 508
    .line 509
    if-eqz v9, :cond_20

    .line 510
    .line 511
    iget-object v13, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 512
    .line 513
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v13

    .line 517
    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_20
    const/4 v13, 0x0

    .line 521
    :goto_b
    if-eqz v13, :cond_22

    .line 522
    .line 523
    const/4 v14, 0x0

    .line 524
    invoke-virtual {v13, v7, v14}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    .line 525
    .line 526
    .line 527
    move-result v14

    .line 528
    if-nez v14, :cond_21

    .line 529
    .line 530
    return-void

    .line 531
    :cond_21
    move/from16 v23, v1

    .line 532
    .line 533
    goto :goto_c

    .line 534
    :cond_22
    new-instance v15, Lcom/android/internal/app/procstats/ProcessState;

    .line 535
    .line 536
    const-wide/16 v19, 0x0

    .line 537
    .line 538
    move-object v13, v15

    .line 539
    move/from16 v23, v1

    .line 540
    .line 541
    move-object v1, v15

    .line 542
    move-object v15, v5

    .line 543
    move/from16 v16, v4

    .line 544
    .line 545
    move/from16 v17, v0

    .line 546
    .line 547
    move-object/from16 v18, v2

    .line 548
    .line 549
    invoke-direct/range {v13 .. v20}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 550
    .line 551
    .line 552
    const/4 v13, 0x1

    .line 553
    invoke-virtual {v1, v7, v13}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    .line 554
    .line 555
    .line 556
    move-result v13

    .line 557
    if-nez v13, :cond_23

    .line 558
    .line 559
    return-void

    .line 560
    :cond_23
    move-object v13, v1

    .line 561
    :goto_c
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 562
    .line 563
    invoke-virtual {v1, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    goto :goto_d

    .line 567
    :cond_24
    move/from16 v23, v1

    .line 568
    .line 569
    iget-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 570
    .line 571
    invoke-virtual {v1, v2, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    :goto_d
    move/from16 v1, v23

    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-gez v0, :cond_26

    .line 582
    .line 583
    const-string v1, "bad package service count: "

    .line 584
    .line 585
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 590
    .line 591
    return-void

    .line 592
    :cond_26
    :goto_e
    if-lez v0, :cond_2c

    .line 593
    .line 594
    add-int/lit8 v13, v0, -0x1

    .line 595
    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v14

    .line 600
    if-nez v14, :cond_27

    .line 601
    .line 602
    const-string v0, "bad package service name"

    .line 603
    .line 604
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 605
    .line 606
    return-void

    .line 607
    :cond_27
    const/16 v0, 0x9

    .line 608
    .line 609
    if-le v10, v0, :cond_28

    .line 610
    .line 611
    invoke-direct {v6, v7, v10}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    goto :goto_f

    .line 616
    :cond_28
    const/4 v0, 0x0

    .line 617
    :goto_f
    move-object v15, v0

    .line 618
    if-eqz v9, :cond_29

    .line 619
    .line 620
    iget-object v0, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 621
    .line 622
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    .line 627
    .line 628
    goto :goto_10

    .line 629
    :cond_29
    const/4 v0, 0x0

    .line 630
    :goto_10
    if-nez v0, :cond_2a

    .line 631
    .line 632
    new-instance v16, Lcom/android/internal/app/procstats/ServiceState;

    .line 633
    .line 634
    const/16 v17, 0x0

    .line 635
    .line 636
    move-object/from16 v0, v16

    .line 637
    .line 638
    move-object/from16 v1, p0

    .line 639
    .line 640
    move-object v2, v5

    .line 641
    move-object/from16 v24, v3

    .line 642
    .line 643
    move-object v3, v14

    .line 644
    move/from16 v18, v4

    .line 645
    .line 646
    move-object v4, v15

    .line 647
    move-object v15, v5

    .line 648
    move-object/from16 v5, v17

    .line 649
    .line 650
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    .line 651
    .line 652
    .line 653
    goto :goto_11

    .line 654
    :cond_2a
    move-object/from16 v24, v3

    .line 655
    .line 656
    move/from16 v18, v4

    .line 657
    .line 658
    move-object v15, v5

    .line 659
    :goto_11
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    if-nez v1, :cond_2b

    .line 664
    .line 665
    return-void

    .line 666
    :cond_2b
    move-object/from16 v1, v24

    .line 667
    .line 668
    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 669
    .line 670
    invoke-virtual {v2, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-object v3, v1

    .line 674
    move v0, v13

    .line 675
    move-object v5, v15

    .line 676
    move/from16 v4, v18

    .line 677
    .line 678
    goto :goto_e

    .line 679
    :cond_2c
    move/from16 v0, v22

    .line 680
    .line 681
    goto/16 :goto_9

    .line 682
    .line 683
    :cond_2d
    move/from16 v0, v21

    .line 684
    .line 685
    goto/16 :goto_8

    .line 686
    .line 687
    :cond_2e
    move v0, v8

    .line 688
    goto/16 :goto_7

    .line 689
    .line 690
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 695
    .line 696
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 697
    .line 698
    .line 699
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 702
    .line 703
    .line 704
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 705
    .line 706
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 707
    .line 708
    .line 709
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 712
    .line 713
    .line 714
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 717
    .line 718
    .line 719
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 722
    .line 723
    .line 724
    const/4 v1, 0x0

    .line 725
    :goto_12
    if-ge v1, v0, :cond_30

    .line 726
    .line 727
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 728
    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    iget-object v2, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    add-int/lit8 v1, v1, 0x1

    .line 759
    .line 760
    goto :goto_12

    .line 761
    :cond_30
    const/4 v0, 0x0

    .line 762
    iput-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 763
    .line 764
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 20
    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 28
    .line 29
    return-void
.end method

.method public resetSafely()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    sub-int/2addr v3, v4

    .line 20
    :goto_0
    if-ltz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    sub-int/2addr v6, v4

    .line 33
    :goto_1
    if-ltz v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    iput v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 43
    .line 44
    add-int/lit8 v6, v6, -0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    sub-int/2addr v5, v4

    .line 61
    :goto_2
    if-ltz v5, :cond_b

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    sub-int/2addr v7, v4

    .line 74
    :goto_3
    if-ltz v7, :cond_9

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    sub-int/2addr v9, v4

    .line 87
    :goto_4
    if-ltz v9, :cond_7

    .line 88
    .line 89
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 94
    .line 95
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    sub-int/2addr v11, v4

    .line 102
    :goto_5
    if-ltz v11, :cond_3

    .line 103
    .line 104
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 111
    .line 112
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_2

    .line 117
    .line 118
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    iget v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 126
    .line 127
    add-int/2addr v14, v4

    .line 128
    iput v14, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 129
    .line 130
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    iput-object v12, v13, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_2
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 144
    .line 145
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 146
    .line 147
    .line 148
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_6
    add-int/lit8 v11, v11, -0x1

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_3
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 157
    .line 158
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    sub-int/2addr v11, v4

    .line 163
    :goto_7
    if-ltz v11, :cond_5

    .line 164
    .line 165
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 166
    .line 167
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    check-cast v12, Lcom/android/internal/app/procstats/ServiceState;

    .line 172
    .line 173
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    if-eqz v13, :cond_4

    .line 178
    .line 179
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_4
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 184
    .line 185
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :goto_8
    add-int/lit8 v11, v11, -0x1

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_5
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 192
    .line 193
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-gtz v11, :cond_6

    .line 198
    .line 199
    iget-object v10, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 200
    .line 201
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-gtz v10, :cond_6

    .line 206
    .line 207
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->removeAt(I)V

    .line 208
    .line 209
    .line 210
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_7
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-gtz v8, :cond_8

    .line 218
    .line 219
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 220
    .line 221
    .line 222
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-gtz v6, :cond_a

    .line 231
    .line 232
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    sub-int/2addr v3, v4

    .line 244
    :goto_9
    if-ltz v3, :cond_11

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Landroid/util/SparseArray;

    .line 251
    .line 252
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    sub-int/2addr v6, v4

    .line 257
    :goto_a
    if-ltz v6, :cond_f

    .line 258
    .line 259
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    check-cast v7, Lcom/android/internal/app/procstats/ProcessState;

    .line 264
    .line 265
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-nez v8, :cond_d

    .line 270
    .line 271
    iget v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 272
    .line 273
    if-lez v8, :cond_c

    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_c

    .line 283
    :cond_d
    :goto_b
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-nez v8, :cond_e

    .line 288
    .line 289
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_e

    .line 294
    .line 295
    iget v8, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    .line 296
    .line 297
    if-ne v8, v4, :cond_e

    .line 298
    .line 299
    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 300
    .line 301
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    goto :goto_c

    .line 308
    :cond_e
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    .line 309
    .line 310
    .line 311
    :goto_c
    add-int/lit8 v6, v6, -0x1

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_f
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-gtz v5, :cond_10

    .line 319
    .line 320
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :cond_10
    add-int/lit8 v3, v3, -0x1

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_11
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 327
    .line 328
    return-void
.end method

.method public updateFragmentation()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 3
    .line 4
    new-instance v2, Ljava/io/FileReader;

    .line 5
    .line 6
    const-string v3, "/proc/pagetypeinfo"

    .line 7
    .line 8
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    return-void

    .line 47
    :cond_1
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/16 v3, 0xa

    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 86
    .line 87
    const/4 v3, 0x3

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :catch_1
    move-object v0, v1

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception v1

    .line 105
    move-object v4, v1

    .line 106
    move-object v1, v0

    .line 107
    move-object v0, v4

    .line 108
    goto :goto_2

    .line 109
    :catch_2
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    .line 128
    .line 129
    :catch_3
    :cond_3
    return-void

    .line 130
    :goto_2
    if-eqz v1, :cond_4

    .line 131
    .line 132
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 133
    .line 134
    .line 135
    :catch_4
    :cond_4
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const v4, 0x50535454

    .line 2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x15

    .line 3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0xe

    .line 4
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x8

    .line 5
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x7

    .line 6
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x10

    .line 7
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x1000

    .line 8
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 10
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    .line 12
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    .line 14
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v11, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    .line 17
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_6

    .line 19
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_5

    .line 21
    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v16, v10

    .line 22
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move/from16 v17, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_3

    move/from16 v18, v10

    .line 23
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v19, v13

    .line 24
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v13

    if-eq v13, v10, :cond_2

    .line 25
    invoke-virtual {v10, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v18

    move-object/from16 v13, v19

    goto :goto_5

    :cond_3
    move-object/from16 v19, v13

    .line 26
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_4

    .line 27
    iget-object v13, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v13, v19

    goto :goto_4

    :cond_5
    move-object/from16 v16, v10

    move/from16 v17, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 28
    :cond_7
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-boolean v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 37
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 38
    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v9, v6

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v12, v2, v12

    add-long/2addr v12, v10

    aput-wide v12, v9, v6

    .line 39
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 40
    :cond_8
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v9, v6

    invoke-direct {v0, v1, v6, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 41
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->writeToParcel(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_a

    .line 43
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 46
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_9

    .line 47
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 49
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {v12, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 52
    :cond_a
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v8, :cond_10

    .line 53
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 56
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v6, :cond_f

    .line 57
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 60
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_e

    .line 61
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 63
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 64
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v14, :cond_c

    move-object/from16 v16, v5

    .line 65
    iget-object v5, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 66
    iget-object v5, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    move/from16 v17, v6

    .line 67
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v6

    if-ne v6, v5, :cond_b

    const/4 v6, 0x0

    .line 68
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :cond_b
    const/4 v6, 0x1

    .line 69
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    :goto_d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    goto :goto_c

    :cond_c
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 71
    iget-object v5, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 72
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_d

    .line 73
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v14, v13, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ServiceState;

    .line 75
    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v1, v15}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v14, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_b

    :cond_e
    move-object/from16 v16, v5

    move/from16 v17, v6

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 77
    :cond_10
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v2, :cond_11

    .line 79
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    .line 82
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    return-void
.end method
