.class public Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualTimer"
.end annotation


# instance fields
.field private final mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 6
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
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 4
    new-instance p4, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 8
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
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2
    new-instance p4, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    return-object v0
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public reset(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->reset(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    or-int/2addr v0, v1

    .line 11
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->reset(Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    or-int/2addr p1, v0

    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    return p1
.end method

.method public startRunningLocked(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
