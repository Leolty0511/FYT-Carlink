package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class TranslateAnimation extends Animation {
    private float mFromXDelta;
    private int mFromXType;
    private float mFromXValue;
    private float mFromYDelta;
    private int mFromYType;
    private float mFromYValue;
    private float mToXDelta;
    private int mToXType;
    private float mToXValue;
    private float mToYDelta;
    private int mToYType;
    private float mToYValue;

    public TranslateAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXValue = 0.0f;
        this.mToXValue = 0.0f;
        this.mFromYValue = 0.0f;
        this.mToYValue = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.TranslateAnimation);
        Animation.Description value = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(0));
        this.mFromXType = value.type;
        this.mFromXValue = value.value;
        Animation.Description value2 = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(1));
        this.mToXType = value2.type;
        this.mToXValue = value2.value;
        Animation.Description value3 = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(2));
        this.mFromYType = value3.type;
        this.mFromYValue = value3.value;
        Animation.Description value4 = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(3));
        this.mToYType = value4.type;
        this.mToYValue = value4.value;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f2, Transformation transformation) {
        float f3 = this.mFromXDelta;
        float f4 = this.mFromYDelta;
        float f5 = this.mToXDelta;
        if (f3 != f5) {
            f3 += (f5 - f3) * f2;
        }
        float f6 = this.mToYDelta;
        if (f4 != f6) {
            f4 += (f6 - f4) * f2;
        }
        transformation.getMatrix().setTranslate(f3, f4);
    }

    @Override // android.view.animation.Animation
    public void initialize(int i2, int i3, int i4, int i5) {
        super.initialize(i2, i3, i4, i5);
        this.mFromXDelta = resolveSize(this.mFromXType, this.mFromXValue, i2, i4);
        this.mToXDelta = resolveSize(this.mToXType, this.mToXValue, i2, i4);
        this.mFromYDelta = resolveSize(this.mFromYType, this.mFromYValue, i3, i5);
        this.mToYDelta = resolveSize(this.mToYType, this.mToYValue, i3, i5);
    }

    public TranslateAnimation(float f2, float f3, float f4, float f5) {
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXValue = 0.0f;
        this.mToXValue = 0.0f;
        this.mFromYValue = 0.0f;
        this.mToYValue = 0.0f;
        this.mFromXValue = f2;
        this.mToXValue = f3;
        this.mFromYValue = f4;
        this.mToYValue = f5;
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
    }

    public TranslateAnimation(int i2, float f2, int i3, float f3, int i4, float f4, int i5, float f5) {
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXValue = 0.0f;
        this.mToXValue = 0.0f;
        this.mFromYValue = 0.0f;
        this.mToYValue = 0.0f;
        this.mFromXValue = f2;
        this.mToXValue = f3;
        this.mFromYValue = f4;
        this.mToYValue = f5;
        this.mFromXType = i2;
        this.mToXType = i3;
        this.mFromYType = i4;
        this.mToYType = i5;
    }
}
