package android.view.animation;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class LinearInterpolator implements Interpolator {
    public LinearInterpolator() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return f2;
    }

    public LinearInterpolator(Context context, AttributeSet attributeSet) {
    }
}
