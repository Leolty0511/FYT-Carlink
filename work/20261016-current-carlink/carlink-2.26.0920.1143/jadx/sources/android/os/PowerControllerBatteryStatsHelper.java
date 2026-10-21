package android.os;

import android.app.m;
import android.util.Slog;

/* JADX INFO: loaded from: classes.dex */
public class PowerControllerBatteryStatsHelper {
    static final int MAX_LEVEL_STEPS = 200;
    static final String TAG = "PowerController.BattStats";
    private static PowerControllerBatteryStatsHelper sInstance;
    private boolean DEBUG = true;
    private boolean DEBUG_MORE = false;
    private int mCurrentMode;
    private long[] mDurationSpentInModes;
    private final long[] mFactorForModes;
    private long mLastLevelStepTime;
    private long mLastLowPowerModeTime;
    private long mLastNormalPowerModeTime;
    private long mLastUltraSavingPowerModeTime;
    private final Object mLock;
    final BatteryStats.LevelStepTracker mLowModeDischargeStepTracker;
    final BatteryStats.LevelStepTracker mNormalModeDischargeStepTracker;
    private final boolean mPowerControllerEnabled;
    private int mPreMode;
    final BatteryStats.LevelStepTracker mUltraModeDischargeStepTracker;

    public PowerControllerBatteryStatsHelper() {
        this.mPowerControllerEnabled = 1 == SystemProperties.getInt(PowerManagerEx.POWER_CONTROLLER_ENABLE, 1);
        this.mFactorForModes = new long[]{1000, 1000, 1000, 1100, 1200, 1000, 1000};
        this.mLowModeDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mNormalModeDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mUltraModeDischargeStepTracker = new BatteryStats.LevelStepTracker(200);
        this.mDurationSpentInModes = new long[6];
        this.mCurrentMode = 1;
        this.mPreMode = 1;
        this.mLock = new Object();
        this.mLastLowPowerModeTime = 0L;
        this.mLastNormalPowerModeTime = 0L;
        this.mLastUltraSavingPowerModeTime = 0L;
    }

    private void clearDurationSpentInAllMode() {
        for (int length = this.mDurationSpentInModes.length - 1; length >= 0; length--) {
            this.mDurationSpentInModes[length] = 0;
        }
    }

    public static PowerControllerBatteryStatsHelper getInstance() {
        PowerControllerBatteryStatsHelper powerControllerBatteryStatsHelper;
        synchronized (PowerControllerBatteryStatsHelper.class) {
            if (sInstance == null) {
                sInstance = new PowerControllerBatteryStatsHelper();
            }
            powerControllerBatteryStatsHelper = sInstance;
        }
        return powerControllerBatteryStatsHelper;
    }

    private long getLastModeTime(int i2) {
        if (1 == i2) {
            return this.mLastNormalPowerModeTime;
        }
        if (3 == i2) {
            return this.mLastLowPowerModeTime;
        }
        if (4 == i2) {
            return this.mLastUltraSavingPowerModeTime;
        }
        return 0L;
    }

    private BatteryStats.LevelStepTracker getLevelStepTracker(int i2) {
        if (1 == i2) {
            return this.mNormalModeDischargeStepTracker;
        }
        if (3 == i2) {
            return this.mLowModeDischargeStepTracker;
        }
        if (4 == i2) {
            return this.mUltraModeDischargeStepTracker;
        }
        return null;
    }

    private long getTimePerLevel(int i2) {
        BatteryStats.LevelStepTracker levelStepTracker = getLevelStepTracker(i2);
        if (this.DEBUG_MORE) {
            Slog.d(TAG, "getTimePerLevel: for mode:" + i2 + ", dischargeStepTracker:" + levelStepTracker);
        }
        if (levelStepTracker == null) {
            return -1L;
        }
        if (this.DEBUG_MORE) {
            StringBuilder sbS = android.accessibilityservice.c.s("getTimePerLevel: for mode:", i2, ", mNumStepDurations:");
            sbS.append(levelStepTracker.mNumStepDurations);
            Slog.d(TAG, sbS.toString());
        }
        if (levelStepTracker.mNumStepDurations < 1) {
            return -1L;
        }
        long jComputeTimePerLevel = levelStepTracker.computeTimePerLevel();
        if (jComputeTimePerLevel <= 0) {
            return -1L;
        }
        return jComputeTimePerLevel;
    }

