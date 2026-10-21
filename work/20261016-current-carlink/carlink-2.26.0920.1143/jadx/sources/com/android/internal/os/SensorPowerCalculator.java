package com.android.internal.os;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.BatteryStats;
import android.util.SparseArray;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SensorPowerCalculator extends PowerCalculator {
    private final double mGpsPowerOn;
    private final List<Sensor> mSensors;

    public SensorPowerCalculator(PowerProfile powerProfile, SensorManager sensorManager) {
        this.mSensors = sensorManager.getSensorList(-1);
        this.mGpsPowerOn = powerProfile.getAveragePower(PowerProfile.POWER_GPS_ON);
    }

    @Override // com.android.internal.os.PowerCalculator
    public void calculateApp(BatterySipper batterySipper, BatteryStats.Uid uid, long j2, long j3, int i2) {
        SparseArray<? extends BatteryStats.Uid.Sensor> sensorStats = uid.getSensorStats();
        int size = sensorStats.size();
        for (int i3 = 0; i3 < size; i3++) {
            BatteryStats.Uid.Sensor sensorValueAt = sensorStats.valueAt(i3);
            int iKeyAt = sensorStats.keyAt(i3);
            long totalTimeLocked = sensorValueAt.getSensorTime().getTotalTimeLocked(j2, i2) / 1000;
            if (iKeyAt != -10000) {
                int size2 = this.mSensors.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Sensor sensor = this.mSensors.get(i4);
                    if (sensor.getHandle() == iKeyAt) {
                        batterySipper.sensorPowerMah += (double) ((sensor.getPower() * totalTimeLocked) / 3600000.0f);
                        break;
                    }
                }
            } else {
                batterySipper.gpsTimeMs = totalTimeLocked;
                batterySipper.gpsPowerMah = (totalTimeLocked * this.mGpsPowerOn) / 3600000.0d;
            }
        }
    }
}
