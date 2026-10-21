.class public Lcom/lsec/core/util/TickLock;
.super Ljava/lang/Object;
.source "TickLock.java"


# instance fields
.field private cur:J

.field private last:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pass()I
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lsec/core/util/TickLock;->cur:J

    .line 20
    iget-wide v0, p0, Lcom/lsec/core/util/TickLock;->cur:J

    iget-wide v2, p0, Lcom/lsec/core/util/TickLock;->last:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lsec/core/util/TickLock;->last:J

    .line 25
    return-void
.end method

.method public resetOffset(J)V
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lsec/core/util/TickLock;->last:J

    .line 29
    return-void
.end method

.method public resetToZero()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lsec/core/util/TickLock;->last:J

    .line 33
    return-void
.end method

.method public unlock(I)Z
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lsec/core/util/TickLock;->cur:J

    .line 10
    iget-wide v0, p0, Lcom/lsec/core/util/TickLock;->cur:J

    iget-wide v2, p0, Lcom/lsec/core/util/TickLock;->last:J

    sub-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/lsec/core/util/TickLock;->cur:J

    iput-wide v0, p0, Lcom/lsec/core/util/TickLock;->last:J

    .line 12
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
