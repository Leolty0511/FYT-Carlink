.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/WifiPowerEstimator;->DEBUG:Z

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
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    .line 13
    .line 14
    const-string/jumbo v0, "wifi.on"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    .line 22
    .line 23
    const-string/jumbo v0, "wifi.scan"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    .line 31
    .line 32
    const-string/jumbo v0, "wifi.batchedscan"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    .line 40
    .line 41
    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 4

    .line 1
    const-string/jumbo v0, "wifi.active"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide v2, 0x40ac200000000000L    # 3600.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double/2addr v0, v2

    .line 14
    const-wide v2, 0x404e848000000000L    # 61.03515625

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    div-double/2addr v0, v2

    .line 20
    return-wide v0
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 23

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
    move-wide/from16 v3, p3

    .line 8
    .line 9
    move/from16 v5, p7

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 17
    .line 18
    const/4 v7, 0x3

    .line 19
    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 24
    .line 25
    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 30
    .line 31
    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 36
    .line 37
    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 38
    .line 39
    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 40
    .line 41
    add-long/2addr v6, v8

    .line 42
    long-to-double v6, v6

    .line 43
    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    .line 44
    .line 45
    mul-double/2addr v6, v8

    .line 46
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    const-wide/16 v10, 0x3e8

    .line 51
    .line 52
    div-long/2addr v8, v10

    .line 53
    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 54
    .line 55
    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 56
    .line 57
    add-long/2addr v12, v8

    .line 58
    iput-wide v12, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 59
    .line 60
    long-to-double v8, v8

    .line 61
    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    .line 62
    .line 63
    mul-double/2addr v8, v12

    .line 64
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    div-double/2addr v8, v12

    .line 70
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    .line 71
    .line 72
    .line 73
    move-result-wide v14

    .line 74
    div-long/2addr v14, v10

    .line 75
    long-to-double v14, v14

    .line 76
    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    .line 77
    .line 78
    mul-double/2addr v14, v10

    .line 79
    div-double/2addr v14, v12

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    move/from16 v10, v16

    .line 83
    .line 84
    const-wide/16 v17, 0x0

    .line 85
    .line 86
    :goto_0
    const/4 v11, 0x5

    .line 87
    if-ge v10, v11, :cond_0

    .line 88
    .line 89
    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    .line 90
    .line 91
    .line 92
    move-result-wide v19

    .line 93
    const-wide/16 v21, 0x3e8

    .line 94
    .line 95
    div-long v12, v19, v21

    .line 96
    .line 97
    long-to-double v11, v12

    .line 98
    iget-wide v2, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    .line 99
    .line 100
    mul-double/2addr v11, v2

    .line 101
    const-wide v2, 0x414b774000000000L    # 3600000.0

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    div-double/2addr v11, v2

    .line 107
    add-double v17, v11, v17

    .line 108
    .line 109
    add-int/lit8 v10, v10, 0x1

    .line 110
    .line 111
    move-wide v12, v2

    .line 112
    move-object/from16 v2, p2

    .line 113
    .line 114
    move-wide/from16 v3, p3

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    add-double/2addr v6, v8

    .line 118
    add-double/2addr v6, v14

    .line 119
    add-double v6, v6, v17

    .line 120
    .line 121
    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 122
    .line 123
    sget-boolean v2, Lcom/android/internal/os/WifiPowerEstimator;->DEBUG:Z

    .line 124
    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    const-wide/16 v2, 0x0

    .line 128
    .line 129
    cmpl-double v2, v6, v2

    .line 130
    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "UID "

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ": power="

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-wide v3, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 153
    .line 154
    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "WifiPowerEstimator"

    .line 166
    .line 167
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_1
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide/16 p4, 0x3e8

    .line 6
    .line 7
    div-long/2addr p2, p4

    .line 8
    iget-wide p4, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 9
    .line 10
    sub-long p4, p2, p4

    .line 11
    .line 12
    long-to-double p4, p4

    .line 13
    iget-wide p6, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    .line 14
    .line 15
    mul-double/2addr p4, p6

    .line 16
    const-wide p6, 0x414b774000000000L    # 3600000.0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    div-double/2addr p4, p6

    .line 22
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 23
    .line 24
    const-wide/16 p2, 0x0

    .line 25
    .line 26
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(DD)D

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 31
    .line 32
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    return-void
.end method
