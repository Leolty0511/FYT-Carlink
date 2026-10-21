.class public final Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public avgPss:J

.field public avgUss:J

.field public maxPss:J

.field public maxUss:J

.field final memStates:[I

.field public minPss:J

.field public minUss:J

.field public numPss:J

.field final procStates:[I

.field final screenStates:[I

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public print(Ljava/io/PrintWriter;JZ)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 2
    .line 3
    cmp-long v0, v0, p2

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "*"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 13
    .line 14
    long-to-double v0, v0

    .line 15
    long-to-double p2, p2

    .line 16
    div-double/2addr v0, p2

    .line 17
    invoke-static {p1, v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 18
    .line 19
    .line 20
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    cmp-long p2, p2, v0

    .line 25
    .line 26
    if-lez p2, :cond_2

    .line 27
    .line 28
    const-string p2, " ("

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 34
    .line 35
    const-wide/16 v0, 0x400

    .line 36
    .line 37
    mul-long/2addr p2, v0

    .line 38
    invoke-static {p1, p2, p3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 39
    .line 40
    .line 41
    const-string p2, "-"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 47
    .line 48
    mul-long/2addr v2, v0

    .line 49
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 56
    .line 57
    mul-long/2addr v2, v0

    .line 58
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 59
    .line 60
    .line 61
    const-string p3, "/"

    .line 62
    .line 63
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 67
    .line 68
    mul-long/2addr v2, v0

    .line 69
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 76
    .line 77
    mul-long/2addr v2, v0

    .line 78
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 85
    .line 86
    mul-long/2addr p2, v0

    .line 87
    invoke-static {p1, p2, p3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 88
    .line 89
    .line 90
    if-eqz p4, :cond_1

    .line 91
    .line 92
    const-string p2, " over "

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-wide p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 98
    .line 99
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 100
    .line 101
    .line 102
    :cond_1
    const-string p2, ")"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method
