package android.view.animation;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes2.dex */
public class TranslateXAnimation extends TranslateAnimation {
    float[] mTmpValues;

    public TranslateXAnimation(float f2, float f3) {
        super(f2, f3, 0.0f, 0.0f);
        this.mTmpValues = new float[9];
    }

    @Override // android.view.animation.TranslateAnimation, android.view.animation.Animation
    public void applyTransformation(float f2, Transformation transformation) {
        transformation.getMatrix().getValues(this.mTmpValues);
        float f3 = this.mFromXDelta;
        transformation.getMatrix().setTranslate(c.a(this.mToXDelta, f3, f2, f3), this.mTmpValues[5]);
    }

    public TranslateXAnimation(int i2, float f2, int i3, float f3) {
        super(i2, f2, i3, f3, 0, 0.0f, 0, 0.0f);
        this.mTmpValues = new float[9];
    }
}
