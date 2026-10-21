package com.android.internal.os;

import android.os.BatteryStats;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class WifiPowerCalculator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    private static final String TAG = "WifiPowerCalculator";
    private final double mIdleCurrentMa;
    private final double mRxCurrentMa;
    private double mTotalAppPowerDrain = 0.0d;
    private long mTotalAppRunningTime = 0;
    private final double mTxCurrentMa;

    public WifiPowerCalculator(PowerProfile powerProfile) {
        this.mIdleCurrentMa = powerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_IDLE);
        this.mTxCurrentMa = powerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_TX);
        this.mRxCurrentMa = powerProfile.getAveragePower(PowerProfile.POWER_WIFI_CONTROLLER_RX);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        BatteryStats.ControllerActivityCounter wifiControllerActivity = uid.getWifiControllerActivity();
        if (wifiControllerActivity == null) {
            return;
        }
        long countLocked = wifiControllerActivity.getIdleTimeCounter().getCountLocked(i2);
        long countLocked2 = wifiControllerActivity.getTxTimeCounters()[0].getCountLocked(i2);
        long countLocked3 = wifiControllerActivity.getRxTimeCounter().getCountLocked(i2);
        long j4 = countLocked + countLocked3 + countLocked2;
        batterySipper.wifiRunningTimeMs = j4;
        this.mTotalAppRunningTime += j4;
        double d2 = ((countLocked3 * this.mRxCurrentMa) + ((countLocked2 * this.mTxCurrentMa) + (countLocked * this.mIdleCurrentMa))) / 3600000.0d;
        batterySipper.wifiPowerMah = d2;
        this.mTotalAppPowerDrain += d2;
        batterySipper.wifiRxPackets = uid.getNetworkActivityPackets(2, i2);
        batterySipper.wifiTxPackets = uid.getNetworkActivityPackets(3, i2);
        batterySipper.wifiRxBytes = uid.getNetworkActivityBytes(2, i2);
        batterySipper.wifiTxBytes = uid.getNetworkActivityBytes(3, i2);
        if (!DEBUG || batterySipper.wifiPowerMah == 0.0d) {
            return;
        }
        Log.d(TAG, "UID " + uid.getUid() + ": idle=" + countLocked + "ms rx=" + countLocked3 + "ms tx=" + countLocked2 + "ms power=" + BatteryStatsHelper.makemAh(batterySipper.wifiPowerMah));
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
        BatteryStats.ControllerActivityCounter wifiControllerActivity = batteryStats.getWifiControllerActivity();
        long countLocked = wifiControllerActivity.getIdleTimeCounter().getCountLocked(i2);
        long countLocked2 = wifiControllerActivity.getTxTimeCounters()[0].getCountLocked(i2);
        long countLocked3 = wifiControllerActivity.getRxTimeCounter().getCountLocked(i2);
        batterySipper.wifiRunningTimeMs = Math.max(0L, ((countLocked + countLocked3) + countLocked2) - this.mTotalAppRunningTime);
        double countLocked4 = wifiControllerActivity.getPowerCounter().getCountLocked(i2) / 3600000.0d;
        if (countLocked4 == 0.0d) {
            countLocked4 = ((countLocked3 * this.mRxCurrentMa) + ((countLocked2 * this.mTxCurrentMa) + (countLocked * this.mIdleCurrentMa))) / 3600000.0d;
        }
        batterySipper.wifiPowerMah = Math.max(0.0d, countLocked4 - this.mTotalAppPowerDrain);
        if (DEBUG) {
            Log.d(TAG, "left over WiFi power: " + BatteryStatsHelper.makemAh(batterySipper.wifiPowerMah));
        }
    }

    @Override // com.android.internal.os.PowerCalculator
    public void reset() {
        this.mTotalAppPowerDrain = 0.0d;
        this.mTotalAppRunningTime = 0L;
    }
}
