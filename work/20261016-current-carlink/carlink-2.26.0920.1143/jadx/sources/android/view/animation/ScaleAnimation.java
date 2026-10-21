package android.view.animation;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScaleAnimation extends Animation {
    private float mFromX;
    private int mFromXData;
    private int mFromXType;
    private float mFromY;
    private int mFromYData;
    private int mFromYType;
    private float mPivotX;
    private int mPivotXType;
    private float mPivotXValue;
    private float mPivotY;
    private int mPivotYType;
    private float mPivotYValue;
    private final Resources mResources;
    private float mToX;
    private int mToXData;
    private int mToXType;
    private float mToY;
    private int mToYData;
    private int mToYType;

    public ScaleAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXData = 0;
        this.mToXData = 0;
        this.mFromYData = 0;
        this.mToYData = 0;
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mResources = context.getResources();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScaleAnimation);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(2);
        this.mFromX = 0.0f;
        if (typedValuePeekValue != null) {
            int i2 = typedValuePeekValue.type;
            if (i2 == 4) {
                this.mFromX = typedValuePeekValue.getFloat();
            } else {
                this.mFromXType = i2;
                this.mFromXData = typedValuePeekValue.data;
            }
        }
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(3);
        this.mToX = 0.0f;
        if (typedValuePeekValue2 != null) {
            int i3 = typedValuePeekValue2.type;
            if (i3 == 4) {
                this.mToX = typedValuePeekValue2.getFloat();
            } else {
                this.mToXType = i3;
                this.mToXData = typedValuePeekValue2.data;
            }
        }
        TypedValue typedValuePeekValue3 = typedArrayObtainStyledAttributes.peekValue(4);
        this.mFromY = 0.0f;
        if (typedValuePeekValue3 != null) {
            int i4 = typedValuePeekValue3.type;
            if (i4 == 4) {
                this.mFromY = typedValuePeekValue3.getFloat();
            } else {
                this.mFromYType = i4;
                this.mFromYData = typedValuePeekValue3.data;
            }
        }
        TypedValue typedValuePeekValue4 = typedArrayObtainStyledAttributes.peekValue(5);
        this.mToY = 0.0f;
        if (typedValuePeekValue4 != null) {
            int i5 = typedValuePeekValue4.type;
            if (i5 == 4) {
                this.mToY = typedValuePeekValue4.getFloat();
            } else {
                this.mToYType = i5;
                this.mToYData = typedValuePeekValue4.data;
            }
        }
        Animation.Description value = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(0));
        this.mPivotXType = value.type;
        this.mPivotXValue = value.value;
        Animation.Description value2 = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(1));
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
        float scaleFactor = getScaleFactor();
        float f3 = this.mFromX;
        float fA = (f3 == 1.0f && this.mToX == 1.0f) ? 1.0f : c.a(this.mToX, f3, f2, f3);
        float f4 = this.mFromY;
        float fA2 = (f4 == 1.0f && this.mToY == 1.0f) ? 1.0f : c.a(this.mToY, f4, f2, f4);
        if (this.mPivotX == 0.0f && this.mPivotY == 0.0f) {
            transformation.getMatrix().setScale(fA, fA2);
        } else {
            transformation.getMatrix().setScale(fA, fA2, this.mPivotX * scaleFactor, scaleFactor * this.mPivotY);
        }
    }

    @Override // android.view.animation.Animation
    public void initialize(int i2, int i3, int i4, int i5) {
        super.initialize(i2, i3, i4, i5);
        this.mFromX = resolveScale(this.mFromX, this.mFromXType, this.mFromXData, i2, i4);
        this.mToX = resolveScale(this.mToX, this.mToXType, this.mToXData, i2, i4);
        this.mFromY = resolveScale(this.mFromY, this.mFromYType, this.mFromYData, i3, i5);
        this.mToY = resolveScale(this.mToY, this.mToYType, this.mToYData, i3, i5);
        this.mPivotX = resolveSize(this.mPivotXType, this.mPivotXValue, i2, i4);
        this.mPivotY = resolveSize(this.mPivotYType, this.mPivotYValue, i3, i5);
    }

    public float resolveScale(float f2, int i2, int i3, int i4, int i5) {
        float fComplexToDimension;
        if (i2 == 6) {
            fComplexToDimension = TypedValue.complexToFraction(i3, i4, i5);
        } else {
            if (i2 != 5) {
                return f2;
            }
            fComplexToDimension = TypedValue.complexToDimension(i3, this.mResources.getDisplayMetrics());
        }
        if (i4 == 0) {
            return 1.0f;
        }
        return fComplexToDimension / i4;
    }

    public ScaleAnimation(float f2, float f3, float f4, float f5) {
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXData = 0;
        this.mToXData = 0;
        this.mFromYData = 0;
        this.mToYData = 0;
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mResources = null;
        this.mFromX = f2;
        this.mToX = f3;
        this.mFromY = f4;
        this.mToY = f5;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
    }

    public ScaleAnimation(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXData = 0;
        this.mToXData = 0;
        this.mFromYData = 0;
        this.mToYData = 0;
        this.mResources = null;
        this.mFromX = f2;
        this.mToX = f3;
        this.mFromY = f4;
        this.mToY = f5;
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = f6;
        this.mPivotYValue = f7;
        initializePivotPoint();
    }

    public ScaleAnimation(float f2, float f3, float f4, float f5, int i2, float f6, int i3, float f7) {
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXData = 0;
        this.mToXData = 0;
        this.mFromYData = 0;
        this.mToYData = 0;
        this.mResources = null;
        this.mFromX = f2;
        this.mToX = f3;
        this.mFromY = f4;
        this.mToY = f5;
        this.mPivotXValue = f6;
        this.mPivotXType = i2;
        this.mPivotYValue = f7;
        this.mPivotYType = i3;
        initializePivotPoint();
    }
}
