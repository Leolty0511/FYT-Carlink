.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field protected final mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

.field protected mCount:I

.field protected mLastCount:I

.field protected mLastTime:J

.field protected mLoadedCount:I

.field protected mLoadedTime:J

.field protected final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected mTimeBeforeMark:J

.field protected mTotalTime:J

.field protected final mType:I

.field protected mUnpluggedCount:I

.field protected mUnpluggedTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 17
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 18
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 19
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 3
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 4
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 6
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 8
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 9
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 10
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 12
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 13
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 14
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public static writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract computeCurrentCountLocked()I
.end method

.method public abstract computeRunTimeLocked(J)J
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountLocked(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 9
    .line 10
    :goto_0
    sub-int/2addr v0, p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    return v0
.end method

.method public getTimeSinceMarkLocked(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 12
    .line 13
    sub-long/2addr p1, v0

    .line 14
    return-wide p1
.end method

.method public getTotalTimeLocked(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p3, v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 15
    .line 16
    :goto_0
    sub-long/2addr p1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_1

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-wide p1
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "mCount="

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " mLoadedCount="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " mLastCount="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " mUnpluggedCount="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "mTotalTime="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " mLoadedTime="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, "mLastTime="

    .line 93
    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, " mUnpluggedTime="

    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 12
    .line 13
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 12
    .line 13
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 20
    .line 21
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 25
    .line 26
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 31
    .line 32
    return-void
.end method

.method public reset(Z)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 19
    .line 20
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
