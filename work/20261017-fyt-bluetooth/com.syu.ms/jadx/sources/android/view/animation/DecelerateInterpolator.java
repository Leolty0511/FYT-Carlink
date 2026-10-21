package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class DecelerateInterpolator implements Interpolator {
    private float mFactor;

    public DecelerateInterpolator() {
        this.mFactor = 1.0f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        float f3 = this.mFactor;
        if (f3 != 1.0f) {
            return (float) (1.0d - Math.pow(1.0f - f2, f3 * 2.0f));
        }
        float f4 = 1.0f - f2;
        return 1.0f - (f4 * f4);
    }

    public DecelerateInterpolator(float f2) {
        this.mFactor = 1.0f;
        this.mFactor = f2;
    }

    public DecelerateInterpolator(Context context, AttributeSet attributeSet) {
        this.mFactor = 1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.DecelerateInterpolator);
        this.mFactor = typedArrayObtainStyledAttributes.getFloat(0, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
