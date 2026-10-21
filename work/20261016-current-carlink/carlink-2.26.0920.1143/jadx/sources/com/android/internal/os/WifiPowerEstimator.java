package com.android.internal.os;

import android.os.BatteryStats;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class WifiPowerEstimator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    private static final String TAG = "WifiPowerEstimator";
    private long mTotalAppWifiRunningTimeMs = 0;
    private final double mWifiPowerBatchScan;
    private final double mWifiPowerOn;
    private final double mWifiPowerPerPacket;
    private final double mWifiPowerScan;

    public WifiPowerEstimator(PowerProfile powerProfile) {
        this.mWifiPowerPerPacket = getWifiPowerPerPacket(powerProfile);
        this.mWifiPowerOn = powerProfile.getAveragePower(PowerProfile.POWER_WIFI_ON);
        this.mWifiPowerScan = powerProfile.getAveragePower(PowerProfile.POWER_WIFI_SCAN);
        this.mWifiPowerBatchScan = powerProfile.getAveragePower(PowerProfile.POWER_WIFI_BATCHED_SCAN);
    }

    private static double getWifiPowerPerPacket(PowerProfile powerProfile) {
        return (powerProfile.getAveragePower(PowerProfile.POWER_WIFI_ACTIVE) / 3600.0d) / 61.03515625d;
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        BatteryStats.Uid uid2 = uid;
        long j4 = j2;
        batterySipper.wifiRxPackets = uid2.getNetworkActivityPackets(2, i2);
        batterySipper.wifiTxPackets = uid2.getNetworkActivityPackets(3, i2);
        batterySipper.wifiRxBytes = uid2.getNetworkActivityBytes(2, i2);
        batterySipper.wifiTxBytes = uid2.getNetworkActivityBytes(3, i2);
        double d2 = (batterySipper.wifiRxPackets + batterySipper.wifiTxPackets) * this.mWifiPowerPerPacket;
        long wifiRunningTime = uid2.getWifiRunningTime(j4, i2) / 1000;
        batterySipper.wifiRunningTimeMs = wifiRunningTime;
        this.mTotalAppWifiRunningTimeMs += wifiRunningTime;
        double d3 = (wifiRunningTime * this.mWifiPowerOn) / 3600000.0d;
        double wifiScanTime = ((uid2.getWifiScanTime(j4, i2) / 1000) * this.mWifiPowerScan) / 3600000.0d;
        int i3 = 0;
        double wifiBatchedScanTime = 0.0d;
        while (i3 < 5) {
            wifiBatchedScanTime = (((uid2.getWifiBatchedScanTime(i3, j4, i2) / 1000) * this.mWifiPowerBatchScan) / 3600000.0d) + wifiBatchedScanTime;
            i3++;
            uid2 = uid;
            j4 = j2;
        }
        double d4 = d2 + d3 + wifiScanTime + wifiBatchedScanTime;
        batterySipper.wifiPowerMah = d4;
        if (!DEBUG || d4 == 0.0d) {
            return;
        }
        Log.d(TAG, "UID " + uid.getUid() + ": power=" + BatteryStatsHelper.makemAh(batterySipper.wifiPowerMah));
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
        long globalWifiRunningTime = batteryStats.getGlobalWifiRunningTime(j2, i2) / 1000;
        double d2 = ((globalWifiRunningTime - this.mTotalAppWifiRunningTimeMs) * this.mWifiPowerOn) / 3600000.0d;
        batterySipper.wifiRunningTimeMs = globalWifiRunningTime;
        batterySipper.wifiPowerMah = Math.max(0.0d, d2);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void reset() {
        this.mTotalAppWifiRunningTimeMs = 0L;
    }
}
