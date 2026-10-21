.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field private final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumExcessiveWake:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:I

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 9
    .line 10
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 14
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 15
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 16
    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 18
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 20
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 21
    iget p2, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 22
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 23
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 24
    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 3
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 4
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 5
    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 6
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 7
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 9
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 10
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object p3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p3}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 11
    new-instance p2, Lcom/android/internal/app/procstats/PssTable;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method private addCachedKill(IJJJ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 15
    .line 16
    cmp-long v1, p2, v1

    .line 17
    .line 18
    if-gez v1, :cond_1

    .line 19
    .line 20
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 21
    .line 22
    :cond_1
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 23
    .line 24
    cmp-long p2, p6, p2

    .line 25
    .line 26
    if-lez p2, :cond_2

    .line 27
    .line 28
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 29
    .line 30
    :cond_2
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 31
    .line 32
    long-to-double p2, p2

    .line 33
    int-to-double p6, v0

    .line 34
    mul-double/2addr p2, p6

    .line 35
    long-to-double p4, p4

    .line 36
    add-double/2addr p2, p4

    .line 37
    add-int p4, v0, p1

    .line 38
    .line 39
    int-to-double p4, p4

    .line 40
    div-double/2addr p2, p4

    .line 41
    double-to-long p2, p2

    .line 42
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 43
    .line 44
    add-int/2addr v0, p1

    .line 45
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    .line 2
    .line 3
    invoke-direct {v0, p4, p5, p6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 7
    .line 8
    .line 9
    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 10
    .line 11
    long-to-double p4, p4

    .line 12
    long-to-double p6, p9

    .line 13
    div-double/2addr p4, p6

    .line 14
    const-wide/high16 p6, 0x4059000000000000L    # 100.0

    .line 15
    .line 16
    mul-double/2addr p4, p6

    .line 17
    const-wide p6, 0x3f747ae147ae147bL    # 0.005

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmpl-double p4, p4, p6

    .line 23
    .line 24
    if-gez p4, :cond_0

    .line 25
    .line 26
    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 27
    .line 28
    const-wide/16 p6, 0x0

    .line 29
    .line 30
    cmp-long p4, p4, p6

    .line 31
    .line 32
    if-eqz p4, :cond_3

    .line 33
    .line 34
    :cond_0
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz p3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v0, p1, p9, p10, p11}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method private ensureNotDead()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "ProcessState dead: name="

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " pkg="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " uid="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " common.name="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "ProcessStats"

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .line 20
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 21
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 22
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulling dead proc: name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " common.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessStats"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 25
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    .line 26
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-string v3, " for multi-proc "

    const-string v4, "No existing package "

    const-string v5, "/"

    if-eqz v2, :cond_3

    .line 27
    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v2, :cond_2

    .line 28
    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 29
    iget-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_1

    .line 30
    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto :goto_0

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Didn\'t create per-package process "

    const-string v1, " in pkg "

    .line 32
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 33
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 16
    .line 17
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 21
    .line 22
    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 27
    .line 28
    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 29
    .line 30
    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 6
    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 11
    .line 12
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 21
    .line 22
    const-wide/16 v6, 0x7530

    .line 23
    .line 24
    add-long/2addr v4, v6

    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 31
    .line 32
    iput v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 39
    .line 40
    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    if-eq v5, v2, :cond_2

    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 46
    .line 47
    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    move-wide/from16 v7, p1

    .line 51
    .line 52
    move-wide/from16 v9, p1

    .line 53
    .line 54
    move-wide/from16 v11, p1

    .line 55
    .line 56
    move-wide/from16 v13, p3

    .line 57
    .line 58
    move-wide/from16 v15, p3

    .line 59
    .line 60
    move-wide/from16 v17, p3

    .line 61
    .line 62
    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 66
    .line 67
    iget-boolean v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 68
    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/lit8 v2, v2, -0x1

    .line 79
    .line 80
    :goto_0
    if-ltz v2, :cond_2

    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 87
    .line 88
    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    move-wide/from16 v7, p1

    .line 92
    .line 93
    move-wide/from16 v9, p1

    .line 94
    .line 95
    move-wide/from16 v11, p1

    .line 96
    .line 97
    move-wide/from16 v13, p3

    .line 98
    .line 99
    move-wide/from16 v15, p3

    .line 100
    .line 101
    move-wide/from16 v17, p3

    .line 102
    .line 103
    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v2, v2, -0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    .line 11
    .line 12
    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_0
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 23
    .line 24
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    const/16 v9, 0x8

    .line 29
    .line 30
    const/4 v10, 0x2

    .line 31
    const-wide/16 v12, 0x0

    .line 32
    .line 33
    if-ge v6, v8, :cond_3

    .line 34
    .line 35
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 36
    .line 37
    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    rem-int/lit8 v14, v8, 0xe

    .line 46
    .line 47
    move/from16 v16, v6

    .line 48
    .line 49
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    cmp-long v12, v5, v12

    .line 54
    .line 55
    if-lez v12, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    if-gt v14, v10, :cond_0

    .line 62
    .line 63
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    if-gt v14, v9, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v4, v7, v8, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 74
    .line 75
    .line 76
    :goto_1
    const/4 v7, 0x1

    .line 77
    :cond_2
    add-int/lit8 v6, v16, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    if-nez v7, :cond_4

    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 84
    .line 85
    const-wide/16 v7, 0x3

    .line 86
    .line 87
    cmp-long v5, v5, v7

    .line 88
    .line 89
    if-gez v5, :cond_5

    .line 90
    .line 91
    iget-wide v5, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 92
    .line 93
    cmp-long v14, v5, v12

    .line 94
    .line 95
    if-lez v14, :cond_5

    .line 96
    .line 97
    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 98
    .line 99
    invoke-virtual {v2, v9, v10, v5, v6}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 100
    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const/4 v5, 0x0

    .line 105
    :goto_2
    iget-wide v9, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 106
    .line 107
    cmp-long v6, v9, v7

    .line 108
    .line 109
    if-gez v6, :cond_6

    .line 110
    .line 111
    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 112
    .line 113
    cmp-long v6, v9, v12

    .line 114
    .line 115
    if-lez v6, :cond_6

    .line 116
    .line 117
    iget-wide v14, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 118
    .line 119
    invoke-virtual {v2, v14, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 120
    .line 121
    .line 122
    const/4 v9, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    const/4 v9, 0x0

    .line 125
    :goto_3
    iget-wide v14, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 126
    .line 127
    cmp-long v10, v14, v7

    .line 128
    .line 129
    if-gez v10, :cond_7

    .line 130
    .line 131
    iget-wide v14, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 132
    .line 133
    cmp-long v10, v14, v12

    .line 134
    .line 135
    if-lez v10, :cond_7

    .line 136
    .line 137
    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 138
    .line 139
    invoke-virtual {v3, v11, v12, v14, v15}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 140
    .line 141
    .line 142
    const/4 v11, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_7
    const/4 v11, 0x0

    .line 145
    :goto_4
    iget-wide v12, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 146
    .line 147
    cmp-long v10, v12, v7

    .line 148
    .line 149
    if-gez v10, :cond_8

    .line 150
    .line 151
    if-nez v5, :cond_8

    .line 152
    .line 153
    iget-wide v12, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 154
    .line 155
    const-wide/16 v14, 0x0

    .line 156
    .line 157
    cmp-long v5, v12, v14

    .line 158
    .line 159
    if-lez v5, :cond_8

    .line 160
    .line 161
    iget-wide v14, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 162
    .line 163
    invoke-virtual {v3, v14, v15, v12, v13}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 164
    .line 165
    .line 166
    :cond_8
    iget-wide v12, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 167
    .line 168
    cmp-long v5, v12, v7

    .line 169
    .line 170
    if-gez v5, :cond_9

    .line 171
    .line 172
    if-nez v11, :cond_9

    .line 173
    .line 174
    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 175
    .line 176
    const-wide/16 v12, 0x0

    .line 177
    .line 178
    cmp-long v5, v10, v12

    .line 179
    .line 180
    if-lez v5, :cond_9

    .line 181
    .line 182
    iget-wide v12, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 183
    .line 184
    invoke-virtual {v4, v12, v13, v10, v11}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 185
    .line 186
    .line 187
    :cond_9
    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 188
    .line 189
    cmp-long v5, v10, v7

    .line 190
    .line 191
    if-gez v5, :cond_a

    .line 192
    .line 193
    if-nez v9, :cond_a

    .line 194
    .line 195
    iget-wide v7, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 196
    .line 197
    const-wide/16 v9, 0x0

    .line 198
    .line 199
    cmp-long v5, v7, v9

    .line 200
    .line 201
    if-lez v5, :cond_a

    .line 202
    .line 203
    iget-wide v9, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 204
    .line 205
    invoke-virtual {v4, v9, v10, v7, v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 206
    .line 207
    .line 208
    :cond_a
    const/4 v5, 0x0

    .line 209
    :goto_5
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 210
    .line 211
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-ge v5, v6, :cond_f

    .line 216
    .line 217
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 218
    .line 219
    invoke-virtual {v6, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 228
    .line 229
    invoke-virtual {v8, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(I)J

    .line 230
    .line 231
    .line 232
    move-result-wide v8

    .line 233
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 234
    .line 235
    if-ne v6, v7, :cond_b

    .line 236
    .line 237
    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 238
    .line 239
    sub-long v10, p2, v10

    .line 240
    .line 241
    add-long/2addr v8, v10

    .line 242
    :cond_b
    rem-int/lit8 v6, v7, 0xe

    .line 243
    .line 244
    iget-object v10, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    .line 245
    .line 246
    aget-wide v11, v10, v6

    .line 247
    .line 248
    add-long/2addr v11, v8

    .line 249
    aput-wide v11, v10, v6

    .line 250
    .line 251
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    const-wide/16 v12, 0x0

    .line 256
    .line 257
    cmp-long v14, v10, v12

    .line 258
    .line 259
    if-lez v14, :cond_c

    .line 260
    .line 261
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    .line 262
    .line 263
    .line 264
    move-result-wide v14

    .line 265
    goto :goto_6

    .line 266
    :cond_c
    const/4 v7, 0x2

    .line 267
    if-gt v6, v7, :cond_d

    .line 268
    .line 269
    iget-wide v10, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 270
    .line 271
    iget-wide v14, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_d
    const/16 v10, 0x8

    .line 275
    .line 276
    if-gt v6, v10, :cond_e

    .line 277
    .line 278
    iget-wide v14, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 279
    .line 280
    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 281
    .line 282
    move-wide/from16 v20, v10

    .line 283
    .line 284
    move-wide v10, v14

    .line 285
    move-wide/from16 v14, v20

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_e
    iget-wide v10, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 289
    .line 290
    iget-wide v14, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 291
    .line 292
    :goto_6
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    .line 293
    .line 294
    aget-wide v12, v7, v6

    .line 295
    .line 296
    long-to-double v12, v12

    .line 297
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 298
    .line 299
    move-object/from16 v17, v2

    .line 300
    .line 301
    aget v2, v0, v6

    .line 302
    .line 303
    move-object/from16 v18, v3

    .line 304
    .line 305
    move-object/from16 v19, v4

    .line 306
    .line 307
    int-to-double v3, v2

    .line 308
    mul-double/2addr v12, v3

    .line 309
    long-to-double v3, v14

    .line 310
    long-to-double v14, v10

    .line 311
    mul-double/2addr v14, v3

    .line 312
    add-double/2addr v14, v12

    .line 313
    int-to-long v12, v2

    .line 314
    add-long/2addr v12, v10

    .line 315
    long-to-double v12, v12

    .line 316
    div-double/2addr v14, v12

    .line 317
    double-to-long v12, v14

    .line 318
    aput-wide v12, v7, v6

    .line 319
    .line 320
    int-to-long v12, v2

    .line 321
    add-long/2addr v12, v10

    .line 322
    long-to-int v2, v12

    .line 323
    aput v2, v0, v6

    .line 324
    .line 325
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 326
    .line 327
    aget-wide v10, v0, v6

    .line 328
    .line 329
    long-to-double v7, v8

    .line 330
    mul-double/2addr v3, v7

    .line 331
    add-double/2addr v3, v10

    .line 332
    aput-wide v3, v0, v6

    .line 333
    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 335
    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    move-object/from16 v2, v17

    .line 339
    .line 340
    move-object/from16 v3, v18

    .line 341
    .line 342
    move-object/from16 v4, v19

    .line 343
    .line 344
    goto/16 :goto_5

    .line 345
    .line 346
    :cond_f
    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/internal/app/procstats/ProcessState;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 4
    .line 5
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 6
    .line 7
    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v8

    .line 12
    move-object v1, p0

    .line 13
    move-wide v6, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 27
    .line 28
    const/4 v0, 0x7

    .line 29
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 30
    .line 31
    .line 32
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 33
    .line 34
    iput p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 35
    .line 36
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 37
    .line 38
    iput p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 39
    .line 40
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 41
    .line 42
    iput-wide p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 43
    .line 44
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 45
    .line 46
    iput-wide p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 47
    .line 48
    iget-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 49
    .line 50
    iput-wide p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 53
    .line 54
    iput-boolean p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 55
    .line 56
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 57
    .line 58
    iput p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 59
    .line 60
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 61
    .line 62
    iput p1, v8, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 63
    .line 64
    return-object v8
.end method

.method public commitStateTime(J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 7
    .line 8
    sub-long v1, p1, v1

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v3, v1, v3

    .line 13
    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 17
    .line 18
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 22
    .line 23
    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 8
    .line 9
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 10
    .line 11
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 12
    .line 13
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 14
    .line 15
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 16
    .line 17
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 18
    .line 19
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 20
    .line 21
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 25
    .line 26
    array-length v6, v6

    .line 27
    if-ge v5, v6, :cond_8

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_1
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 31
    .line 32
    array-length v7, v7

    .line 33
    if-ge v6, v7, :cond_7

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    :goto_2
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    .line 37
    .line 38
    array-length v9, v8

    .line 39
    if-ge v7, v9, :cond_6

    .line 40
    .line 41
    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 42
    .line 43
    aget v9, v9, v5

    .line 44
    .line 45
    iget-object v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 46
    .line 47
    aget v10, v10, v6

    .line 48
    .line 49
    add-int/2addr v9, v10

    .line 50
    mul-int/lit8 v9, v9, 0xe

    .line 51
    .line 52
    aget v8, v8, v7

    .line 53
    .line 54
    add-int/2addr v9, v8

    .line 55
    iget-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 56
    .line 57
    move-wide/from16 v12, p2

    .line 58
    .line 59
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v14

    .line 63
    add-long/2addr v14, v10

    .line 64
    iput-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 65
    .line 66
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    cmp-long v8, v10, v2

    .line 71
    .line 72
    if-lez v8, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v14

    .line 78
    move/from16 v16, v5

    .line 79
    .line 80
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    move/from16 v19, v6

    .line 93
    .line 94
    move/from16 v20, v7

    .line 95
    .line 96
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v8

    .line 104
    move-wide/from16 v21, v10

    .line 105
    .line 106
    iget-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 107
    .line 108
    const-wide/16 v17, 0x0

    .line 109
    .line 110
    cmp-long v23, v10, v17

    .line 111
    .line 112
    if-nez v23, :cond_0

    .line 113
    .line 114
    iput-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 115
    .line 116
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 117
    .line 118
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 119
    .line 120
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 121
    .line 122
    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 123
    .line 124
    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 125
    .line 126
    move-wide/from16 v14, v21

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_0
    move-wide/from16 v23, v8

    .line 130
    .line 131
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 132
    .line 133
    cmp-long v8, v14, v8

    .line 134
    .line 135
    if-gez v8, :cond_1

    .line 136
    .line 137
    iput-wide v14, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 138
    .line 139
    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 140
    .line 141
    long-to-double v8, v8

    .line 142
    long-to-double v14, v10

    .line 143
    mul-double/2addr v8, v14

    .line 144
    long-to-double v4, v4

    .line 145
    move-wide/from16 v14, v21

    .line 146
    .line 147
    move-wide/from16 v21, v6

    .line 148
    .line 149
    long-to-double v6, v14

    .line 150
    mul-double/2addr v4, v6

    .line 151
    add-double/2addr v4, v8

    .line 152
    add-long v8, v10, v14

    .line 153
    .line 154
    long-to-double v8, v8

    .line 155
    div-double/2addr v4, v8

    .line 156
    double-to-long v4, v4

    .line 157
    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 158
    .line 159
    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 160
    .line 161
    cmp-long v4, v2, v4

    .line 162
    .line 163
    if-lez v4, :cond_2

    .line 164
    .line 165
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 166
    .line 167
    :cond_2
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 168
    .line 169
    cmp-long v2, v12, v2

    .line 170
    .line 171
    if-gez v2, :cond_3

    .line 172
    .line 173
    iput-wide v12, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 174
    .line 175
    :cond_3
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 176
    .line 177
    long-to-double v2, v2

    .line 178
    long-to-double v4, v10

    .line 179
    mul-double/2addr v2, v4

    .line 180
    move-wide/from16 v4, v21

    .line 181
    .line 182
    long-to-double v4, v4

    .line 183
    mul-double/2addr v4, v6

    .line 184
    add-double/2addr v4, v2

    .line 185
    add-long v2, v10, v14

    .line 186
    .line 187
    long-to-double v2, v2

    .line 188
    div-double/2addr v4, v2

    .line 189
    double-to-long v2, v4

    .line 190
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 191
    .line 192
    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 193
    .line 194
    cmp-long v2, v23, v2

    .line 195
    .line 196
    if-lez v2, :cond_4

    .line 197
    .line 198
    move-wide/from16 v2, v23

    .line 199
    .line 200
    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 201
    .line 202
    :cond_4
    :goto_3
    add-long/2addr v10, v14

    .line 203
    iput-wide v10, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    move-wide/from16 v17, v2

    .line 207
    .line 208
    move/from16 v16, v5

    .line 209
    .line 210
    move/from16 v19, v6

    .line 211
    .line 212
    move/from16 v20, v7

    .line 213
    .line 214
    :goto_4
    add-int/lit8 v7, v20, 0x1

    .line 215
    .line 216
    move/from16 v5, v16

    .line 217
    .line 218
    move-wide/from16 v2, v17

    .line 219
    .line 220
    move/from16 v6, v19

    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :cond_6
    move-wide/from16 v17, v2

    .line 225
    .line 226
    move/from16 v16, v5

    .line 227
    .line 228
    move/from16 v19, v6

    .line 229
    .line 230
    add-int/lit8 v6, v19, 0x1

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_7
    move-wide/from16 v17, v2

    .line 235
    .line 236
    move/from16 v16, v5

    .line 237
    .line 238
    add-int/lit8 v5, v16, 0x1

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_8
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    array-length v4, p1

    .line 6
    if-ge v3, v4, :cond_2

    .line 7
    .line 8
    move v4, v2

    .line 9
    :goto_1
    array-length v5, p2

    .line 10
    if-ge v4, v5, :cond_1

    .line 11
    .line 12
    move v5, v2

    .line 13
    :goto_2
    array-length v6, p3

    .line 14
    if-ge v5, v6, :cond_0

    .line 15
    .line 16
    aget v6, p1, v3

    .line 17
    .line 18
    aget v7, p2, v4

    .line 19
    .line 20
    add-int/2addr v6, v7

    .line 21
    mul-int/lit8 v6, v6, 0xe

    .line 22
    .line 23
    aget v7, p3, v5

    .line 24
    .line 25
    add-int/2addr v6, v7

    .line 26
    invoke-virtual {p0, v6, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    add-long/2addr v0, v6

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 41
    .line 42
    return-wide v0
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 2
    .line 3
    if-eq v0, p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Proc active services underrun: pkg="

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " uid="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " proc="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " service="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "ProcessStats"

    .line 61
    .line 62
    invoke-static {v0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 2
    .line 3
    if-eq v0, p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 17
    .line 18
    rem-int/lit8 p4, p4, 0xe

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    if-ne p4, v0, :cond_1

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-gez p1, :cond_2

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "Proc started services underrun: pkg="

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, " uid="

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, " name="

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "ProcessStats"

    .line 67
    .line 68
    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x2c

    .line 22
    .line 23
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 27
    .line 28
    .line 29
    const/16 v4, 0x3a

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 32
    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 35
    .line 36
    invoke-virtual {v5, v3, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 70
    .line 71
    .line 72
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 73
    .line 74
    const/4 v6, 0x3

    .line 75
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 86
    .line 87
    const/4 v6, 0x4

    .line 88
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 99
    .line 100
    const/4 v6, 0x5

    .line 101
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 109
    .line 110
    .line 111
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 112
    .line 113
    const/4 v5, 0x6

    .line 114
    invoke-virtual {v4, v3, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 32
    .line 33
    sub-long v1, p2, v1

    .line 34
    .line 35
    add-long/2addr v4, v1

    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 46
    .line 47
    const/4 v1, -0x1

    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 51
    .line 52
    sub-long/2addr p2, v1

    .line 53
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    array-length v5, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v5, 0x1

    .line 14
    :goto_0
    if-eqz p4, :cond_1

    .line 15
    .line 16
    array-length v6, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v6, 0x1

    .line 19
    :goto_1
    if-eqz p6, :cond_2

    .line 20
    .line 21
    array-length v7, v3

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    const/4 v7, 0x1

    .line 24
    :goto_2
    const/4 v9, 0x0

    .line 25
    :goto_3
    if-ge v9, v5, :cond_11

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    :goto_4
    if-ge v10, v6, :cond_10

    .line 29
    .line 30
    const/4 v11, 0x0

    .line 31
    :goto_5
    if-ge v11, v7, :cond_f

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    aget v12, v1, v9

    .line 36
    .line 37
    goto :goto_6

    .line 38
    :cond_3
    const/4 v12, 0x0

    .line 39
    :goto_6
    if-eqz p4, :cond_4

    .line 40
    .line 41
    aget v13, v2, v10

    .line 42
    .line 43
    goto :goto_7

    .line 44
    :cond_4
    const/4 v13, 0x0

    .line 45
    :goto_7
    if-eqz p6, :cond_5

    .line 46
    .line 47
    aget v14, v3, v11

    .line 48
    .line 49
    goto :goto_8

    .line 50
    :cond_5
    const/4 v14, 0x0

    .line 51
    :goto_8
    if-eqz p2, :cond_6

    .line 52
    .line 53
    const/4 v15, 0x1

    .line 54
    goto :goto_9

    .line 55
    :cond_6
    array-length v15, v1

    .line 56
    :goto_9
    if-eqz p4, :cond_7

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_a

    .line 60
    :cond_7
    array-length v4, v2

    .line 61
    :goto_a
    if-eqz p6, :cond_8

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    goto :goto_b

    .line 65
    :cond_8
    array-length v8, v3

    .line 66
    :goto_b
    const-wide/16 v16, 0x0

    .line 67
    .line 68
    move/from16 v18, v5

    .line 69
    .line 70
    move/from16 v19, v6

    .line 71
    .line 72
    move-wide/from16 v5, v16

    .line 73
    .line 74
    move/from16 v16, v7

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    :goto_c
    if-ge v7, v15, :cond_e

    .line 78
    .line 79
    move-wide/from16 v20, v5

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    :goto_d
    if-ge v5, v4, :cond_d

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    :goto_e
    if-ge v6, v8, :cond_c

    .line 86
    .line 87
    if-eqz p2, :cond_9

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    goto :goto_f

    .line 92
    :cond_9
    aget v17, v1, v7

    .line 93
    .line 94
    :goto_f
    if-eqz p4, :cond_a

    .line 95
    .line 96
    const/16 v22, 0x0

    .line 97
    .line 98
    goto :goto_10

    .line 99
    :cond_a
    aget v22, v2, v5

    .line 100
    .line 101
    :goto_10
    if-eqz p6, :cond_b

    .line 102
    .line 103
    const/16 v23, 0x0

    .line 104
    .line 105
    goto :goto_11

    .line 106
    :cond_b
    aget v23, v3, v6

    .line 107
    .line 108
    :goto_11
    add-int v17, v12, v17

    .line 109
    .line 110
    add-int v17, v17, v13

    .line 111
    .line 112
    add-int v17, v17, v22

    .line 113
    .line 114
    mul-int/lit8 v17, v17, 0xe

    .line 115
    .line 116
    add-int v17, v17, v14

    .line 117
    .line 118
    add-int v1, v17, v23

    .line 119
    .line 120
    move-object/from16 v2, p0

    .line 121
    .line 122
    move/from16 v17, v4

    .line 123
    .line 124
    move-wide/from16 v3, p8

    .line 125
    .line 126
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide v22

    .line 130
    add-long v20, v22, v20

    .line 131
    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    move-object/from16 v1, p3

    .line 135
    .line 136
    move-object/from16 v2, p5

    .line 137
    .line 138
    move-object/from16 v3, p7

    .line 139
    .line 140
    move/from16 v4, v17

    .line 141
    .line 142
    goto :goto_e

    .line 143
    :cond_c
    move-object/from16 v2, p0

    .line 144
    .line 145
    move/from16 v17, v4

    .line 146
    .line 147
    move-wide/from16 v3, p8

    .line 148
    .line 149
    add-int/lit8 v5, v5, 0x1

    .line 150
    .line 151
    move-object/from16 v1, p3

    .line 152
    .line 153
    move-object/from16 v2, p5

    .line 154
    .line 155
    move-object/from16 v3, p7

    .line 156
    .line 157
    move/from16 v4, v17

    .line 158
    .line 159
    goto :goto_d

    .line 160
    :cond_d
    move-object/from16 v2, p0

    .line 161
    .line 162
    move/from16 v17, v4

    .line 163
    .line 164
    move-wide/from16 v3, p8

    .line 165
    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    move-object/from16 v1, p3

    .line 169
    .line 170
    move-object/from16 v2, p5

    .line 171
    .line 172
    move-object/from16 v3, p7

    .line 173
    .line 174
    move/from16 v4, v17

    .line 175
    .line 176
    move-wide/from16 v5, v20

    .line 177
    .line 178
    goto :goto_c

    .line 179
    :cond_e
    move-object/from16 v2, p0

    .line 180
    .line 181
    move-wide/from16 v3, p8

    .line 182
    .line 183
    const-string v1, "\t"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v11, v11, 0x1

    .line 192
    .line 193
    move-object/from16 v1, p3

    .line 194
    .line 195
    move-object/from16 v2, p5

    .line 196
    .line 197
    move-object/from16 v3, p7

    .line 198
    .line 199
    move/from16 v7, v16

    .line 200
    .line 201
    move/from16 v5, v18

    .line 202
    .line 203
    move/from16 v6, v19

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :cond_f
    move-object/from16 v2, p0

    .line 208
    .line 209
    move-wide/from16 v3, p8

    .line 210
    .line 211
    move/from16 v18, v5

    .line 212
    .line 213
    move/from16 v19, v6

    .line 214
    .line 215
    move/from16 v16, v7

    .line 216
    .line 217
    add-int/lit8 v10, v10, 0x1

    .line 218
    .line 219
    move-object/from16 v1, p3

    .line 220
    .line 221
    move-object/from16 v2, p5

    .line 222
    .line 223
    move-object/from16 v3, p7

    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :cond_10
    move-object/from16 v2, p0

    .line 228
    .line 229
    move-wide/from16 v3, p8

    .line 230
    .line 231
    move/from16 v18, v5

    .line 232
    .line 233
    move/from16 v19, v6

    .line 234
    .line 235
    move/from16 v16, v7

    .line 236
    .line 237
    add-int/lit8 v9, v9, 0x1

    .line 238
    .line 239
    move-object/from16 v1, p3

    .line 240
    .line 241
    move-object/from16 v2, p5

    .line 242
    .line 243
    move-object/from16 v3, p7

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_11
    move-object/from16 v2, p0

    .line 248
    .line 249
    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "myID="

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p3, " mCommonProcess="

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 28
    .line 29
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p3, " mPackage="

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 51
    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p3, "mMultiPackage="

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 63
    .line 64
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 68
    .line 69
    if-eq p0, p3, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p3, "Common Proc: "

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 80
    .line 81
    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p3, "/"

    .line 87
    .line 88
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 92
    .line 93
    iget p3, p3, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 96
    .line 97
    .line 98
    const-string p3, " pkg="

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 104
    .line 105
    iget-object p3, p3, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 111
    .line 112
    if-eqz p3, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p3, "mActive="

    .line 118
    .line 119
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 128
    .line 129
    if-eqz p3, :cond_3

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string p3, "mDead="

    .line 135
    .line 136
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-boolean p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 140
    .line 141
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 145
    .line 146
    if-nez p3, :cond_4

    .line 147
    .line 148
    iget p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 149
    .line 150
    if-eqz p3, :cond_5

    .line 151
    .line 152
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p2, "mNumActiveServices="

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 163
    .line 164
    .line 165
    const-string p2, " mNumStartedServices="

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 173
    .line 174
    .line 175
    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2

    .line 1
    const-string v0, "pkgproc,"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p6, p7}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 37
    .line 38
    .line 39
    iget-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 40
    .line 41
    invoke-virtual {p6}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 42
    .line 43
    .line 44
    move-result p6

    .line 45
    if-lez p6, :cond_0

    .line 46
    .line 47
    const-string p6, "pkgpss,"

    .line 48
    .line 49
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p6

    .line 74
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 84
    .line 85
    if-gtz p6, :cond_1

    .line 86
    .line 87
    iget p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 88
    .line 89
    if-lez p6, :cond_2

    .line 90
    .line 91
    :cond_1
    const-string p6, "pkgkills,"

    .line 92
    .line 93
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string p2, "0"

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 149
    .line 150
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 151
    .line 152
    .line 153
    const-string p2, ":"

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-wide p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 159
    .line 160
    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 167
    .line 168
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 172
    .line 173
    .line 174
    :cond_2
    return-void
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ","

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "proc,"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 32
    .line 33
    invoke-virtual {p4}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    if-lez p4, :cond_1

    .line 38
    .line 39
    const-string p4, "pss,"

    .line 40
    .line 41
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 60
    .line 61
    if-gtz p4, :cond_2

    .line 62
    .line 63
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 64
    .line 65
    if-lez p4, :cond_3

    .line 66
    .line 67
    :cond_2
    const-string p4, "kills,"

    .line 68
    .line 69
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string p2, "0"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 109
    .line 110
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 111
    .line 112
    .line 113
    const-string p2, ":"

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-wide p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 119
    .line 120
    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 127
    .line 128
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    .line 133
    .line 134
    :cond_3
    return-void
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const-wide/16 v10, 0x0

    .line 13
    .line 14
    const/4 v12, -0x1

    .line 15
    :goto_0
    array-length v13, v2

    .line 16
    if-ge v9, v13, :cond_8

    .line 17
    .line 18
    const/4 v13, 0x0

    .line 19
    const/16 v16, -0x1

    .line 20
    .line 21
    :goto_1
    array-length v8, v3

    .line 22
    if-ge v13, v8, :cond_7

    .line 23
    .line 24
    move/from16 v8, v16

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_2
    array-length v14, v4

    .line 28
    if-ge v7, v14, :cond_6

    .line 29
    .line 30
    aget v14, v2, v9

    .line 31
    .line 32
    aget v15, v3, v13

    .line 33
    .line 34
    add-int v17, v14, v15

    .line 35
    .line 36
    mul-int/lit8 v17, v17, 0xe

    .line 37
    .line 38
    aget v18, v4, v7

    .line 39
    .line 40
    add-int v5, v17, v18

    .line 41
    .line 42
    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 43
    .line 44
    move/from16 v17, v9

    .line 45
    .line 46
    int-to-byte v9, v5

    .line 47
    move-wide/from16 v20, v10

    .line 48
    .line 49
    invoke-virtual {v6, v9}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(B)J

    .line 50
    .line 51
    .line 52
    move-result-wide v9

    .line 53
    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 54
    .line 55
    if-ne v6, v5, :cond_0

    .line 56
    .line 57
    const-string v5, " (running)"

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_0
    const-string v5, ""

    .line 61
    .line 62
    :goto_3
    const-wide/16 v18, 0x0

    .line 63
    .line 64
    cmp-long v6, v9, v18

    .line 65
    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    array-length v6, v2

    .line 72
    const/4 v11, 0x1

    .line 73
    if-le v6, v11, :cond_2

    .line 74
    .line 75
    if-eq v12, v14, :cond_1

    .line 76
    .line 77
    move v6, v14

    .line 78
    goto :goto_4

    .line 79
    :cond_1
    const/4 v6, -0x1

    .line 80
    :goto_4
    invoke-static {v1, v6}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 81
    .line 82
    .line 83
    move v12, v14

    .line 84
    :cond_2
    array-length v6, v3

    .line 85
    if-le v6, v11, :cond_4

    .line 86
    .line 87
    if-eq v8, v15, :cond_3

    .line 88
    .line 89
    move v6, v15

    .line 90
    goto :goto_5

    .line 91
    :cond_3
    const/4 v6, -0x1

    .line 92
    :goto_5
    const/16 v8, 0x2f

    .line 93
    .line 94
    invoke-static {v1, v6, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 95
    .line 96
    .line 97
    move v8, v15

    .line 98
    :cond_4
    sget-object v6, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 99
    .line 100
    aget v11, v4, v7

    .line 101
    .line 102
    aget-object v6, v6, v11

    .line 103
    .line 104
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v6, ": "

    .line 108
    .line 109
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    add-long v10, v20, v9

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_5
    move-wide/from16 v10, v20

    .line 122
    .line 123
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    move/from16 v9, v17

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    move/from16 v17, v9

    .line 129
    .line 130
    move-wide/from16 v20, v10

    .line 131
    .line 132
    add-int/lit8 v13, v13, 0x1

    .line 133
    .line 134
    move/from16 v16, v8

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_7
    move/from16 v17, v9

    .line 138
    .line 139
    add-int/lit8 v9, v17, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    cmp-long v4, v10, v5

    .line 145
    .line 146
    if-eqz v4, :cond_b

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    array-length v2, v2

    .line 152
    const/4 v4, 0x1

    .line 153
    if-le v2, v4, :cond_9

    .line 154
    .line 155
    const/4 v2, -0x1

    .line 156
    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 157
    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_9
    const/4 v2, -0x1

    .line 161
    :goto_7
    array-length v3, v3

    .line 162
    if-le v3, v4, :cond_a

    .line 163
    .line 164
    const/16 v3, 0x2f

    .line 165
    .line 166
    invoke-static {v1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 167
    .line 168
    .line 169
    :cond_a
    const-string v2, "TOTAL  : "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 178
    .line 179
    .line 180
    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, -0x1

    .line 14
    :goto_0
    array-length v10, v2

    .line 15
    if-ge v7, v10, :cond_8

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v13, -0x1

    .line 19
    :goto_1
    array-length v14, v3

    .line 20
    if-ge v10, v14, :cond_7

    .line 21
    .line 22
    const/4 v14, 0x0

    .line 23
    :goto_2
    array-length v15, v4

    .line 24
    if-ge v14, v15, :cond_6

    .line 25
    .line 26
    aget v15, v2, v7

    .line 27
    .line 28
    aget v5, v3, v10

    .line 29
    .line 30
    add-int v16, v15, v5

    .line 31
    .line 32
    mul-int/lit8 v16, v16, 0xe

    .line 33
    .line 34
    aget v17, v4, v14

    .line 35
    .line 36
    add-int v6, v16, v17

    .line 37
    .line 38
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v11

    .line 42
    const-wide/16 v18, 0x0

    .line 43
    .line 44
    cmp-long v18, v11, v18

    .line 45
    .line 46
    if-lez v18, :cond_5

    .line 47
    .line 48
    move/from16 v18, v7

    .line 49
    .line 50
    if-nez v8, :cond_0

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v8, "PSS/USS ("

    .line 56
    .line 57
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 61
    .line 62
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 67
    .line 68
    .line 69
    const-string v8, " entries):"

    .line 70
    .line 71
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v7, "  "

    .line 79
    .line 80
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    array-length v7, v2

    .line 84
    const/4 v2, 0x1

    .line 85
    if-le v7, v2, :cond_2

    .line 86
    .line 87
    if-eq v9, v15, :cond_1

    .line 88
    .line 89
    move v7, v15

    .line 90
    goto :goto_3

    .line 91
    :cond_1
    const/4 v7, -0x1

    .line 92
    :goto_3
    invoke-static {v1, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 93
    .line 94
    .line 95
    move v9, v15

    .line 96
    :cond_2
    array-length v7, v3

    .line 97
    if-le v7, v2, :cond_4

    .line 98
    .line 99
    if-eq v13, v5, :cond_3

    .line 100
    .line 101
    move v2, v5

    .line 102
    goto :goto_4

    .line 103
    :cond_3
    const/4 v2, -0x1

    .line 104
    :goto_4
    const/16 v7, 0x2f

    .line 105
    .line 106
    invoke-static {v1, v2, v7}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 107
    .line 108
    .line 109
    move v13, v5

    .line 110
    :cond_4
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 111
    .line 112
    aget v5, v4, v14

    .line 113
    .line 114
    aget-object v2, v2, v5

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, ": "

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 125
    .line 126
    .line 127
    const-string v2, " samples "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v11

    .line 136
    const-wide/16 v16, 0x400

    .line 137
    .line 138
    mul-long v11, v11, v16

    .line 139
    .line 140
    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 141
    .line 142
    .line 143
    const-string v2, " "

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v11

    .line 152
    mul-long v11, v11, v16

    .line 153
    .line 154
    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    .line 161
    .line 162
    .line 163
    move-result-wide v11

    .line 164
    mul-long v11, v11, v16

    .line 165
    .line 166
    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 167
    .line 168
    .line 169
    const-string v5, " / "

    .line 170
    .line 171
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v11

    .line 178
    mul-long v11, v11, v16

    .line 179
    .line 180
    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v11

    .line 190
    mul-long v11, v11, v16

    .line 191
    .line 192
    invoke-static {v1, v11, v12}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v5

    .line 202
    mul-long v5, v5, v16

    .line 203
    .line 204
    invoke-static {v1, v5, v6}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_5
    move/from16 v18, v7

    .line 212
    .line 213
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 214
    .line 215
    move-object/from16 v2, p3

    .line 216
    .line 217
    move/from16 v7, v18

    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :cond_6
    move/from16 v18, v7

    .line 222
    .line 223
    add-int/lit8 v10, v10, 0x1

    .line 224
    .line 225
    move-object/from16 v2, p3

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_7
    move/from16 v18, v7

    .line 230
    .line 231
    add-int/lit8 v7, v18, 0x1

    .line 232
    .line 233
    move-object/from16 v2, p3

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_8
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 238
    .line 239
    if-eqz v2, :cond_9

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v2, "Killed for excessive CPU use: "

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 252
    .line 253
    .line 254
    const-string v2, " times"

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_9
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 260
    .line 261
    if-eqz v2, :cond_a

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v2, "Killed from cached state: "

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 274
    .line 275
    .line 276
    const-string v2, " times from pss "

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 282
    .line 283
    const-wide/16 v4, 0x400

    .line 284
    .line 285
    mul-long/2addr v2, v4

    .line 286
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 287
    .line 288
    .line 289
    const-string v2, "-"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 295
    .line 296
    mul-long/2addr v6, v4

    .line 297
    invoke-static {v1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 304
    .line 305
    mul-long/2addr v2, v4

    .line 306
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 310
    .line 311
    .line 312
    :cond_a
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 17

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "* "

    .line 9
    .line 10
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, " / "

    .line 19
    .line 20
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 24
    .line 25
    invoke-static {v13, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 26
    .line 27
    .line 28
    const-string v0, " / v"

    .line 29
    .line 30
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 34
    .line 35
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 36
    .line 37
    .line 38
    const-string v0, ":"

    .line 39
    .line 40
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "         TOTAL: "

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    move-object/from16 v0, p0

    .line 47
    .line 48
    move-object/from16 v1, p1

    .line 49
    .line 50
    move-object/from16 v2, p2

    .line 51
    .line 52
    move-object/from16 v4, p3

    .line 53
    .line 54
    move-object/from16 v5, p4

    .line 55
    .line 56
    move-object/from16 v6, p5

    .line 57
    .line 58
    move-wide/from16 v7, p6

    .line 59
    .line 60
    move-wide/from16 v9, p8

    .line 61
    .line 62
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 63
    .line 64
    .line 65
    const-string v3, "    Persistent: "

    .line 66
    .line 67
    const/4 v14, 0x1

    .line 68
    new-array v6, v14, [I

    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    aput v15, v6, v15

    .line 72
    .line 73
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 74
    .line 75
    .line 76
    const-string v3, "           Top: "

    .line 77
    .line 78
    new-array v6, v14, [I

    .line 79
    .line 80
    aput v14, v6, v15

    .line 81
    .line 82
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 83
    .line 84
    .line 85
    const-string v3, "        Imp Fg: "

    .line 86
    .line 87
    new-array v6, v14, [I

    .line 88
    .line 89
    const/4 v0, 0x2

    .line 90
    aput v0, v6, v15

    .line 91
    .line 92
    move-object/from16 v0, p0

    .line 93
    .line 94
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 95
    .line 96
    .line 97
    const-string v3, "        Imp Bg: "

    .line 98
    .line 99
    new-array v6, v14, [I

    .line 100
    .line 101
    const/4 v11, 0x3

    .line 102
    aput v11, v6, v15

    .line 103
    .line 104
    const/16 v16, 0x1

    .line 105
    .line 106
    move/from16 v11, v16

    .line 107
    .line 108
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 109
    .line 110
    .line 111
    const-string v3, "        Backup: "

    .line 112
    .line 113
    new-array v6, v14, [I

    .line 114
    .line 115
    const/4 v0, 0x4

    .line 116
    aput v0, v6, v15

    .line 117
    .line 118
    const/4 v11, 0x1

    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 122
    .line 123
    .line 124
    const-string v3, "     Heavy Wgt: "

    .line 125
    .line 126
    new-array v6, v14, [I

    .line 127
    .line 128
    const/4 v0, 0x5

    .line 129
    aput v0, v6, v15

    .line 130
    .line 131
    move-object/from16 v0, p0

    .line 132
    .line 133
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 134
    .line 135
    .line 136
    const-string v3, "       Service: "

    .line 137
    .line 138
    new-array v6, v14, [I

    .line 139
    .line 140
    const/4 v0, 0x6

    .line 141
    aput v0, v6, v15

    .line 142
    .line 143
    move-object/from16 v0, p0

    .line 144
    .line 145
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 146
    .line 147
    .line 148
    const-string v3, "    Service Rs: "

    .line 149
    .line 150
    new-array v6, v14, [I

    .line 151
    .line 152
    const/4 v0, 0x7

    .line 153
    aput v0, v6, v15

    .line 154
    .line 155
    move-object/from16 v0, p0

    .line 156
    .line 157
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 158
    .line 159
    .line 160
    const-string v3, "      Receiver: "

    .line 161
    .line 162
    new-array v6, v14, [I

    .line 163
    .line 164
    const/16 v0, 0x8

    .line 165
    .line 166
    aput v0, v6, v15

    .line 167
    .line 168
    move-object/from16 v0, p0

    .line 169
    .line 170
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 171
    .line 172
    .line 173
    const-string v3, "        (Home): "

    .line 174
    .line 175
    new-array v6, v14, [I

    .line 176
    .line 177
    const/16 v0, 0x9

    .line 178
    .line 179
    aput v0, v6, v15

    .line 180
    .line 181
    move-object/from16 v0, p0

    .line 182
    .line 183
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 184
    .line 185
    .line 186
    const-string v3, "    (Last Act): "

    .line 187
    .line 188
    new-array v6, v14, [I

    .line 189
    .line 190
    const/16 v0, 0xa

    .line 191
    .line 192
    aput v0, v6, v15

    .line 193
    .line 194
    move-object/from16 v0, p0

    .line 195
    .line 196
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 197
    .line 198
    .line 199
    const-string v3, "      (Cached): "

    .line 200
    .line 201
    const/4 v0, 0x3

    .line 202
    new-array v6, v0, [I

    .line 203
    .line 204
    fill-array-data v6, :array_0

    .line 205
    .line 206
    .line 207
    move-object/from16 v0, p0

    .line 208
    .line 209
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getDuration(IJ)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    int-to-byte v1, p1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(B)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 9
    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 13
    .line 14
    sub-long/2addr p2, v2

    .line 15
    add-long/2addr v0, p2

    .line 16
    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPssAverage(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMaximum(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMinimum(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssSampleCount(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssAverage(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMaximum(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMinimum(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte p1, p1

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    return v0
.end method

.method public hasAnyData()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    return v0
.end method

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 2
    .line 3
    if-eq v0, p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 13
    .line 14
    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 2
    .line 3
    if-eq v0, p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    add-int/2addr p4, v0

    .line 12
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 13
    .line 14
    if-ne p4, v0, :cond_1

    .line 15
    .line 16
    iget p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    if-ne p4, v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 p1, p1, 0xe

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x7

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public isInUse()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMultiPackage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public makeActive()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 6
    .line 7
    return-void
.end method

.method public makeDead()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    return-void
.end method

.method public makeInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeStandalone()V
    .locals 0

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const-string v1, "Didn\'t find package "

    const-string v2, " / "

    if-eqz v0, :cond_2

    .line 3
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const-string v3, " vers "

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Didn\'t create per-package process "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in pkg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 11
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 15
    .line 16
    :cond_1
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->readFromParcel(Landroid/os/Parcel;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->readFromParcel(Landroid/os/Parcel;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    return v2

    .line 34
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 48
    .line 49
    if-lez p2, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const-wide/16 p1, 0x0

    .line 71
    .line 72
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 73
    .line 74
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 75
    .line 76
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 77
    .line 78
    :goto_1
    return v1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    move-wide v2, p2

    .line 8
    move-wide v4, p2

    .line 9
    move-wide v6, p2

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    move-wide v3, p2

    .line 34
    move-wide v5, p2

    .line 35
    move-wide v7, p2

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 5
    .line 6
    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->resetTable()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->resetTable()V

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 26
    .line 27
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 28
    .line 29
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 30
    .line 31
    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_1

    .line 1
    iget p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez p1, :cond_0

    mul-int/lit8 p2, p2, 0xe

    add-int/lit8 p2, p2, 0x7

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v0, p1

    mul-int/lit8 p2, p2, 0xe

    add-int/2addr p2, p1

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 4
    iget-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean p1, p1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 5
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 6
    invoke-direct {p0, p5, p1}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 8
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 10
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "ProcessState{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "/"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " pkg="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    const-string v1, " (multi)"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 60
    .line 61
    if-eq v1, p0, :cond_1

    .line 62
    .line 63
    const-string v1, " (sub)"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    const-string/jumbo v1, "}"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->writeToParcel(Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->writeToParcel(Landroid/os/Parcel;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 31
    .line 32
    if-lez p2, :cond_0

    .line 33
    .line 34
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    .line 38
    .line 39
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 40
    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
