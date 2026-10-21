.class public final Lcom/android/internal/os/BatteryStatsImpl$b;
.super Lcom/android/internal/os/BatteryStatsImpl$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final k:Lcom/android/internal/os/BatteryStatsImpl$j;

.field public l:J

.field public m:J

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;ILjava/util/ArrayList;ZLandroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$j;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p5}, Lcom/android/internal/os/BatteryStatsImpl$i;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 2
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->k:Lcom/android/internal/os/BatteryStatsImpl$j;

    .line 3
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->l:J

    .line 4
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->m:J

    .line 5
    iput-boolean p4, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->n:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->c:I

    return v0
.end method

.method public b(J)J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$b;->e(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    return-wide p1

    .line 3
    :cond_0
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->g:J

    return-wide p1
.end method

.method public d(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$i;->d(Landroid/os/Parcel;J)V

    .line 2
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->l:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->m:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public final e(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$i;->i:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->m:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$i;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastAddedTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mLastAddedDuration="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$b;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method
