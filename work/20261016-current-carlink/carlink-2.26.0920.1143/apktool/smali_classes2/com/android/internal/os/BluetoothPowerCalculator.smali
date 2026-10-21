.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private mAppTotalPowerMah:D

.field private mAppTotalTimeMs:J

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/BluetoothPowerCalculator;->DEBUG:Z

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
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 11
    .line 12
    const-string v0, "bluetooth.controller.idle"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 19
    .line 20
    const-string v0, "bluetooth.controller.rx"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 27
    .line 28
    const-string v0, "bluetooth.controller.tx"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p7

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v7, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const/4 v10, 0x0

    .line 37
    aget-object v9, v9, v10

    .line 38
    .line 39
    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    add-long v11, v5, v9

    .line 44
    .line 45
    add-long/2addr v11, v7

    .line 46
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v13

    .line 54
    long-to-double v13, v13

    .line 55
    const-wide v15, 0x414b774000000000L    # 3600000.0

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    div-double/2addr v13, v15

    .line 61
    const-wide/16 v17, 0x0

    .line 62
    .line 63
    cmpl-double v4, v13, v17

    .line 64
    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    long-to-double v4, v5

    .line 68
    iget-wide v13, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 69
    .line 70
    mul-double/2addr v4, v13

    .line 71
    long-to-double v6, v7

    .line 72
    iget-wide v13, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 73
    .line 74
    mul-double/2addr v6, v13

    .line 75
    add-double/2addr v6, v4

    .line 76
    long-to-double v4, v9

    .line 77
    iget-wide v8, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 78
    .line 79
    mul-double/2addr v4, v8

    .line 80
    add-double/2addr v4, v6

    .line 81
    div-double v13, v4, v15

    .line 82
    .line 83
    :cond_1
    iput-wide v13, v1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 84
    .line 85
    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 93
    .line 94
    const/4 v4, 0x5

    .line 95
    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 100
    .line 101
    iget-wide v1, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 102
    .line 103
    add-double/2addr v1, v13

    .line 104
    iput-wide v1, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 105
    .line 106
    iget-wide v1, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 107
    .line 108
    add-long/2addr v1, v11

    .line 109
    iput-wide v1, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 110
    .line 111
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p7

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v7, 0x0

    .line 24
    aget-object v6, v6, v7

    .line 25
    .line 26
    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    add-long v10, v4, v6

    .line 39
    .line 40
    add-long/2addr v10, v8

    .line 41
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    long-to-double v2, v2

    .line 50
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-double/2addr v2, v12

    .line 56
    const-wide/16 v14, 0x0

    .line 57
    .line 58
    cmpl-double v16, v2, v14

    .line 59
    .line 60
    if-nez v16, :cond_0

    .line 61
    .line 62
    long-to-double v2, v4

    .line 63
    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 64
    .line 65
    mul-double/2addr v2, v4

    .line 66
    long-to-double v4, v8

    .line 67
    iget-wide v8, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 68
    .line 69
    mul-double/2addr v4, v8

    .line 70
    add-double/2addr v4, v2

    .line 71
    long-to-double v2, v6

    .line 72
    iget-wide v6, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 73
    .line 74
    mul-double/2addr v2, v6

    .line 75
    add-double/2addr v2, v4

    .line 76
    div-double/2addr v2, v12

    .line 77
    :cond_0
    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 78
    .line 79
    sub-double/2addr v2, v4

    .line 80
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    sget-boolean v4, Lcom/android/internal/os/BluetoothPowerCalculator;->DEBUG:Z

    .line 85
    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    cmpl-double v4, v2, v14

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    const-string v4, "Bluetooth active: time="

    .line 93
    .line 94
    const-string v5, " power="

    .line 95
    .line 96
    invoke-static {v4, v10, v11, v5}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v5, "BluetoothPowerCalculator"

    .line 112
    .line 113
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_1
    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 117
    .line 118
    iget-wide v2, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 119
    .line 120
    sub-long/2addr v10, v2

    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .line 123
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 128
    .line 129
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    .line 8
    .line 9
    return-void
.end method
