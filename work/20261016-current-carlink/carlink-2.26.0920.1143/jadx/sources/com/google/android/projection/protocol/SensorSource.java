package com.google.android.projection.protocol;

import android.location.Location;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.EnergyModel;
import com.google.android.projection.proto.Protos;
import com.google.protobuf.ByteString;

/* JADX INFO: loaded from: classes3.dex */
public class SensorSource implements CarServiceProvider {
    public static final int GEAR_1 = 1;
    public static final int GEAR_10 = 10;
    public static final int GEAR_2 = 2;
    public static final int GEAR_3 = 3;
    public static final int GEAR_4 = 4;
    public static final int GEAR_5 = 5;
    public static final int GEAR_6 = 6;
    public static final int GEAR_7 = 7;
    public static final int GEAR_8 = 8;
    public static final int GEAR_9 = 9;
    public static final int GEAR_DRIVE = 100;
    public static final int GEAR_NEUTRAL = 0;
    public static final int GEAR_PARK = 101;
    public static final int GEAR_REVERSE = 102;
    public static final int LOCATION_CHARACTERIZATION_ACCELEROMETER_FUSION = 4;
    public static final int LOCATION_CHARACTERIZATION_CAR_SPEED_FUSION = 64;
    public static final int LOCATION_CHARACTERIZATION_COMPASS_FUSION = 8;
    public static final int LOCATION_CHARACTERIZATION_DEAD_RECKONED = 128;
    public static final int LOCATION_CHARACTERIZATION_GYROSCOPE_FUSION = 2;
    public static final int LOCATION_CHARACTERIZATION_PRIOR_LOCATIONS = 1;
    public static final int LOCATION_CHARACTERIZATION_RAW_GPS_ONLY = 256;
    public static final int LOCATION_CHARACTERIZATION_STEERING_ANGLE_FUSION = 32;
    public static final int LOCATION_CHARACTERIZATION_WHEEL_SPEED_FUSION = 16;
    private static final int NOT_SET = Integer.MIN_VALUE;
    public static final int SENSOR_TYPE_ACCELEROMETER_DATA = 19;
    public static final int SENSOR_TYPE_COMPASS = 2;
    public static final int SENSOR_TYPE_DEAD_RECKONING_DATA = 14;
    public static final int SENSOR_TYPE_DOOR_DATA = 16;
    public static final int SENSOR_TYPE_DRIVING_STATUS = 13;
    public static final int SENSOR_TYPE_ENVIRONMENT = 11;
    public static final int SENSOR_TYPE_FUEL = 6;
    public static final int SENSOR_TYPE_GEAR = 8;
    public static final int SENSOR_TYPE_GPS_SATELLITE_DATA = 21;
    public static final int SENSOR_TYPE_GYROSCOPE_DATA = 20;
    public static final int SENSOR_TYPE_HVAC = 12;
    public static final int SENSOR_TYPE_LIGHT_DATA = 17;
    public static final int SENSOR_TYPE_LOCATION = 1;
    public static final int SENSOR_TYPE_NIGHT_MODE = 10;
    public static final int SENSOR_TYPE_OBDII_DIAGNOSTIC_CODE = 9;
    public static final int SENSOR_TYPE_ODOMETER = 5;
    public static final int SENSOR_TYPE_PARKING_BRAKE = 7;
    public static final int SENSOR_TYPE_PASSENGER_DATA = 15;
    public static final int SENSOR_TYPE_RPM = 4;
    public static final int SENSOR_TYPE_SPEED = 3;
    public static final int SENSOR_TYPE_TIRE_PRESSURE_DATA = 18;
    public static final String TAG = "AHU.SENSOR";
    private final int[] mDefaultSupportedSensors;
    private final int[] mEvConnectorTypes;
    private final int[] mFuelTypes;
    private final int mLocationCharacterization;

    @Nullable
    private Protos.LocationData mLocationOverride;

    @UsedByNative
    private long mNativeSensorSource;

    @Nullable
    private Protos.AccelerometerData mOverrideAccelerometerData;

    @Nullable
    private ByteString mOverrideDiagnostics;

    @Nullable
    private Protos.EnvironmentData mOverrideEnvironmentData;

    @Nullable
    private Protos.FuelData mOverrideFuelLevel;

    @Nullable
    private Protos.Gear mOverrideGear;

    @Nullable
    private Protos.GpsSatelliteData mOverrideGpsSatelliteData;

