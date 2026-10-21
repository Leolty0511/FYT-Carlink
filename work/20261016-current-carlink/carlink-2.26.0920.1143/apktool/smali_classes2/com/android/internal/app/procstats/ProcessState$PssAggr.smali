.class Lcom/android/internal/app/procstats/ProcessState$PssAggr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PssAggr"
.end annotation


# instance fields
.field pss:J

.field samples:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 2
    .line 3
    long-to-double v0, v0

    .line 4
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 5
    .line 6
    long-to-double v4, v2

    .line 7
    mul-double/2addr v0, v4

    .line 8
    long-to-double p1, p1

    .line 9
    long-to-double v4, p3

    .line 10
    mul-double/2addr p1, v4

    .line 11
    add-double/2addr p1, v0

    .line 12
    double-to-long p1, p1

    .line 13
    add-long v0, v2, p3

    .line 14
    .line 15
    div-long/2addr p1, v0

    .line 16
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .line 17
    .line 18
    add-long/2addr v2, p3

    .line 19
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    .line 20
    .line 21
    return-void
.end method
