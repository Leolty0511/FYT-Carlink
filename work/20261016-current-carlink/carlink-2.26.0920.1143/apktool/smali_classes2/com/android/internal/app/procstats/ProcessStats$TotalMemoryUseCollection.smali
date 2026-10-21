.class public Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalMemoryUseCollection"
.end annotation


# instance fields
.field public hasSwappedOutPss:Z

.field final memStates:[I

.field public processStatePss:[J

.field public processStateSamples:[I

.field public processStateTime:[J

.field public processStateWeight:[D

.field final screenStates:[I

.field public sysMemCachedWeight:D

.field public sysMemFreeWeight:D

.field public sysMemKernelWeight:D

.field public sysMemNativeWeight:D

.field public sysMemSamples:I

.field public sysMemUsage:[J

.field public sysMemZRamWeight:D

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xe

    .line 5
    .line 6
    new-array v1, v0, [J

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    .line 9
    .line 10
    new-array v1, v0, [D

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 13
    .line 14
    new-array v1, v0, [J

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    .line 17
    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    .line 31
    .line 32
    return-void
.end method
