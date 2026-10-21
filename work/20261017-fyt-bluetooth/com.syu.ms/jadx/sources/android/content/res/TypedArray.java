package android.content.res;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import java.util.Arrays;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public class TypedArray {
    public int[] mData;
    public int[] mIndices;
    public int mLength;
    private final Resources mResources;
    public int[] mRsrcs;
    public TypedValue mValue = new TypedValue();
    public XmlBlock.Parser mXml;

    public TypedArray(Resources resources, int[] iArr, int[] iArr2, int i2) {
        this.mResources = resources;
        this.mData = iArr;
        this.mIndices = iArr2;
        this.mLength = i2;
    }

    private boolean getValueAt(int i2, TypedValue typedValue) {
        int[] iArr = this.mData;
        int i3 = iArr[i2 + 0];
        if (i3 == 0) {
            return false;
        }
        typedValue.type = i3;
        typedValue.data = iArr[i2 + 1];
        typedValue.assetCookie = iArr[i2 + 2];
        typedValue.resourceId = iArr[i2 + 3];
        typedValue.changingConfigurations = iArr[i2 + 4];
        typedValue.density = iArr[i2 + 5];
        typedValue.string = i3 == 3 ? loadStringValueAt(i2) : null;
        return true;
    }

    private CharSequence loadStringValueAt(int i2) {
        int[] iArr = this.mData;
        int i3 = iArr[i2 + 2];
        if (i3 >= 0) {
            return this.mResources.mAssets.getPooledString(i3, iArr[i2 + 1]);
        }
        XmlBlock.Parser parser = this.mXml;
        if (parser != null) {
            return parser.getPooledString(iArr[i2 + 1]);
        }
        return null;
    }

    public boolean getBoolean(int i2, boolean z2) {
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        int i4 = iArr[i3 + 0];
        if (i4 == 0) {
            return z2;
        }
        if (i4 >= 16 && i4 <= 31) {
            return iArr[i3 + 1] != 0;
        }
        TypedValue typedValue = this.mValue;
        if (getValueAt(i3, typedValue)) {
            Log.w(Resources.TAG, "Converting to boolean: " + typedValue);
            return n.b(typedValue.coerceToString(), z2);
        }
        Log.w(Resources.TAG, "getBoolean of bad type: 0x" + Integer.toHexString(i4));
        return z2;
    }

    public int getColor(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 >= 16 && i5 <= 31) {
            return iArr[i4 + 1];
        }
        if (i5 == 3) {
            TypedValue typedValue = this.mValue;
            return getValueAt(i4, typedValue) ? this.mResources.loadColorStateList(typedValue, typedValue.resourceId).getDefaultColor() : i3;
        }
        throw new UnsupportedOperationException("Can't convert to color: type=0x" + Integer.toHexString(i5));
    }

    public ColorStateList getColorStateList(int i2) {
        TypedValue typedValue = this.mValue;
        if (getValueAt(i2 * 6, typedValue)) {
            return this.mResources.loadColorStateList(typedValue, typedValue.resourceId);
        }
        return null;
    }

    public float getDimension(int i2, float f2) {
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        int i4 = iArr[i3 + 0];
        if (i4 == 0) {
            return f2;
        }
        if (i4 == 5) {
            return TypedValue.complexToDimension(iArr[i3 + 1], this.mResources.mMetrics);
        }
        throw new UnsupportedOperationException("Can't convert to dimension: type=0x" + Integer.toHexString(i4));
    }

    public int getDimensionPixelOffset(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 == 5) {
            return TypedValue.complexToDimensionPixelOffset(iArr[i4 + 1], this.mResources.mMetrics);
        }
        throw new UnsupportedOperationException("Can't convert to dimension: type=0x" + Integer.toHexString(i5));
    }

    public int getDimensionPixelSize(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 == 5) {
            return TypedValue.complexToDimensionPixelSize(iArr[i4 + 1], this.mResources.mMetrics);
        }
        throw new UnsupportedOperationException("Can't convert to dimension: type=0x" + Integer.toHexString(i5));
    }

    public Drawable getDrawable(int i2) {
        TypedValue typedValue = this.mValue;
        if (getValueAt(i2 * 6, typedValue)) {
            return this.mResources.loadDrawable(typedValue, typedValue.resourceId);
        }
        return null;
    }

    public float getFloat(int i2, float f2) {
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        int i4 = iArr[i3 + 0];
        if (i4 == 0) {
            return f2;
        }
        if (i4 == 4) {
            return Float.intBitsToFloat(iArr[i3 + 1]);
        }
        if (i4 >= 16 && i4 <= 31) {
            return iArr[i3 + 1];
        }
        TypedValue typedValue = this.mValue;
        if (getValueAt(i3, typedValue)) {
            Log.w(Resources.TAG, "Converting to float: " + typedValue);
            CharSequence charSequenceCoerceToString = typedValue.coerceToString();
            if (charSequenceCoerceToString != null) {
                return Float.parseFloat(charSequenceCoerceToString.toString());
            }
        }
        Log.w(Resources.TAG, "getFloat of bad type: 0x" + Integer.toHexString(i4));
        return f2;
    }

    public float getFraction(int i2, int i3, int i4, float f2) {
        int i5 = i2 * 6;
        int[] iArr = this.mData;
        int i6 = iArr[i5 + 0];
        if (i6 == 0) {
            return f2;
        }
        if (i6 == 6) {
            return TypedValue.complexToFraction(iArr[i5 + 1], i3, i4);
        }
        throw new UnsupportedOperationException("Can't convert to fraction: type=0x" + Integer.toHexString(i6));
    }

    public int getIndex(int i2) {
        return this.mIndices[i2 + 1];
    }

    public int getIndexCount() {
        return this.mIndices[0];
    }

    public int getInt(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 >= 16 && i5 <= 31) {
            return iArr[i4 + 1];
        }
        TypedValue typedValue = this.mValue;
        if (getValueAt(i4, typedValue)) {
            Log.w(Resources.TAG, "Converting to int: " + typedValue);
            return n.c(typedValue.coerceToString(), i3);
        }
        Log.w(Resources.TAG, "getInt of bad type: 0x" + Integer.toHexString(i5));
        return i3;
    }

    public int getInteger(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 >= 16 && i5 <= 31) {
            return iArr[i4 + 1];
        }
        throw new UnsupportedOperationException("Can't convert to integer: type=0x" + Integer.toHexString(i5));
    }

    public int getLayoutDimension(int i2, String str) {
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        int i4 = iArr[i3 + 0];
        if (i4 >= 16 && i4 <= 31) {
            return iArr[i3 + 1];
        }
        if (i4 == 5) {
            return TypedValue.complexToDimensionPixelSize(iArr[i3 + 1], this.mResources.mMetrics);
        }
        throw new RuntimeException(getPositionDescription() + ": You must supply a " + str + " attribute.");
    }

    public String getNonConfigurationString(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (((~i3) & iArr[i4 + 4]) != 0 || i5 == 0) {
            return null;
        }
        if (i5 == 3) {
            return loadStringValueAt(i4).toString();
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i4, typedValue)) {
            Log.w(Resources.TAG, "getString of bad type: 0x" + Integer.toHexString(i5));
            return null;
        }
        Log.w(Resources.TAG, "Converting to string: " + typedValue);
        CharSequence charSequenceCoerceToString = typedValue.coerceToString();
        if (charSequenceCoerceToString != null) {
            return charSequenceCoerceToString.toString();
        }
        return null;
    }

    public String getNonResourceString(int i2) {
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        if (iArr[i3 + 0] != 3 || iArr[i3 + 2] >= 0) {
            return null;
        }
        return this.mXml.getPooledString(iArr[i3 + 1]).toString();
    }

    public String getPositionDescription() {
        XmlBlock.Parser parser = this.mXml;
        return parser != null ? parser.getPositionDescription() : "<internal>";
    }

    public int getResourceId(int i2, int i3) {
        int i4;
        int i5 = i2 * 6;
        int[] iArr = this.mData;
        return (iArr[i5 + 0] == 0 || (i4 = iArr[i5 + 3]) == 0) ? i3 : i4;
    }

    public Resources getResources() {
        return this.mResources;
    }

    public String getString(int i2) {
        int i3 = i2 * 6;
        int i4 = this.mData[i3 + 0];
        if (i4 == 0) {
            return null;
        }
        if (i4 == 3) {
            return loadStringValueAt(i3).toString();
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i3, typedValue)) {
            Log.w(Resources.TAG, "getString of bad type: 0x" + Integer.toHexString(i4));
            return null;
        }
        Log.w(Resources.TAG, "Converting to string: " + typedValue);
        CharSequence charSequenceCoerceToString = typedValue.coerceToString();
        if (charSequenceCoerceToString != null) {
            return charSequenceCoerceToString.toString();
        }
        return null;
    }

    public CharSequence getText(int i2) {
        int i3 = i2 * 6;
        int i4 = this.mData[i3 + 0];
        if (i4 == 0) {
            return null;
        }
        if (i4 == 3) {
            return loadStringValueAt(i3);
        }
        TypedValue typedValue = this.mValue;
        if (getValueAt(i3, typedValue)) {
            Log.w(Resources.TAG, "Converting to string: " + typedValue);
            return typedValue.coerceToString();
        }
        Log.w(Resources.TAG, "getString of bad type: 0x" + Integer.toHexString(i4));
        return null;
    }

    public CharSequence[] getTextArray(int i2) {
        TypedValue typedValue = this.mValue;
        if (getValueAt(i2 * 6, typedValue)) {
            return this.mResources.getTextArray(typedValue.resourceId);
        }
        return null;
    }

    public boolean getValue(int i2, TypedValue typedValue) {
        return getValueAt(i2 * 6, typedValue);
    }

    public boolean hasValue(int i2) {
        return this.mData[(i2 * 6) + 0] != 0;
    }

    public int length() {
        return this.mLength;
    }

    public TypedValue peekValue(int i2) {
        TypedValue typedValue = this.mValue;
        if (getValueAt(i2 * 6, typedValue)) {
            return typedValue;
        }
        return null;
    }

    public void recycle() {
        synchronized (this.mResources.mAccessLock) {
            Resources resources = this.mResources;
            TypedArray typedArray = resources.mCachedStyledAttributes;
            if (typedArray == null || typedArray.mData.length < this.mData.length) {
                this.mXml = null;
                resources.mCachedStyledAttributes = this;
            }
        }
    }

    public String toString() {
        return Arrays.toString(this.mData);
    }

    public int getLayoutDimension(int i2, int i3) {
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 < 16 || i5 > 31) {
            return i5 == 5 ? TypedValue.complexToDimensionPixelSize(iArr[i4 + 1], this.mResources.mMetrics) : i3;
        }
        return iArr[i4 + 1];
    }
}
