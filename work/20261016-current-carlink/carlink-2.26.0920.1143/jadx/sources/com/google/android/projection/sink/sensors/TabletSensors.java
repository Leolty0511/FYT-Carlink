package com.google.android.projection.sink.sensors;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.projection.sink.settings.Settings;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class TabletSensors extends SensorCollectorBase {
    private static final int CONSECUTIVE_CHANGES_TO_TRIGGER_DAY_NIGHT_MODE_CHANGE = 10;
    private static final float NIGHT_MODE_HIGH = 60.000004f;
    private static final float NIGHT_MODE_LOW = 40.0f;
    private static final String TAG = "AHU.TabletSensors";
    private int mAzimuth;
    private final Context mContext;
    private final Display mDisplay;
    private Handler mHandler;
    protected Location mLocation;
    private boolean mNightMode;
    private boolean mRecentNightMode;
    private final android.hardware.SensorManager mSensorManager;
    private TwilightCalculator mTc;
    private final boolean mUseCompass;
    private final boolean mUseSunCalculator;
    private final float[] mGravity = new float[3];
    private final float[] mMagneticField = new float[3];
    private final float[] mRotationSpeed = new float[3];
    private final float[] mRotationMatrix = new float[9];
    private final float[] mInclinationMatrix = new float[9];
    private final float[] mOrientation = new float[3];
    private int mPitch = Integer.MIN_VALUE;
    private int mRoll = Integer.MIN_VALUE;
    private int mDayNightModeCurrentModeAccumulated = 0;
    private float mTemperature = Float.NaN;
    private float mPressure = Float.NaN;
    private final SensorEventListener mSensorEventListener = new SensorEventListener() { // from class: com.google.android.projection.sink.sensors.TabletSensors.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int type = sensorEvent.sensor.getType();
            if (type == 1) {
                TabletSensors.this.mGravity[0] = sensorEvent.values[0];
                TabletSensors.this.mGravity[1] = sensorEvent.values[1];
                TabletSensors.this.mGravity[2] = sensorEvent.values[2];
                TabletSensors.this.updateCompass();
                return;
            }
            if (type == 2) {
                TabletSensors.this.mMagneticField[0] = sensorEvent.values[0];
                TabletSensors.this.mMagneticField[1] = sensorEvent.values[1];
                TabletSensors.this.mMagneticField[2] = sensorEvent.values[2];
                TabletSensors.this.updateCompass();
                return;
            }
            if (type == 4) {
                TabletSensors.this.mRotationSpeed[0] = sensorEvent.values[0];
                TabletSensors.this.mRotationSpeed[1] = sensorEvent.values[1];
                TabletSensors.this.mRotationSpeed[2] = sensorEvent.values[2];
            } else if (type == 6) {
                TabletSensors.this.mPressure = sensorEvent.values[0];
            } else {
                if (type != 13) {
                    return;
                }
                TabletSensors.this.mTemperature = sensorEvent.values[0];
            }
        }
    };

    public class SunCalculatorRunnable implements Runnable {
        private SunCalculatorRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            TabletSensors.this.mTc.calculateTwilight(jCurrentTimeMillis, TabletSensors.this.mLocation.getLatitude(), TabletSensors.this.mLocation.getLongitude());
            TabletSensors tabletSensors = TabletSensors.this;
            tabletSensors.mNightMode = tabletSensors.mTc.mState == 1;
            long j2 = (TabletSensors.this.mNightMode ? TabletSensors.this.mTc.mSunrise : TabletSensors.this.mTc.mSunset) - jCurrentTimeMillis;
            Log.i(TabletSensors.TAG, "Day/Night changing in " + (j2 / 60000) + " minutes");
            TabletSensors.this.mHandler.postDelayed(this, j2 + 60000);
        }
    }

    public TabletSensors(Context context) {
        this.mContext = context;
        this.mDisplay = ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
        this.mSensorManager = (android.hardware.SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
        Settings settings = new Settings(context);
        this.mUseCompass = settings.isUseTabletCompassEnabled();
        this.mUseSunCalculator = settings.useSunCalculator();
    }

    private static float getVectorNorm(float... fArr) {
        float f2 = 0.0f;
        for (float f3 : fArr) {
            f2 += f3 * f3;
        }
        return (float) Math.sqrt(f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCompass() {
        int i2;
        double vectorNorm = getVectorNorm(this.mGravity);
        if (vectorNorm > 10.787315177917481d || vectorNorm < 8.825985145568849d || !android.hardware.SensorManager.getRotationMatrix(this.mRotationMatrix, this.mInclinationMatrix, this.mGravity, this.mMagneticField)) {
            return;
        }
        android.hardware.SensorManager.getOrientation(this.mRotationMatrix, this.mOrientation);
        int iRound = (int) Math.round(Math.toDegrees(this.mOrientation[0]));
        int iRound2 = (int) Math.round(Math.toDegrees(this.mOrientation[1]));
        int iRound3 = (int) Math.round(Math.toDegrees(this.mOrientation[2]));
        boolean z2 = this.mDisplay.getRotation() == 3;
        boolean z3 = Math.abs(iRound3) < 30;
        int i3 = z2 ? iRound - 90 : iRound + 90;
        int i4 = z3 ? 0 : 90;
        if (z2) {
            i2 = i4 - iRound3;
        } else {
            i2 = i4 + iRound3;
            iRound2 = -iRound2;
        }
        this.mAzimuth = ((i3 % 360) + 360) % 360;
        this.mPitch = i2;
        this.mRoll = iRound2;
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void discoverSensorsImpl(Set<Integer> set) {
        this.mSensorManager.getDefaultSensor(5);
        Sensor defaultSensor = this.mSensorManager.getDefaultSensor(1);
        Sensor defaultSensor2 = this.mSensorManager.getDefaultSensor(2);
        Sensor defaultSensor3 = this.mSensorManager.getDefaultSensor(4);
        Sensor defaultSensor4 = this.mSensorManager.getDefaultSensor(13);
        Sensor defaultSensor5 = this.mSensorManager.getDefaultSensor(6);
        set.add(10);
        if (defaultSensor != null) {
            set.add(19);
        }
        if (defaultSensor != null && defaultSensor2 != null && this.mUseCompass) {
            set.add(2);
        }
        if (defaultSensor3 != null) {
            set.add(20);
        }
        if (defaultSensor4 == null && defaultSensor5 == null) {
            return;
        }
        set.add(11);
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void registerSensorsImpl() {
        if (isHandled(10)) {
            if (this.mUseSunCalculator) {
                Location lastKnownLocation = ((LocationManager) this.mContext.getSystemService("location")).getLastKnownLocation("gps");
                this.mLocation = lastKnownLocation;
                if (lastKnownLocation == null) {
                    Log.i(TAG, "Unable to get location, using 120W/34N");
                    Location location = new Location("fake");
                    this.mLocation = location;
                    location.setLatitude(34.0d);
                    this.mLocation.setLongitude(-120.0d);
                }
                this.mTc = new TwilightCalculator();
                Handler handler = new Handler(this.mContext.getMainLooper());
                this.mHandler = handler;
                handler.post(new SunCalculatorRunnable());
            } else {
                android.hardware.SensorManager sensorManager = this.mSensorManager;
                sensorManager.registerListener(this.mSensorEventListener, sensorManager.getDefaultSensor(5), 3);
            }
        }
        if (isHandled(19)) {
            android.hardware.SensorManager sensorManager2 = this.mSensorManager;
            sensorManager2.registerListener(this.mSensorEventListener, sensorManager2.getDefaultSensor(1), 3);
        }
        if (isHandled(2)) {
            android.hardware.SensorManager sensorManager3 = this.mSensorManager;
            sensorManager3.registerListener(this.mSensorEventListener, sensorManager3.getDefaultSensor(2), 3);
        }
        if (isHandled(20)) {
            android.hardware.SensorManager sensorManager4 = this.mSensorManager;
            sensorManager4.registerListener(this.mSensorEventListener, sensorManager4.getDefaultSensor(4), 3);
        }
        if (isHandled(11)) {
            Sensor defaultSensor = this.mSensorManager.getDefaultSensor(13);
            Sensor defaultSensor2 = this.mSensorManager.getDefaultSensor(6);
            if (defaultSensor != null) {
                this.mSensorManager.registerListener(this.mSensorEventListener, defaultSensor, 3);
            }
            if (defaultSensor2 != null) {
                this.mSensorManager.registerListener(this.mSensorEventListener, defaultSensor2, 3);
            }
        }
    }

    public void reportAvailable(boolean z2) {
        this.mRecentNightMode = z2;
        if (z2 != this.mNightMode) {
            this.mNightMode = z2;
            reportAvailable(10);
        }
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public boolean sendUpdateImpl(SensorSinkWrapper sensorSinkWrapper, int i2) {
        if (i2 == 2) {
            int i3 = this.mAzimuth;
            int i4 = this.mPitch;
            boolean z2 = i4 != Integer.MIN_VALUE;
            int i5 = this.mRoll;
            sensorSinkWrapper.reportCompassData(i3, z2, i4, i5 != Integer.MIN_VALUE, i5);
            return true;
        }
        if (i2 == 19) {
            float[] fArr = this.mGravity;
            sensorSinkWrapper.reportAccelerometerData(true, fArr[0], true, fArr[1], true, fArr[2]);
            return true;
        }
        if (i2 == 20) {
            float[] fArr2 = this.mRotationSpeed;
            sensorSinkWrapper.reportGyroscopeData(true, fArr2[0], true, fArr2[1], true, fArr2[2]);
            return true;
        }
        if (i2 == 10) {
            sensorSinkWrapper.reportNightModeData(this.mNightMode);
            return true;
        }
        if (i2 != 11) {
            throw new RuntimeException();
        }
        sensorSinkWrapper.reportEnvironmentData(this.mTemperature, this.mPressure);
        return true;
    }

    @Override // com.google.android.projection.sink.sensors.SensorCollectorBase
    public void unregisterSensorsImpl() {
        this.mSensorManager.unregisterListener(this.mSensorEventListener);
    }
}
