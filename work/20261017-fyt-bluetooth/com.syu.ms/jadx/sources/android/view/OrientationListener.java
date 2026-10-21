package android.view;

import android.content.Context;
import android.hardware.SensorListener;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class OrientationListener implements SensorListener {
    public static final int ORIENTATION_UNKNOWN = -1;
    private OrientationEventListener mOrientationEventLis;

    public OrientationListener(Context context) {
        this.mOrientationEventLis = new OrientationEventListenerInternal(context);
    }

    public void disable() {
        this.mOrientationEventLis.disable();
    }

    public void enable() {
        this.mOrientationEventLis.enable();
    }

    @Override // android.hardware.SensorListener
    public void onAccuracyChanged(int i2, int i3) {
    }

    public abstract void onOrientationChanged(int i2);

    @Override // android.hardware.SensorListener
    public void onSensorChanged(int i2, float[] fArr) {
    }

    public class OrientationEventListenerInternal extends OrientationEventListener {
        public OrientationEventListenerInternal(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i2) {
            OrientationListener.this.onOrientationChanged(i2);
        }

        public OrientationEventListenerInternal(Context context, int i2) {
            super(context, i2);
            registerListener(OrientationListener.this);
        }
    }

    public OrientationListener(Context context, int i2) {
        this.mOrientationEventLis = new OrientationEventListenerInternal(context, i2);
    }
}
