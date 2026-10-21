package android.content.res;

import android.app.m;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.util.SparseArray;
import android.util.StateSet;
import android.util.Xml;
import com.android.ims.ImsConfig;
import com.android.internal.R;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ColorStateList extends ComplexColor implements Parcelable {
    private static final int DEFAULT_COLOR = -65536;
    private static final String TAG = "ColorStateList";
    private int mChangingConfigurations;
    private int[] mColors;
    private int mDefaultColor;
    private ColorStateListFactory mFactory;
    private boolean mIsOpaque;
    private int[][] mStateSpecs;
    private int[][] mThemeAttrs;
    private static final int[][] EMPTY = {new int[0]};
    private static final SparseArray<WeakReference<ColorStateList>> sCache = new SparseArray<>();
    public static final Parcelable.Creator<ColorStateList> CREATOR = new Parcelable.Creator<ColorStateList>() { // from class: android.content.res.ColorStateList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ColorStateList createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int[][] iArr = new int[i2][];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = parcel.createIntArray();
            }
            return new ColorStateList(iArr, parcel.createIntArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ColorStateList[] newArray(int i2) {
            return new ColorStateList[i2];
        }
    };

    private ColorStateList() {
    }

    private void applyTheme(Resources.Theme theme) {
        int[][] iArr = this.mThemeAttrs;
        if (iArr == null) {
            return;
        }
        int length = iArr.length;
        boolean z2 = false;
        for (int i2 = 0; i2 < length; i2++) {
            int[] iArr2 = iArr[i2];
            if (iArr2 != null) {
                TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr2, R.styleable.ColorStateListItem);
                float fAlpha = iArr[i2][0] != 0 ? Color.alpha(this.mColors[i2]) / 255.0f : 1.0f;
                int[] iArrExtractThemeAttrs = typedArrayResolveAttributes.extractThemeAttrs(iArr[i2]);
                iArr[i2] = iArrExtractThemeAttrs;
                if (iArrExtractThemeAttrs != null) {
                    z2 = true;
                }
                this.mColors[i2] = modulateColorAlpha(typedArrayResolveAttributes.getColor(0, this.mColors[i2]), typedArrayResolveAttributes.getFloat(1, fAlpha));
                this.mChangingConfigurations |= typedArrayResolveAttributes.getChangingConfigurations();
                typedArrayResolveAttributes.recycle();
            }
        }
        if (!z2) {
            this.mThemeAttrs = null;
        }
        onColorsChanged();
    }

    @Deprecated
    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser) {
        return createFromXml(resources, xmlPullParser, null);
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            ColorStateList colorStateList = new ColorStateList();
            colorStateList.inflate(resources, xmlPullParser, attributeSet, theme);
            return colorStateList;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    private void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i2;
        int depth;
        int i3 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = (int[][]) ArrayUtils.newUnpaddedArray(int[].class, 20);
        int[][] iArr2 = new int[iArr.length][];
        int[] iArrAppend = new int[iArr.length];
        int i4 = 0;
        int i5 = -65536;
        int i6 = 0;
        boolean z2 = false;
        int i7 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i3 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                TypedArray typedArrayObtainAttributes = Resources.obtainAttributes(resources, theme, attributeSet, R.styleable.ColorStateListItem);
                int[] iArrExtractThemeAttrs = typedArrayObtainAttributes.extractThemeAttrs();
                int color = typedArrayObtainAttributes.getColor(i4, Color.MAGENTA);
                int i8 = depth2;
                float f2 = typedArrayObtainAttributes.getFloat(1, 1.0f);
                int changingConfigurations = i6 | typedArrayObtainAttributes.getChangingConfigurations();
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i9 = 0;
                int i10 = 0;
                while (i9 < attributeCount) {
                    int i11 = attributeCount;
                    int attributeNameResource = attributeSet.getAttributeNameResource(i9);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551) {
                        int i12 = i10 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i9, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i10] = attributeNameResource;
                        i10 = i12;
                    }
                    i9++;
                    attributeCount = i11;
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i10);
                int iModulateColorAlpha = modulateColorAlpha(color, f2);
                if (i7 == 0 || iArrTrimStateSet.length == 0) {
                    i5 = iModulateColorAlpha;
                }
                if (iArrExtractThemeAttrs != null) {
                    z2 = true;
                }
                iArrAppend = GrowingArrayUtils.append(iArrAppend, i7, iModulateColorAlpha);
                iArr2 = (int[][]) GrowingArrayUtils.append(iArr2, i7, iArrExtractThemeAttrs);
                iArr = (int[][]) GrowingArrayUtils.append(iArr, i7, iArrTrimStateSet);
                i7++;
                depth2 = i8;
                i6 = changingConfigurations;
            } else {
                depth2 = depth2;
            }
            i3 = 1;
            i4 = 0;
        }
        this.mChangingConfigurations = i6;
        this.mDefaultColor = i5;
        if (z2) {
            int[][] iArr4 = new int[i7][];
            this.mThemeAttrs = iArr4;
            i2 = 0;
            System.arraycopy(iArr2, 0, iArr4, 0, i7);
        } else {
            i2 = 0;
            this.mThemeAttrs = null;
        }
        int[] iArr5 = new int[i7];
        this.mColors = iArr5;
        this.mStateSpecs = new int[i7][];
        System.arraycopy(iArrAppend, i2, iArr5, i2, i7);
        System.arraycopy(iArr, i2, this.mStateSpecs, i2, i7);
        onColorsChanged();
    }

    private int modulateColorAlpha(int i2, float f2) {
        if (f2 == 1.0f) {
            return i2;
        }
        return (i2 & 16777215) | (MathUtils.constrain((int) ((Color.alpha(i2) * f2) + 0.5f), 0, 255) << 24);
    }

    private void onColorsChanged() {
        int i2;
        int[][] iArr = this.mStateSpecs;
        int[] iArr2 = this.mColors;
        int length = iArr.length;
        boolean z2 = true;
        if (length > 0) {
            i2 = iArr2[0];
            for (int i3 = length - 1; i3 > 0; i3--) {
                if (iArr[i3].length == 0) {
                    i2 = iArr2[i3];
                    break;
                }
            }
            for (int i4 = 0; i4 < length; i4++) {
                if (Color.alpha(iArr2[i4]) != 255) {
                    z2 = false;
                    break;
                }
            }
        } else {
            i2 = -65536;
        }
        this.mDefaultColor = i2;
        this.mIsOpaque = z2;
    }

    public static ColorStateList valueOf(int i2) {
        SparseArray<WeakReference<ColorStateList>> sparseArray = sCache;
        synchronized (sparseArray) {
            int iIndexOfKey = sparseArray.indexOfKey(i2);
            if (iIndexOfKey >= 0) {
                ColorStateList colorStateList = sparseArray.valueAt(iIndexOfKey).get();
                if (colorStateList != null) {
                    return colorStateList;
                }
                sparseArray.removeAt(iIndexOfKey);
            }
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                SparseArray<WeakReference<ColorStateList>> sparseArray2 = sCache;
                if (sparseArray2.valueAt(size).get() == null) {
                    sparseArray2.removeAt(size);
                }
            }
            ColorStateList colorStateList2 = new ColorStateList(EMPTY, new int[]{i2});
            sCache.put(i2, new WeakReference<>(colorStateList2));
            return colorStateList2;
        }
    }

    @Override // android.content.res.ComplexColor
    public boolean canApplyTheme() {
        return this.mThemeAttrs != null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.content.res.ComplexColor
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mChangingConfigurations;
    }

    public int getColorForState(int[] iArr, int i2) {
        int length = this.mStateSpecs.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (StateSet.stateSetMatches(this.mStateSpecs[i3], iArr)) {
                return this.mColors[i3];
            }
        }
        return i2;
    }

    public int[] getColors() {
        return this.mColors;
    }

    @Override // android.content.res.ComplexColor
    public ConstantState<ComplexColor> getConstantState() {
        if (this.mFactory == null) {
            this.mFactory = new ColorStateListFactory(this);
        }
        return this.mFactory;
    }

    @Override // android.content.res.ComplexColor
    public int getDefaultColor() {
        return this.mDefaultColor;
    }

    public int[][] getStates() {
        return this.mStateSpecs;
    }

    public boolean hasFocusStateSpecified() {
        return StateSet.containsAttribute(this.mStateSpecs, 16842908);
    }

    public boolean hasState(int i2) {
        for (int[] iArr : this.mStateSpecs) {
            for (int i3 : iArr) {
                if (i3 == i2 || i3 == (~i2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isOpaque() {
        return this.mIsOpaque;
    }

    @Override // android.content.res.ComplexColor
    public boolean isStateful() {
        int[][] iArr = this.mStateSpecs;
        return iArr.length >= 1 && iArr[0].length > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColorStateList{mThemeAttrs=");
        sb.append(Arrays.deepToString(this.mThemeAttrs));
        sb.append("mChangingConfigurations=");
        sb.append(this.mChangingConfigurations);
        sb.append("mStateSpecs=");
        sb.append(Arrays.deepToString(this.mStateSpecs));
        sb.append("mColors=");
        sb.append(Arrays.toString(this.mColors));
        sb.append("mDefaultColor=");
        return m.j(sb, this.mDefaultColor, '}');
    }

    public ColorStateList withAlpha(int i2) {
        int length = this.mColors.length;
        int[] iArr = new int[length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = (this.mColors[i3] & 16777215) | (i2 << 24);
        }
        return new ColorStateList(this.mStateSpecs, iArr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (canApplyTheme()) {
            Log.w(TAG, "Wrote partially-resolved ColorStateList to parcel!");
        }
        int length = this.mStateSpecs.length;
        parcel.writeInt(length);
        for (int i3 = 0; i3 < length; i3++) {
            parcel.writeIntArray(this.mStateSpecs[i3]);
        }
        parcel.writeIntArray(this.mColors);
    }

    public static class ColorStateListFactory extends ConstantState<ComplexColor> {
        private final ColorStateList mSrc;

        public ColorStateListFactory(ColorStateList colorStateList) {
            this.mSrc = colorStateList;
        }

        @Override // android.content.res.ConstantState
        public int getChangingConfigurations() {
            return this.mSrc.mChangingConfigurations;
        }

        @Override // android.content.res.ConstantState
        /* JADX INFO: renamed from: newInstance, reason: merged with bridge method [inline-methods] */
        public ComplexColor newInstance2() {
            return this.mSrc;
        }

        @Override // android.content.res.ConstantState
        /* JADX INFO: renamed from: newInstance, reason: merged with bridge method [inline-methods] */
        public ComplexColor newInstance2(Resources resources, Resources.Theme theme) {
            return this.mSrc.obtainForTheme(theme);
        }
    }

    public ColorStateList(int[][] iArr, int[] iArr2) {
        this.mStateSpecs = iArr;
        this.mColors = iArr2;
        onColorsChanged();
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    @Override // android.content.res.ComplexColor
    public ColorStateList obtainForTheme(Resources.Theme theme) {
        if (theme == null || !canApplyTheme()) {
            return this;
        }
        ColorStateList colorStateList = new ColorStateList(this);
        colorStateList.applyTheme(theme);
        return colorStateList;
    }

    private ColorStateList(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mChangingConfigurations = colorStateList.mChangingConfigurations;
            this.mStateSpecs = colorStateList.mStateSpecs;
            this.mDefaultColor = colorStateList.mDefaultColor;
            this.mIsOpaque = colorStateList.mIsOpaque;
            this.mThemeAttrs = (int[][]) colorStateList.mThemeAttrs.clone();
            this.mColors = (int[]) colorStateList.mColors.clone();
        }
    }
}
