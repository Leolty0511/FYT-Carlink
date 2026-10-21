.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerController"


# instance fields
.field private final mPowerBins:[D

.field private final mPowerRadioOn:D

.field private final mPowerScan:D

.field private mStats:Landroid/os/BatteryStats;

.field private mTotalAppMobileActiveMs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [D

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 12
    .line 13
    const-string v0, "radio.active"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    if-ge v0, v2, :cond_0

    .line 26
    .line 27
    const-string v2, "radio.on"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    aput-wide v2, v1, v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "radio.scanning"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 47
    .line 48
    return-void
.end method

.method private getMobilePowerPerPacket(JI)D
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    .line 2
    .line 3
    const-wide v2, 0x40ac200000000000L    # 3600.0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    div-double/2addr v0, v2

    .line 9
    iget-object v4, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v5, p3}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-object v6, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-virtual {v6, v7, p3}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    add-long/2addr v6, v4

    .line 24
    iget-object v4, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 25
    .line 26
    invoke-virtual {v4, p1, p2, p3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    const-wide/16 v4, 0x3e8

    .line 31
    .line 32
    div-long/2addr p1, v4

    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long p3, v6, v4

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    cmp-long p3, p1, v4

    .line 40
    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    long-to-double v4, v6

    .line 44
    long-to-double p1, p1

    .line 45
    div-double/2addr v4, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide v4, 0x40286a0000000000L    # 12.20703125

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    :goto_0
    div-double/2addr v0, v4

    .line 53
    div-double/2addr v0, v2

    .line 54
    return-wide v0
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 4

    .line 1
    const/4 p5, 0x0

    .line 2
    invoke-virtual {p2, p5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 7
    .line 8
    const/4 p6, 0x1

    .line 9
    invoke-virtual {p2, p6, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 14
    .line 15
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    div-long/2addr v0, v2

    .line 22
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 23
    .line 24
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 29
    .line 30
    invoke-virtual {p2, p5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 35
    .line 36
    invoke-virtual {p2, p6, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 37
    .line 38
    .line 39
    move-result-wide p5

    .line 40
    iput-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 41
    .line 42
    iget-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 43
    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    cmp-long v0, p5, v0

    .line 47
    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    iget-wide p3, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 51
    .line 52
    add-long/2addr p3, p5

    .line 53
    iput-wide p3, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 54
    .line 55
    long-to-double p3, p5

    .line 56
    iget-wide p5, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    .line 57
    .line 58
    mul-double/2addr p3, p5

    .line 59
    const-wide p5, 0x414b774000000000L    # 3600000.0

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    div-double/2addr p3, p5

    .line 65
    iput-wide p3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 69
    .line 70
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 71
    .line 72
    add-long/2addr p5, v0

    .line 73
    long-to-double p5, p5

    .line 74
    invoke-direct {p0, p3, p4, p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getMobilePowerPerPacket(JI)D

    .line 75
    .line 76
    .line 77
    move-result-wide p3

    .line 78
    mul-double/2addr p5, p3

    .line 79
    iput-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 80
    .line 81
    :goto_0
    sget-boolean p3, Lcom/android/internal/os/MobileRadioPowerCalculator;->DEBUG:Z

    .line 82
    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    iget-wide p3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 86
    .line 87
    const-wide/16 p5, 0x0

    .line 88
    .line 89
    cmpl-double p3, p3, p5

    .line 90
    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p4, "UID "

    .line 96
    .line 97
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, ": mobile packets "

    .line 108
    .line 109
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 113
    .line 114
    iget-wide p6, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 115
    .line 116
    add-long/2addr p4, p6

    .line 117
    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p2, " active time "

    .line 121
    .line 122
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 126
    .line 127
    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p2, " power="

    .line 131
    .line 132
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-wide p1, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 136
    .line 137
    invoke-static {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string p2, "MobileRadioPowerController"

    .line 149
    .line 150
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :cond_1
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 22

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
    const/4 v6, 0x0

    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    const-wide/16 v9, 0x0

    .line 15
    .line 16
    const-wide/16 v11, 0x0

    .line 17
    .line 18
    :goto_0
    iget-object v13, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    .line 19
    .line 20
    array-length v13, v13

    .line 21
    const-string v14, " power="

    .line 22
    .line 23
    const-string v15, "MobileRadioPowerController"

    .line 24
    .line 25
    const-wide v16, 0x414b774000000000L    # 3600000.0

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide/16 v18, 0x3e8

    .line 31
    .line 32
    if-ge v6, v13, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    .line 35
    .line 36
    .line 37
    move-result-wide v20

    .line 38
    move-wide/from16 p5, v11

    .line 39
    .line 40
    div-long v11, v20, v18

    .line 41
    .line 42
    long-to-double v1, v11

    .line 43
    iget-object v13, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    .line 44
    .line 45
    aget-wide v18, v13, v6

    .line 46
    .line 47
    mul-double v1, v1, v18

    .line 48
    .line 49
    div-double v1, v1, v16

    .line 50
    .line 51
    sget-boolean v13, Lcom/android/internal/os/MobileRadioPowerCalculator;->DEBUG:Z

    .line 52
    .line 53
    if-eqz v13, :cond_0

    .line 54
    .line 55
    const-wide/16 v16, 0x0

    .line 56
    .line 57
    cmpl-double v13, v1, v16

    .line 58
    .line 59
    if-eqz v13, :cond_0

    .line 60
    .line 61
    new-instance v13, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Cell strength #"

    .line 64
    .line 65
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ": time="

    .line 72
    .line 73
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_0
    add-double/2addr v7, v1

    .line 97
    add-long/2addr v9, v11

    .line 98
    if-nez v6, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move-wide/from16 v11, p5

    .line 102
    .line 103
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move-object/from16 v1, p1

    .line 108
    .line 109
    move-object/from16 v2, p2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-object v0, v2

    .line 113
    move-wide/from16 p5, v11

    .line 114
    .line 115
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    div-long v1, v1, v18

    .line 120
    .line 121
    long-to-double v11, v1

    .line 122
    move-object/from16 v6, p0

    .line 123
    .line 124
    move-wide/from16 v20, v9

    .line 125
    .line 126
    iget-wide v9, v6, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    .line 127
    .line 128
    mul-double/2addr v11, v9

    .line 129
    div-double v11, v11, v16

    .line 130
    .line 131
    sget-boolean v9, Lcom/android/internal/os/MobileRadioPowerCalculator;->DEBUG:Z

    .line 132
    .line 133
    if-eqz v9, :cond_3

    .line 134
    .line 135
    const-wide/16 v9, 0x0

    .line 136
    .line 137
    cmpl-double v9, v11, v9

    .line 138
    .line 139
    if-eqz v9, :cond_3

    .line 140
    .line 141
    const-string v9, "Cell radio scanning: time="

    .line 142
    .line 143
    invoke-static {v9, v1, v2, v14}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_3
    add-double/2addr v7, v11

    .line 162
    iget-object v1, v6, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 163
    .line 164
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    div-long v1, v1, v18

    .line 169
    .line 170
    iget-wide v3, v6, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 171
    .line 172
    sub-long/2addr v1, v3

    .line 173
    const-wide/16 v3, 0x0

    .line 174
    .line 175
    cmp-long v9, v1, v3

    .line 176
    .line 177
    if-lez v9, :cond_4

    .line 178
    .line 179
    iget-wide v9, v6, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    .line 180
    .line 181
    long-to-double v11, v1

    .line 182
    mul-double/2addr v9, v11

    .line 183
    div-double v9, v9, v16

    .line 184
    .line 185
    add-double/2addr v7, v9

    .line 186
    :cond_4
    const-wide/16 v9, 0x0

    .line 187
    .line 188
    cmpl-double v9, v7, v9

    .line 189
    .line 190
    if-eqz v9, :cond_6

    .line 191
    .line 192
    cmp-long v3, v20, v3

    .line 193
    .line 194
    if-eqz v3, :cond_5

    .line 195
    .line 196
    move-wide/from16 v11, p5

    .line 197
    .line 198
    long-to-double v3, v11

    .line 199
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 200
    .line 201
    mul-double/2addr v3, v9

    .line 202
    move-wide/from16 v9, v20

    .line 203
    .line 204
    long-to-double v9, v9

    .line 205
    div-double/2addr v3, v9

    .line 206
    move-object/from16 v9, p1

    .line 207
    .line 208
    iput-wide v3, v9, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    move-object/from16 v9, p1

    .line 212
    .line 213
    :goto_2
    iput-wide v1, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 214
    .line 215
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iput v0, v9, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 220
    .line 221
    iput-wide v7, v9, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 222
    .line 223
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    return-void
.end method

.method public reset(Landroid/os/BatteryStats;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset()V

    .line 3
    iput-object p1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    return-void
.end method
