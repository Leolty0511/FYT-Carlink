package com.android.internal.os;

import android.app.m;
import android.os.BatteryStats;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothPowerCalculator extends PowerCalculator {
    private static final boolean DEBUG = BatteryStatsHelper.DEBUG;
    private static final String TAG = "BluetoothPowerCalculator";
    private double mAppTotalPowerMah = 0.0d;
    private long mAppTotalTimeMs = 0;
    private final double mIdleMa;
    private final double mRxMa;
    private final double mTxMa;

    public BluetoothPowerCalculator(PowerProfile powerProfile) {
        this.mIdleMa = powerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_IDLE);
        this.mRxMa = powerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_RX);
        this.mTxMa = powerProfile.getAveragePower(PowerProfile.POWER_BLUETOOTH_CONTROLLER_TX);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        BatteryStats.ControllerActivityCounter bluetoothControllerActivity = uid.getBluetoothControllerActivity();
        if (bluetoothControllerActivity == null) {
            return;
        }
        long countLocked = bluetoothControllerActivity.getIdleTimeCounter().getCountLocked(i2);
        long countLocked2 = bluetoothControllerActivity.getRxTimeCounter().getCountLocked(i2);
        long countLocked3 = bluetoothControllerActivity.getTxTimeCounters()[0].getCountLocked(i2);
        long j4 = countLocked + countLocked3 + countLocked2;
        double countLocked4 = bluetoothControllerActivity.getPowerCounter().getCountLocked(i2) / 3600000.0d;
        if (countLocked4 == 0.0d) {
            countLocked4 = ((countLocked3 * this.mTxMa) + ((countLocked2 * this.mRxMa) + (countLocked * this.mIdleMa))) / 3600000.0d;
        }
        batterySipper.bluetoothPowerMah = countLocked4;
        batterySipper.bluetoothRunningTimeMs = j4;
        batterySipper.btRxBytes = uid.getNetworkActivityBytes(4, i2);
        batterySipper.btTxBytes = uid.getNetworkActivityBytes(5, i2);
        this.mAppTotalPowerMah += countLocked4;
        this.mAppTotalTimeMs += j4;
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateRemaining(BatterySipper batterySipper, BatteryStats batteryStats, long j2, long j3, int i2) {
        BatteryStats.ControllerActivityCounter bluetoothControllerActivity = batteryStats.getBluetoothControllerActivity();
        long countLocked = bluetoothControllerActivity.getIdleTimeCounter().getCountLocked(i2);
        long countLocked2 = bluetoothControllerActivity.getTxTimeCounters()[0].getCountLocked(i2);
        long countLocked3 = bluetoothControllerActivity.getRxTimeCounter().getCountLocked(i2);
        long j4 = countLocked + countLocked2 + countLocked3;
        double countLocked4 = bluetoothControllerActivity.getPowerCounter().getCountLocked(i2) / 3600000.0d;
        if (countLocked4 == 0.0d) {
            countLocked4 = ((countLocked2 * this.mTxMa) + ((countLocked3 * this.mRxMa) + (countLocked * this.mIdleMa))) / 3600000.0d;
        }
        double dMax = Math.max(0.0d, countLocked4 - this.mAppTotalPowerMah);
        if (DEBUG && dMax != 0.0d) {
            StringBuilder sbL = m.l("Bluetooth active: time=", j4, " power=");
            sbL.append(BatteryStatsHelper.makemAh(dMax));
            Log.d(TAG, sbL.toString());
        }
        batterySipper.bluetoothPowerMah = dMax;
        batterySipper.bluetoothRunningTimeMs = Math.max(0L, j4 - this.mAppTotalTimeMs);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void reset() {
        this.mAppTotalPowerMah = 0.0d;
        this.mAppTotalTimeMs = 0L;
    }
}
