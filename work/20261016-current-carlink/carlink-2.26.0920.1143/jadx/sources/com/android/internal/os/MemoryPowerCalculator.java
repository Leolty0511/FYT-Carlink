package com.android.internal.os;

import android.os.BatteryStats;
import android.util.Log;
import android.util.LongSparseArray;

/* JADX INFO: loaded from: classes2.dex */
public class MemoryPowerCalculator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    public static final String TAG = "MemoryPowerCalculator";
    private final double[] powerAverages;

    public MemoryPowerCalculator(PowerProfile powerProfile) {
        int numElements = powerProfile.getNumElements(PowerProfile.POWER_MEMORY);
        this.powerAverages = new double[numElements];
        for (int i2 = 0; i2 < numElements; i2++) {
            this.powerAverages[i2] = powerProfile.getAveragePower(PowerProfile.POWER_MEMORY, i2);
            if (this.powerAverages[i2] == 0.0d && DEBUG) {
                Log.d(TAG, "Problem with PowerProfile. Received 0 value in MemoryPowerCalculator");
            }
        }
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
        int i3;
        LongSparseArray<? extends BatteryStats.Timer> kernelMemoryStats = batteryStats.getKernelMemoryStats();
        double d2 = 0.0d;
        long j4 = 0;
        int i4 = 0;
        while (i4 < kernelMemoryStats.size()) {
            double[] dArr = this.powerAverages;
            if (i4 >= dArr.length) {
                break;
            }
            double d3 = dArr[(int) kernelMemoryStats.keyAt(i4)];
            int i5 = i4;
            long totalTimeLocked = kernelMemoryStats.valueAt(i4).getTotalTimeLocked(j2, i2);
            double d4 = (totalTimeLocked * d3) / 60000.0d;
            if (DEBUG) {
                StringBuilder sb = new StringBuilder("Calculating mAh for bucket ");
                i3 = i5;
                sb.append(kernelMemoryStats.keyAt(i3));
                sb.append(" while unplugged");
                Log.d(TAG, sb.toString());
                Log.d(TAG, "Converted power profile number from " + this.powerAverages[(int) kernelMemoryStats.keyAt(i3)] + " into " + d3);
                StringBuilder sb2 = new StringBuilder("Calculated mAm ");
                sb2.append(d4);
                Log.d(TAG, sb2.toString());
            } else {
                i3 = i5;
            }
            d2 += d4 / 60.0d;
            j4 += totalTimeLocked;
            i4 = i3 + 1;
        }
        batterySipper.usagePowerMah = d2;
        batterySipper.usageTimeMs = j4;
        if (DEBUG) {
            Log.d(TAG, String.format("Calculated total mAh for memory %f while unplugged %d ", Double.valueOf(d2), Long.valueOf(j4)));
        }
    }
}
