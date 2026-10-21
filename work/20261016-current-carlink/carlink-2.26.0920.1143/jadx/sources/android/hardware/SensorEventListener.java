package android.hardware;

/* JADX INFO: loaded from: classes.dex */
public interface SensorEventListener {
    void onAccuracyChanged(Sensor sensor, int i2);

    void onSensorChanged(SensorEvent sensorEvent);
}
