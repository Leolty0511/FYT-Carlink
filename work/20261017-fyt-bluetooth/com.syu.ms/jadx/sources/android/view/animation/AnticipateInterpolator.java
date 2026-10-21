package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class AnticipateInterpolator implements Interpolator {
    private final float mTension;

    public AnticipateInterpolator() {
        this.mTension = 2.0f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        float f3 = this.mTension;
        return f2 * f2 * (((1.0f + f3) * f2) - f3);
    }

    public AnticipateInterpolator(float f2) {
        this.mTension = f2;
    }

    public AnticipateInterpolator(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AnticipateInterpolator);
        this.mTension = typedArrayObtainStyledAttributes.getFloat(0, 2.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
