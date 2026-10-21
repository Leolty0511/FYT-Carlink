.class public Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchTimer"
.end annotation


# instance fields
.field mInDischarge:Z

.field mLastAddedDuration:J

.field mLastAddedTime:J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 7
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 4
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 5
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    return-void
.end method

.method private computeOverage(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    sub-long/2addr v0, p1

    .line 15
    return-wide v0

    .line 16
    :cond_0
    return-wide v2
.end method

.method private recomputeLastDuration(JZ)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_2

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 16
    .line 17
    sub-long/2addr v4, v0

    .line 18
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 19
    .line 20
    :cond_0
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 26
    .line 27
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 28
    .line 29
    sub-long/2addr p1, v0

    .line 30
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long/2addr v0, v2

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long/2addr v0, v2

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 15
    .line 16
    mul-long/2addr p2, v2

    .line 17
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 24
    .line 25
    add-long/2addr v0, p2

    .line 26
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 27
    .line 28
    iget p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 29
    .line 30
    add-int/2addr p2, p1

    .line 31
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public computeCurrentCountLocked()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    return v0
.end method

.method public computeRunTimeLocked(J)J
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    const-wide/16 v0, 0x3e8

    .line 8
    .line 9
    mul-long/2addr p1, v0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v0, p1, v0

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 21
    .line 22
    return-wide p1

    .line 23
    :cond_0
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 24
    .line 25
    return-wide p1
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "mLastAddedTime="

    .line 5
    .line 6
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " mLastAddedDuration="

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 9
    .line 10
    cmp-long v0, v0, p1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 17
    .line 18
    add-long/2addr v0, v2

    .line 19
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 20
    .line 21
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long/2addr v0, v2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 12
    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 15
    .line 16
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public reset(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long/2addr v0, v2

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 12
    .line 13
    .line 14
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 15
    .line 16
    cmp-long v0, v3, v0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_1
    invoke-super {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 30
    .line 31
    .line 32
    xor-int/lit8 p1, v0, 0x1

    .line 33
    .line 34
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    .line 8
    .line 9
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
