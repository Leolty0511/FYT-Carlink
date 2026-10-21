.class public Lcom/android/internal/os/CameraPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# instance fields
.field private final mCameraPowerOnAvg:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "camera.avg"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    const-wide/16 p4, 0x3e8

    .line 12
    .line 13
    div-long/2addr p2, p4

    .line 14
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 15
    .line 16
    long-to-double p2, p2

    .line 17
    iget-wide p4, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    .line 18
    .line 19
    mul-double/2addr p2, p4

    .line 20
    const-wide p4, 0x414b774000000000L    # 3600000.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    div-double/2addr p2, p4

    .line 26
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/16 p2, 0x0

    .line 30
    .line 31
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 32
    .line 33
    const-wide/16 p2, 0x0

    .line 34
    .line 35
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 36
    .line 37
    :goto_0
    return-void
.end method
