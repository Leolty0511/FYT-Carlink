.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# instance fields
.field private final mGpsPowerOn:D

.field private final mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    .line 10
    .line 11
    const-string p2, "gps.on"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iput-wide p1, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPowerOn:D

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result p5

    .line 9
    const/4 p6, 0x0

    .line 10
    move v0, p6

    .line 11
    :goto_0
    if-ge v0, p5, :cond_3

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v5, 0x3e8

    .line 32
    .line 33
    div-long/2addr v3, v5

    .line 34
    const/16 v1, -0x2710

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    move v5, p6

    .line 45
    :goto_1
    if-ge v5, v1, :cond_2

    .line 46
    .line 47
    iget-object v6, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Landroid/hardware/Sensor;

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v7, v2, :cond_0

    .line 60
    .line 61
    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 62
    .line 63
    long-to-float v3, v3

    .line 64
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getPower()F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    mul-float/2addr v4, v3

    .line 69
    const v3, 0x4a5bba00    # 3600000.0f

    .line 70
    .line 71
    .line 72
    div-float/2addr v4, v3

    .line 73
    float-to-double v3, v4

    .line 74
    add-double/2addr v1, v3

    .line 75
    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iput-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 82
    .line 83
    long-to-double v1, v3

    .line 84
    iget-wide v3, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPowerOn:D

    .line 85
    .line 86
    mul-double/2addr v1, v3

    .line 87
    const-wide v3, 0x414b774000000000L    # 3600000.0

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    div-double/2addr v1, v3

    .line 93
    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 94
    .line 95
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return-void
.end method
