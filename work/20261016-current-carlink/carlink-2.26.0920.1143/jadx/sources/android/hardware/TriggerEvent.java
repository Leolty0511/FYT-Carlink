package android.hardware;

/* JADX INFO: loaded from: classes.dex */
public final class TriggerEvent {
    public Sensor sensor;
    public long timestamp;
    public final float[] values;

    public TriggerEvent(int i2) {
        this.values = new float[i2];
    }
}
