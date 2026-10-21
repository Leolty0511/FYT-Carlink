package android.hardware;

import android.os.Handler;
import android.os.MemoryFile;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class SensorManager {
    public static final int AXIS_MINUS_X = 129;
    public static final int AXIS_MINUS_Y = 130;
    public static final int AXIS_MINUS_Z = 131;
    public static final int AXIS_X = 1;
    public static final int AXIS_Y = 2;
    public static final int AXIS_Z = 3;

    @Deprecated
    public static final int DATA_X = 0;

    @Deprecated
    public static final int DATA_Y = 1;

    @Deprecated
    public static final int DATA_Z = 2;
    public static final float GRAVITY_DEATH_STAR_I = 3.5303614E-7f;
    public static final float GRAVITY_EARTH = 9.80665f;
    public static final float GRAVITY_JUPITER = 23.12f;
    public static final float GRAVITY_MARS = 3.71f;
    public static final float GRAVITY_MERCURY = 3.7f;
    public static final float GRAVITY_MOON = 1.6f;
    public static final float GRAVITY_NEPTUNE = 11.0f;
    public static final float GRAVITY_PLUTO = 0.6f;
    public static final float GRAVITY_SATURN = 8.96f;
    public static final float GRAVITY_SUN = 275.0f;
    public static final float GRAVITY_THE_ISLAND = 4.815162f;
    public static final float GRAVITY_URANUS = 8.69f;
    public static final float GRAVITY_VENUS = 8.87f;
    public static final float LIGHT_CLOUDY = 100.0f;
    public static final float LIGHT_FULLMOON = 0.25f;
    public static final float LIGHT_NO_MOON = 0.001f;
    public static final float LIGHT_OVERCAST = 10000.0f;
    public static final float LIGHT_SHADE = 20000.0f;
    public static final float LIGHT_SUNLIGHT = 110000.0f;
    public static final float LIGHT_SUNLIGHT_MAX = 120000.0f;
    public static final float LIGHT_SUNRISE = 400.0f;
    public static final float MAGNETIC_FIELD_EARTH_MAX = 60.0f;
    public static final float MAGNETIC_FIELD_EARTH_MIN = 30.0f;
    public static final float PRESSURE_STANDARD_ATMOSPHERE = 1013.25f;

    @Deprecated
    public static final int RAW_DATA_INDEX = 3;

    @Deprecated
    public static final int RAW_DATA_X = 3;

    @Deprecated
    public static final int RAW_DATA_Y = 4;

    @Deprecated
    public static final int RAW_DATA_Z = 5;

    @Deprecated
    public static final int SENSOR_ACCELEROMETER = 2;

    @Deprecated
    public static final int SENSOR_ALL = 127;
    public static final int SENSOR_DELAY_FASTEST = 0;
    public static final int SENSOR_DELAY_GAME = 1;
    public static final int SENSOR_DELAY_NORMAL = 3;
    public static final int SENSOR_DELAY_UI = 2;

    @Deprecated
    public static final int SENSOR_LIGHT = 16;

    @Deprecated
    public static final int SENSOR_MAGNETIC_FIELD = 8;

    @Deprecated
    public static final int SENSOR_MAX = 64;

    @Deprecated
    public static final int SENSOR_MIN = 1;

    @Deprecated
    public static final int SENSOR_ORIENTATION = 1;

    @Deprecated
    public static final int SENSOR_ORIENTATION_RAW = 128;

    @Deprecated
    public static final int SENSOR_PROXIMITY = 32;
    public static final int SENSOR_STATUS_ACCURACY_HIGH = 3;
    public static final int SENSOR_STATUS_ACCURACY_LOW = 1;
    public static final int SENSOR_STATUS_ACCURACY_MEDIUM = 2;
    public static final int SENSOR_STATUS_NO_CONTACT = -1;
    public static final int SENSOR_STATUS_UNRELIABLE = 0;

    @Deprecated
    public static final int SENSOR_TEMPERATURE = 4;

    @Deprecated
    public static final int SENSOR_TRICORDER = 64;
    public static final float STANDARD_GRAVITY = 9.80665f;
    protected static final String TAG = "SensorManager";
    private static final float[] mTempMatrix = new float[16];
    private LegacySensorManager mLegacySensorManager;
    private final SparseArray<List<Sensor>> mSensorListByType = new SparseArray<>();

    public static abstract class DynamicSensorCallback {
        public void onDynamicSensorConnected(Sensor sensor) {
        }

        public void onDynamicSensorDisconnected(Sensor sensor) {
        }
    }

    public static float getAltitude(float f2, float f3) {
        return (1.0f - ((float) Math.pow(f3 / f2, 0.19029495120048523d))) * 44330.0f;
    }

    public static void getAngleChange(float[] fArr, float[] fArr2, float[] fArr3) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        if (fArr2.length == 9) {
            f3 = fArr2[0];
            f4 = fArr2[1];
            f5 = fArr2[2];
            f6 = fArr2[3];
            f7 = fArr2[4];
            f8 = fArr2[5];
            f9 = fArr2[6];
            f10 = fArr2[7];
            f2 = fArr2[8];
        } else if (fArr2.length == 16) {
            f3 = fArr2[0];
            f4 = fArr2[1];
            f5 = fArr2[2];
            f6 = fArr2[4];
            f7 = fArr2[5];
            f8 = fArr2[6];
            f9 = fArr2[8];
            f10 = fArr2[9];
            f2 = fArr2[10];
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
            f4 = 0.0f;
            f5 = 0.0f;
            f6 = 0.0f;
            f7 = 0.0f;
            f8 = 0.0f;
            f9 = 0.0f;
            f10 = 0.0f;
        }
        if (fArr3.length == 9) {
            f18 = fArr3[0];
            f12 = fArr3[1];
            f15 = fArr3[2];
            f14 = fArr3[3];
            float f20 = fArr3[4];
            float f21 = fArr3[5];
            float f22 = fArr3[6];
            f13 = fArr3[7];
            f11 = fArr3[8];
            f19 = f22;
            f16 = f21;
            f17 = f20;
        } else if (fArr3.length == 16) {
            f18 = fArr3[0];
            float f23 = fArr3[1];
            float f24 = fArr3[2];
            float f25 = fArr3[4];
            f17 = fArr3[5];
            f16 = fArr3[6];
            float f26 = fArr3[8];
            float f27 = fArr3[9];
            f11 = fArr3[10];
            f12 = f23;
            f19 = f26;
            f13 = f27;
            f15 = f24;
            f14 = f25;
        } else {
            f11 = 0.0f;
            f12 = 0.0f;
            f13 = 0.0f;
            f14 = 0.0f;
            f15 = 0.0f;
            f16 = 0.0f;
            f17 = 0.0f;
            f18 = 0.0f;
            f19 = 0.0f;
        }
        float f28 = (f19 * f10) + (f14 * f7) + (f18 * f4);
        float f29 = (f13 * f10) + (f17 * f7) + (f12 * f4);
        float f30 = (f10 * f11) + (f7 * f16) + (f4 * f15);
        fArr[0] = (float) Math.atan2(f28, f29);
        fArr[1] = (float) Math.asin(-f30);
        fArr[2] = (float) Math.atan2(-((f9 * f11) + (f6 * f16) + (f3 * f15)), (f11 * f2) + (f16 * f8) + (f15 * f5));
    }

    private static int getDelay(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 20000;
        }
        if (i2 == 2) {
            return 66667;
        }
        if (i2 != 3) {
            return i2;
        }
        return 200000;
    }

    public static float getInclination(float[] fArr) {
        return (float) (fArr.length == 9 ? Math.atan2(fArr[5], fArr[4]) : Math.atan2(fArr[6], fArr[5]));
    }

    private LegacySensorManager getLegacySensorManager() {
        LegacySensorManager legacySensorManager;
        synchronized (this.mSensorListByType) {
            if (this.mLegacySensorManager == null) {
                Log.i(TAG, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API.");
                this.mLegacySensorManager = new LegacySensorManager(this);
            }
            legacySensorManager = this.mLegacySensorManager;
        }
        return legacySensorManager;
    }

    public static float[] getOrientation(float[] fArr, float[] fArr2) {
        if (fArr.length == 9) {
            fArr2[0] = (float) Math.atan2(fArr[1], fArr[4]);
            fArr2[1] = (float) Math.asin(-fArr[7]);
            fArr2[2] = (float) Math.atan2(-fArr[6], fArr[8]);
        } else {
            fArr2[0] = (float) Math.atan2(fArr[1], fArr[5]);
            fArr2[1] = (float) Math.asin(-fArr[9]);
            fArr2[2] = (float) Math.atan2(-fArr[8], fArr[10]);
        }
        return fArr2;
    }

    public static void getQuaternionFromVector(float[] fArr, float[] fArr2) {
        if (fArr2.length >= 4) {
            fArr[0] = fArr2[3];
        } else {
            float f2 = fArr2[0];
            float f3 = 1.0f - (f2 * f2);
            float f4 = fArr2[1];
            float f5 = f3 - (f4 * f4);
            float f6 = fArr2[2];
            float f7 = f5 - (f6 * f6);
            fArr[0] = f7;
            fArr[0] = f7 > 0.0f ? (float) Math.sqrt(f7) : 0.0f;
        }
        fArr[1] = fArr2[0];
        fArr[2] = fArr2[1];
        fArr[3] = fArr2[2];
    }

    public static boolean getRotationMatrix(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        float f2 = fArr3[0];
        float f3 = fArr3[1];
        float f4 = fArr3[2];
        float f5 = (f4 * f4) + (f3 * f3) + (f2 * f2);
        if (f5 < 0.96236104f) {
            return false;
        }
        float f6 = fArr4[0];
        float f7 = fArr4[1];
        float f8 = fArr4[2];
        float f9 = (f7 * f4) - (f8 * f3);
        float f10 = (f8 * f2) - (f6 * f4);
        float f11 = (f6 * f3) - (f7 * f2);
        float fSqrt = (float) Math.sqrt((f11 * f11) + (f10 * f10) + (f9 * f9));
        if (fSqrt < 0.1f) {
            return false;
        }
        float f12 = 1.0f / fSqrt;
        float f13 = f9 * f12;
        float f14 = f10 * f12;
        float f15 = f11 * f12;
        float fSqrt2 = 1.0f / ((float) Math.sqrt(f5));
        float f16 = f2 * fSqrt2;
        float f17 = f3 * fSqrt2;
        float f18 = fSqrt2 * f4;
        float f19 = (f17 * f15) - (f18 * f14);
        float f20 = (f18 * f13) - (f16 * f15);
        float f21 = (f16 * f14) - (f17 * f13);
        if (fArr != null) {
            if (fArr.length == 9) {
                fArr[0] = f13;
                fArr[1] = f14;
                fArr[2] = f15;
                fArr[3] = f19;
                fArr[4] = f20;
                fArr[5] = f21;
                fArr[6] = f16;
                fArr[7] = f17;
                fArr[8] = f18;
            } else if (fArr.length == 16) {
                fArr[0] = f13;
                fArr[1] = f14;
                fArr[2] = f15;
                fArr[3] = 0.0f;
                fArr[4] = f19;
                fArr[5] = f20;
                fArr[6] = f21;
                fArr[7] = 0.0f;
                fArr[8] = f16;
                fArr[9] = f17;
                fArr[10] = f18;
                fArr[11] = 0.0f;
                fArr[12] = 0.0f;
                fArr[13] = 0.0f;
                fArr[14] = 0.0f;
                fArr[15] = 1.0f;
            }
        }
        if (fArr2 == null) {
            return true;
        }
        float fSqrt3 = 1.0f / ((float) Math.sqrt((f8 * f8) + ((f7 * f7) + (f6 * f6))));
        float f22 = ((f21 * f8) + (f20 * f7) + (f19 * f6)) * fSqrt3;
        float f23 = ((f8 * f18) + (f7 * f17) + (f6 * f16)) * fSqrt3;
        if (fArr2.length == 9) {
            fArr2[0] = 1.0f;
            fArr2[1] = 0.0f;
            fArr2[2] = 0.0f;
            fArr2[3] = 0.0f;
            fArr2[4] = f22;
            fArr2[5] = f23;
            fArr2[6] = 0.0f;
            fArr2[7] = -f23;
            fArr2[8] = f22;
            return true;
        }
        if (fArr2.length != 16) {
            return true;
        }
        fArr2[0] = 1.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[4] = 0.0f;
        fArr2[5] = f22;
        fArr2[6] = f23;
        fArr2[8] = 0.0f;
        fArr2[9] = -f23;
        fArr2[10] = f22;
        fArr2[14] = 0.0f;
        fArr2[13] = 0.0f;
        fArr2[12] = 0.0f;
        fArr2[11] = 0.0f;
        fArr2[7] = 0.0f;
        fArr2[3] = 0.0f;
        fArr2[15] = 1.0f;
        return true;
    }

    public static void getRotationMatrixFromVector(float[] fArr, float[] fArr2) {
        float fSqrt;
        float f2 = fArr2[0];
        float f3 = fArr2[1];
        float f4 = fArr2[2];
        if (fArr2.length >= 4) {
            fSqrt = fArr2[3];
        } else {
            float f5 = ((1.0f - (f2 * f2)) - (f3 * f3)) - (f4 * f4);
            fSqrt = f5 > 0.0f ? (float) Math.sqrt(f5) : 0.0f;
        }
        float f6 = f2 * 2.0f;
        float f7 = f2 * f6;
        float f8 = f3 * 2.0f;
        float f9 = f8 * f3;
        float f10 = 2.0f * f4;
        float f11 = f10 * f4;
        float f12 = f3 * f6;
        float f13 = f10 * fSqrt;
        float f14 = f6 * f4;
        float f15 = f8 * fSqrt;
        float f16 = f8 * f4;
        float f17 = f6 * fSqrt;
        if (fArr.length == 9) {
            fArr[0] = (1.0f - f9) - f11;
            fArr[1] = f12 - f13;
            fArr[2] = f14 + f15;
            fArr[3] = f12 + f13;
            float f18 = 1.0f - f7;
            fArr[4] = f18 - f11;
            fArr[5] = f16 - f17;
            fArr[6] = f14 - f15;
            fArr[7] = f16 + f17;
            fArr[8] = f18 - f9;
            return;
        }
        if (fArr.length == 16) {
            fArr[0] = (1.0f - f9) - f11;
            fArr[1] = f12 - f13;
            fArr[2] = f14 + f15;
            fArr[3] = 0.0f;
            fArr[4] = f12 + f13;
            float f19 = 1.0f - f7;
            fArr[5] = f19 - f11;
            fArr[6] = f16 - f17;
            fArr[7] = 0.0f;
            fArr[8] = f14 - f15;
            fArr[9] = f16 + f17;
            fArr[10] = f19 - f9;
            fArr[11] = 0.0f;
            fArr[14] = 0.0f;
            fArr[13] = 0.0f;
            fArr[12] = 0.0f;
            fArr[15] = 1.0f;
        }
    }

    public static boolean remapCoordinateSystem(float[] fArr, int i2, int i3, float[] fArr2) {
        if (fArr == fArr2) {
            float[] fArr3 = mTempMatrix;
            synchronized (fArr3) {
                if (remapCoordinateSystemImpl(fArr, i2, i3, fArr3)) {
                    int length = fArr2.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        fArr2[i4] = fArr3[i4];
                    }
                    return true;
                }
            }
        }
        return remapCoordinateSystemImpl(fArr, i2, i3, fArr2);
    }

    private static boolean remapCoordinateSystemImpl(float[] fArr, int i2, int i3, float[] fArr2) {
        int i4;
        int length = fArr2.length;
        int i5 = 0;
        if (fArr.length != length) {
            return false;
        }
        if ((i2 & 124) != 0 || (i3 & 124) != 0) {
            return false;
        }
        int i6 = i2 & 3;
        if (i6 == 0 || (i4 = i3 & 3) == 0) {
            return false;
        }
        if (i6 == i4) {
            return false;
        }
        int i7 = i2 ^ i3;
        int i8 = i6 - 1;
        int i9 = i4 - 1;
        int i10 = (i7 & 3) - 1;
        int i11 = 3;
        if (((((i10 + 1) % 3) ^ i8) | (((i10 + 2) % 3) ^ i9)) != 0) {
            i7 ^= 128;
        }
        boolean z2 = i2 >= 128;
        boolean z3 = i3 >= 128;
        boolean z4 = i7 >= 128;
        int i12 = length == 16 ? 4 : 3;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = i13 * i12;
            while (i5 < i11) {
                if (i8 == i5) {
                    fArr2[i14 + i5] = z2 ? -fArr[i14 + 0] : fArr[i14 + 0];
                }
                if (i9 == i5) {
                    fArr2[i14 + i5] = z3 ? -fArr[i14 + 1] : fArr[i14 + 1];
                }
                if (i10 == i5) {
                    int i15 = i14 + 2;
                    fArr2[i14 + i5] = z4 ? -fArr[i15] : fArr[i15];
                }
                i5++;
                i11 = 3;
            }
            i13++;
            i5 = 0;
            i11 = 3;
        }
        if (length != 16) {
            return true;
        }
        fArr2[14] = 0.0f;
        fArr2[13] = 0.0f;
        fArr2[12] = 0.0f;
        fArr2[11] = 0.0f;
        fArr2[7] = 0.0f;
        fArr2[3] = 0.0f;
        fArr2[15] = 1.0f;
        return true;
    }

    public boolean cancelTriggerSensor(TriggerEventListener triggerEventListener, Sensor sensor) {
        return cancelTriggerSensorImpl(triggerEventListener, sensor, true);
    }

    public abstract boolean cancelTriggerSensorImpl(TriggerEventListener triggerEventListener, Sensor sensor, boolean z2);

    @Deprecated
    public int configureDirectChannel(SensorDirectChannel sensorDirectChannel, Sensor sensor, int i2) {
        return configureDirectChannelImpl(sensorDirectChannel, sensor, i2);
    }

    public abstract int configureDirectChannelImpl(SensorDirectChannel sensorDirectChannel, Sensor sensor, int i2);

    public SensorDirectChannel createDirectChannel(MemoryFile memoryFile) {
        return createDirectChannelImpl(memoryFile, null);
    }

    public abstract SensorDirectChannel createDirectChannelImpl(MemoryFile memoryFile, HardwareBuffer hardwareBuffer);

    public void destroyDirectChannel(SensorDirectChannel sensorDirectChannel) {
        destroyDirectChannelImpl(sensorDirectChannel);
    }

    public abstract void destroyDirectChannelImpl(SensorDirectChannel sensorDirectChannel);

    public boolean flush(SensorEventListener sensorEventListener) {
        return flushImpl(sensorEventListener);
    }

    public abstract boolean flushImpl(SensorEventListener sensorEventListener);

    public Sensor getDefaultSensor(int i2) {
        List<Sensor> sensorList = getSensorList(i2);
        boolean z2 = i2 == 8 || i2 == 17 || i2 == 22 || i2 == 23 || i2 == 24 || i2 == 25 || i2 == 26 || i2 == 32;
        for (Sensor sensor : sensorList) {
            if (sensor.isWakeUpSensor() == z2) {
                return sensor;
            }
        }
        return null;
    }

    public List<Sensor> getDynamicSensorList(int i2) {
        List<Sensor> fullDynamicSensorList = getFullDynamicSensorList();
        if (i2 == -1) {
            return Collections.unmodifiableList(fullDynamicSensorList);
        }
        ArrayList arrayList = new ArrayList();
        for (Sensor sensor : fullDynamicSensorList) {
            if (sensor.getType() == i2) {
                arrayList.add(sensor);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public abstract List<Sensor> getFullDynamicSensorList();

    public abstract List<Sensor> getFullSensorList();

    public List<Sensor> getSensorList(int i2) {
        List<Sensor> listUnmodifiableList;
        List<Sensor> fullSensorList = getFullSensorList();
        synchronized (this.mSensorListByType) {
            listUnmodifiableList = this.mSensorListByType.get(i2);
            if (listUnmodifiableList == null) {
                if (i2 != -1) {
                    ArrayList arrayList = new ArrayList();
                    for (Sensor sensor : fullSensorList) {
                        if (sensor.getType() == i2) {
                            arrayList.add(sensor);
                        }
                    }
                    fullSensorList = arrayList;
                }
                listUnmodifiableList = Collections.unmodifiableList(fullSensorList);
                this.mSensorListByType.append(i2, listUnmodifiableList);
            }
        }
        return listUnmodifiableList;
    }

    @Deprecated
    public int getSensors() {
        return getLegacySensorManager().getSensors();
    }

    public boolean initDataInjection(boolean z2) {
        return initDataInjectionImpl(z2);
    }

    public abstract boolean initDataInjectionImpl(boolean z2);

    public boolean injectSensorData(Sensor sensor, float[] fArr, int i2, long j2) {
        if (sensor == null) {
            throw new IllegalArgumentException("sensor cannot be null");
        }
        if (!sensor.isDataInjectionSupported()) {
            throw new IllegalArgumentException("sensor does not support data injection");
        }
        if (fArr == null) {
            throw new IllegalArgumentException("sensor data cannot be null");
        }
        int maxLengthValuesArray = Sensor.getMaxLengthValuesArray(sensor, 23);
        if (fArr.length == maxLengthValuesArray) {
            if (i2 < -1 || i2 > 3) {
                throw new IllegalArgumentException("Invalid sensor accuracy");
            }
            if (j2 > 0) {
                return injectSensorDataImpl(sensor, fArr, i2, j2);
            }
            throw new IllegalArgumentException("Negative or zero sensor timestamp");
        }
        throw new IllegalArgumentException("Wrong number of values for sensor " + sensor.getName() + " actual=" + fArr.length + " expected=" + maxLengthValuesArray);
    }

    public abstract boolean injectSensorDataImpl(Sensor sensor, float[] fArr, int i2, long j2);

    public boolean isDynamicSensorDiscoverySupported() {
        return getSensorList(32).size() > 0;
    }

    public void registerDynamicSensorCallback(DynamicSensorCallback dynamicSensorCallback) {
        registerDynamicSensorCallback(dynamicSensorCallback, null);
    }

    public abstract void registerDynamicSensorCallbackImpl(DynamicSensorCallback dynamicSensorCallback, Handler handler);

    @Deprecated
    public boolean registerListener(SensorListener sensorListener, int i2) {
        return registerListener(sensorListener, i2, 3);
    }

    public abstract boolean registerListenerImpl(SensorEventListener sensorEventListener, Sensor sensor, int i2, Handler handler, int i3, int i4);

    public boolean requestTriggerSensor(TriggerEventListener triggerEventListener, Sensor sensor) {
        return requestTriggerSensorImpl(triggerEventListener, sensor);
    }

    public abstract boolean requestTriggerSensorImpl(TriggerEventListener triggerEventListener, Sensor sensor);

    public boolean setOperationParameter(SensorAdditionalInfo sensorAdditionalInfo) {
        return setOperationParameterImpl(sensorAdditionalInfo);
    }

    public abstract boolean setOperationParameterImpl(SensorAdditionalInfo sensorAdditionalInfo);

    public void unregisterDynamicSensorCallback(DynamicSensorCallback dynamicSensorCallback) {
        unregisterDynamicSensorCallbackImpl(dynamicSensorCallback);
    }

    public abstract void unregisterDynamicSensorCallbackImpl(DynamicSensorCallback dynamicSensorCallback);

    @Deprecated
    public void unregisterListener(SensorListener sensorListener) {
        unregisterListener(sensorListener, 255);
    }

    public abstract void unregisterListenerImpl(SensorEventListener sensorEventListener, Sensor sensor);

    public SensorDirectChannel createDirectChannel(HardwareBuffer hardwareBuffer) {
        return createDirectChannelImpl(null, hardwareBuffer);
    }

    public void registerDynamicSensorCallback(DynamicSensorCallback dynamicSensorCallback, Handler handler) {
        registerDynamicSensorCallbackImpl(dynamicSensorCallback, handler);
    }

    @Deprecated
    public boolean registerListener(SensorListener sensorListener, int i2, int i3) {
        return getLegacySensorManager().registerListener(sensorListener, i2, i3);
    }

    @Deprecated
    public void unregisterListener(SensorListener sensorListener, int i2) {
        getLegacySensorManager().unregisterListener(sensorListener, i2);
    }

    public boolean registerListener(SensorEventListener sensorEventListener, Sensor sensor, int i2) {
        return registerListener(sensorEventListener, sensor, i2, (Handler) null);
    }

    public void unregisterListener(SensorEventListener sensorEventListener, Sensor sensor) {
        if (sensorEventListener == null || sensor == null) {
            return;
        }
        unregisterListenerImpl(sensorEventListener, sensor);
    }

    public Sensor getDefaultSensor(int i2, boolean z2) {
        for (Sensor sensor : getSensorList(i2)) {
            if (sensor.isWakeUpSensor() == z2) {
                return sensor;
            }
        }
        return null;
    }

    public boolean registerListener(SensorEventListener sensorEventListener, Sensor sensor, int i2, int i3) {
        return registerListenerImpl(sensorEventListener, sensor, getDelay(i2), null, i3, 0);
    }

    public void unregisterListener(SensorEventListener sensorEventListener) {
        if (sensorEventListener == null) {
            return;
        }
        unregisterListenerImpl(sensorEventListener, null);
    }

    public boolean registerListener(SensorEventListener sensorEventListener, Sensor sensor, int i2, Handler handler) {
        return registerListenerImpl(sensorEventListener, sensor, getDelay(i2), handler, 0, 0);
    }

    public boolean registerListener(SensorEventListener sensorEventListener, Sensor sensor, int i2, int i3, Handler handler) {
        return registerListenerImpl(sensorEventListener, sensor, getDelay(i2), handler, i3, 0);
    }
}
