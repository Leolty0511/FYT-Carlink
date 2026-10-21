package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class AlphaAnimation extends Animation {
    private float mFromAlpha;
    private float mToAlpha;

    public AlphaAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AlphaAnimation);
        this.mFromAlpha = typedArrayObtainStyledAttributes.getFloat(0, 1.0f);
        this.mToAlpha = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f2, Transformation transformation) {
        float f3 = this.mFromAlpha;
        transformation.setAlpha(f3 + ((this.mToAlpha - f3) * f2));
    }

    @Override // android.view.animation.Animation
    public boolean hasAlpha() {
        return true;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return false;
    }

    public AlphaAnimation(float f2, float f3) {
        this.mFromAlpha = f2;
        this.mToAlpha = f3;
    }
}
