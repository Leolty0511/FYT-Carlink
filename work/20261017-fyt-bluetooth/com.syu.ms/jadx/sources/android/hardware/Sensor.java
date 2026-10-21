package android.hardware;

/* JADX INFO: loaded from: classes.dex */
public final class Sensor {
    public static int REPORTING_MODE_CONTINUOUS = 1;
    public static int REPORTING_MODE_ONE_SHOT = 3;
    public static int REPORTING_MODE_ON_CHANGE = 2;
    public static final int TYPE_ACCELEROMETER = 1;
    public static final int TYPE_ALL = -1;
    public static final int TYPE_AMBIENT_TEMPERATURE = 13;
    public static final int TYPE_GAME_ROTATION_VECTOR = 15;
    public static final int TYPE_GEOMAGNETIC_ROTATION_VECTOR = 20;
    public static final int TYPE_GRAVITY = 9;
    public static final int TYPE_GYROSCOPE = 4;
    public static final int TYPE_GYROSCOPE_UNCALIBRATED = 16;
    public static final int TYPE_LIGHT = 5;
    public static final int TYPE_LINEAR_ACCELERATION = 10;
    public static final int TYPE_MAGNETIC_FIELD = 2;
    public static final int TYPE_MAGNETIC_FIELD_UNCALIBRATED = 14;

    @Deprecated
    public static final int TYPE_ORIENTATION = 3;
    public static final int TYPE_PRESSURE = 6;
    public static final int TYPE_PROXIMITY = 8;
    public static final int TYPE_RELATIVE_HUMIDITY = 12;
    public static final int TYPE_ROTATION_VECTOR = 11;
    public static final int TYPE_SIGNIFICANT_MOTION = 17;
    public static final int TYPE_STEP_COUNTER = 19;
    public static final int TYPE_STEP_DETECTOR = 18;

    @Deprecated
    public static final int TYPE_TEMPERATURE = 7;
    private static final int[] sSensorReportingModes = {0, 0, 1, 3, 1, 3, 1, 3, 1, 3, 2, 3, 1, 3, 2, 3, 2, 3, 1, 3, 1, 3, 1, 5, 2, 3, 2, 3, 1, 6, 1, 4, 1, 6, 3, 1, 2, 1, 2, 1, 1, 5};
    private int mFifoMaxEventCount;
    private int mFifoReservedEventCount;
    private int mHandle;
    private float mMaxRange;
    private int mMinDelay;
    private String mName;
    private float mPower;
    private float mResolution;
    private int mType;
    private String mVendor;
    private int mVersion;

    public static int getMaxLengthValuesArray(Sensor sensor, int i2) {
        int i3 = sensor.mType;
        if (i3 == 11 && i2 <= 17) {
            return 3;
        }
        int i4 = (i3 * 2) + 1;
        int[] iArr = sSensorReportingModes;
        if (i4 >= iArr.length) {
            return 16;
        }
        return iArr[i4];
    }

    public static int getReportingMode(Sensor sensor) {
        int i2 = sensor.mType * 2;
        int[] iArr = sSensorReportingModes;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        int i3 = sensor.mMinDelay;
        if (i3 == 0) {
            return REPORTING_MODE_ON_CHANGE;
        }
        return i3 < 0 ? REPORTING_MODE_ONE_SHOT : REPORTING_MODE_CONTINUOUS;
    }

    public int getFifoMaxEventCount() {
        return this.mFifoMaxEventCount;
    }

    public int getFifoReservedEventCount() {
        return this.mFifoReservedEventCount;
    }

    public int getHandle() {
        return this.mHandle;
    }

    public float getMaximumRange() {
        return this.mMaxRange;
    }

    public int getMinDelay() {
        return this.mMinDelay;
    }

    public String getName() {
        return this.mName;
    }

    public float getPower() {
        return this.mPower;
    }

    public float getResolution() {
        return this.mResolution;
    }

    public int getType() {
        return this.mType;
    }

    public String getVendor() {
        return this.mVendor;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public void setRange(float f2, float f3) {
        this.mMaxRange = f2;
        this.mResolution = f3;
    }

    public String toString() {
        return "{Sensor name=\"" + this.mName + "\", vendor=\"" + this.mVendor + "\", version=" + this.mVersion + ", type=" + this.mType + ", maxRange=" + this.mMaxRange + ", resolution=" + this.mResolution + ", power=" + this.mPower + ", minDelay=" + this.mMinDelay + "}";
    }
}