    private long getTimeSpentInMode(int i2, long j2, long j3) {
        if (i2 < 6 && i2 >= 0) {
            return this.mDurationSpentInModes[i2];
        }
        long lastModeTime = getLastModeTime(i2);
        if (lastModeTime <= 0) {
            return 0L;
        }
        int i3 = this.mCurrentMode;
        if (i2 == i3) {
            return j2 > lastModeTime ? j3 - j2 : j3 - lastModeTime;
        }
        int i4 = this.mPreMode;
        if (i2 == i4) {
            long lastModeTime2 = getLastModeTime(i3);
            if (j2 <= lastModeTime) {
                return lastModeTime2 - lastModeTime;
            }
            if (j2 > lastModeTime2) {
                return 0L;
            }
            return lastModeTime2 - j2;
        }
        long lastModeTime3 = getLastModeTime(i4);
        if (j2 <= lastModeTime) {
            return lastModeTime3 - lastModeTime;
        }
        if (j2 > lastModeTime3) {
            return 0L;
        }
        return lastModeTime3 - j2;
    }

    private void updateDurationSpentInMode(int i2, long j2) {
        if (i2 >= 6 || i2 < 0) {
            return;
        }
        long lastModeTime = getLastModeTime(i2);
        long j3 = this.mLastLevelStepTime;
        if (lastModeTime <= j3) {
            long[] jArr = this.mDurationSpentInModes;
            jArr[i2] = (j2 - j3) + jArr[i2];
        } else {
            long[] jArr2 = this.mDurationSpentInModes;
            jArr2[i2] = (j2 - lastModeTime) + jArr2[i2];
        }
    }

