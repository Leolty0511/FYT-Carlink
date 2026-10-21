package com.android.internal.os;

import android.app.m;
import android.os.BatteryStats;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class MobileRadioPowerCalculator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    private static final String TAG = "MobileRadioPowerController";
    private final double mPowerRadioOn;
    private final double mPowerScan;
    private BatteryStats mStats;
    private final double[] mPowerBins = new double[5];
    private long mTotalAppMobileActiveMs = 0;

    public MobileRadioPowerCalculator(PowerProfile powerProfile, BatteryStats batteryStats) {
        this.mPowerRadioOn = powerProfile.getAveragePower(PowerProfile.POWER_RADIO_ACTIVE);
        int i2 = 0;
        while (true) {
            double[] dArr = this.mPowerBins;
            if (i2 >= dArr.length) {
                this.mPowerScan = powerProfile.getAveragePower(PowerProfile.POWER_RADIO_SCANNING);
                this.mStats = batteryStats;
                return;
            } else {
                dArr[i2] = powerProfile.getAveragePower(PowerProfile.POWER_RADIO_ON, i2);
                i2++;
            }
        }
    }

    private double getMobilePowerPerPacket(long j2, int i2) {
        double d2 = this.mPowerRadioOn / 3600.0d;
        long networkActivityPackets = this.mStats.getNetworkActivityPackets(1, i2) + this.mStats.getNetworkActivityPackets(0, i2);
        long mobileRadioActiveTime = this.mStats.getMobileRadioActiveTime(j2, i2) / 1000;
        return (d2 / ((networkActivityPackets == 0 || mobileRadioActiveTime == 0) ? 12.20703125d : networkActivityPackets / mobileRadioActiveTime)) / 3600.0d;
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        batterySipper.mobileRxPackets = uid.getNetworkActivityPackets(0, i2);
        batterySipper.mobileTxPackets = uid.getNetworkActivityPackets(1, i2);
        batterySipper.mobileActive = uid.getMobileRadioActiveTime(i2) / 1000;
        batterySipper.mobileActiveCount = uid.getMobileRadioActiveCount(i2);
        batterySipper.mobileRxBytes = uid.getNetworkActivityBytes(0, i2);
        batterySipper.mobileTxBytes = uid.getNetworkActivityBytes(1, i2);
        long j4 = batterySipper.mobileActive;
        if (j4 > 0) {
            this.mTotalAppMobileActiveMs += j4;
            batterySipper.mobileRadioPowerMah = (j4 * this.mPowerRadioOn) / 3600000.0d;
        } else {
            batterySipper.mobileRadioPowerMah = (batterySipper.mobileRxPackets + batterySipper.mobileTxPackets) * getMobilePowerPerPacket(j2, i2);
        }
        if (!DEBUG || batterySipper.mobileRadioPowerMah == 0.0d) {
            return;
        }
        Log.d(TAG, "UID " + uid.getUid() + ": mobile packets " + (batterySipper.mobileRxPackets + batterySipper.mobileTxPackets) + " active time " + batterySipper.mobileActive + " power=" + BatteryStatsHelper.makemAh(batterySipper.mobileRadioPowerMah));
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
        BatterySipper batterySipper2;
        double d2 = 0.0d;
        long j4 = 0;
        long phoneSignalStrengthTime = 0;
        for (int i3 = 0; i3 < this.mPowerBins.length; i3++) {
            long j5 = phoneSignalStrengthTime;
            phoneSignalStrengthTime = batteryStats.getPhoneSignalStrengthTime(i3, j2, i2) / 1000;
            double d3 = (phoneSignalStrengthTime * this.mPowerBins[i3]) / 3600000.0d;
            if (DEBUG && d3 != 0.0d) {
                Log.d(TAG, "Cell strength #" + i3 + ": time=" + phoneSignalStrengthTime + " power=" + BatteryStatsHelper.makemAh(d3));
            }
            d2 += d3;
            j4 += phoneSignalStrengthTime;
            if (i3 != 0) {
                phoneSignalStrengthTime = j5;
            }
        }
        long j6 = phoneSignalStrengthTime;
        long phoneSignalScanningTime = batteryStats.getPhoneSignalScanningTime(j2, i2) / 1000;
        long j7 = j4;
        double d4 = (phoneSignalScanningTime * this.mPowerScan) / 3600000.0d;
        if (DEBUG && d4 != 0.0d) {
            StringBuilder sbL = m.l("Cell radio scanning: time=", phoneSignalScanningTime, " power=");
            sbL.append(BatteryStatsHelper.makemAh(d4));
            Log.d(TAG, sbL.toString());
        }
        double d5 = d2 + d4;
        long mobileRadioActiveTime = (this.mStats.getMobileRadioActiveTime(j2, i2) / 1000) - this.mTotalAppMobileActiveMs;
        if (mobileRadioActiveTime > 0) {
            d5 += (this.mPowerRadioOn * mobileRadioActiveTime) / 3600000.0d;
        }
        if (d5 != 0.0d) {
            if (j7 != 0) {
                batterySipper2 = batterySipper;
                batterySipper2.noCoveragePercent = (j6 * 100.0d) / j7;
            } else {
                batterySipper2 = batterySipper;
            }
            batterySipper2.mobileActive = mobileRadioActiveTime;
            batterySipper2.mobileActiveCount = batteryStats.getMobileRadioActiveUnknownCount(i2);
            batterySipper2.mobileRadioPowerMah = d5;
        }
    }

    @Override // com.android.internal.os.PowerCalculator
    public void reset() {
        this.mTotalAppMobileActiveMs = 0L;
    }

    public void reset(BatteryStats batteryStats) {
        reset();
        this.mStats = batteryStats;
    }
}
