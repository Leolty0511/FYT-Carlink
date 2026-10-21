package android.view.animation;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.PathParser;
import android.view.InflateException;
import com.android.internal.R;
import com.android.internal.view.animation.HasNativeInterpolator;
import com.android.internal.view.animation.NativeInterpolatorFactory;
import com.android.internal.view.animation.NativeInterpolatorFactoryHelper;

/* JADX INFO: loaded from: classes2.dex */
@HasNativeInterpolator
public class PathInterpolator extends BaseInterpolator implements NativeInterpolatorFactory {
    private static final float PRECISION = 0.002f;
    private float[] mX;
    private float[] mY;

    public PathInterpolator(Path path) {
        initPath(path);
    }

    private void initCubic(float f2, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f2, f3, f4, f5, 1.0f, 1.0f);
        initPath(path);
    }

    private void initPath(Path path) {
        float[] fArrApproximate = path.approximate(0.002f);
        int length = fArrApproximate.length / 3;
        float f2 = 0.0f;
        if (fArrApproximate[1] != 0.0f || fArrApproximate[2] != 0.0f || fArrApproximate[fArrApproximate.length - 2] != 1.0f || fArrApproximate[fArrApproximate.length - 1] != 1.0f) {
            throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1)");
        }
        this.mX = new float[length];
        this.mY = new float[length];
        int i2 = 0;
        int i3 = 0;
        float f3 = 0.0f;
        while (i2 < length) {
            int i4 = i3 + 1;
            float f4 = fArrApproximate[i3];
            int i5 = i4 + 1;
            float f5 = fArrApproximate[i4];
            int i6 = i5 + 1;
            float f6 = fArrApproximate[i5];
            if (f4 == f2 && f5 != f3) {
                throw new IllegalArgumentException("The Path cannot have discontinuity in the X axis.");
            }
            if (f5 < f3) {
                throw new IllegalArgumentException("The Path cannot loop back on itself.");
            }
            this.mX[i2] = f5;
            this.mY[i2] = f6;
            i2++;
            f2 = f4;
            f3 = f5;
            i3 = i6;
        }
    }

    private void initQuad(float f2, float f3) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f2, f3, 1.0f, 1.0f);
        initPath(path);
    }

    private void parseInterpolatorFromTypeArray(TypedArray typedArray) {
        if (typedArray.hasValue(4)) {
            String string = typedArray.getString(4);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData(string);
            if (pathCreatePathFromPathData == null) {
                throw new InflateException(c.j("The path is null, which is created from ", string));
            }
            initPath(pathCreatePathFromPathData);
            return;
        }
        if (!typedArray.hasValue(0)) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!typedArray.hasValue(1)) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float f2 = typedArray.getFloat(0, 0.0f);
        float f3 = typedArray.getFloat(1, 0.0f);
        boolean zHasValue = typedArray.hasValue(2);
        if (zHasValue != typedArray.hasValue(3)) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zHasValue) {
            initCubic(f2, f3, typedArray.getFloat(2, 0.0f), typedArray.getFloat(3, 0.0f));
        } else {
            initQuad(f2, f3);
        }
    }

    @Override // com.android.internal.view.animation.NativeInterpolatorFactory
    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createPathInterpolator(this.mX, this.mY);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int i2 = 0;
        while (length - i2 > 1) {
            int i3 = (i2 + length) / 2;
            if (f2 < this.mX[i3]) {
                length = i3;
            } else {
                i2 = i3;
            }
        }
        float[] fArr = this.mX;
        float f3 = fArr[length];
        float f4 = fArr[i2];
        float f5 = f3 - f4;
        if (f5 == 0.0f) {
            return this.mY[i2];
        }
        float f6 = (f2 - f4) / f5;
        float[] fArr2 = this.mY;
        float f7 = fArr2[i2];
        return c.a(fArr2[length], f7, f6, f7);
    }

    public PathInterpolator(float f2, float f3) {
        initQuad(f2, f3);
    }

    public PathInterpolator(float f2, float f3, float f4, float f5) {
        initCubic(f2, f3, f4, f5);
    }

    public PathInterpolator(Context context, AttributeSet attributeSet) {
        this(context.getResources(), context.getTheme(), attributeSet);
    }

    public PathInterpolator(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes;
        if (theme != null) {
            typedArrayObtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.PathInterpolator, 0, 0);
        } else {
            typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.PathInterpolator);
        }
        parseInterpolatorFromTypeArray(typedArrayObtainAttributes);
        setChangingConfiguration(typedArrayObtainAttributes.getChangingConfigurations());
        typedArrayObtainAttributes.recycle();
    }
}