    private void updateLevelStepsForAllMode(int i2, long j2, long j3) {
        this.mNormalModeDischargeStepTracker.addLevelSteps(i2, j2, j3);
        this.mUltraModeDischargeStepTracker.addLevelSteps(i2, j2, j3);
        this.mLowModeDischargeStepTracker.addLevelSteps(i2, j2, j3);
        if (this.DEBUG) {
            Slog.d(TAG, "updateLevelStepsForAllMode:mLowModeDischargeStepTracker.mNumStepDurations:" + this.mLowModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mLowModeDischargeStepTracker: " + this.mLowModeDischargeStepTracker.computeTimePerLevel() + ", mNormalModeDischargeStepTracker.mNumStepDurations:" + this.mNormalModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mNormalModeDischargeStepTracker: " + this.mNormalModeDischargeStepTracker.computeTimePerLevel() + ", mUltraModeDischargeStepTracker.mNumStepDurations:" + this.mUltraModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mUltraModeDischargeStepTracker: " + this.mUltraModeDischargeStepTracker.computeTimePerLevel());
        }
    }

    private void updateLevelStepsForOtherMode(int i2, long j2, long j3, long j4) {
        int i3 = this.mCurrentMode;
        if (i3 == 3) {
            long[] jArr = this.mFactorForModes;
            long j5 = jArr[1];
            long j6 = jArr[3];
            this.mNormalModeDischargeStepTracker.addLevelSteps(i2, j2, (((j6 - j5) * j4) / j6) + ((j3 * j5) / j6));
            this.mNormalModeDischargeStepTracker.mLastStepTime = j3;
            long[] jArr2 = this.mFactorForModes;
            long j7 = jArr2[4];
            long j8 = jArr2[3];
            this.mUltraModeDischargeStepTracker.addLevelSteps(i2, j2, (((j8 - j7) * j4) / j8) + ((j3 * j7) / j8));
            this.mUltraModeDischargeStepTracker.mLastStepTime = j3;
        } else if (i3 == 1) {
            long[] jArr3 = this.mFactorForModes;
            long j9 = jArr3[3];
            long j10 = jArr3[1];
            this.mLowModeDischargeStepTracker.addLevelSteps(i2, j2, (((j10 - j9) * j4) / j10) + ((j3 * j9) / j10));
            this.mLowModeDischargeStepTracker.mLastStepTime = j3;
            long[] jArr4 = this.mFactorForModes;
            long j11 = jArr4[4];
            long j12 = jArr4[1];
            this.mUltraModeDischargeStepTracker.addLevelSteps(i2, j2, (((j12 - j11) * j4) / j12) + ((j3 * j11) / j12));
            this.mUltraModeDischargeStepTracker.mLastStepTime = j3;
        } else if (i3 == 4) {
            long[] jArr5 = this.mFactorForModes;
            long j13 = jArr5[1];
            long j14 = jArr5[4];
            this.mNormalModeDischargeStepTracker.addLevelSteps(i2, j2, (((j14 - j13) * j4) / j14) + ((j3 * j13) / j14));
            this.mNormalModeDischargeStepTracker.mLastStepTime = j3;
            long[] jArr6 = this.mFactorForModes;
            long j15 = jArr6[3];
            long j16 = jArr6[4];
            this.mLowModeDischargeStepTracker.addLevelSteps(i2, j2, (((j16 - j15) * j4) / j16) + ((j3 * j15) / j16));
            this.mLowModeDischargeStepTracker.mLastStepTime = j3;
        }
        if (this.DEBUG) {
            Slog.d(TAG, "updateLevelStepsForOtherMode:mLowModeDischargeStepTracker.mNumStepDurations:" + this.mLowModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mLowModeDischargeStepTracker: " + this.mLowModeDischargeStepTracker.computeTimePerLevel() + ", mNormalModeDischargeStepTracker.mNumStepDurations:" + this.mNormalModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mNormalModeDischargeStepTracker: " + this.mNormalModeDischargeStepTracker.computeTimePerLevel() + ", mUltraModeDischargeStepTracker.mNumStepDurations:" + this.mUltraModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mUltraModeDischargeStepTracker: " + this.mUltraModeDischargeStepTracker.computeTimePerLevel());
        }
    }

    public void addLevelSteps(int i2, long j2, long j3) {
        StringBuilder sbL = m.l("now:", SystemClock.elapsedRealtime(), ", elapsedRealtime:");
        sbL.append(j3);
        sbL.append(", numStepLevels:");
        sbL.append(i2);
        sbL.append(", mLastLevelStepTime:");
        sbL.append(this.mLastLevelStepTime);
        Slog.d(TAG, sbL.toString());
        if (this.mLastLevelStepTime < 0) {
            this.mLastLevelStepTime = j3;
            BatteryStats.LevelStepTracker levelStepTracker = getLevelStepTracker(this.mCurrentMode);
            if (levelStepTracker != null && levelStepTracker.mLastStepTime < 0) {
                levelStepTracker.addLevelSteps(i2, j2, j3);
                Slog.d(TAG, "addLevelSteps: first level update: for mode:" + this.mCurrentMode + ", mNumStepDurations:" + levelStepTracker.mNumStepDurations + ", timePerLevel:" + levelStepTracker.computeTimePerLevel());
                updateLevelStepsForOtherMode(i2, j2, j3, this.mLastLevelStepTime);
                return;
            }
            return;
        }
        updateDurationSpentInMode(this.mCurrentMode, j3);
        long j4 = this.mLastLevelStepTime;
        this.mLastLevelStepTime = j3;
        long timeSpentInMode = getTimeSpentInMode(3, j4, j3);
        long timeSpentInMode2 = getTimeSpentInMode(1, j4, j3);
        long timeSpentInMode3 = getTimeSpentInMode(4, j4, j3);
        long timeSpentInMode4 = getTimeSpentInMode(this.mCurrentMode, j4, j3);
        StringBuilder sbL2 = m.l("timeForLowMode:", timeSpentInMode, ", timeForNormalMode:");
        sbL2.append(timeSpentInMode2);
        sbL2.append(", timeForUltraMode:");
        sbL2.append(timeSpentInMode3);
        sbL2.append(", timeForCurrentMode:");
        sbL2.append(timeSpentInMode4);
        sbL2.append(", ((elapsedRealtime - lastLevelStepTime) *900/1000):");
        long j5 = ((j3 - j4) * 900) / 1000;
        sbL2.append(j5);
        Slog.d(TAG, sbL2.toString());
        clearDurationSpentInAllMode();
        BatteryStats.LevelStepTracker levelStepTracker2 = getLevelStepTracker(this.mCurrentMode);
        if (levelStepTracker2 == null) {
            return;
        }
        if (timeSpentInMode4 < j5 && (timeSpentInMode4 <= 0 || levelStepTracker2.mLastStepTime >= 0)) {
            updateLevelStepsForAllMode(i2, j2, j3);
            return;
        }
        levelStepTracker2.addLevelSteps(i2, j2, j3);
        Slog.d(TAG, "addLevelSteps: for mode:" + this.mCurrentMode + ", mNumStepDurations:" + levelStepTracker2.mNumStepDurations + ", timePerLevel:" + levelStepTracker2.computeTimePerLevel());
        updateLevelStepsForOtherMode(i2, j2, j3, j4);
    }

    public void clearTime() {
        this.mLastLevelStepTime = -1L;
        this.mLowModeDischargeStepTracker.clearTime();
        this.mNormalModeDischargeStepTracker.clearTime();
        this.mUltraModeDischargeStepTracker.clearTime();
    }

    public long computeTimePerLevel(long j2) {
        if (!this.mPowerControllerEnabled) {
            return j2;
        }
        int i2 = this.mCurrentMode;
        long timePerLevel = getTimePerLevel(3);
        long timePerLevel2 = getTimePerLevel(1);
        long timePerLevel3 = getTimePerLevel(4);
        long timePerLevel4 = getTimePerLevel(i2);
        StringBuilder sbL = m.l("timePerLevelForUltraMode:", timePerLevel3, ", timePerLevelForLowMode:");
        sbL.append(timePerLevel);
        sbL.append(", timePerLevelForNormalMode:");
        sbL.append(timePerLevel2);
        sbL.append(", timePerLevelForCurrent:");
        sbL.append(timePerLevel4);
        sbL.append(", timePerLevel:");
        sbL.append(j2);
        Slog.d(TAG, sbL.toString());
        if (timePerLevel4 > 0) {
            Slog.d(TAG, "new timePerLevel for mode:" + i2 + " is:" + timePerLevel4 + ", timePerLevel:" + j2);
            return timePerLevel4;
        }
        if (timePerLevel >= 0 || timePerLevel2 >= 0 || timePerLevel3 >= 0) {
            Slog.d(TAG, "new timePerLevel for mode:" + i2 + " is:" + j2 + ", timePerLevel:" + j2);
            return j2;
        }
        Slog.d(TAG, "new timePerLevel for mode:" + i2 + " is:" + j2 + ", timePerLevel:" + j2);
        return j2;
    }

    public void dumpTimePerLevel() {
        if (this.DEBUG) {
            Slog.d(TAG, "dumpTimePerLevel:mLowModeDischargeStepTracker.mNumStepDurations:" + this.mLowModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mLowModeDischargeStepTracker: " + this.mLowModeDischargeStepTracker.computeTimePerLevel() + ", mNormalModeDischargeStepTracker.mNumStepDurations:" + this.mNormalModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mNormalModeDischargeStepTracker: " + this.mNormalModeDischargeStepTracker.computeTimePerLevel() + ", mUltraModeDischargeStepTracker.mNumStepDurations:" + this.mUltraModeDischargeStepTracker.mNumStepDurations + " timePerLevel for mUltraModeDischargeStepTracker: " + this.mUltraModeDischargeStepTracker.computeTimePerLevel());
        }
    }

    public void init() {
        this.mLastLevelStepTime = -1L;
        this.mLowModeDischargeStepTracker.init();
        this.mNormalModeDischargeStepTracker.init();
        this.mUltraModeDischargeStepTracker.init();
    }

    public void readFromParcel(Parcel parcel) {
        this.mPreMode = parcel.readInt();
        this.mCurrentMode = parcel.readInt();
        this.mLowModeDischargeStepTracker.readFromParcel(parcel);
        this.mNormalModeDischargeStepTracker.readFromParcel(parcel);
        this.mUltraModeDischargeStepTracker.readFromParcel(parcel);
        if (this.DEBUG_MORE) {
            Slog.d(TAG, "readFromParcel: mLowModeDischargeStepTracker.mNumStepDurations:" + this.mLowModeDischargeStepTracker.mNumStepDurations + ", mNormalModeDischargeStepTracker.mNumStepDurations:" + this.mNormalModeDischargeStepTracker.mNumStepDurations + ", mUltraModeDischargeStepTracker.mNumStepDurations:" + this.mUltraModeDischargeStepTracker.mNumStepDurations);
        }
    }

    public void updatePowerMode(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Slog.d(TAG, "updatePowerMode: new mode:" + i2 + ", now:" + jElapsedRealtime);
        int i3 = this.mCurrentMode;
        this.mPreMode = i3;
        this.mCurrentMode = i2;
        if (3 == i2) {
            this.mLastLowPowerModeTime = jElapsedRealtime;
        } else if (4 == i2) {
            this.mLastUltraSavingPowerModeTime = jElapsedRealtime;
        } else if (1 == i2) {
            this.mLastNormalPowerModeTime = jElapsedRealtime;
        }
        updateDurationSpentInMode(i3, jElapsedRealtime);
    }

    public void writeToParcel(Parcel parcel) {
        parcel.writeInt(this.mPreMode);
        parcel.writeInt(this.mCurrentMode);
        this.mLowModeDischargeStepTracker.writeToParcel(parcel);
        this.mNormalModeDischargeStepTracker.writeToParcel(parcel);
        this.mUltraModeDischargeStepTracker.writeToParcel(parcel);
        if (this.DEBUG_MORE) {
            Slog.d(TAG, "writeToParcel:mLowModeDischargeStepTracker.mNumStepDurations:" + this.mLowModeDischargeStepTracker.mNumStepDurations + ", mNormalModeDischargeStepTracker.mNumStepDurations:" + this.mNormalModeDischargeStepTracker.mNumStepDurations + ", mUltraModeDischargeStepTracker.mNumStepDurations:" + this.mUltraModeDischargeStepTracker.mNumStepDurations);
        }
    }
}
