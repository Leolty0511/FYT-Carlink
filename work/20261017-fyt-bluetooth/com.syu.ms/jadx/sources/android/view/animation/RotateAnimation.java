package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class RotateAnimation extends Animation {
    private float mFromDegrees;
    private float mPivotX;
    private int mPivotXType;
    private float mPivotXValue;
    private float mPivotY;
    private int mPivotYType;
    private float mPivotYValue;
    private float mToDegrees;

    public RotateAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.RotateAnimation);
        this.mFromDegrees = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
        this.mToDegrees = typedArrayObtainStyledAttributes.getFloat(1, 0.0f);
        Animation.Description value = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(2));
        this.mPivotXType = value.type;
        this.mPivotXValue = value.value;
        Animation.Description value2 = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(3));
        this.mPivotYType = value2.type;
        this.mPivotYValue = value2.value;
        typedArrayObtainStyledAttributes.recycle();
        initializePivotPoint();
    }

    private void initializePivotPoint() {
        if (this.mPivotXType == 0) {
            this.mPivotX = this.mPivotXValue;
        }
        if (this.mPivotYType == 0) {
            this.mPivotY = this.mPivotYValue;
        }
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f2, Transformation transformation) {
        float f3 = this.mFromDegrees;
        float f4 = f3 + ((this.mToDegrees - f3) * f2);
        float scaleFactor = getScaleFactor();
        if (this.mPivotX == 0.0f && this.mPivotY == 0.0f) {
            transformation.getMatrix().setRotate(f4);
        } else {
            transformation.getMatrix().setRotate(f4, this.mPivotX * scaleFactor, this.mPivotY * scaleFactor);
        }
    }

    @Override // android.view.animation.Animation
    public void initialize(int i2, int i3, int i4, int i5) {
        super.initialize(i2, i3, i4, i5);
        this.mPivotX = resolveSize(this.mPivotXType, this.mPivotXValue, i2, i4);
        this.mPivotY = resolveSize(this.mPivotYType, this.mPivotYValue, i3, i5);
    }

    public RotateAnimation(float f2, float f3) {
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mFromDegrees = f2;
        this.mToDegrees = f3;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
    }

    public RotateAnimation(float f2, float f3, float f4, float f5) {
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mFromDegrees = f2;
        this.mToDegrees = f3;
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = f4;
        this.mPivotYValue = f5;
        initializePivotPoint();
    }

    public RotateAnimation(float f2, float f3, int i2, float f4, int i3, float f5) {
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mFromDegrees = f2;
        this.mToDegrees = f3;
        this.mPivotXValue = f4;
        this.mPivotXType = i2;
        this.mPivotYValue = f5;
        this.mPivotYType = i3;
        initializePivotPoint();
    }
}
