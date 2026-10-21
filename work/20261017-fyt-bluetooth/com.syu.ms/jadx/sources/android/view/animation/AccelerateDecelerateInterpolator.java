package android.view.animation;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class AccelerateDecelerateInterpolator implements Interpolator {
    public AccelerateDecelerateInterpolator() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return ((float) (Math.cos(((double) (f2 + 1.0f)) * 3.141592653589793d) / 2.0d)) + 0.5f;
    }

    public AccelerateDecelerateInterpolator(Context context, AttributeSet attributeSet) {
    }
}
