.class public Landroid/os/PowerControllerBatteryStatsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final TAG:Ljava/lang/String; = "PowerController.BattStats"

.field private static sInstance:Landroid/os/PowerControllerBatteryStatsHelper;


# instance fields
.field private DEBUG:Z

.field private DEBUG_MORE:Z

.field private mCurrentMode:I

.field private mDurationSpentInModes:[J

.field private final mFactorForModes:[J

.field private mLastLevelStepTime:J

.field private mLastLowPowerModeTime:J

.field private mLastNormalPowerModeTime:J

.field private mLastUltraSavingPowerModeTime:J

.field private final mLock:Ljava/lang/Object;

.field final mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field final mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field private final mPowerControllerEnabled:Z

.field private mPreMode:I

.field final mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG_MORE:Z

    .line 9
    .line 10
    const-string/jumbo v2, "persist.sys.pwctl.enable"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_0
    iput-boolean v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mPowerControllerEnabled:Z

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 29
    .line 30
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    .line 31
    .line 32
    const/16 v2, 0xc8

    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 38
    .line 39
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 45
    .line 46
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    iput-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mDurationSpentInModes:[J

    .line 57
    .line 58
    iput v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 59
    .line 60
    iput v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mPreMode:I

    .line 61
    .line 62
    new-instance v0, Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    const-wide/16 v0, 0x0

    .line 70
    .line 71
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLowPowerModeTime:J

    .line 72
    .line 73
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastNormalPowerModeTime:J

    .line 74
    .line 75
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastUltraSavingPowerModeTime:J

    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x3e8
        0x3e8
        0x3e8
        0x44c
        0x4b0
        0x3e8
        0x3e8
    .end array-data
.end method

.method private clearDurationSpentInAllMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mDurationSpentInModes:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mDurationSpentInModes:[J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    aput-wide v2, v1, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/os/PowerControllerBatteryStatsHelper;
    .locals 2

    .line 1
    const-class v0, Landroid/os/PowerControllerBatteryStatsHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/os/PowerControllerBatteryStatsHelper;->sInstance:Landroid/os/PowerControllerBatteryStatsHelper;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/PowerControllerBatteryStatsHelper;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/PowerControllerBatteryStatsHelper;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/os/PowerControllerBatteryStatsHelper;->sInstance:Landroid/os/PowerControllerBatteryStatsHelper;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Landroid/os/PowerControllerBatteryStatsHelper;->sInstance:Landroid/os/PowerControllerBatteryStatsHelper;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method private getLastModeTime(I)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    iget-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastNormalPowerModeTime:J

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x3

    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLowPowerModeTime:J

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x4

    .line 14
    if-ne v0, p1, :cond_2

    .line 15
    .line 16
    iget-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastUltraSavingPowerModeTime:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    return-wide v0
.end method

.method private getLevelStepTracker(I)Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x3

    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x4

    .line 14
    if-ne v0, p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    return-object p1
.end method

.method private getTimePerLevel(I)J
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/os/PowerControllerBatteryStatsHelper;->getLevelStepTracker(I)Landroid/os/BatteryStats$LevelStepTracker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG_MORE:Z

    .line 6
    .line 7
    const-string v2, "getTimePerLevel: for mode:"

    .line 8
    .line 9
    const-string v3, "PowerController.BattStats"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, ", dischargeStepTracker:"

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const-wide/16 v4, -0x1

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return-wide v4

    .line 41
    :cond_1
    iget-boolean v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG_MORE:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-string v1, ", mNumStepDurations:"

    .line 46
    .line 47
    invoke-static {v2, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    iget p1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    if-ge p1, v1, :cond_3

    .line 67
    .line 68
    return-wide v4

    .line 69
    :cond_3
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    cmp-long p1, v0, v2

    .line 76
    .line 77
    if-gtz p1, :cond_4

    .line 78
    .line 79
    return-wide v4

    .line 80
    :cond_4
    return-wide v0
.end method

.method private getTimeSpentInMode(IJJ)J
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mDurationSpentInModes:[J

    .line 7
    .line 8
    aget-wide p1, p2, p1

    .line 9
    .line 10
    return-wide p1

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/PowerControllerBatteryStatsHelper;->getLastModeTime(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-gtz v4, :cond_1

    .line 20
    .line 21
    return-wide v2

    .line 22
    :cond_1
    iget v4, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 23
    .line 24
    if-ne p1, v4, :cond_3

    .line 25
    .line 26
    cmp-long p1, p2, v0

    .line 27
    .line 28
    if-lez p1, :cond_2

    .line 29
    .line 30
    sub-long/2addr p4, p2

    .line 31
    return-wide p4

    .line 32
    :cond_2
    sub-long/2addr p4, v0

    .line 33
    return-wide p4

    .line 34
    :cond_3
    iget p4, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mPreMode:I

    .line 35
    .line 36
    if-ne p1, p4, :cond_6

    .line 37
    .line 38
    invoke-direct {p0, v4}, Landroid/os/PowerControllerBatteryStatsHelper;->getLastModeTime(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide p4

    .line 42
    cmp-long p1, p2, v0

    .line 43
    .line 44
    if-lez p1, :cond_5

    .line 45
    .line 46
    cmp-long p1, p2, p4

    .line 47
    .line 48
    if-lez p1, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    sub-long v2, p4, p2

    .line 52
    .line 53
    :goto_0
    return-wide v2

    .line 54
    :cond_5
    sub-long/2addr p4, v0

    .line 55
    return-wide p4

    .line 56
    :cond_6
    invoke-direct {p0, p4}, Landroid/os/PowerControllerBatteryStatsHelper;->getLastModeTime(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide p4

    .line 60
    cmp-long p1, p2, v0

    .line 61
    .line 62
    if-lez p1, :cond_8

    .line 63
    .line 64
    cmp-long p1, p2, p4

    .line 65
    .line 66
    if-lez p1, :cond_7

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_7
    sub-long v2, p4, p2

    .line 70
    .line 71
    :goto_1
    return-wide v2

    .line 72
    :cond_8
    sub-long/2addr p4, v0

    .line 73
    return-wide p4
.end method

.method private updateDurationSpentInMode(IJ)V
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ge p1, v0, :cond_2

    .line 3
    .line 4
    if-gez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/PowerControllerBatteryStatsHelper;->getLastModeTime(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gtz v4, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mDurationSpentInModes:[J

    .line 18
    .line 19
    aget-wide v4, v0, p1

    .line 20
    .line 21
    sub-long/2addr p2, v2

    .line 22
    add-long/2addr p2, v4

    .line 23
    aput-wide p2, v0, p1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mDurationSpentInModes:[J

    .line 27
    .line 28
    aget-wide v3, v2, p1

    .line 29
    .line 30
    sub-long/2addr p2, v0

    .line 31
    add-long/2addr p2, v3

    .line 32
    aput-wide p2, v2, p1

    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method private updateLevelStepsForAllMode(IJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 10
    .line 11
    move v2, p1

    .line 12
    move-wide v3, p2

    .line 13
    move-wide v5, p4

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 18
    .line 19
    move v3, p1

    .line 20
    move-wide v4, p2

    .line 21
    move-wide v6, p4

    .line 22
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 23
    .line 24
    .line 25
    iget-boolean p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG:Z

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo p2, "updateLevelStepsForAllMode:mLowModeDischargeStepTracker.mNumStepDurations:"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 38
    .line 39
    iget p2, p2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, " timePerLevel for mLowModeDischargeStepTracker: "

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 52
    .line 53
    .line 54
    move-result-wide p2

    .line 55
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, ", mNormalModeDischargeStepTracker.mNumStepDurations:"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 64
    .line 65
    iget p2, p2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, " timePerLevel for mNormalModeDischargeStepTracker: "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 78
    .line 79
    .line 80
    move-result-wide p2

    .line 81
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p2, ", mUltraModeDischargeStepTracker.mNumStepDurations:"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 90
    .line 91
    iget p2, p2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, " timePerLevel for mUltraModeDischargeStepTracker: "

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 104
    .line 105
    .line 106
    move-result-wide p2

    .line 107
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p2, "PowerController.BattStats"

    .line 115
    .line 116
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_0
    return-void
.end method

.method private updateLevelStepsForOtherMode(IJJJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p4

    .line 4
    .line 5
    iget v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x3

    .line 10
    if-ne v3, v6, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 13
    .line 14
    aget-wide v7, v3, v5

    .line 15
    .line 16
    mul-long v9, v1, v7

    .line 17
    .line 18
    aget-wide v11, v3, v6

    .line 19
    .line 20
    div-long/2addr v9, v11

    .line 21
    sub-long v7, v11, v7

    .line 22
    .line 23
    mul-long v7, v7, p6

    .line 24
    .line 25
    div-long/2addr v7, v11

    .line 26
    add-long v15, v7, v9

    .line 27
    .line 28
    iget-object v11, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 29
    .line 30
    move/from16 v12, p1

    .line 31
    .line 32
    move-wide/from16 v13, p2

    .line 33
    .line 34
    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 38
    .line 39
    iput-wide v1, v3, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 40
    .line 41
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 42
    .line 43
    aget-wide v4, v3, v4

    .line 44
    .line 45
    mul-long v7, v1, v4

    .line 46
    .line 47
    aget-wide v9, v3, v6

    .line 48
    .line 49
    div-long/2addr v7, v9

    .line 50
    sub-long v3, v9, v4

    .line 51
    .line 52
    mul-long v3, v3, p6

    .line 53
    .line 54
    div-long/2addr v3, v9

    .line 55
    add-long v13, v3, v7

    .line 56
    .line 57
    iget-object v9, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 58
    .line 59
    move/from16 v10, p1

    .line 60
    .line 61
    move-wide/from16 v11, p2

    .line 62
    .line 63
    invoke-virtual/range {v9 .. v14}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 67
    .line 68
    iput-wide v1, v3, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_0
    if-ne v3, v5, :cond_1

    .line 73
    .line 74
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 75
    .line 76
    aget-wide v6, v3, v6

    .line 77
    .line 78
    mul-long v8, v1, v6

    .line 79
    .line 80
    aget-wide v10, v3, v5

    .line 81
    .line 82
    div-long/2addr v8, v10

    .line 83
    sub-long v6, v10, v6

    .line 84
    .line 85
    mul-long v6, v6, p6

    .line 86
    .line 87
    div-long/2addr v6, v10

    .line 88
    add-long v14, v6, v8

    .line 89
    .line 90
    iget-object v10, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 91
    .line 92
    move/from16 v11, p1

    .line 93
    .line 94
    move-wide/from16 v12, p2

    .line 95
    .line 96
    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 100
    .line 101
    iput-wide v1, v3, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 102
    .line 103
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 104
    .line 105
    aget-wide v6, v3, v4

    .line 106
    .line 107
    mul-long v8, v1, v6

    .line 108
    .line 109
    aget-wide v4, v3, v5

    .line 110
    .line 111
    div-long/2addr v8, v4

    .line 112
    sub-long v6, v4, v6

    .line 113
    .line 114
    mul-long v6, v6, p6

    .line 115
    .line 116
    div-long/2addr v6, v4

    .line 117
    add-long v14, v6, v8

    .line 118
    .line 119
    iget-object v10, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 120
    .line 121
    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 125
    .line 126
    iput-wide v1, v3, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    if-ne v3, v4, :cond_2

    .line 130
    .line 131
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 132
    .line 133
    aget-wide v7, v3, v5

    .line 134
    .line 135
    mul-long v9, v1, v7

    .line 136
    .line 137
    aget-wide v11, v3, v4

    .line 138
    .line 139
    div-long/2addr v9, v11

    .line 140
    sub-long v7, v11, v7

    .line 141
    .line 142
    mul-long v7, v7, p6

    .line 143
    .line 144
    div-long/2addr v7, v11

    .line 145
    add-long v15, v7, v9

    .line 146
    .line 147
    iget-object v11, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 148
    .line 149
    move/from16 v12, p1

    .line 150
    .line 151
    move-wide/from16 v13, p2

    .line 152
    .line 153
    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 154
    .line 155
    .line 156
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 157
    .line 158
    iput-wide v1, v3, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 159
    .line 160
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mFactorForModes:[J

    .line 161
    .line 162
    aget-wide v5, v3, v6

    .line 163
    .line 164
    mul-long v7, v1, v5

    .line 165
    .line 166
    aget-wide v9, v3, v4

    .line 167
    .line 168
    div-long/2addr v7, v9

    .line 169
    sub-long v3, v9, v5

    .line 170
    .line 171
    mul-long v3, v3, p6

    .line 172
    .line 173
    div-long/2addr v3, v9

    .line 174
    add-long v13, v3, v7

    .line 175
    .line 176
    iget-object v9, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 177
    .line 178
    move/from16 v10, p1

    .line 179
    .line 180
    move-wide/from16 v11, p2

    .line 181
    .line 182
    invoke-virtual/range {v9 .. v14}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 186
    .line 187
    iput-wide v1, v3, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 188
    .line 189
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG:Z

    .line 190
    .line 191
    if-eqz v1, :cond_3

    .line 192
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string/jumbo v2, "updateLevelStepsForOtherMode:mLowModeDischargeStepTracker.mNumStepDurations:"

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v2, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 202
    .line 203
    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, " timePerLevel for mLowModeDischargeStepTracker: "

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-object v2, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 216
    .line 217
    .line 218
    move-result-wide v2

    .line 219
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, ", mNormalModeDischargeStepTracker.mNumStepDurations:"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v2, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 228
    .line 229
    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v2, " timePerLevel for mNormalModeDischargeStepTracker: "

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v2, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v2, ", mUltraModeDischargeStepTracker.mNumStepDurations:"

    .line 249
    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget-object v2, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 254
    .line 255
    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v2, " timePerLevel for mUltraModeDischargeStepTracker: "

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v2, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v2, "PowerController.BattStats"

    .line 279
    .line 280
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :cond_3
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-wide/from16 v6, p4

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-string/jumbo v2, "now:"

    .line 10
    .line 11
    .line 12
    const-string v3, ", elapsedRealtime:"

    .line 13
    .line 14
    invoke-static {v2, v0, v1, v3}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", numStepLevels:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move/from16 v9, p1

    .line 27
    .line 28
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", mLastLevelStepTime:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v10, "PowerController.BattStats"

    .line 46
    .line 47
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-wide v0, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long v0, v0, v2

    .line 55
    .line 56
    const-string v11, ", timePerLevel:"

    .line 57
    .line 58
    const-string v12, ", mNumStepDurations:"

    .line 59
    .line 60
    if-gez v0, :cond_2

    .line 61
    .line 62
    iput-wide v6, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 63
    .line 64
    iget v0, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 65
    .line 66
    invoke-direct {v8, v0}, Landroid/os/PowerControllerBatteryStatsHelper;->getLevelStepTracker(I)Landroid/os/BatteryStats$LevelStepTracker;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    if-nez v13, :cond_0

    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    iget-wide v0, v13, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 74
    .line 75
    cmp-long v0, v0, v2

    .line 76
    .line 77
    if-gez v0, :cond_1

    .line 78
    .line 79
    move-object v0, v13

    .line 80
    move/from16 v1, p1

    .line 81
    .line 82
    move-wide/from16 v2, p2

    .line 83
    .line 84
    move-wide/from16 v4, p4

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "addLevelSteps: first level update: for mode:"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v1, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v1, v13, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-wide v10, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 127
    .line 128
    move-object/from16 v0, p0

    .line 129
    .line 130
    move/from16 v1, p1

    .line 131
    .line 132
    move-wide/from16 v2, p2

    .line 133
    .line 134
    move-wide v6, v10

    .line 135
    invoke-direct/range {v0 .. v7}, Landroid/os/PowerControllerBatteryStatsHelper;->updateLevelStepsForOtherMode(IJJJ)V

    .line 136
    .line 137
    .line 138
    :cond_1
    return-void

    .line 139
    :cond_2
    iget v0, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 140
    .line 141
    invoke-direct {v8, v0, v6, v7}, Landroid/os/PowerControllerBatteryStatsHelper;->updateDurationSpentInMode(IJ)V

    .line 142
    .line 143
    .line 144
    iget-wide v13, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 145
    .line 146
    iput-wide v6, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 147
    .line 148
    const/4 v1, 0x3

    .line 149
    move-object/from16 v0, p0

    .line 150
    .line 151
    move-wide v2, v13

    .line 152
    move-wide/from16 v4, p4

    .line 153
    .line 154
    invoke-direct/range {v0 .. v5}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimeSpentInMode(IJJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    const/4 v1, 0x1

    .line 159
    move-object/from16 v16, v11

    .line 160
    .line 161
    move-object v15, v12

    .line 162
    move-wide v11, v4

    .line 163
    move-wide/from16 v4, p4

    .line 164
    .line 165
    invoke-direct/range {v0 .. v5}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimeSpentInMode(IJJ)J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    const/4 v1, 0x4

    .line 170
    move-object/from16 v17, v10

    .line 171
    .line 172
    move-wide v9, v4

    .line 173
    move-wide/from16 v4, p4

    .line 174
    .line 175
    invoke-direct/range {v0 .. v5}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimeSpentInMode(IJJ)J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    iget v1, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 180
    .line 181
    move-wide v6, v4

    .line 182
    move-wide/from16 v4, p4

    .line 183
    .line 184
    invoke-direct/range {v0 .. v5}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimeSpentInMode(IJJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    const-string/jumbo v2, "timeForLowMode:"

    .line 189
    .line 190
    .line 191
    const-string v3, ", timeForNormalMode:"

    .line 192
    .line 193
    invoke-static {v2, v11, v12, v3}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v3, ", timeForUltraMode:"

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, ", timeForCurrentMode:"

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v3, ", ((elapsedRealtime - lastLevelStepTime) *900/1000):"

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    sub-long v3, p4, v13

    .line 222
    .line 223
    const-wide/16 v5, 0x384

    .line 224
    .line 225
    mul-long/2addr v3, v5

    .line 226
    const-wide/16 v5, 0x3e8

    .line 227
    .line 228
    div-long/2addr v3, v5

    .line 229
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    move-object/from16 v6, v17

    .line 237
    .line 238
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-direct/range {p0 .. p0}, Landroid/os/PowerControllerBatteryStatsHelper;->clearDurationSpentInAllMode()V

    .line 242
    .line 243
    .line 244
    iget v2, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 245
    .line 246
    invoke-direct {v8, v2}, Landroid/os/PowerControllerBatteryStatsHelper;->getLevelStepTracker(I)Landroid/os/BatteryStats$LevelStepTracker;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    if-nez v7, :cond_3

    .line 251
    .line 252
    return-void

    .line 253
    :cond_3
    cmp-long v2, v0, v3

    .line 254
    .line 255
    if-gez v2, :cond_5

    .line 256
    .line 257
    const-wide/16 v2, 0x0

    .line 258
    .line 259
    cmp-long v0, v0, v2

    .line 260
    .line 261
    if-lez v0, :cond_4

    .line 262
    .line 263
    iget-wide v0, v7, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 264
    .line 265
    cmp-long v0, v0, v2

    .line 266
    .line 267
    if-gez v0, :cond_4

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_4
    invoke-direct/range {p0 .. p5}, Landroid/os/PowerControllerBatteryStatsHelper;->updateLevelStepsForAllMode(IJJ)V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_5
    :goto_0
    move-object v0, v7

    .line 275
    move/from16 v1, p1

    .line 276
    .line 277
    move-wide/from16 v2, p2

    .line 278
    .line 279
    move-wide/from16 v4, p4

    .line 280
    .line 281
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v1, "addLevelSteps: for mode:"

    .line 287
    .line 288
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget v1, v8, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-object v1, v15

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget v1, v7, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    move-object/from16 v1, v16

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 311
    .line 312
    .line 313
    move-result-wide v1

    .line 314
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-object/from16 v0, p0

    .line 325
    .line 326
    move/from16 v1, p1

    .line 327
    .line 328
    move-wide/from16 v2, p2

    .line 329
    .line 330
    move-wide v6, v13

    .line 331
    invoke-direct/range {v0 .. v7}, Landroid/os/PowerControllerBatteryStatsHelper;->updateLevelStepsForOtherMode(IJJJ)V

    .line 332
    .line 333
    .line 334
    :goto_1
    return-void
.end method

.method public clearTime()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 4
    .line 5
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public computeTimePerLevel(J)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mPowerControllerEnabled:Z

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget v3, v0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    invoke-direct {v0, v4}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimePerLevel(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    const/4 v6, 0x1

    .line 18
    invoke-direct {v0, v6}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimePerLevel(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    const/4 v8, 0x4

    .line 23
    invoke-direct {v0, v8}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimePerLevel(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    invoke-direct {v0, v3}, Landroid/os/PowerControllerBatteryStatsHelper;->getTimePerLevel(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v10

    .line 31
    const-string/jumbo v12, "timePerLevelForUltraMode:"

    .line 32
    .line 33
    .line 34
    const-string v13, ", timePerLevelForLowMode:"

    .line 35
    .line 36
    invoke-static {v12, v8, v9, v13}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v13, ", timePerLevelForNormalMode:"

    .line 44
    .line 45
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v13, ", timePerLevelForCurrent:"

    .line 52
    .line 53
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v13, ", timePerLevel:"

    .line 60
    .line 61
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v14, "PowerController.BattStats"

    .line 72
    .line 73
    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const-wide/16 v15, 0x0

    .line 77
    .line 78
    cmp-long v12, v10, v15

    .line 79
    .line 80
    const-string v15, " is:"

    .line 81
    .line 82
    const-string/jumbo v0, "new timePerLevel for mode:"

    .line 83
    .line 84
    .line 85
    if-lez v12, :cond_1

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-wide v10

    .line 115
    :cond_1
    const-wide/16 v10, 0x0

    .line 116
    .line 117
    cmp-long v4, v4, v10

    .line 118
    .line 119
    if-gez v4, :cond_2

    .line 120
    .line 121
    cmp-long v4, v6, v10

    .line 122
    .line 123
    if-gez v4, :cond_2

    .line 124
    .line 125
    cmp-long v4, v8, v10

    .line 126
    .line 127
    if-gez v4, :cond_2

    .line 128
    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-wide v1

    .line 157
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    return-wide v1
.end method

.method public dumpTimePerLevel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "dumpTimePerLevel:mLowModeDischargeStepTracker.mNumStepDurations:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 13
    .line 14
    iget v1, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " timePerLevel for mLowModeDischargeStepTracker: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mNormalModeDischargeStepTracker.mNumStepDurations:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 39
    .line 40
    iget v1, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " timePerLevel for mNormalModeDischargeStepTracker: "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", mUltraModeDischargeStepTracker.mNumStepDurations:"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 65
    .line 66
    iget v1, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " timePerLevel for mUltraModeDischargeStepTracker: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, "PowerController.BattStats"

    .line 90
    .line 91
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLevelStepTime:J

    .line 4
    .line 5
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mPreMode:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 12
    .line 13
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG_MORE:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v0, "readFromParcel: mLowModeDischargeStepTracker.mNumStepDurations:"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 41
    .line 42
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", mNormalModeDischargeStepTracker.mNumStepDurations:"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 53
    .line 54
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", mUltraModeDischargeStepTracker.mNumStepDurations:"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 65
    .line 66
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "PowerController.BattStats"

    .line 76
    .line 77
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public updatePowerMode(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v3, "updatePowerMode: new mode:"

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v3, ", now:"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "PowerController.BattStats"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget v2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 34
    .line 35
    iput v2, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mPreMode:I

    .line 36
    .line 37
    iput p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    if-ne v3, p1, :cond_0

    .line 41
    .line 42
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastLowPowerModeTime:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x4

    .line 46
    if-ne v3, p1, :cond_1

    .line 47
    .line 48
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastUltraSavingPowerModeTime:J

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v3, 0x1

    .line 52
    if-ne v3, p1, :cond_2

    .line 53
    .line 54
    iput-wide v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLastNormalPowerModeTime:J

    .line 55
    .line 56
    :cond_2
    :goto_0
    invoke-direct {p0, v2, v0, v1}, Landroid/os/PowerControllerBatteryStatsHelper;->updateDurationSpentInMode(IJ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mPreMode:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mCurrentMode:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, p0, Landroid/os/PowerControllerBatteryStatsHelper;->DEBUG_MORE:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v0, "writeToParcel:mLowModeDischargeStepTracker.mNumStepDurations:"

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mLowModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 39
    .line 40
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", mNormalModeDischargeStepTracker.mNumStepDurations:"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mNormalModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 51
    .line 52
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", mUltraModeDischargeStepTracker.mNumStepDurations:"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroid/os/PowerControllerBatteryStatsHelper;->mUltraModeDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 63
    .line 64
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "PowerController.BattStats"

    .line 74
    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method
