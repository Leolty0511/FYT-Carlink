package android.hardware;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface SensorListener {
    void onAccuracyChanged(int i2, int i3);

    void onSensorChanged(int i2, float[] fArr);
}