    @Nullable
    private Protos.GyroscopeData mOverrideGyroscopeData;

    @Nullable
    private Protos.HvacData mOverrideHvacData;

    @Nullable
    private Boolean mOverrideNightMode;

    @Nullable
    private Boolean mOverrideParkingBrake;
    private final int[] mSupportedSensors;
    private int mOverrideSpeedE3 = Integer.MIN_VALUE;
    private int mOverrideBearingE6 = Integer.MIN_VALUE;
    private int mOverridePitchE6 = Integer.MIN_VALUE;
    private int mOverrideRollE6 = Integer.MIN_VALUE;
    private int mOverrideRpmE3 = Integer.MIN_VALUE;
    private int mOverrideKmsE1 = Integer.MIN_VALUE;
    private int mOverrideDrivingStatus = Integer.MIN_VALUE;

    public SensorSource(int[] iArr, int i2, Protos.FuelType[] fuelTypeArr, Protos.EvConnectorType[] evConnectorTypeArr) {
        int[] iArr2 = {1, 3, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 19, 20, 21};
        this.mDefaultSupportedSensors = iArr2;
        if (iArr == null) {
            this.mSupportedSensors = iArr2;
        } else {
            this.mSupportedSensors = iArr;
        }
        this.mLocationCharacterization = i2;
        this.mFuelTypes = new int[fuelTypeArr.length];
        for (int i3 = 0; i3 < fuelTypeArr.length; i3++) {
            this.mFuelTypes[i3] = fuelTypeArr[i3].getNumber();
        }
        this.mEvConnectorTypes = new int[evConnectorTypeArr.length];
        for (int i4 = 0; i4 < evConnectorTypeArr.length; i4++) {
            this.mEvConnectorTypes[i4] = evConnectorTypeArr[i4].getNumber();
        }
    }

    @Nullable
    private static int[] convertFloatArray(@Nullable float[] fArr, float f2) {
        if (fArr == null) {
            return null;
        }
        int[] iArr = new int[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            iArr[i2] = Math.round(fArr[i2] * f2);
        }
        return iArr;
    }

    private native int nativeInit(int i2, long j2, int i3, int[] iArr, int[] iArr2);

    private native void nativeRegisterSensor(int i2);

    private native int nativeReportAccelerometerData(boolean z2, int i2, boolean z3, int i3, boolean z4, int i4);

    private native int nativeReportCompassData(int i2, boolean z2, int i3, boolean z3, int i4);

    private native int nativeReportDeadReckoningData(boolean z2, int i2, int[] iArr);

    private native int nativeReportDiagnosticsData(byte[] bArr);

    private native int nativeReportDoorData(boolean z2, boolean z3, boolean z4, boolean z5, boolean[] zArr);

    private native int nativeReportDrivingStatusData(int i2);

    private native int nativeReportEnvironmentData(boolean z2, int i2, boolean z3, int i3, boolean z4, int i4);

    private native int nativeReportFuelData(boolean z2, int i2, boolean z3, int i3, boolean z4, boolean z5);

    private native int nativeReportGearData(int i2);

    private native int nativeReportGpsSatelliteData(int i2, boolean z2, int i3, @Nullable int[] iArr, @Nullable int[] iArr2, @Nullable boolean[] zArr, @Nullable int[] iArr3, @Nullable int[] iArr4);

    private native int nativeReportGyroscopeData(boolean z2, int i2, boolean z3, int i3, boolean z4, int i4);

    private native int nativeReportHvacData(boolean z2, int i2, boolean z3, int i3);

    private native int nativeReportLightData(boolean z2, int i2, boolean z3, int i3, boolean z4, boolean z5);

    private native int nativeReportLocation(long j2, int i2, int i3, boolean z2, int i4, boolean z3, int i5, boolean z4, int i6, boolean z5, int i7);

    private native int nativeReportNightModeData(boolean z2);

    private native int nativeReportOdometerData(int i2, boolean z2, int i3);

    private native int nativeReportParkingBrakeData(boolean z2);

    private native int nativeReportPassengerData(boolean z2);

    private native int nativeReportRpmData(int i2);

    private native int nativeReportSensorError(int i2, int i3);

    private native int nativeReportSpeedData(int i2, boolean z2, boolean z3, boolean z4, int i3);

    private native int nativeReportTirePressureData(int[] iArr);

