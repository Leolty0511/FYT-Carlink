.class public Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationTimer"
.end annotation


# instance fields
.field mCurrentDurationMs:J

.field mMaxDurationMs:J

.field mStartTimeMs:J

.field mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 4
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 5
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    return-void
.end method


# virtual methods
.method public getCurrentDurationMsLocked(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2
    .line 3
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 16
    .line 17
    const-wide/16 v3, 0x3e8

    .line 18
    .line 19
    mul-long/2addr p1, v3

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    div-long/2addr p1, v3

    .line 25
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 26
    .line 27
    sub-long/2addr p1, v2

    .line 28
    add-long/2addr v0, p1

    .line 29
    :cond_0
    return-wide v0
.end method

.method public getMaxDurationMsLocked(J)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    return-wide p1

    .line 16
    :cond_0
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 17
    .line 18
    return-wide p1
.end method

.method public getTotalDurationMsLocked(J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    const-wide/16 p1, 0x3e8

    .line 9
    .line 10
    div-long/2addr p5, p1

    .line 11
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 9
    .line 10
    const-wide/16 p3, 0x3e8

    .line 11
    .line 12
    div-long/2addr p5, p3

    .line 13
    iget-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 14
    .line 15
    sub-long/2addr p5, p3

    .line 16
    add-long/2addr p5, p1

    .line 17
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 18
    .line 19
    :cond_0
    const-wide/16 p1, -0x1

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 22
    .line 23
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 23
    .line 24
    return-void
.end method

.method public reset(Z)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 12
    .line 13
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/16 v3, 0x3e8

    .line 26
    .line 27
    mul-long/2addr v1, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    div-long/2addr v0, v3

    .line 33
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 39
    .line 40
    :goto_0
    return p1
.end method

.method public startRunningLocked(J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    const-wide/16 v1, 0x3e8

    .line 20
    .line 21
    mul-long/2addr p1, v1

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    div-long/2addr p1, v1

    .line 27
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 11
    .line 12
    add-long/2addr v2, v0

    .line 13
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 22
    .line 23
    :cond_0
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 30
    .line 31
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    div-long/2addr p2, v0

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p2

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    div-long/2addr p2, v0

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
