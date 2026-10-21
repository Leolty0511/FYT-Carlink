package android.hardware;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class SensorAdditionalInfo {
    public static final int TYPE_CUSTOM_INFO = 268435456;
    public static final int TYPE_DEBUG_INFO = 1073741824;
    public static final int TYPE_DOCK_STATE = 196610;
    public static final int TYPE_FRAME_BEGIN = 0;
    public static final int TYPE_FRAME_END = 1;
    public static final int TYPE_HIGH_PERFORMANCE_MODE = 196611;
    public static final int TYPE_INTERNAL_TEMPERATURE = 65537;
    public static final int TYPE_LOCAL_GEOMAGNETIC_FIELD = 196608;
    public static final int TYPE_LOCAL_GRAVITY = 196609;
    public static final int TYPE_MAGNETIC_FIELD_CALIBRATION = 196612;
    public static final int TYPE_SAMPLING = 65540;
    public static final int TYPE_SENSOR_PLACEMENT = 65539;
    public static final int TYPE_UNTRACKED_DELAY = 65536;
    public static final int TYPE_VEC3_CALIBRATION = 65538;
    public final float[] floatValues;
    public final int[] intValues;
    public final Sensor sensor;
    public final int serial;
    public final int type;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdditionalInfoType {
    }

    public SensorAdditionalInfo(Sensor sensor, int i2, int i3, int[] iArr, float[] fArr) {
        this.sensor = sensor;
        this.type = i2;
        this.serial = i3;
        this.intValues = iArr;
        this.floatValues = fArr;
    }

    public static SensorAdditionalInfo createCustomInfo(Sensor sensor, int i2, float[] fArr) {
        if (i2 >= 268435456 && i2 < 1073741824 && sensor != null) {
            return new SensorAdditionalInfo(sensor, i2, 0, null, fArr);
        }
        throw new IllegalArgumentException("invalid parameter(s): type: " + i2 + "; sensor: " + sensor);
    }

    public static SensorAdditionalInfo createLocalGeomagneticField(float f2, float f3, float f4) {
        if (f2 >= 10.0f && f2 <= 100.0f && f3 >= 0.0f && f3 <= 3.141592653589793d) {
            double d2 = f4;
            if (d2 >= -1.5707963267948966d && d2 <= 1.5707963267948966d) {
                return new SensorAdditionalInfo(null, 196608, 0, null, new float[]{f2, f3, f4});
            }
        }
        throw new IllegalArgumentException("Geomagnetic field info out of range");
    }
}
