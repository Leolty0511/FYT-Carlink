package android.hardware;

/* JADX INFO: loaded from: classes.dex */
public class SensorEvent {
    public int accuracy;
    public Sensor sensor;
    public long timestamp;
    public final float[] values;

    public SensorEvent(int i2) {
        this.values = new float[i2];
    }
}
