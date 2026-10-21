.class public Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtimeUs:J

.field mBatteryTimeRemainingUs:J

.field mBatteryUptimeUs:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemainingUs:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtimeUs:J

.field mRawUptimeUs:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mServicepackageArray:[Ljava/lang/String;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mSystemPackageArray:[Ljava/lang/String;

.field private mTotalPower:D

.field mTypeBatteryRealtimeUs:J

.field mTypeBatteryUptimeUs:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/BatteryStatsHelper;->getDeBugBatteryLog()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    .line 6
    .line 7
    const-string v0, "BatteryStatsHelper"

    .line 8
    .line 9
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 11
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 12
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 13
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    .line 15
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 16
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 17
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070014

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    const p2, 0x1070013

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    return-void
.end method

.method private addBluetoothUsage()V
    .locals 11

    .line 1
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v9, 0x0

    .line 7
    .line 8
    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 16
    .line 17
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 18
    .line 19
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 26
    .line 27
    const-string v1, "Bluetooth"

    .line 28
    .line 29
    invoke-direct {p0, v8, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 33
    .line 34
    cmpl-double v0, v0, v9

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 7
    .line 8
    .line 9
    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 10
    .line 11
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private addIdleUsage()V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    long-to-double v0, v0

    .line 9
    iget-object v4, v6, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 10
    .line 11
    const-string v5, "cpu.idle"

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    mul-double/2addr v4, v0

    .line 18
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    .line 19
    .line 20
    div-long/2addr v0, v2

    .line 21
    long-to-double v0, v0

    .line 22
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 23
    .line 24
    const-string v8, "cpu.awake"

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    mul-double/2addr v7, v0

    .line 31
    add-double v0, v4, v7

    .line 32
    .line 33
    const-wide v9, 0x414b774000000000L    # 3600000.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    div-double v11, v0, v9

    .line 39
    .line 40
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    .line 41
    .line 42
    const-wide/16 v13, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    cmpl-double v0, v11, v13

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v15, "Suspend: time="

    .line 55
    .line 56
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-wide v13, v6, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    .line 60
    .line 61
    div-long/2addr v13, v2

    .line 62
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v13, " power="

    .line 66
    .line 67
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    div-double/2addr v4, v9

    .line 71
    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v4, "Idle: time="

    .line 88
    .line 89
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-wide v4, v6, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    .line 93
    .line 94
    div-long/2addr v4, v2

    .line 95
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    div-double/2addr v7, v9

    .line 102
    invoke-static {v7, v8}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    const-wide/16 v0, 0x0

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move-wide v0, v13

    .line 120
    :goto_0
    cmpl-double v0, v11, v0

    .line 121
    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 125
    .line 126
    iget-wide v4, v6, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    .line 127
    .line 128
    div-long v2, v4, v2

    .line 129
    .line 130
    move-object/from16 v0, p0

    .line 131
    .line 132
    move-wide v4, v11

    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 134
    .line 135
    .line 136
    :cond_1
    return-void
.end method

.method private addMemoryUsage()V
    .locals 11

    .line 1
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v9, 0x0

    .line 7
    .line 8
    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 16
    .line 17
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 18
    .line 19
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 26
    .line 27
    .line 28
    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 29
    .line 30
    cmpl-double v0, v0, v9

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 4
    .line 5
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    div-long v6, v0, v2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 16
    .line 17
    const-string v1, "radio.active"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-double v2, v6

    .line 24
    mul-double/2addr v0, v2

    .line 25
    const-wide v2, 0x414b774000000000L    # 3600000.0

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    div-double v8, v0, v2

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    cmpl-double v0, v8, v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 39
    .line 40
    move-object v4, p0

    .line 41
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 11

    .line 1
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v9, 0x0

    .line 7
    .line 8
    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 16
    .line 17
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 18
    .line 19
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 26
    .line 27
    .line 28
    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 29
    .line 30
    cmpl-double v0, v0, v9

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private addScreenUsage()V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 4
    .line 5
    iget-wide v1, v6, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 6
    .line 7
    iget v3, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    .line 15
    div-long v4, v0, v2

    .line 16
    .line 17
    long-to-double v0, v4

    .line 18
    iget-object v7, v6, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 19
    .line 20
    const-string v8, "screen.on"

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    mul-double/2addr v7, v0

    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    add-double/2addr v7, v0

    .line 30
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 31
    .line 32
    const-string v10, "screen.full"

    .line 33
    .line 34
    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    const/4 v11, 0x0

    .line 39
    :goto_0
    const/4 v12, 0x5

    .line 40
    if-ge v11, v12, :cond_1

    .line 41
    .line 42
    int-to-float v12, v11

    .line 43
    const/high16 v15, 0x3f000000    # 0.5f

    .line 44
    .line 45
    add-float/2addr v12, v15

    .line 46
    float-to-double v13, v12

    .line 47
    mul-double/2addr v13, v9

    .line 48
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 49
    .line 50
    div-double v13, v13, v16

    .line 51
    .line 52
    iget-object v12, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 53
    .line 54
    iget-wide v0, v6, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 55
    .line 56
    iget v15, v6, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 57
    .line 58
    invoke-virtual {v12, v11, v0, v1, v15}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    div-long/2addr v0, v2

    .line 63
    long-to-double v2, v0

    .line 64
    mul-double/2addr v13, v2

    .line 65
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    cmpl-double v12, v13, v2

    .line 72
    .line 73
    if-eqz v12, :cond_0

    .line 74
    .line 75
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v12, "Screen bin #"

    .line 80
    .line 81
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v12, ": time="

    .line 88
    .line 89
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, " power="

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-wide v0, 0x414b774000000000L    # 3600000.0

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    div-double v0, v13, v0

    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_0
    add-double/2addr v7, v13

    .line 122
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    const-wide/16 v0, 0x0

    .line 125
    .line 126
    const-wide/16 v2, 0x3e8

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const-wide v0, 0x414b774000000000L    # 3600000.0

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    div-double/2addr v7, v0

    .line 135
    const-wide/16 v0, 0x0

    .line 136
    .line 137
    cmpl-double v0, v7, v0

    .line 138
    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 142
    .line 143
    move-object/from16 v0, p0

    .line 144
    .line 145
    move-wide v2, v4

    .line 146
    move-wide v4, v7

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 148
    .line 149
    .line 150
    :cond_2
    return-void
.end method

.method private addUserUsage()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    .line 17
    .line 18
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 24
    .line 25
    .line 26
    iput v1, v2, Lcom/android/internal/os/BatterySipper;->userId:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/List;

    .line 35
    .line 36
    const-string v3, "User"

    .line 37
    .line 38
    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private addWiFiUsage()V
    .locals 11

    .line 1
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v9, 0x0

    .line 7
    .line 8
    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 16
    .line 17
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 18
    .line 19
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 26
    .line 27
    const-string v1, "WIFI"

    .line 28
    .line 29
    invoke-direct {p0, v8, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 33
    .line 34
    cmpl-double v0, v0, v9

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 13
    .line 14
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " adding sipper "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ": cpu="

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 42
    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "bluetooth.controller.idle"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmpl-double p0, v0, v2

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "bluetooth.controller.rx"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    cmpl-double p0, v0, v2

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const-string p0, "bluetooth.controller.tx"

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    cmpl-double p0, p0, v2

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "wifi.controller.idle"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmpl-double p0, v0, v2

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string/jumbo p0, "wifi.controller.rx"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmpl-double p0, v0, v2

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const-string/jumbo p0, "wifi.controller.tx"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    cmpl-double p0, p0, v2

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    return p0
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    return p0
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getDeBugBatteryLog()Z
    .locals 2

    .line 1
    const-string v0, "persist.sys.power.fw.debug"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "battery"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 4

    .line 4
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 5
    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    sget-object p0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 14
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-exception p0

    .line 15
    :try_start_7
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to read statistics stream"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 16
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :cond_0
    :goto_1
    new-instance p0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    return-object p0
.end method

.method private load()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v1, Landroid/content/IntentFilter;

    .line 19
    .line 20
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "0"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpg-double v0, p0, v0

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "%.8f"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v0, p0, v0

    .line 28
    .line 29
    if-gez v0, :cond_2

    .line 30
    .line 31
    const-string v0, "%.7f"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    cmpg-double v0, p0, v0

    .line 40
    .line 41
    if-gez v0, :cond_3

    .line 42
    .line 43
    const-string v0, "%.6f"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmpg-double v0, p0, v0

    .line 52
    .line 53
    if-gez v0, :cond_4

    .line 54
    .line 55
    const-string v0, "%.5f"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmpg-double v0, p0, v0

    .line 64
    .line 65
    if-gez v0, :cond_5

    .line 66
    .line 67
    const-string v0, "%.4f"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 71
    .line 72
    cmpg-double v0, p0, v0

    .line 73
    .line 74
    if-gez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "%.3f"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 80
    .line 81
    cmpg-double v0, p0, v0

    .line 82
    .line 83
    if-gez v0, :cond_7

    .line 84
    .line 85
    const-string v0, "%.2f"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 89
    .line 90
    cmpg-double v0, p0, v0

    .line 91
    .line 92
    if-gez v0, :cond_8

    .line 93
    .line 94
    const-string v0, "%.1f"

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_8
    const-string v0, "%.0f"

    .line 98
    .line 99
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    aput-object p0, v2, v3

    .line 110
    .line 111
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    .line 16
    .line 17
    iput-wide v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    :goto_1
    if-ge v8, v6, :cond_8

    .line 32
    .line 33
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Landroid/os/BatteryStats$Uid;

    .line 38
    .line 39
    new-instance v15, Lcom/android/internal/os/BatterySipper;

    .line 40
    .line 41
    sget-object v10, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 42
    .line 43
    const-wide/16 v13, 0x0

    .line 44
    .line 45
    invoke-direct {v15, v10, v9, v13, v14}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 46
    .line 47
    .line 48
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 49
    .line 50
    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 51
    .line 52
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 53
    .line 54
    move-object/from16 v18, v5

    .line 55
    .line 56
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 57
    .line 58
    move-wide/from16 v16, v11

    .line 59
    .line 60
    move-object v11, v15

    .line 61
    move-object v12, v9

    .line 62
    move-wide/from16 v19, v13

    .line 63
    .line 64
    move-wide/from16 v13, v16

    .line 65
    .line 66
    move-object/from16 v21, v15

    .line 67
    .line 68
    move-wide v15, v3

    .line 69
    move/from16 v17, v5

    .line 70
    .line 71
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 72
    .line 73
    .line 74
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 75
    .line 76
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 77
    .line 78
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 79
    .line 80
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 81
    .line 82
    move-object/from16 v11, v21

    .line 83
    .line 84
    move-wide v15, v3

    .line 85
    move/from16 v17, v5

    .line 86
    .line 87
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 88
    .line 89
    .line 90
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    .line 91
    .line 92
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 93
    .line 94
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 95
    .line 96
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 97
    .line 98
    move-wide v15, v3

    .line 99
    move/from16 v17, v5

    .line 100
    .line 101
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 102
    .line 103
    .line 104
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 105
    .line 106
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 107
    .line 108
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 109
    .line 110
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 111
    .line 112
    move-wide v15, v3

    .line 113
    move/from16 v17, v5

    .line 114
    .line 115
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 116
    .line 117
    .line 118
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 119
    .line 120
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 121
    .line 122
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 123
    .line 124
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 125
    .line 126
    move-wide v15, v3

    .line 127
    move/from16 v17, v5

    .line 128
    .line 129
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 130
    .line 131
    .line 132
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 133
    .line 134
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 135
    .line 136
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 137
    .line 138
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 139
    .line 140
    move-wide v15, v3

    .line 141
    move/from16 v17, v5

    .line 142
    .line 143
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 144
    .line 145
    .line 146
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 147
    .line 148
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 149
    .line 150
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 151
    .line 152
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 153
    .line 154
    move-wide v15, v3

    .line 155
    move/from16 v17, v5

    .line 156
    .line 157
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 158
    .line 159
    .line 160
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 161
    .line 162
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 163
    .line 164
    iget-wide v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 165
    .line 166
    iget v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 167
    .line 168
    move-wide v15, v3

    .line 169
    move/from16 v17, v5

    .line 170
    .line 171
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    sget-boolean v5, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    .line 179
    .line 180
    if-eqz v5, :cond_1

    .line 181
    .line 182
    cmpl-double v5, v3, v19

    .line 183
    .line 184
    if-eqz v5, :cond_1

    .line 185
    .line 186
    sget-object v5, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 187
    .line 188
    const/4 v10, 0x2

    .line 189
    new-array v10, v10, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    const/4 v12, 0x0

    .line 200
    aput-object v11, v10, v12

    .line 201
    .line 202
    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    const/4 v13, 0x1

    .line 207
    aput-object v11, v10, v13

    .line 208
    .line 209
    const-string v11, "UID %d: total power=%s"

    .line 210
    .line 211
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_1
    const/4 v12, 0x0

    .line 220
    const/4 v13, 0x1

    .line 221
    :goto_2
    cmpl-double v3, v3, v19

    .line 222
    .line 223
    if-nez v3, :cond_2

    .line 224
    .line 225
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_7

    .line 230
    .line 231
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/BatterySipper;->getUid()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    const/16 v5, 0x3f2

    .line 240
    .line 241
    if-ne v3, v5, :cond_3

    .line 242
    .line 243
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 244
    .line 245
    move-object/from16 v5, v21

    .line 246
    .line 247
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_3
    move-object/from16 v5, v21

    .line 252
    .line 253
    const/16 v9, 0x3ea

    .line 254
    .line 255
    if-ne v3, v9, :cond_4

    .line 256
    .line 257
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_4
    if-nez v2, :cond_6

    .line 264
    .line 265
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    if-nez v9, :cond_6

    .line 270
    .line 271
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    const/16 v10, 0x2710

    .line 276
    .line 277
    if-lt v9, v10, :cond_6

    .line 278
    .line 279
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 280
    .line 281
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    check-cast v9, Ljava/util/List;

    .line 286
    .line 287
    if-nez v9, :cond_5

    .line 288
    .line 289
    new-instance v9, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 295
    .line 296
    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :cond_5
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :goto_3
    if-nez v3, :cond_7

    .line 309
    .line 310
    move-object v7, v5

    .line 311
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 312
    .line 313
    move-object/from16 v5, v18

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_8
    if-eqz v7, :cond_9

    .line 318
    .line 319
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 320
    .line 321
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 322
    .line 323
    iget-wide v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 324
    .line 325
    iget-wide v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 326
    .line 327
    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 328
    .line 329
    move-object v9, v7

    .line 330
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    .line 334
    .line 335
    .line 336
    :cond_9
    return-void
.end method

.method private processMiscUsage()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addMemoryUsage()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 4

    .line 2
    new-array p1, p1, [B

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :cond_0
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    return-object p1

    :cond_1
    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 5
    array-length v3, p1

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_0

    add-int/2addr v2, v1

    .line 6
    new-array v2, v2, [B

    .line 7
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object p1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object p1, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/BatteryStats;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    array-length v2, p0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    .line 44
    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    .line 52
    .line 53
    :catch_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    move-object p1, v1

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    move-object p1, v1

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :catch_2
    move-exception p0

    .line 64
    :goto_0
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "Unable to read history to file"

    .line 67
    .line 68
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 69
    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 74
    .line 75
    .line 76
    :catch_3
    :cond_1
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 77
    const-string p0, "batterystats"

    .line 78
    .line 79
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :goto_1
    if-eqz p1, :cond_2

    .line 93
    .line 94
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 95
    .line 96
    .line 97
    :catch_4
    :cond_2
    :try_start_9
    throw p0

    .line 98
    :catchall_2
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 100
    throw p0
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public convertMsToUs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public convertUsToMs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 2
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 4
    sget-object p1, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_0
    const-string p1, "batterystats"

    .line 5
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 7
    new-instance p1, Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 13
    .line 14
    return-object v0
.end method

.method public getComputedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    return-wide p1

    .line 13
    :cond_0
    const-wide/16 p1, 0x0

    .line 14
    .line 15
    return-wide p1
.end method

.method public getMaxDrainedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->convertMsToUs(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    add-long/2addr v2, v4

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->convertUsToMs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    return-wide p1
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    array-length v1, p1

    .line 16
    move v2, v0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, p1, v2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    const/16 v2, 0x2710

    .line 23
    .line 24
    if-ge v0, v2, :cond_1

    .line 25
    .line 26
    return p1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    move v3, v0

    .line 32
    :goto_1
    if-ge v3, v2, :cond_3

    .line 33
    .line 34
    aget-object v4, v1, v3

    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    return p1

    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    return v0
.end method

.method public refreshStats(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 2
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v9, v0, v2

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    .line 11
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 14
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 15
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 16
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 17
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 18
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 19
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 20
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 21
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 22
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v2, :cond_1

    .line 24
    new-instance v2, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 26
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v2, :cond_2

    .line 27
    new-instance v2, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 29
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v2, :cond_3

    .line 30
    new-instance v2, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 31
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 32
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez v2, :cond_4

    .line 33
    new-instance v2, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    .line 34
    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    .line 35
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v2

    .line 36
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    if-eq v2, v3, :cond_7

    :cond_5
    if-eqz v2, :cond_6

    .line 37
    new-instance v3, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto :goto_0

    :cond_6
    new-instance v3, Lcom/android/internal/os/WifiPowerEstimator;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_0
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 38
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    .line 39
    :cond_7
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 40
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v2

    .line 41
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    if-eq v2, v3, :cond_9

    .line 42
    :cond_8
    new-instance v3, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 43
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    .line 44
    :cond_9
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 45
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v2, :cond_a

    .line 46
    new-instance v2, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    .line 47
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 48
    :cond_a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 49
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v2, :cond_b

    .line 50
    new-instance v2, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 51
    :cond_b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 52
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v2, :cond_c

    .line 53
    new-instance v2, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    .line 54
    :cond_c
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerCalculator;->reset()V

    .line 55
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 56
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    .line 57
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    .line 58
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p5, p6}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptimeUs:J

    .line 59
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtimeUs:J

    .line 60
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {p1, p5, p6, v2}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    .line 61
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {p1, p3, p4, v2}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    .line 62
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemainingUs:J

    .line 63
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemainingUs:J

    .line 64
    sget-boolean p1, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    if-eqz p1, :cond_d

    .line 65
    sget-object p1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Raw time: realtime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long/2addr p3, v3

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " uptime="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p5, v3

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Battery time: realtime="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtimeUs:J

    div-long/2addr p5, v3

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptimeUs:J

    div-long/2addr p5, v3

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Battery type time: realtime="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    div-long/2addr p5, v3

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    div-long/2addr p5, v3

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_d
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result p1

    int-to-double p3, p1

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide p5

    mul-double/2addr p5, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    div-double/2addr p5, p3

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    .line 70
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result p1

    int-to-double p5, p1

    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    mul-double/2addr v2, p5

    div-double/2addr v2, p3

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    .line 72
    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    move p2, p1

    .line 73
    :goto_1
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_f

    .line 74
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/os/BatterySipper;

    .line 75
    invoke-virtual {p3}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 76
    iget-wide p4, p3, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    cmpl-double p4, p4, v0

    if-eqz p4, :cond_e

    .line 77
    iget-object p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_f
    move p2, p1

    .line 78
    :goto_2
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_12

    .line 79
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    move p4, p1

    .line 80
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_11

    .line 81
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/internal/os/BatterySipper;

    .line 82
    invoke-virtual {p5}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 83
    iget-wide v2, p5, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    cmpl-double p6, v2, v0

    if-eqz p6, :cond_10

    .line 84
    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {p6, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 85
    :cond_12
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance p3, Lcom/android/internal/os/BatteryStatsHelper$1;

    invoke-direct {p3, p0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    .line 87
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 88
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_13

    .line 89
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    iget-wide p2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 90
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move p3, p1

    :goto_4
    if-ge p3, p2, :cond_13

    .line 91
    iget-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/internal/os/BatterySipper;

    iget-wide v0, p6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr p4, v0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 92
    :cond_13
    sget-boolean p2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    if-eqz p2, :cond_14

    .line 93
    sget-object p2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Accuracy: total computed="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    invoke-static {p4, p5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", min discharge="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    .line 94
    invoke-static {p4, p5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", max discharge="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-static {p4, p5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 95
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_14
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 97
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_18

    .line 98
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpl-double p6, p2, p4

    const/4 v0, 0x0

    if-lez p6, :cond_16

    sub-double p4, p2, p4

    .line 99
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 100
    new-instance p2, Lcom/android/internal/os/BatterySipper;

    sget-object p3, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {p2, p3, v0, p4, p5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 101
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {p3, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_15

    add-int/lit8 p3, p3, 0x1

    neg-int p3, p3

    .line 102
    :cond_15
    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p6, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    goto :goto_5

    .line 104
    :cond_16
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpg-double p6, p2, p4

    if-gez p6, :cond_18

    sub-double/2addr p4, p2

    .line 105
    new-instance p2, Lcom/android/internal/os/BatterySipper;

    sget-object p3, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {p2, p3, v0, p4, p5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 106
    iget-object p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {p3, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_17

    add-int/lit8 p3, p3, 0x1

    neg-int p3, p3

    .line 107
    :cond_17
    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p6, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    iget-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 109
    :cond_18
    :goto_5
    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsHelper;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide p2

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide p4

    sub-double/2addr p4, p2

    .line 111
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p6, v0, v2

    if-lez p6, :cond_1a

    .line 112
    iget-object p6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    :goto_6
    if-ge p1, p6, :cond_1a

    .line 113
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    .line 114
    iget-boolean v1, v0, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-nez v1, :cond_19

    .line 115
    iget-wide v1, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v1, v3

    div-double/2addr v1, p4

    mul-double/2addr v1, p2

    iput-wide v1, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 116
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_19
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 7
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsHelper;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iput-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 27
    .line 28
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 29
    .line 30
    if-eq v5, v6, :cond_0

    .line 31
    .line 32
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 33
    .line 34
    if-eq v5, v6, :cond_0

    .line 35
    .line 36
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 37
    .line 38
    if-eq v5, v6, :cond_0

    .line 39
    .line 40
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 41
    .line 42
    if-eq v5, v6, :cond_0

    .line 43
    .line 44
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 45
    .line 46
    if-eq v5, v6, :cond_0

    .line 47
    .line 48
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 49
    .line 50
    if-eq v5, v6, :cond_0

    .line 51
    .line 52
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 53
    .line 54
    add-double/2addr v1, v5

    .line 55
    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 56
    .line 57
    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 58
    .line 59
    if-ne v5, v6, :cond_1

    .line 60
    .line 61
    move-object v3, v4

    .line 62
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    .line 66
    .line 67
    .line 68
    return-wide v1
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public setServicePackageArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    return-void
.end method

.method public setSystemPackageArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    return-void
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 2
    .line 3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 39
    :goto_1
    return p1
.end method

.method public smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroid/util/SparseLongArray;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-wide v8, v4

    .line 18
    move v7, v6

    .line 19
    :goto_0
    if-ge v7, v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    check-cast v10, Lcom/android/internal/os/BatterySipper;

    .line 26
    .line 27
    iget-object v10, v10, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 28
    .line 29
    move-object/from16 v11, p0

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    invoke-virtual {v11, v10, v6}, Lcom/android/internal/os/BatteryStatsHelper;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v12

    .line 37
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 42
    .line 43
    .line 44
    add-long/2addr v8, v12

    .line 45
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object/from16 v11, p0

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const-wide/32 v12, 0x927c0

    .line 53
    .line 54
    .line 55
    cmp-long v3, v8, v12

    .line 56
    .line 57
    if-ltz v3, :cond_2

    .line 58
    .line 59
    iget-wide v12, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 60
    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :goto_1
    if-ge v6, v1, :cond_2

    .line 66
    .line 67
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual {v2, v7, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v14

    .line 81
    long-to-double v14, v14

    .line 82
    mul-double/2addr v14, v12

    .line 83
    long-to-double v4, v8

    .line 84
    div-double/2addr v14, v4

    .line 85
    iput-wide v14, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    const-wide/16 v4, 0x0

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    return-void
.end method

.method public storeState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 2
    .line 3
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 6
    .line 7
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 8
    .line 9
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v1, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 21
    .line 22
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, p1, v3}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    move-object v1, v2

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p1

    .line 52
    move-object v1, v2

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception p1

    .line 57
    :goto_0
    :try_start_4
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string v3, "Unable to write history to file"

    .line 60
    .line 61
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 67
    .line 68
    .line 69
    :catch_2
    :cond_0
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 70
    return-void

    .line 71
    :goto_2
    if-eqz v1, :cond_1

    .line 72
    .line 73
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 74
    .line 75
    .line 76
    :catch_3
    :cond_1
    :try_start_8
    throw p1

    .line 77
    :catchall_2
    move-exception p1

    .line 78
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 79
    throw p1
.end method
