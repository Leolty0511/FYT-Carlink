package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class AccelerateInterpolator implements Interpolator {
    private final double mDoubleFactor;
    private final float mFactor;

    public AccelerateInterpolator() {
        this.mFactor = 1.0f;
        this.mDoubleFactor = 2.0d;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return this.mFactor == 1.0f ? f2 * f2 : (float) Math.pow(f2, this.mDoubleFactor);
    }

    public AccelerateInterpolator(float f2) {
        this.mFactor = f2;
        this.mDoubleFactor = f2 * 2.0f;
    }

    public AccelerateInterpolator(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AccelerateInterpolator);
        float f2 = typedArrayObtainStyledAttributes.getFloat(0, 1.0f);
        this.mFactor = f2;
        this.mDoubleFactor = f2 * 2.0f;
        typedArrayObtainStyledAttributes.recycle();
    }
}
