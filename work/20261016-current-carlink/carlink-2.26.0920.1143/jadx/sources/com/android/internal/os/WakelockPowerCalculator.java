package com.android.internal.os;

import android.app.m;
import android.os.BatteryStats;
import android.util.ArrayMap;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class WakelockPowerCalculator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    private static final String TAG = "WakelockPowerCalculator";
    private final double mPowerWakelock;
    private long mTotalAppWakelockTimeMs = 0;

    public WakelockPowerCalculator(PowerProfile powerProfile) {
        this.mPowerWakelock = powerProfile.getAveragePower(PowerProfile.POWER_CPU_AWAKE);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        ArrayMap<String, ? extends BatteryStats.Uid.Wakelock> wakelockStats = uid.getWakelockStats();
        int size = wakelockStats.size();
        long totalTimeLocked = 0;
        for (int i3 = 0; i3 < size; i3++) {
            BatteryStats.Timer wakeTime = wakelockStats.valueAt(i3).getWakeTime(0);
            if (wakeTime != null) {
                totalTimeLocked = wakeTime.getTotalTimeLocked(j2, i2) + totalTimeLocked;
            }
        }
        long j4 = totalTimeLocked / 1000;
        batterySipper.wakeLockTimeMs = j4;
        this.mTotalAppWakelockTimeMs += j4;
        double d2 = (j4 * this.mPowerWakelock) / 3600000.0d;
        batterySipper.wakeLockPowerMah = d2;
        if (!DEBUG || d2 == 0.0d) {
            return;
        }
        Log.d(TAG, "UID " + uid.getUid() + ": wake " + batterySipper.wakeLockTimeMs + " power=" + BatteryStatsHelper.makemAh(batterySipper.wakeLockPowerMah));
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
        long batteryUptime = (batteryStats.getBatteryUptime(j3) / 1000) - ((batteryStats.getScreenOnTime(j2, i2) / 1000) + this.mTotalAppWakelockTimeMs);
        if (batteryUptime > 0) {
            double d2 = (batteryUptime * this.mPowerWakelock) / 3600000.0d;
            if (DEBUG) {
                StringBuilder sbL = m.l("OS wakeLockTime ", batteryUptime, " power ");
                sbL.append(BatteryStatsHelper.makemAh(d2));
                Log.d(TAG, sbL.toString());
            }
            batterySipper.wakeLockTimeMs += batteryUptime;
            batterySipper.wakeLockPowerMah += d2;
        }
    }

    @Override // com.android.internal.os.PowerCalculator
    public void reset() {
        this.mTotalAppWakelockTimeMs = 0L;
    }
}
