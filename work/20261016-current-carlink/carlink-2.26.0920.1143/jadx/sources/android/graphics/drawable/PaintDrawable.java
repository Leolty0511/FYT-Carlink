package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import com.android.internal.R;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class PaintDrawable extends ShapeDrawable {
    public PaintDrawable() {
    }

    @Override // android.graphics.drawable.ShapeDrawable
    public boolean inflateTag(String str, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (!str.equals("corners")) {
            return super.inflateTag(str, resources, xmlPullParser, attributeSet);
        }
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.DrawableCorners);
        int dimensionPixelSize = typedArrayObtainAttributes.getDimensionPixelSize(0, 0);
        setCornerRadius(dimensionPixelSize);
        int dimensionPixelSize2 = typedArrayObtainAttributes.getDimensionPixelSize(1, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayObtainAttributes.getDimensionPixelSize(2, dimensionPixelSize);
        int dimensionPixelSize4 = typedArrayObtainAttributes.getDimensionPixelSize(3, dimensionPixelSize);
        int dimensionPixelSize5 = typedArrayObtainAttributes.getDimensionPixelSize(4, dimensionPixelSize);
        if (dimensionPixelSize2 != dimensionPixelSize || dimensionPixelSize3 != dimensionPixelSize || dimensionPixelSize4 != dimensionPixelSize || dimensionPixelSize5 != dimensionPixelSize) {
            float f2 = dimensionPixelSize2;
            float f3 = dimensionPixelSize3;
            float f4 = dimensionPixelSize4;
            float f5 = dimensionPixelSize5;
            setCornerRadii(new float[]{f2, f2, f3, f3, f4, f4, f5, f5});
        }
        typedArrayObtainAttributes.recycle();
        return true;
    }

    public void setCornerRadii(float[] fArr) {
        if (fArr != null) {
            setShape(new RoundRectShape(fArr, null, null));
        } else if (getShape() != null) {
            setShape(null);
        }
        invalidateSelf();
    }

    public void setCornerRadius(float f2) {
        float[] fArr;
        if (f2 > 0.0f) {
            fArr = new float[8];
            for (int i2 = 0; i2 < 8; i2++) {
                fArr[i2] = f2;
            }
        } else {
            fArr = null;
        }
        setCornerRadii(fArr);
    }

    public PaintDrawable(int i2) {
        getPaint().setColor(i2);
    }
}
