.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerWakelock:D

.field private mTotalAppWakelockTimeMs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/WakelockPowerCalculator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    .line 7
    .line 8
    const-string v0, "cpu.awake"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result p6

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, p6, :cond_1

    .line 14
    .line 15
    invoke-virtual {p5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v4, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    add-long/2addr v4, v0

    .line 32
    move-wide v0, v4

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 p3, 0x3e8

    .line 37
    .line 38
    div-long/2addr v0, p3

    .line 39
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 40
    .line 41
    iget-wide p3, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    .line 42
    .line 43
    add-long/2addr p3, v0

    .line 44
    iput-wide p3, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    .line 45
    .line 46
    long-to-double p3, v0

    .line 47
    iget-wide p5, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    .line 48
    .line 49
    mul-double/2addr p3, p5

    .line 50
    const-wide p5, 0x414b774000000000L    # 3600000.0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-double/2addr p3, p5

    .line 56
    iput-wide p3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 57
    .line 58
    sget-boolean p5, Lcom/android/internal/os/WakelockPowerCalculator;->DEBUG:Z

    .line 59
    .line 60
    if-eqz p5, :cond_2

    .line 61
    .line 62
    const-wide/16 p5, 0x0

    .line 63
    .line 64
    cmpl-double p3, p3, p5

    .line 65
    .line 66
    if-eqz p3, :cond_2

    .line 67
    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p4, "UID "

    .line 71
    .line 72
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, ": wake "

    .line 83
    .line 84
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 88
    .line 89
    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, " power="

    .line 93
    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide p1, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 98
    .line 99
    invoke-static {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "WakelockPowerCalculator"

    .line 111
    .line 112
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 4

    .line 1
    invoke-virtual {p2, p5, p6}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p5

    .line 5
    const-wide/16 v0, 0x3e8

    .line 6
    .line 7
    div-long/2addr p5, v0

    .line 8
    iget-wide v2, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    .line 9
    .line 10
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p2

    .line 14
    div-long/2addr p2, v0

    .line 15
    add-long/2addr p2, v2

    .line 16
    sub-long/2addr p5, p2

    .line 17
    const-wide/16 p2, 0x0

    .line 18
    .line 19
    cmp-long p2, p5, p2

    .line 20
    .line 21
    if-lez p2, :cond_1

    .line 22
    .line 23
    long-to-double p2, p5

    .line 24
    iget-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    .line 25
    .line 26
    mul-double/2addr p2, v0

    .line 27
    const-wide v0, 0x414b774000000000L    # 3600000.0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    div-double/2addr p2, v0

    .line 33
    sget-boolean p4, Lcom/android/internal/os/WakelockPowerCalculator;->DEBUG:Z

    .line 34
    .line 35
    if-eqz p4, :cond_0

    .line 36
    .line 37
    const-string p4, "OS wakeLockTime "

    .line 38
    .line 39
    const-string p7, " power "

    .line 40
    .line 41
    invoke-static {p4, p5, p6, p7}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p7

    .line 49
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    const-string p7, "WakelockPowerCalculator"

    .line 57
    .line 58
    invoke-static {p7, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 62
    .line 63
    add-long/2addr v0, p5

    .line 64
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 65
    .line 66
    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 67
    .line 68
    add-double/2addr p4, p2

    .line 69
    iput-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    return-void
.end method
