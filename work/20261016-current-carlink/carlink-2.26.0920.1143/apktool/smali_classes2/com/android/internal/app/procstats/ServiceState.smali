.class public final Lcom/android/internal/app/procstats/ServiceState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_BOUND:I = 0x2

.field public static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mBoundCount:I

.field private mBoundStartTime:J

.field private mBoundState:I

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mExecCount:I

.field private mExecStartTime:J

.field private mExecState:I

.field private final mName:Ljava/lang/String;

.field private mOwner:Ljava/lang/Object;

.field private final mPackage:Ljava/lang/String;

.field private mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final mProcessName:Ljava/lang/String;

.field private mRestarting:Z

.field private mRunCount:I

.field private mRunStartTime:J

.field private mRunState:I

.field private mStarted:Z

.field private mStartedCount:I

.field private mStartedStartTime:J

.field private mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 20
    .line 21
    new-instance p2, Lcom/android/internal/app/procstats/DurationsTable;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 29
    .line 30
    return-void
.end method

.method private dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V
    .locals 12

    move-object v1, p1

    move-object/from16 v0, p5

    move/from16 v2, p6

    if-eqz v2, :cond_1

    if-eqz p15, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " op count "

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move/from16 v3, p7

    move/from16 v4, p8

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    .line 13
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    move-result-wide v3

    .line 14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v5, p4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " count "

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " / time "

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    long-to-double v2, v3

    move-wide/from16 v4, p13

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 17
    invoke-static {p1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 18
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V
    .locals 2

    .line 1
    if-gtz p8, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p2, ","

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p8}, Ljava/io/PrintWriter;->print(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/4 p3, 0x0

    .line 46
    move p4, p3

    .line 47
    :goto_0
    if-ge p3, p2, :cond_3

    .line 48
    .line 49
    iget-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 50
    .line 51
    invoke-virtual {p5, p3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    iget-object p6, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 56
    .line 57
    invoke-virtual {p6, p5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    invoke-static {p5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 62
    .line 63
    .line 64
    move-result p5

    .line 65
    div-int/lit8 p6, p5, 0x4

    .line 66
    .line 67
    rem-int/lit8 p5, p5, 0x4

    .line 68
    .line 69
    if-eq p5, p7, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    if-ne p9, p6, :cond_2

    .line 73
    .line 74
    sub-long p4, p12, p10

    .line 75
    .line 76
    add-long/2addr v0, p4

    .line 77
    const/4 p4, 0x1

    .line 78
    :cond_2
    invoke-static {p1, p6, v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 79
    .line 80
    .line 81
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    if-nez p4, :cond_4

    .line 85
    .line 86
    const/4 p2, -0x1

    .line 87
    if-eq p9, p2, :cond_4

    .line 88
    .line 89
    sub-long/2addr p12, p10

    .line 90
    invoke-static {p1, p9, p12, p13}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private updateRunning(IJ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 17
    .line 18
    if-eq v0, p1, :cond_4

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x0

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 29
    .line 30
    sub-long v2, p2, v2

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-eq p1, v1, :cond_3

    .line 37
    .line 38
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 43
    .line 44
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 45
    .line 46
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 47
    .line 48
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 9
    .line 10
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 14
    .line 15
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 16
    .line 17
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 21
    .line 22
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 23
    .line 24
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 28
    .line 29
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 30
    .line 31
    iget p1, p1, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 32
    .line 33
    add-int/2addr v0, p1

    .line 34
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 35
    .line 36
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    iget p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 29
    .line 30
    if-eq p1, v0, :cond_4

    .line 31
    .line 32
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 45
    .line 46
    if-eq p1, v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 52
    .line 53
    if-eq p1, v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne v0, p1, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_6

    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 30
    .line 31
    const-string v4, " proc="

    .line 32
    .line 33
    const-string v5, " service="

    .line 34
    .line 35
    const-string v6, "Service owner "

    .line 36
    .line 37
    const-string v7, "ProcessStats"

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v9, " cleared while started: pkg="

    .line 53
    .line 54
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 74
    .line 75
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v7, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 89
    .line 90
    if-eq v0, v1, :cond_4

    .line 91
    .line 92
    if-nez p2, :cond_3

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v9, " cleared while bound: pkg="

    .line 103
    .line 104
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 124
    .line 125
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v7, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_3
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 139
    .line 140
    if-eq v0, v1, :cond_6

    .line 141
    .line 142
    if-nez p2, :cond_5

    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, " cleared while exec: pkg="

    .line 153
    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v7, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_5
    invoke-virtual {p0, v8, v8, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 186
    .line 187
    .line 188
    :cond_6
    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 190
    .line 191
    :cond_7
    return-void
.end method

.method public commitStateTime(J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x0

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 13
    .line 14
    sub-long v3, p1, v3

    .line 15
    .line 16
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 17
    .line 18
    .line 19
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 26
    .line 27
    mul-int/lit8 v0, v0, 0x4

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 32
    .line 33
    sub-long v3, p1, v3

    .line 34
    .line 35
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 36
    .line 37
    .line 38
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 45
    .line 46
    mul-int/lit8 v0, v0, 0x4

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 51
    .line 52
    sub-long v3, p1, v3

    .line 53
    .line 54
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 55
    .line 56
    .line 57
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 58
    .line 59
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 60
    .line 61
    if-eq v0, v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 64
    .line 65
    mul-int/lit8 v0, v0, 0x4

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x3

    .line 68
    .line 69
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 70
    .line 71
    sub-long v2, p1, v2

    .line 72
    .line 73
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 74
    .line 75
    .line 76
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v5, "Running"

    .line 1
    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    const/4 v7, 0x0

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz p9, :cond_1

    if-eqz p10, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v17

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string v5, "Started"

    move-object/from16 v15, p0

    .line 2
    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    const/4 v7, 0x1

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    if-eqz p9, :cond_3

    if-eqz p10, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v18, v16

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v18, v17

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string v5, "Bound"

    move-object/from16 v15, p0

    .line 3
    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    const/4 v7, 0x2

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    if-eqz p9, :cond_5

    if-eqz p10, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v18, v16

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v18, v17

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string v5, "Executing"

    move-object/from16 v15, p0

    .line 4
    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    const/4 v7, 0x3

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    if-eqz p9, :cond_6

    if-eqz p10, :cond_7

    :cond_6
    move/from16 v16, v17

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    if-eqz p10, :cond_a

    .line 5
    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v1, :cond_8

    const-string v1, "        mOwner="

    move-object/from16 v2, p1

    .line 6
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    move-object/from16 v2, p1

    .line 7
    :goto_6
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v1, :cond_a

    :cond_9
    const-string v1, "        mStarted="

    .line 8
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mRestarting="

    .line 9
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_a
    return-void
.end method

.method public dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    move-wide v6, v1

    .line 8
    move v8, v3

    .line 9
    move v5, v4

    .line 10
    :goto_0
    const/16 v9, 0x8

    .line 11
    .line 12
    if-ge v5, v9, :cond_6

    .line 13
    .line 14
    move v10, v3

    .line 15
    move v9, v4

    .line 16
    :goto_1
    const/4 v11, 0x4

    .line 17
    if-ge v9, v11, :cond_5

    .line 18
    .line 19
    add-int v11, v9, v5

    .line 20
    .line 21
    move-object/from16 v12, p0

    .line 22
    .line 23
    move/from16 v13, p3

    .line 24
    .line 25
    move/from16 v14, p4

    .line 26
    .line 27
    move-wide/from16 v15, p5

    .line 28
    .line 29
    move/from16 v17, v11

    .line 30
    .line 31
    move-wide/from16 v18, p7

    .line 32
    .line 33
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/app/procstats/ServiceState;->getDuration(IIJIJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v12

    .line 37
    if-ne v14, v11, :cond_0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-string v11, " (running)"

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    const-string v11, ""

    .line 45
    .line 46
    :goto_2
    cmp-long v15, v12, v1

    .line 47
    .line 48
    if-eqz v15, :cond_4

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eq v8, v5, :cond_1

    .line 56
    .line 57
    move v8, v5

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    move v8, v3

    .line 60
    :goto_3
    invoke-static {v0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 61
    .line 62
    .line 63
    if-eq v10, v9, :cond_2

    .line 64
    .line 65
    move v8, v9

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    move v8, v3

    .line 68
    :goto_4
    invoke-static {v0, v8, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 69
    .line 70
    .line 71
    const-string v8, ": "

    .line 72
    .line 73
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move v8, v5

    .line 83
    move v10, v9

    .line 84
    :cond_3
    add-long/2addr v6, v12

    .line 85
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    move/from16 v14, p4

    .line 89
    .line 90
    add-int/lit8 v5, v5, 0x4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    cmp-long v1, v6, v1

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "    TOTAL: "

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 111
    .line 112
    .line 113
    :cond_7
    return-wide v6
.end method

.method public dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 15

    .line 1
    move-object v14, p0

    .line 2
    const-string v2, "pkgsvc-run"

    .line 3
    .line 4
    const/4 v7, 0x0

    .line 5
    iget v8, v14, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 6
    .line 7
    iget v9, v14, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 8
    .line 9
    iget-wide v10, v14, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    move-object/from16 v3, p2

    .line 15
    .line 16
    move/from16 v4, p3

    .line 17
    .line 18
    move/from16 v5, p4

    .line 19
    .line 20
    move-object/from16 v6, p5

    .line 21
    .line 22
    move-wide/from16 v12, p6

    .line 23
    .line 24
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    .line 25
    .line 26
    .line 27
    const-string v2, "pkgsvc-start"

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    iget v8, v14, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 31
    .line 32
    iget v9, v14, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 33
    .line 34
    iget-wide v10, v14, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 35
    .line 36
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    .line 37
    .line 38
    .line 39
    const-string v2, "pkgsvc-bound"

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    iget v8, v14, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 43
    .line 44
    iget v9, v14, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 45
    .line 46
    iget-wide v10, v14, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 47
    .line 48
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    .line 49
    .line 50
    .line 51
    const-string v2, "pkgsvc-exec"

    .line 52
    .line 53
    const/4 v7, 0x3

    .line 54
    iget v8, v14, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 55
    .line 56
    iget v9, v14, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 57
    .line 58
    iget-wide v10, v14, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 59
    .line 60
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public getDuration(IIJIJ)J
    .locals 2

    mul-int/lit8 v0, p5, 0x4

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(B)J

    move-result-wide v0

    if-ne p2, p5, :cond_0

    sub-long/2addr p6, p3

    add-long/2addr v0, p6

    :cond_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v0, :cond_0

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

.method public isRestarting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->readFromParcel(Landroid/os/Parcel;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public resetSafely(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->resetTable()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 17
    .line 18
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 19
    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v2

    .line 25
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 26
    .line 27
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 28
    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, v2

    .line 34
    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 35
    .line 36
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 37
    .line 38
    if-eq v0, v3, :cond_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move v1, v2

    .line 42
    :goto_3
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 43
    .line 44
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 45
    .line 46
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 47
    .line 48
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 49
    .line 50
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    .line 51
    .line 52
    return-void
.end method

.method public setBound(ZIJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Binding service "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " without owner"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ProcessStats"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, -0x1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move v1, p2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v0

    .line 35
    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 36
    .line 37
    if-eq v2, v1, :cond_4

    .line 38
    .line 39
    if-eq v2, v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 42
    .line 43
    mul-int/lit8 v2, v2, 0x4

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x2

    .line 46
    .line 47
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 48
    .line 49
    sub-long v3, p3, v3

    .line 50
    .line 51
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    iput p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 62
    .line 63
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 64
    .line 65
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    .line 66
    .line 67
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public setExecuting(ZIJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Executing service "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " without owner"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ProcessStats"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, -0x1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move v1, p2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v0

    .line 35
    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 36
    .line 37
    if-eq v2, v1, :cond_4

    .line 38
    .line 39
    if-eq v2, v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 42
    .line 43
    mul-int/lit8 v2, v2, 0x4

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 48
    .line 49
    sub-long v3, p3, v3

    .line 50
    .line 51
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    iput p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 62
    .line 63
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 64
    .line 65
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    .line 66
    .line 67
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public setMemFactor(IJ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isRestarting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    .line 27
    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    .line 34
    .line 35
    if-eq v0, v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method public setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public setRestarting(ZIJ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Starting service "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " without owner"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ProcessStats"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 30
    .line 31
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ServiceState{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " pkg="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " proc="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "}"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public updateStartedState(IJ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    .line 8
    move v4, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v4, v1

    .line 11
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    .line 12
    .line 13
    if-nez v5, :cond_1

    .line 14
    .line 15
    iget-boolean v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    .line 16
    .line 17
    if-eqz v5, :cond_2

    .line 18
    .line 19
    :cond_1
    move v1, v2

    .line 20
    :cond_2
    if-eqz v1, :cond_3

    .line 21
    .line 22
    move v5, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_3
    move v5, v3

    .line 25
    :goto_1
    if-eq v0, v5, :cond_8

    .line 26
    .line 27
    if-eq v0, v3, :cond_4

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x4

    .line 32
    .line 33
    add-int/2addr v0, v2

    .line 34
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 35
    .line 36
    sub-long v6, p2, v6

    .line 37
    .line 38
    invoke-virtual {v3, v0, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    if-eqz v1, :cond_5

    .line 43
    .line 44
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 45
    .line 46
    add-int/2addr v0, v2

    .line 47
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 48
    .line 49
    :cond_5
    :goto_2
    iput v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    .line 50
    .line 51
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 62
    .line 63
    if-eq v4, v1, :cond_7

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_7
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    .line 79
    .line 80
    .line 81
    :cond_8
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->writeToParcel(Landroid/os/Parcel;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
