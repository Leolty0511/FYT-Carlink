package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class OvershootInterpolator implements Interpolator {
    private final float mTension;

    public OvershootInterpolator() {
        this.mTension = 2.0f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        float f3 = f2 - 1.0f;
        float f4 = this.mTension;
        return (f3 * f3 * (((f4 + 1.0f) * f3) + f4)) + 1.0f;
    }

    public OvershootInterpolator(float f2) {
        this.mTension = f2;
    }

    public OvershootInterpolator(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.OvershootInterpolator);
        this.mTension = typedArrayObtainStyledAttributes.getFloat(0, 2.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
