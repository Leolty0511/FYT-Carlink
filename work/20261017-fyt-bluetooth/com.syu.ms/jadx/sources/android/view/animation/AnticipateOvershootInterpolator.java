package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class AnticipateOvershootInterpolator implements Interpolator {
    private final float mTension;

    public AnticipateOvershootInterpolator() {
        this.mTension = 3.0f;
    }

    private static float a(float f2, float f3) {
        return f2 * f2 * (((1.0f + f3) * f2) - f3);
    }

    private static float o(float f2, float f3) {
        return f2 * f2 * (((1.0f + f3) * f2) + f3);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return (f2 < 0.5f ? a(f2 * 2.0f, this.mTension) : o((f2 * 2.0f) - 2.0f, this.mTension) + 2.0f) * 0.5f;
    }

    public AnticipateOvershootInterpolator(float f2) {
        this.mTension = f2 * 1.5f;
    }

    public AnticipateOvershootInterpolator(float f2, float f3) {
        this.mTension = f2 * f3;
    }

    public AnticipateOvershootInterpolator(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AnticipateOvershootInterpolator);
        this.mTension = typedArrayObtainStyledAttributes.getFloat(0, 2.0f) * typedArrayObtainStyledAttributes.getFloat(1, 1.5f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
