package com.google.android.projection.sink.sensors;

import android.content.Context;
import android.os.UserHandle;
import com.google.android.projection.sink.settings.Settings;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class FakeSensors extends SensorCollectorBase {
    private static final float KPH_PER_MPS = 3.6f;
    private final Runnable mChangeSomeFakeValues;
    private final boolean mEnabled;
    private long mLastSpeedUpdate;
    private float mOdometer;
    private final Random mRandom;
    private float mReportedOdometer;
    private int mSpeed;
    private static final int[] PERIODIC_SENSORS = {3, 4, 11};
    private static final int[] ONCHANGE_SENSORS = {5, 6, 7, 8, 12};

    public FakeSensors(Context context) {
        Random random = new Random(System.currentTimeMillis());
        this.mRandom = random;
        this.mChangeSomeFakeValues = new Runnable() { // from class: com.google.android.projection.sink.sensors.FakeSensors.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i2 : FakeSensors.ONCHANGE_SENSORS) {
                    if (i2 != 5) {
                        FakeSensors.this.reportAvailable(i2);
                    }
                }
                FakeSensors fakeSensors = FakeSensors.this;
                fakeSensors.postDelayed(fakeSensors.mChangeSomeFakeValues, FakeSensors.this.mRandom.nextInt(1000) + 1000);
            }
        };
        if (context != null) {
            this.mEnabled = new Settings(context).isMissingSensorsGeneratorEnabled();
        } else {
            this.mEnabled = true;
        }
        if (this.mEnabled) {
            this.mOdometer = random.nextInt(UserHandle.PER_USER_RANGE);
            this.mSpeed = random.nextInt(33);
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void discoverSensorsImpl(Set<Integer> set) {
        if (this.mEnabled) {
            for (int i2 : PERIODIC_SENSORS) {
                set.add(Integer.valueOf(i2));
            }
            for (int i3 : ONCHANGE_SENSORS) {
                set.add(Integer.valueOf(i3));
            }
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void registerSensorsImpl() {
        post(this.mChangeSomeFakeValues);
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public boolean sendUpdateImpl(SensorSinkWrapper sensorSinkWrapper, int i2) {
        if (i2 == 3) {
            int iNextInt = (this.mRandom.nextInt(30) - 15) + this.mSpeed;
            this.mSpeed = iNextInt;
            if (iNextInt < 0) {
                this.mSpeed = 0;
            } else if (iNextInt > 55.555557f) {
                this.mSpeed = 55;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.mLastSpeedUpdate;
            if (j2 > 0) {
                float f2 = this.mOdometer + ((this.mSpeed * ((jCurrentTimeMillis - j2) / 1000.0f)) / 1000.0f);
                this.mOdometer = f2;
                if (f2 - this.mReportedOdometer > 0.1f) {
                    reportAvailable(5);
                }
            }
            this.mLastSpeedUpdate = jCurrentTimeMillis;
            sensorSinkWrapper.reportSpeedData(this.mSpeed);
            return true;
        }
        if (i2 == 5) {
            float f3 = this.mOdometer;
            this.mReportedOdometer = f3;
            sensorSinkWrapper.reportOdometerData(f3);
            return true;
        }
        if (i2 == 4) {
            sensorSinkWrapper.reportRpmData(this.mRandom.nextInt(8500));
            return true;
        }
        if (i2 == 6) {
            int iNextInt2 = this.mRandom.nextInt(100);
            sensorSinkWrapper.reportFuelData(iNextInt2, this.mRandom.nextInt(500), iNextInt2 < 10);
            return true;
        }
        if (i2 == 7) {
            sensorSinkWrapper.reportParkingBrakeData(true);
            return true;
        }
        if (i2 == 8) {
            sensorSinkWrapper.reportGearData(this.mRandom.nextInt(6));
            return true;
        }
        if (i2 == 11) {
            sensorSinkWrapper.reportEnvironmentData(this.mRandom.nextInt(20) + 20, this.mRandom.nextInt(20) + 90);
            return true;
        }
        if (i2 != 12) {
            throw new RuntimeException();
        }
        sensorSinkWrapper.reportHvacData(this.mRandom.nextInt(20) + 20, this.mRandom.nextInt(20) + 20);
        return true;
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void unregisterSensorsImpl() {
        removeCallbacks(this.mChangeSomeFakeValues);
    }
}
