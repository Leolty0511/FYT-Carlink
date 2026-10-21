package android.view.animation;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes2.dex */
public class TranslateYAnimation extends TranslateAnimation {
    float[] mTmpValues;

    public TranslateYAnimation(float f2, float f3) {
        super(0.0f, 0.0f, f2, f3);
        this.mTmpValues = new float[9];
    }

    @Override // android.view.animation.TranslateAnimation, android.view.animation.Animation
    public void applyTransformation(float f2, Transformation transformation) {
        transformation.getMatrix().getValues(this.mTmpValues);
        float f3 = this.mFromYDelta;
        transformation.getMatrix().setTranslate(this.mTmpValues[2], c.a(this.mToYDelta, f3, f2, f3));
    }

    public TranslateYAnimation(int i2, float f2, int i3, float f3) {
        super(0, 0.0f, 0, 0.0f, i2, f2, i3, f3);
        this.mTmpValues = new float[9];
    }
}
