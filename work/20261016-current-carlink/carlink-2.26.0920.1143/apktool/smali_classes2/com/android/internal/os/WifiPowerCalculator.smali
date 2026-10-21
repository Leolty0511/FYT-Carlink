.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private mTotalAppRunningTime:J

.field private final mTxCurrentMa:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/WifiPowerCalculator;->DEBUG:Z

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
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 11
    .line 12
    const-string/jumbo v0, "wifi.controller.idle"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    .line 20
    .line 21
    const-string/jumbo v0, "wifi.controller.tx"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .line 29
    .line 30
    const-string/jumbo v0, "wifi.controller.rx"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move/from16 v3, p7

    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v8, 0x0

    .line 28
    aget-object v7, v7, v8

    .line 29
    .line 30
    invoke-virtual {v7, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    add-long v11, v5, v9

    .line 43
    .line 44
    add-long/2addr v11, v7

    .line 45
    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 46
    .line 47
    iget-wide v13, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 48
    .line 49
    add-long/2addr v13, v11

    .line 50
    iput-wide v13, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 51
    .line 52
    long-to-double v11, v5

    .line 53
    iget-wide v13, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    .line 54
    .line 55
    mul-double/2addr v11, v13

    .line 56
    long-to-double v13, v7

    .line 57
    move-wide/from16 p3, v7

    .line 58
    .line 59
    iget-wide v7, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .line 60
    .line 61
    mul-double/2addr v13, v7

    .line 62
    add-double/2addr v13, v11

    .line 63
    long-to-double v7, v9

    .line 64
    iget-wide v11, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    .line 65
    .line 66
    mul-double/2addr v7, v11

    .line 67
    add-double/2addr v7, v13

    .line 68
    const-wide v11, 0x414b774000000000L    # 3600000.0

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    div-double/2addr v7, v11

    .line 74
    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 75
    .line 76
    iget-wide v11, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 77
    .line 78
    add-double/2addr v11, v7

    .line 79
    iput-wide v11, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 87
    .line 88
    const/4 v7, 0x3

    .line 89
    invoke-virtual {v2, v7, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 90
    .line 91
    .line 92
    move-result-wide v11

    .line 93
    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 94
    .line 95
    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 96
    .line 97
    .line 98
    move-result-wide v11

    .line 99
    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 100
    .line 101
    invoke-virtual {v2, v7, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    iput-wide v3, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 106
    .line 107
    sget-boolean v3, Lcom/android/internal/os/WifiPowerCalculator;->DEBUG:Z

    .line 108
    .line 109
    if-eqz v3, :cond_1

    .line 110
    .line 111
    iget-wide v3, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 112
    .line 113
    const-wide/16 v7, 0x0

    .line 114
    .line 115
    cmpl-double v3, v3, v7

    .line 116
    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "UID "

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, ": idle="

    .line 134
    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, "ms rx="

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, "ms tx="

    .line 150
    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-wide/from16 v4, p3

    .line 155
    .line 156
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, "ms power="

    .line 160
    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-wide v1, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 165
    .line 166
    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "WifiPowerCalculator"

    .line 178
    .line 179
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :cond_1
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide p3

    .line 13
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    const/4 p6, 0x0

    .line 18
    aget-object p5, p5, p6

    .line 19
    .line 20
    invoke-virtual {p5, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide p5

    .line 24
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    add-long v2, p3, v0

    .line 33
    .line 34
    add-long/2addr v2, p5

    .line 35
    iget-wide v4, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 36
    .line 37
    sub-long/2addr v2, v4

    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    long-to-double v2, v2

    .line 55
    const-wide v4, 0x414b774000000000L    # 3600000.0

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    div-double/2addr v2, v4

    .line 61
    const-wide/16 v6, 0x0

    .line 62
    .line 63
    cmpl-double p2, v2, v6

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    long-to-double p2, p3

    .line 68
    iget-wide v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    .line 69
    .line 70
    mul-double/2addr p2, v2

    .line 71
    long-to-double p4, p5

    .line 72
    iget-wide p6, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    .line 73
    .line 74
    mul-double/2addr p4, p6

    .line 75
    add-double/2addr p4, p2

    .line 76
    long-to-double p2, v0

    .line 77
    iget-wide p6, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    .line 78
    .line 79
    mul-double/2addr p2, p6

    .line 80
    add-double/2addr p2, p4

    .line 81
    div-double v2, p2, v4

    .line 82
    .line 83
    :cond_0
    iget-wide p2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 84
    .line 85
    sub-double/2addr v2, p2

    .line 86
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 87
    .line 88
    .line 89
    move-result-wide p2

    .line 90
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 91
    .line 92
    sget-boolean p2, Lcom/android/internal/os/WifiPowerCalculator;->DEBUG:Z

    .line 93
    .line 94
    if-eqz p2, :cond_1

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p3, "left over WiFi power: "

    .line 99
    .line 100
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-wide p3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 104
    .line 105
    invoke-static {p3, p4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string p2, "WifiPowerCalculator"

    .line 117
    .line 118
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    .line 8
    .line 9
    return-void
.end method
