.class public Landroid/os/PerformanceCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceCollector$PerformanceResultsWriter;
    }
.end annotation


# static fields
.field public static final METRIC_KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field public static final METRIC_KEY_EXECUTION_TIME:Ljava/lang/String; = "execution_time"

.field public static final METRIC_KEY_GC_INVOCATION_COUNT:Ljava/lang/String; = "gc_invocation_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_COUNT:Ljava/lang/String; = "global_alloc_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_SIZE:Ljava/lang/String; = "global_alloc_size"

.field public static final METRIC_KEY_GLOBAL_FREED_COUNT:Ljava/lang/String; = "global_freed_count"

.field public static final METRIC_KEY_GLOBAL_FREED_SIZE:Ljava/lang/String; = "global_freed_size"

.field public static final METRIC_KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field public static final METRIC_KEY_JAVA_ALLOCATED:Ljava/lang/String; = "java_allocated"

.field public static final METRIC_KEY_JAVA_FREE:Ljava/lang/String; = "java_free"

.field public static final METRIC_KEY_JAVA_PRIVATE_DIRTY:Ljava/lang/String; = "java_private_dirty"

.field public static final METRIC_KEY_JAVA_PSS:Ljava/lang/String; = "java_pss"

.field public static final METRIC_KEY_JAVA_SHARED_DIRTY:Ljava/lang/String; = "java_shared_dirty"

.field public static final METRIC_KEY_JAVA_SIZE:Ljava/lang/String; = "java_size"

.field public static final METRIC_KEY_LABEL:Ljava/lang/String; = "label"

.field public static final METRIC_KEY_NATIVE_ALLOCATED:Ljava/lang/String; = "native_allocated"

.field public static final METRIC_KEY_NATIVE_FREE:Ljava/lang/String; = "native_free"

.field public static final METRIC_KEY_NATIVE_PRIVATE_DIRTY:Ljava/lang/String; = "native_private_dirty"

.field public static final METRIC_KEY_NATIVE_PSS:Ljava/lang/String; = "native_pss"

.field public static final METRIC_KEY_NATIVE_SHARED_DIRTY:Ljava/lang/String; = "native_shared_dirty"

.field public static final METRIC_KEY_NATIVE_SIZE:Ljava/lang/String; = "native_size"

.field public static final METRIC_KEY_OTHER_PRIVATE_DIRTY:Ljava/lang/String; = "other_private_dirty"

.field public static final METRIC_KEY_OTHER_PSS:Ljava/lang/String; = "other_pss"

.field public static final METRIC_KEY_OTHER_SHARED_DIRTY:Ljava/lang/String; = "other_shared_dirty"

.field public static final METRIC_KEY_PRE_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "pre_received_transactions"

.field public static final METRIC_KEY_PRE_SENT_TRANSACTIONS:Ljava/lang/String; = "pre_sent_transactions"

.field public static final METRIC_KEY_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "received_transactions"

.field public static final METRIC_KEY_SENT_TRANSACTIONS:Ljava/lang/String; = "sent_transactions"


# instance fields
.field private mCpuTime:J

.field private mExecTime:J

.field private mPerfMeasurement:Landroid/os/Bundle;

.field private mPerfSnapshot:Landroid/os/Bundle;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSnapshotCpuTime:J

.field private mSnapshotExecTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    return-void
.end method

.method private endPerformanceSnapshot()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 3
    invoke-static {}, Landroid/os/PerformanceCollector;->stopAllocCounting()V

    .line 4
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    .line 5
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v5

    div-long/2addr v5, v3

    .line 6
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v7

    div-long/2addr v7, v3

    .line 7
    new-instance v9, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v9}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 8
    invoke-static {v9}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 10
    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v11

    div-long/2addr v11, v3

    .line 11
    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v13

    div-long/2addr v13, v3

    sub-long v3, v11, v13

    .line 12
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v10

    .line 13
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    move-wide/from16 v18, v13

    .line 14
    iget-object v13, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-wide/from16 v20, v3

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v13, v15, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v17

    move-wide/from16 v13, v18

    move-wide/from16 v3, v20

    goto :goto_0

    :cond_0
    move-wide/from16 v20, v3

    move-wide/from16 v18, v13

    .line 15
    invoke-static {}, Landroid/os/PerformanceCollector;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 17
    iget-object v13, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v10, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v3, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget-wide v13, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    const-string v4, "execution_time"

    invoke-virtual {v3, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    iget-object v3, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget-wide v13, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    const-string v4, "cpu_time"

    invoke-virtual {v3, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object v3, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v4, "native_size"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 21
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v2, "native_allocated"

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v2, "native_free"

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v2, v2

    const-string v4, "native_pss"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    int-to-long v2, v2

    const-string v4, "native_private_dirty"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    int-to-long v2, v2

    const-string v4, "native_shared_dirty"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v2, "java_size"

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v2, "java_allocated"

    move-wide/from16 v11, v20

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    const-string v2, "java_free"

    move-wide/from16 v13, v18

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v2, v2

    const-string v4, "java_pss"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    int-to-long v2, v2

    const-string v4, "java_private_dirty"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    int-to-long v2, v2

    const-string v4, "java_shared_dirty"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherPss:I

    int-to-long v2, v2

    const-string v4, "other_pss"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    int-to-long v2, v2

    const-string v4, "other_private_dirty"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 34
    iget-object v1, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    iget v2, v9, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    int-to-long v2, v2

    const-string v4, "other_shared_dirty"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private static getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_alloc_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_alloc_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_freed_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_freed_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "gc_invocation_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private static getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "sent_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "received_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private static startAllocCounting()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 4
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 5
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    return-void
.end method

.method private startPerformanceSnapshot()V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 2
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/PerformanceCollector;->startAllocCounting()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 7
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    return-void
.end method

.method private static stopAllocCounting()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 4
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    return-void
.end method


# virtual methods
.method public addIteration(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "label"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    const-string p1, "execution_time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    const-string p1, "cpu_time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object p1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    const-string v1, "iterations"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 9
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    return-object v0
.end method

.method public addMeasurement(Ljava/lang/String;F)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beginSnapshot(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeBeginSnapshot(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->startPerformanceSnapshot()V

    return-void
.end method

.method public endSnapshot()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->endPerformanceSnapshot()V

    .line 2
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeEndSnapshot(Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    return-object v0
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    return-void
.end method

.method public startTiming(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStartTiming(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "iterations"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 6
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    return-void
.end method

.method public stopTiming(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->addIteration(Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    iget-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStopTiming(Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    return-object p1
.end method
