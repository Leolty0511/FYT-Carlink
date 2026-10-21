package android.content.res;

import android.accessibilityservice.c;
import android.app.m;
import android.content.pm.ActivityInfo;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.StrictMode;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.android.internal.util.XmlUtils;
import dalvik.system.VMRuntime;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class TypedArray {
    private AssetManager mAssets;
    int[] mData;
    long mDataAddress;
    int[] mIndices;
    long mIndicesAddress;
    int mLength;
    private DisplayMetrics mMetrics;
    private boolean mRecycled;
    private final Resources mResources;
    Resources.Theme mTheme;
    TypedValue mValue = new TypedValue();
    XmlBlock.Parser mXml;

    public TypedArray(Resources resources) {
        this.mResources = resources;
        this.mMetrics = resources.getDisplayMetrics();
        this.mAssets = resources.getAssets();
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
        typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(iArr[i2 + 4]);
        typedValue.density = iArr[i2 + 5];
        typedValue.string = i3 == 3 ? loadStringValueAt(i2) : null;
        return true;
    }

    private CharSequence loadStringValueAt(int i2) {
        int[] iArr = this.mData;
        int i3 = iArr[i2 + 2];
        if (i3 >= 0) {
            return this.mAssets.getPooledStringForCookie(i3, iArr[i2 + 1]);
        }
        XmlBlock.Parser parser = this.mXml;
        if (parser != null) {
            return parser.getPooledString(iArr[i2 + 1]);
        }
        return null;
    }

    public static TypedArray obtain(Resources resources, int i2) {
        TypedArray typedArrayAcquire = resources.mTypedArrayPool.acquire();
        if (typedArrayAcquire == null) {
            typedArrayAcquire = new TypedArray(resources);
        }
        typedArrayAcquire.mRecycled = false;
        typedArrayAcquire.mAssets = resources.getAssets();
        typedArrayAcquire.mMetrics = resources.getDisplayMetrics();
        typedArrayAcquire.resize(i2);
        return typedArrayAcquire;
    }

    private void resize(int i2) {
        this.mLength = i2;
        int i3 = i2 * 6;
        int i4 = i2 + 1;
        VMRuntime runtime = VMRuntime.getRuntime();
        if (this.mDataAddress == 0 || this.mData.length < i3) {
            Class cls = Integer.TYPE;
            int[] iArr = (int[]) runtime.newNonMovableArray(cls, i3);
            this.mData = iArr;
            this.mDataAddress = runtime.addressOf(iArr);
            int[] iArr2 = (int[]) runtime.newNonMovableArray(cls, i4);
            this.mIndices = iArr2;
            this.mIndicesAddress = runtime.addressOf(iArr2);
        }
    }

    public int[] extractThemeAttrs() {
        return extractThemeAttrs(null);
    }

    public boolean getBoolean(int i2, boolean z2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
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
        if (!getValueAt(i3, typedValue)) {
            throw new RuntimeException(m.d(i4, new StringBuilder("getBoolean of bad type: 0x")));
        }
        StrictMode.noteResourceMismatch(typedValue);
        return XmlUtils.convertValueToBoolean(typedValue.coerceToString(), z2);
    }

    public int getChangingConfigurations() {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int[] iArr = this.mData;
        int length = length();
        int iActivityInfoConfigNativeToJava = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 6;
            if (iArr[i3 + 0] != 0) {
                iActivityInfoConfigNativeToJava |= ActivityInfo.activityInfoConfigNativeToJava(iArr[i3 + 4]);
            }
        }
        return iActivityInfoConfigNativeToJava;
    }

    public int getColor(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
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
            return getValueAt(i4, typedValue) ? this.mResources.loadColorStateList(typedValue, typedValue.resourceId, this.mTheme).getDefaultColor() : i3;
        }
        if (i5 != 2) {
            throw new UnsupportedOperationException(m.d(i5, c.s("Can't convert value at index ", i2, " to color: type=0x")));
        }
        TypedValue typedValue2 = this.mValue;
        getValueAt(i4, typedValue2);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue2);
    }

    public ColorStateList getColorStateList(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i2 * 6, typedValue)) {
            return null;
        }
        if (typedValue.type != 2) {
            return this.mResources.loadColorStateList(typedValue, typedValue.resourceId, this.mTheme);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public ComplexColor getComplexColor(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i2 * 6, typedValue)) {
            return null;
        }
        if (typedValue.type != 2) {
            return this.mResources.loadComplexColor(typedValue, typedValue.resourceId, this.mTheme);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public float getDimension(int i2, float f2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        int i4 = iArr[i3 + 0];
        if (i4 == 0) {
            return f2;
        }
        if (i4 == 5) {
            return TypedValue.complexToDimension(iArr[i3 + 1], this.mMetrics);
        }
        if (i4 != 2) {
            throw new UnsupportedOperationException(m.d(i4, c.s("Can't convert value at index ", i2, " to dimension: type=0x")));
        }
        TypedValue typedValue = this.mValue;
        getValueAt(i3, typedValue);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public int getDimensionPixelOffset(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 == 5) {
            return TypedValue.complexToDimensionPixelOffset(iArr[i4 + 1], this.mMetrics);
        }
        if (i5 != 2) {
            throw new UnsupportedOperationException(m.d(i5, c.s("Can't convert value at index ", i2, " to dimension: type=0x")));
        }
        TypedValue typedValue = this.mValue;
        getValueAt(i4, typedValue);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public int getDimensionPixelSize(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 == 5) {
            return TypedValue.complexToDimensionPixelSize(iArr[i4 + 1], this.mMetrics);
        }
        if (i5 != 2) {
            throw new UnsupportedOperationException(m.d(i5, c.s("Can't convert value at index ", i2, " to dimension: type=0x")));
        }
        TypedValue typedValue = this.mValue;
        getValueAt(i4, typedValue);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public Drawable getDrawable(int i2) {
        return getDrawableForDensity(i2, 0);
    }

    public Drawable getDrawableForDensity(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i2 * 6, typedValue)) {
            return null;
        }
        if (typedValue.type != 2) {
            if (i3 > 0) {
                this.mResources.getValueForDensity(typedValue.resourceId, i3, typedValue, true);
            }
            return this.mResources.loadDrawable(typedValue, typedValue.resourceId, i3, this.mTheme);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public float getFloat(int i2, float f2) {
        CharSequence charSequenceCoerceToString;
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
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
        if (!getValueAt(i3, typedValue) || (charSequenceCoerceToString = typedValue.coerceToString()) == null) {
            throw new RuntimeException(m.d(i4, new StringBuilder("getFloat of bad type: 0x")));
        }
        StrictMode.noteResourceMismatch(typedValue);
        return Float.parseFloat(charSequenceCoerceToString.toString());
    }

    public Typeface getFont(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i2 * 6, typedValue)) {
            return null;
        }
        if (typedValue.type != 2) {
            return this.mResources.getFont(typedValue, typedValue.resourceId);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public float getFraction(int i2, int i3, int i4, float f2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i5 = i2 * 6;
        int[] iArr = this.mData;
        int i6 = iArr[i5 + 0];
        if (i6 == 0) {
            return f2;
        }
        if (i6 == 6) {
            return TypedValue.complexToFraction(iArr[i5 + 1], i3, i4);
        }
        if (i6 != 2) {
            throw new UnsupportedOperationException(m.d(i6, c.s("Can't convert value at index ", i2, " to fraction: type=0x")));
        }
        TypedValue typedValue = this.mValue;
        getValueAt(i5, typedValue);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public int getIndex(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return this.mIndices[i2 + 1];
    }

    public int getIndexCount() {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return this.mIndices[0];
    }

    public int getInt(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
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
        if (!getValueAt(i4, typedValue)) {
            throw new RuntimeException(m.d(i5, new StringBuilder("getInt of bad type: 0x")));
        }
        StrictMode.noteResourceMismatch(typedValue);
        return XmlUtils.convertValueToInt(typedValue.coerceToString(), i3);
    }

    public int getInteger(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (i5 == 0) {
            return i3;
        }
        if (i5 >= 16 && i5 <= 31) {
            return iArr[i4 + 1];
        }
        if (i5 != 2) {
            throw new UnsupportedOperationException(m.d(i5, c.s("Can't convert value at index ", i2, " to integer: type=0x")));
        }
        TypedValue typedValue = this.mValue;
        getValueAt(i4, typedValue);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public int getLayoutDimension(int i2, String str) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        int i4 = iArr[i3 + 0];
        if (i4 >= 16 && i4 <= 31) {
            return iArr[i3 + 1];
        }
        if (i4 == 5) {
            return TypedValue.complexToDimensionPixelSize(iArr[i3 + 1], this.mMetrics);
        }
        if (i4 != 2) {
            throw new UnsupportedOperationException(getPositionDescription() + ": You must supply a " + str + " attribute.");
        }
        TypedValue typedValue = this.mValue;
        getValueAt(i3, typedValue);
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
    }

    public String getNonConfigurationString(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        int i5 = iArr[i4 + 0];
        if (((~i3) & ActivityInfo.activityInfoConfigNativeToJava(iArr[i4 + 4])) != 0 || i5 == 0) {
            return null;
        }
        if (i5 == 3) {
            return loadStringValueAt(i4).toString();
        }
        TypedValue typedValue = this.mValue;
        if (!getValueAt(i4, typedValue)) {
            throw new RuntimeException(m.d(i5, new StringBuilder("getNonConfigurationString of bad type: 0x")));
        }
        CharSequence charSequenceCoerceToString = typedValue.coerceToString();
        if (charSequenceCoerceToString != null) {
            return charSequenceCoerceToString.toString();
        }
        return null;
    }

    public String getNonResourceString(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        if (iArr[i3 + 0] != 3 || iArr[i3 + 2] >= 0) {
            return null;
        }
        return this.mXml.getPooledString(iArr[i3 + 1]).toString();
    }

    public String getPositionDescription() {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        XmlBlock.Parser parser = this.mXml;
        return parser != null ? parser.getPositionDescription() : "<internal>";
    }

    public int getResourceId(int i2, int i3) {
        int i4;
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i5 = i2 * 6;
        int[] iArr = this.mData;
        return (iArr[i5 + 0] == 0 || (i4 = iArr[i5 + 3]) == 0) ? i3 : i4;
    }

    public Resources getResources() {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return this.mResources;
    }

    public String getString(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
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
            throw new RuntimeException(m.d(i4, new StringBuilder("getString of bad type: 0x")));
        }
        CharSequence charSequenceCoerceToString = typedValue.coerceToString();
        if (charSequenceCoerceToString != null) {
            return charSequenceCoerceToString.toString();
        }
        return null;
    }

    public CharSequence getText(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
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
            return typedValue.coerceToString();
        }
        throw new RuntimeException(m.d(i4, new StringBuilder("getText of bad type: 0x")));
    }

    public CharSequence[] getTextArray(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        TypedValue typedValue = this.mValue;
        if (getValueAt(i2 * 6, typedValue)) {
            return this.mResources.getTextArray(typedValue.resourceId);
        }
        return null;
    }

    public int getThemeAttributeId(int i2, int i3) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i4 = i2 * 6;
        int[] iArr = this.mData;
        return iArr[i4 + 0] == 2 ? iArr[i4 + 1] : i3;
    }

    public int getType(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return this.mData[(i2 * 6) + 0];
    }

    public boolean getValue(int i2, TypedValue typedValue) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return getValueAt(i2 * 6, typedValue);
    }

    public boolean hasValue(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return this.mData[(i2 * 6) + 0] != 0;
    }

    public boolean hasValueOrEmpty(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int i3 = i2 * 6;
        int[] iArr = this.mData;
        return iArr[i3 + 0] != 0 || iArr[i3 + 1] == 1;
    }

    public int length() {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        return this.mLength;
    }

    public TypedValue peekValue(int i2) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        TypedValue typedValue = this.mValue;
        if (getValueAt(i2 * 6, typedValue)) {
            return typedValue;
        }
        return null;
    }

    public void recycle() {
        if (this.mRecycled) {
            throw new RuntimeException(toString() + " recycled twice!");
        }
        this.mRecycled = true;
        this.mXml = null;
        this.mTheme = null;
        this.mAssets = null;
        this.mResources.mTypedArrayPool.release(this);
    }

    public String toString() {
        return Arrays.toString(this.mData);
    }

    public int[] extractThemeAttrs(int[] iArr) {
        if (this.mRecycled) {
            throw new RuntimeException("Cannot make calls to a recycled instance!");
        }
        int[] iArr2 = this.mData;
        int length = length();
        int[] iArr3 = null;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 6;
            int i4 = i3 + 0;
            if (iArr2[i4] == 2) {
                iArr2[i4] = 0;
                int i5 = iArr2[i3 + 1];
                if (i5 != 0) {
                    if (iArr3 == null) {
                        if (iArr == null || iArr.length != length) {
                            iArr3 = new int[length];
                        } else {
                            Arrays.fill(iArr, 0);
                            iArr3 = iArr;
                        }
                    }
                    iArr3[i2] = i5;
                }
            }
        }
        return iArr3;
    }

    public int getLayoutDimension(int i2, int i3) {
        if (!this.mRecycled) {
            int i4 = i2 * 6;
            int[] iArr = this.mData;
            int i5 = iArr[i4 + 0];
            if (i5 < 16 || i5 > 31) {
                return i5 == 5 ? TypedValue.complexToDimensionPixelSize(iArr[i4 + 1], this.mMetrics) : i3;
            }
            return iArr[i4 + 1];
        }
        throw new RuntimeException("Cannot make calls to a recycled instance!");
    }
}
