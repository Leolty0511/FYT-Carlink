.class public Lcom/lsec/core/util/TimeLock;
.super Ljava/lang/Object;
.source "TimeLock.java"


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
.method public reset()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lsec/core/util/TimeLock;->last:J

    .line 18
    return-void
.end method

.method public resetToZero()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lsec/core/util/TimeLock;->last:J

    .line 22
    return-void
.end method

.method public unlock(I)Z
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lsec/core/util/TimeLock;->cur:J

    .line 10
    iget-wide v0, p0, Lcom/lsec/core/util/TimeLock;->cur:J

    iget-wide v2, p0, Lcom/lsec/core/util/TimeLock;->last:J

    sub-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
