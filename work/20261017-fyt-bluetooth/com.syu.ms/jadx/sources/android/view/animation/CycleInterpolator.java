package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class CycleInterpolator implements Interpolator {
    private float mCycles;

    public CycleInterpolator(float f2) {
        this.mCycles = f2;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return (float) Math.sin(((double) (this.mCycles * 2.0f)) * 3.141592653589793d * ((double) f2));
    }

    public CycleInterpolator(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.CycleInterpolator);
        this.mCycles = typedArrayObtainStyledAttributes.getFloat(0, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
