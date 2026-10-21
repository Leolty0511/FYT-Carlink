package com.android.internal.os;

import android.app.job.JobInfo;
import android.os.BatteryStats;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;

/* JADX INFO: loaded from: classes2.dex */
public class CpuPowerCalculator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    private static final long MICROSEC_IN_HR = 3600000000L;
    private static final String TAG = "CpuPowerCalculator";
    private final PowerProfile mProfile;

    public CpuPowerCalculator(PowerProfile powerProfile) {
        this.mProfile = powerProfile;
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        double d2;
        BatteryStats.Uid uid2 = uid;
        batterySipper.cpuTimeMs = (uid2.getSystemCpuTimeUs(i2) + uid2.getUserCpuTimeUs(i2)) / 1000;
        int numCpuClusters = this.mProfile.getNumCpuClusters();
        int i3 = 0;
        double d3 = 0.0d;
        while (i3 < numCpuClusters) {
            int numSpeedStepsInCpuCluster = this.mProfile.getNumSpeedStepsInCpuCluster(i3);
            int i4 = 0;
            while (i4 < numSpeedStepsInCpuCluster) {
                long timeAtCpuSpeed = uid2.getTimeAtCpuSpeed(i3, i4, i2);
                double averagePowerForCpu = this.mProfile.getAveragePowerForCpu(i3, i4) * timeAtCpuSpeed;
                if (DEBUG) {
                    Log.d(TAG, "UID " + uid.getUid() + ": CPU cluster #" + i3 + " step #" + i4 + " timeUs=" + timeAtCpuSpeed + " power=" + BatteryStatsHelper.makemAh(averagePowerForCpu / 3.6E9d));
                }
                d3 += averagePowerForCpu;
                i4++;
                uid2 = uid;
            }
            i3++;
            uid2 = uid;
        }
        double d4 = d3 / 3.6E9d;
        batterySipper.cpuPowerMah = d4;
        if (DEBUG) {
            d2 = 0.0d;
            if (batterySipper.cpuTimeMs != 0 || d4 != 0.0d) {
                Log.d(TAG, "UID " + uid.getUid() + ": CPU time=" + batterySipper.cpuTimeMs + " ms power=" + BatteryStatsHelper.makemAh(batterySipper.cpuPowerMah));
            }
        } else {
            d2 = 0.0d;
        }
        batterySipper.cpuFgTimeMs = 0L;
        ArrayMap<String, ? extends BatteryStats.Uid.Proc> processStats = uid.getProcessStats();
        int size = processStats.size();
        double d5 = d2;
        for (int i5 = 0; i5 < size; i5++) {
            BatteryStats.Uid.Proc procValueAt = processStats.valueAt(i5);
            String strKeyAt = processStats.keyAt(i5);
            batterySipper.cpuFgTimeMs = procValueAt.getForegroundTime(i2) + batterySipper.cpuFgTimeMs;
            long foregroundTime = procValueAt.getForegroundTime(i2) + procValueAt.getSystemTime(i2) + procValueAt.getUserTime(i2);
            String str = batterySipper.packageWithHighestDrain;
            if (str == null || str.startsWith(PhoneConstants.APN_TYPE_ALL)) {
                d5 = foregroundTime;
                batterySipper.packageWithHighestDrain = strKeyAt;
            } else {
                double d6 = foregroundTime;
                if (d5 < d6 && !strKeyAt.startsWith(PhoneConstants.APN_TYPE_ALL)) {
                    batterySipper.packageWithHighestDrain = strKeyAt;
                    d5 = d6;
                }
            }
        }
        long j4 = batterySipper.cpuFgTimeMs;
        long j5 = batterySipper.cpuTimeMs;
        if (j4 > j5) {
            if (DEBUG && j4 > j5 + JobInfo.MIN_BACKOFF_MILLIS) {
                Log.d(TAG, "WARNING! Cputime is more than 10 seconds behind Foreground time");
            }
            batterySipper.cpuTimeMs = batterySipper.cpuFgTimeMs;
        }
    }
}