    private native int nativeReportTollCardData(boolean z2);

    private native int nativeReportTrailerData(byte[] bArr);

    private native int nativeReportVehicleEnergyModelData(byte[] bArr);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        int iNativeInit = nativeInit(i2, j2, this.mLocationCharacterization, this.mFuelTypes, this.mEvConnectorTypes);
        if (iNativeInit != 0) {
            return false;
        }
        for (int i3 : this.mSupportedSensors) {
            nativeRegisterSensor(i3);
        }
        return true;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeSensorSource;
    }

    public void injectForTest(Protos.SensorBatch sensorBatch) {
        if (sensorBatch.getLocationDataCount() == 0) {
            this.mLocationOverride = null;
        } else {
            this.mLocationOverride = sensorBatch.getLocationData(0);
            reportLocation(null);
        }
        if (sensorBatch.getSpeedDataCount() == 0 || !sensorBatch.getSpeedData(0).hasSpeedE3()) {
            this.mOverrideSpeedE3 = Integer.MIN_VALUE;
        } else {
            this.mOverrideSpeedE3 = sensorBatch.getSpeedData(0).getSpeedE3();
        }
        if (sensorBatch.getCompassDataCount() == 0 || !sensorBatch.getCompassData(0).hasBearingE6()) {
            this.mOverrideBearingE6 = Integer.MIN_VALUE;
            this.mOverridePitchE6 = Integer.MIN_VALUE;
            this.mOverrideRollE6 = Integer.MIN_VALUE;
        } else {
            this.mOverrideBearingE6 = sensorBatch.getCompassData(0).getBearingE6();
            this.mOverridePitchE6 = Integer.MIN_VALUE;
            this.mOverrideRollE6 = Integer.MIN_VALUE;
            if (sensorBatch.getCompassData(0).hasPitchE6()) {
                this.mOverridePitchE6 = sensorBatch.getCompassData(0).getPitchE6();
            }
            if (sensorBatch.getCompassData(0).hasRollE6()) {
                this.mOverrideRollE6 = sensorBatch.getCompassData(0).getRollE6();
            }
        }
        if (sensorBatch.getRpmDataCount() == 0 || !sensorBatch.getRpmData(0).hasRpmE3()) {
            this.mOverrideRpmE3 = Integer.MIN_VALUE;
        } else {
            this.mOverrideRpmE3 = sensorBatch.getRpmData(0).getRpmE3();
        }
        if (sensorBatch.getOdometerDataCount() == 0 || !sensorBatch.getOdometerData(0).hasKmsE1()) {
            this.mOverrideKmsE1 = Integer.MIN_VALUE;
        } else {
            this.mOverrideKmsE1 = sensorBatch.getOdometerData(0).getKmsE1();
        }
        if (sensorBatch.getFuelDataCount() == 0) {
            this.mOverrideFuelLevel = null;
        } else {
            this.mOverrideFuelLevel = sensorBatch.getFuelData(0);
        }
        if (sensorBatch.getParkingBrakeDataCount() == 0 || !sensorBatch.getParkingBrakeData(0).hasParkingBrake()) {
            this.mOverrideParkingBrake = null;
        } else {
            this.mOverrideParkingBrake = Boolean.valueOf(sensorBatch.getParkingBrakeData(0).getParkingBrake());
        }
        if (sensorBatch.getGearDataCount() == 0 || !sensorBatch.getGearData(0).hasGear()) {
            this.mOverrideGear = null;
        } else {
            this.mOverrideGear = sensorBatch.getGearData(0).getGear();
        }
        if (sensorBatch.getDiagnosticsDataCount() == 0 || !sensorBatch.getDiagnosticsData(0).hasDtc()) {
            this.mOverrideDiagnostics = null;
        } else {
            this.mOverrideDiagnostics = sensorBatch.getDiagnosticsData(0).getDtc();
        }
        if (sensorBatch.getNightModeDataCount() == 0 || !sensorBatch.getNightModeData(0).hasNightMode()) {
            this.mOverrideNightMode = null;
        } else {
            this.mOverrideNightMode = Boolean.valueOf(sensorBatch.getNightModeData(0).getNightMode());
        }
        if (sensorBatch.getEnvironmentDataCount() == 0) {
            this.mOverrideEnvironmentData = null;
        } else {
            this.mOverrideEnvironmentData = sensorBatch.getEnvironmentData(0);
        }
        if (sensorBatch.getHvacDataCount() == 0) {
            this.mOverrideHvacData = null;
        } else {
            this.mOverrideHvacData = sensorBatch.getHvacData(0);
        }
        if (sensorBatch.getDrivingStatusDataCount() == 0 || !sensorBatch.getDrivingStatusData(0).hasStatus()) {
            this.mOverrideDrivingStatus = Integer.MIN_VALUE;
        } else {
            this.mOverrideDrivingStatus = sensorBatch.getDrivingStatusData(0).getStatus();
        }
        if (sensorBatch.getAccelerometerDataCount() == 0) {
            this.mOverrideAccelerometerData = null;
        } else {
            this.mOverrideAccelerometerData = sensorBatch.getAccelerometerData(0);
        }
        if (sensorBatch.getGyroscopeDataCount() == 0) {
            this.mOverrideGyroscopeData = null;
        } else {
            this.mOverrideGyroscopeData = sensorBatch.getGyroscopeData(0);
        }
        if (sensorBatch.getGpsSatelliteDataCount() == 0) {
            this.mOverrideGpsSatelliteData = null;
        } else {
            this.mOverrideGpsSatelliteData = sensorBatch.getGpsSatelliteData(0);
        }
    }

    public void overrideNightModeData(Boolean bool) {
        this.mOverrideNightMode = bool;
        if (bool != null) {
            nativeReportNightModeData(bool.booleanValue());
        }
    }

    public void reportAccelerometerData(boolean z2, float f2, boolean z3, float f3, boolean z4, float f4) {
        float accelerationXE3 = (float) (((double) f2) * 1000.0d);
        float accelerationYE3 = (float) (((double) f3) * 1000.0d);
        float accelerationZE3 = (float) (((double) f4) * 1000.0d);
        Protos.AccelerometerData accelerometerData = this.mOverrideAccelerometerData;
        if (accelerometerData != null) {
            z2 = accelerometerData.hasAccelerationXE3();
            if (z2) {
                accelerationXE3 = this.mOverrideAccelerometerData.getAccelerationXE3();
            }
            z3 = this.mOverrideAccelerometerData.hasAccelerationYE3();
            if (z3) {
                accelerationYE3 = this.mOverrideAccelerometerData.getAccelerationYE3();
            }
            z4 = this.mOverrideAccelerometerData.hasAccelerationZE3();
            if (z4) {
                accelerationZE3 = this.mOverrideAccelerometerData.getAccelerationZE3();
            }
        }
        nativeReportAccelerometerData(z2, (int) accelerationXE3, z3, (int) accelerationYE3, z4, (int) accelerationZE3);
    }

    public void reportCompassData(int i2, boolean z2, int i3, boolean z3, int i4) {
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        int i7;
        int i8 = (int) (((double) i2) * 1000000.0d);
        int i9 = (int) (((double) i3) * 1000000.0d);
        int i10 = (int) (((double) i4) * 1000000.0d);
        int i11 = this.mOverrideBearingE6;
        if (i11 != Integer.MIN_VALUE) {
            int i12 = this.mOverridePitchE6;
            boolean z6 = i12 != Integer.MIN_VALUE;
            int i13 = this.mOverrideRollE6;
            z5 = i13 != Integer.MIN_VALUE;
            i6 = i12;
            z4 = z6;
            i7 = i13;
            i5 = i11;
        } else {
            i5 = i8;
            z4 = z2;
            i6 = i9;
            z5 = z3;
            i7 = i10;
        }
        nativeReportCompassData(i5, z4, i6, z5, i7);
    }

    public void reportDeadReckoningData(boolean z2, double d2, float[] fArr) {
        double d3 = d2 * 10.0d;
        int length = fArr != null ? fArr.length : 0;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = (int) Math.round(((double) fArr[i2]) * 1000.0d);
        }
        nativeReportDeadReckoningData(z2, (int) d3, iArr);
    }

    public void reportDiagnosticsData(byte[] bArr) {
        ByteString byteString = this.mOverrideDiagnostics;
        if (byteString != null) {
            bArr = byteString.toByteArray();
        }
        nativeReportDiagnosticsData(bArr);
    }

    public void reportDoorData(boolean z2, boolean z3, boolean z4, boolean z5, boolean[] zArr) {
        nativeReportDoorData(z2, z3, z4, z5, zArr);
    }

    public void reportDrivingStatusData(int i2) {
        int i3 = this.mOverrideDrivingStatus;
        if (i3 != Integer.MIN_VALUE) {
            i2 = i3;
        }
        nativeReportDrivingStatusData(i2);
    }

    public void reportEnvironmentData(boolean z2, float f2, boolean z3, float f3, boolean z4, int i2) {
        int iRound = (int) Math.round(((double) f2) * 1000.0d);
        int iRound2 = (int) Math.round(((double) f3) * 1000.0d);
        Protos.EnvironmentData environmentData = this.mOverrideEnvironmentData;
        if (environmentData != null) {
            z2 = environmentData.hasTemperatureE3();
            if (z2) {
                iRound = this.mOverrideEnvironmentData.getTemperatureE3();
            }
            z3 = this.mOverrideEnvironmentData.hasPressureE3();
            if (z3) {
                iRound2 = this.mOverrideEnvironmentData.getPressureE3();
            }
            z4 = this.mOverrideEnvironmentData.hasRain();
            if (z4) {
                iRound2 = this.mOverrideEnvironmentData.getRain();
            }
        }
        nativeReportEnvironmentData(z2, iRound, z3, iRound2, z4, i2);
    }

    public void reportFuelData(boolean z2, int i2, boolean z3, int i3, boolean z4, boolean z5) {
        Protos.FuelData fuelData = this.mOverrideFuelLevel;
        if (fuelData != null) {
            z2 = fuelData.hasFuelLevel();
            if (z2) {
                i2 = this.mOverrideFuelLevel.getFuelLevel();
            }
            z3 = this.mOverrideFuelLevel.hasRange();
            if (z3) {
                i3 = this.mOverrideFuelLevel.getRange();
            }
            z4 = this.mOverrideFuelLevel.hasLowFuelWarning();
            if (z4) {
                z5 = this.mOverrideFuelLevel.getLowFuelWarning();
            }
        }
        nativeReportFuelData(z2, i2, z3, i3, z4, z5);
    }

    public void reportGearData(int i2) {
        Protos.Gear gear = this.mOverrideGear;
        if (gear != null) {
            i2 = gear.getNumber();
        }
        nativeReportGearData(i2);
    }

    public void reportGpsSatelliteData(int i2, boolean z2, int i3, @Nullable int[] iArr, @Nullable float[] fArr, @Nullable boolean[] zArr, @Nullable float[] fArr2, @Nullable float[] fArr3) {
        int i4;
        int[] iArr2;
        boolean[] zArr2;
        int[] iArrConvertFloatArray;
        int[] iArr3;
        int[] iArr4;
        int numberInUse;
        boolean zHasNumberInView;
        int[] iArr5;
        int[] iArr6;
        boolean[] zArr3;
        int[] iArr7;
        Protos.GpsSatelliteData gpsSatelliteData = this.mOverrideGpsSatelliteData;
        if (gpsSatelliteData != null) {
            numberInUse = gpsSatelliteData.getNumberInUse();
            zHasNumberInView = gpsSatelliteData.hasNumberInView();
            int[] iArr8 = null;
            if (zHasNumberInView) {
                int numberInView = gpsSatelliteData.getNumberInView();
                int satellitesCount = gpsSatelliteData.getSatellitesCount();
                if (satellitesCount > 0) {
                    int[] iArr9 = new int[satellitesCount];
                    iArr6 = new int[satellitesCount];
                    zArr3 = new boolean[satellitesCount];
                    if (gpsSatelliteData.getSatellites(0).hasAzimuthE3()) {
                        iArr8 = new int[satellitesCount];
                        iArr7 = new int[satellitesCount];
                    } else {
                        iArr7 = null;
                    }
                    for (int i5 = 0; i5 < satellitesCount; i5++) {
                        Protos.GpsSatellite satellites = gpsSatelliteData.getSatellites(i5);
                        iArr9[i5] = satellites.getPrn();
                        iArr6[i5] = satellites.getSnrE3();
                        zArr3[i5] = satellites.getUsedInFix();
                        if (iArr8 != null && iArr7 != null) {
                            iArr8[i5] = satellites.getAzimuthE3();
                            iArr7[i5] = satellites.getElevationE3();
                        }
                    }
                    iArr5 = iArr8;
                    iArr8 = iArr9;
                } else {
                    iArr5 = null;
                    iArr6 = null;
                    zArr3 = null;
                    iArr7 = null;
                }
                iArr3 = iArr6;
                zArr2 = zArr3;
                iArrConvertFloatArray = iArr7;
                iArr4 = iArr5;
                iArr2 = iArr8;
                i4 = numberInView;
            } else {
                iArr2 = null;
                iArr3 = null;
                zArr2 = null;
                iArr4 = null;
                iArrConvertFloatArray = null;
                i4 = i3;
            }
        } else {
            int[] iArrConvertFloatArray2 = convertFloatArray(fArr, 1000.0f);
            int[] iArrConvertFloatArray3 = convertFloatArray(fArr2, 1000.0f);
            i4 = i3;
            iArr2 = iArr;
            zArr2 = zArr;
            iArrConvertFloatArray = convertFloatArray(fArr3, 1000.0f);
            iArr3 = iArrConvertFloatArray2;
            iArr4 = iArrConvertFloatArray3;
            numberInUse = i2;
            zHasNumberInView = z2;
        }
        nativeReportGpsSatelliteData(numberInUse, zHasNumberInView, i4, iArr2, iArr3, zArr2, iArr4, iArrConvertFloatArray);
    }

    public void reportGyroscopeData(boolean z2, float f2, boolean z3, float f3, boolean z4, float f4) {
        float rotationSpeedXE3 = (float) (((double) f2) * 1000.0d);
        float rotationSpeedYE3 = (float) (((double) f3) * 1000.0d);
        float rotationSpeedZE3 = (float) (((double) f4) * 1000.0d);
        Protos.GyroscopeData gyroscopeData = this.mOverrideGyroscopeData;
        if (gyroscopeData != null) {
            z2 = gyroscopeData.hasRotationSpeedXE3();
            if (z2) {
                rotationSpeedXE3 = this.mOverrideGyroscopeData.getRotationSpeedXE3();
            }
            z3 = this.mOverrideGyroscopeData.hasRotationSpeedYE3();
            if (z3) {
                rotationSpeedYE3 = this.mOverrideGyroscopeData.getRotationSpeedYE3();
            }
            z4 = this.mOverrideGyroscopeData.hasRotationSpeedZE3();
            if (z4) {
                rotationSpeedZE3 = this.mOverrideGyroscopeData.getRotationSpeedZE3();
            }
        }
        nativeReportGyroscopeData(z2, (int) rotationSpeedXE3, z3, (int) rotationSpeedYE3, z4, (int) rotationSpeedZE3);
    }

    public void reportHvacData(boolean z2, float f2, boolean z3, float f3) {
        int iRound = (int) Math.round(((double) f2) * 1000.0d);
        int iRound2 = (int) Math.round(((double) f3) * 1000.0d);
        Protos.HvacData hvacData = this.mOverrideHvacData;
        if (hvacData != null) {
            z2 = hvacData.hasTargetTemperatureE3();
            if (z2) {
                iRound = this.mOverrideHvacData.getTargetTemperatureE3();
            }
            z3 = this.mOverrideHvacData.hasCurrentTemperatureE3();
            if (z3) {
                iRound2 = this.mOverrideHvacData.getCurrentTemperatureE3();
            }
        }
        nativeReportHvacData(z2, iRound, z3, iRound2);
    }

    public void reportLightData(boolean z2, int i2, boolean z3, int i3, boolean z4, boolean z5) {
        nativeReportLightData(z2, i2, z3, i3, z4, z5);
    }

    public void reportLocation(@Nullable Location location) {
        boolean zHasSpeedE3;
        int speedE3;
        boolean zHasBearing;
        int iRound;
        boolean z2;
        int i2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        if (location == null || this.mLocationOverride != null) {
            Protos.LocationData locationData = this.mLocationOverride;
            if (locationData == null) {
                Log.w("AHU.SENSOR", "Location and mGpsOverride are both null.");
                return;
            }
            int latitudeE7 = locationData.hasLatitudeE7() ? this.mLocationOverride.getLatitudeE7() : 0;
            int longitudeE7 = this.mLocationOverride.hasLongitudeE7() ? this.mLocationOverride.getLongitudeE7() : 0;
            boolean zHasAccuracyE3 = this.mLocationOverride.hasAccuracyE3();
            int accuracyE3 = this.mLocationOverride.hasAccuracyE3() ? this.mLocationOverride.getAccuracyE3() : 0;
            boolean zHasAltitudeE2 = this.mLocationOverride.hasAltitudeE2();
            int altitudeE2 = this.mLocationOverride.hasAltitudeE2() ? this.mLocationOverride.getAltitudeE2() : 0;
            boolean zHasBearingE6 = this.mLocationOverride.hasBearingE6();
            int bearingE6 = this.mLocationOverride.hasBearingE6() ? this.mLocationOverride.getBearingE6() : 0;
            zHasSpeedE3 = this.mLocationOverride.hasSpeedE3();
            speedE3 = this.mLocationOverride.hasSpeedE3() ? this.mLocationOverride.getSpeedE3() : 0;
            zHasBearing = zHasBearingE6;
            iRound = bearingE6;
            z2 = zHasAltitudeE2;
            i2 = altitudeE2;
            z3 = zHasAccuracyE3;
            i3 = accuracyE3;
            i4 = latitudeE7;
            i5 = longitudeE7;
        } else {
            int iRound2 = (int) Math.round(location.getLatitude() * 1.0E7d);
            int iRound3 = (int) Math.round(location.getLongitude() * 1.0E7d);
            boolean zHasAccuracy = location.hasAccuracy();
            int iRound4 = (int) Math.round(((double) location.getAccuracy()) * 1000.0d);
            boolean zHasAltitude = location.hasAltitude();
            int iRound5 = (int) Math.round(location.getAltitude() * 100.0d);
            boolean zHasSpeed = location.hasSpeed();
            speedE3 = (int) Math.round(((double) location.getSpeed()) * 1000.0d);
            zHasBearing = location.hasBearing();
            iRound = (int) Math.round(((double) location.getBearing()) * 1000000.0d);
            z3 = zHasAccuracy;
            i3 = iRound4;
            zHasSpeedE3 = zHasSpeed;
            i4 = iRound2;
            i2 = iRound5;
            z2 = zHasAltitude;
            i5 = iRound3;
        }
        nativeReportLocation(0L, i4, i5, z3, i3, z2, i2, zHasSpeedE3, speedE3, zHasBearing, iRound);
    }

    public void reportNightModeData(boolean z2) {
        Boolean bool = this.mOverrideNightMode;
        if (bool != null) {
            z2 = bool.booleanValue();
        }
        nativeReportNightModeData(z2);
    }

    public void reportOdometerData(double d2, boolean z2, double d3) {
        double d4 = d2 * 10.0d;
        double d5 = d3 * 10.0d;
        int i2 = this.mOverrideKmsE1;
        if (i2 != Integer.MIN_VALUE) {
            d4 = i2;
        }
        nativeReportOdometerData((int) d4, z2, (int) d5);
    }

    public void reportParkingBrakeData(boolean z2) {
        Boolean bool = this.mOverrideParkingBrake;
        if (bool != null) {
            z2 = bool.booleanValue();
        }
        nativeReportParkingBrakeData(z2);
    }

    public void reportPassengerData(boolean z2) {
        nativeReportPassengerData(z2);
    }

    public void reportRpmData(double d2) {
        double d3 = d2 * 1000.0d;
        int i2 = this.mOverrideRpmE3;
        if (i2 != Integer.MIN_VALUE) {
            d3 = i2;
        }
        nativeReportRpmData((int) d3);
    }

    public void reportSensorError(int i2, int i3) {
        nativeReportSensorError(i2, i3);
    }

    public void reportSpeedData(float f2, boolean z2, boolean z3, boolean z4, int i2) {
        float f3 = (float) (((double) f2) * 1000.0d);
        int i3 = this.mOverrideSpeedE3;
        if (i3 != Integer.MIN_VALUE) {
            f3 = i3;
        }
        nativeReportSpeedData((int) f3, z2, z3, z4, i2);
    }

    public void reportTirePressureData(float[] fArr) {
        int length = fArr != null ? fArr.length : 0;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = (int) Math.round(((double) fArr[i2]) * 100.0d);
        }
        nativeReportTirePressureData(iArr);
    }

    public void reportTollCardData(boolean z2) {
        nativeReportTollCardData(z2);
    }

    public void reportTrailerData(Protos.TrailerData trailerData) {
        nativeReportTrailerData(trailerData.toByteArray());
    }

    public void reportVehicleEnergyModelData(EnergyModel.VehicleEnergyModelData vehicleEnergyModelData) {
        nativeReportVehicleEnergyModelData(vehicleEnergyModelData.toByteArray());
    }
}
