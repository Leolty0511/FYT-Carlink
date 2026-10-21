package android.content.res;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.StateSet;
import android.util.Xml;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class ColorStateList implements Parcelable {
    private int[] mColors;
    private int mDefaultColor;
    private int[][] mStateSpecs;
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
        this.mDefaultColor = -65536;
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser) {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet);
        }
        throw new XmlPullParserException("No start tag found");
    }

    private static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            ColorStateList colorStateList = new ColorStateList();
            colorStateList.inflate(resources, xmlPullParser, attributeSet);
            return colorStateList;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid drawable tag " + name);
    }

    private void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth;
        int i2;
        int i3 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int iH = 20;
        int[] iArr = new int[20];
        int[][] iArr2 = new int[20][];
        int i4 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i3 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                int color = -65536;
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i5 = 0;
                int attributeResourceValue = 0;
                boolean z2 = false;
                int i6 = 0;
                while (i5 < attributeCount) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i5);
                    if (attributeNameResource == 0) {
                        break;
                    }
                    int i7 = depth2;
                    if (attributeNameResource == 16843173) {
                        attributeResourceValue = attributeSet.getAttributeResourceValue(i5, 0);
                        if (attributeResourceValue == 0) {
                            color = attributeSet.getAttributeIntValue(i5, color);
                            z2 = true;
                        }
                    } else {
                        int i8 = i6 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i5, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i6] = attributeNameResource;
                        i6 = i8;
                    }
                    i5++;
                    depth2 = i7;
                }
                i2 = depth2;
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i6);
                if (attributeResourceValue != 0) {
                    color = resources.getColor(attributeResourceValue);
                } else if (!z2) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'android:color' attribute.");
                }
                if (i4 == 0 || iArrTrimStateSet.length == 0) {
                    this.mDefaultColor = color;
                }
                int i9 = i4 + 1;
                if (i9 >= iH) {
                    iH = a.h(i9);
                    int[] iArr4 = new int[iH];
                    System.arraycopy(iArr, 0, iArr4, 0, i4);
                    int[][] iArr5 = new int[iH][];
                    System.arraycopy(iArr2, 0, iArr5, 0, i4);
                    iArr2 = iArr5;
                    iArr = iArr4;
                }
                iArr[i4] = color;
                iArr2[i4] = iArrTrimStateSet;
                i4 = i9;
            } else {
                i2 = depth2;
            }
            depth2 = i2;
            i3 = 1;
        }
        int[] iArr6 = new int[i4];
        this.mColors = iArr6;
        this.mStateSpecs = new int[i4][];
        System.arraycopy(iArr, 0, iArr6, 0, i4);
        System.arraycopy(iArr2, 0, this.mStateSpecs, 0, i4);
    }

    public static ColorStateList valueOf(int i2) {
        SparseArray<WeakReference<ColorStateList>> sparseArray = sCache;
        synchronized (sparseArray) {
            WeakReference<ColorStateList> weakReference = sparseArray.get(i2);
            ColorStateList colorStateList = weakReference != null ? weakReference.get() : null;
            if (colorStateList != null) {
                return colorStateList;
            }
            ColorStateList colorStateList2 = new ColorStateList(EMPTY, new int[]{i2});
            sparseArray.put(i2, new WeakReference<>(colorStateList2));
            return colorStateList2;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
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

    public int getDefaultColor() {
        return this.mDefaultColor;
    }

    public boolean isStateful() {
        return this.mStateSpecs.length > 1;
    }

    public String toString() {
        return "ColorStateList{mStateSpecs=" + Arrays.deepToString(this.mStateSpecs) + "mColors=" + Arrays.toString(this.mColors) + "mDefaultColor=" + this.mDefaultColor + '}';
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
        int length = this.mStateSpecs.length;
        parcel.writeInt(length);
        for (int i3 = 0; i3 < length; i3++) {
            parcel.writeIntArray(this.mStateSpecs[i3]);
        }
        parcel.writeIntArray(this.mColors);
    }

    public ColorStateList(int[][] iArr, int[] iArr2) {
        this.mDefaultColor = -65536;
        this.mStateSpecs = iArr;
        this.mColors = iArr2;
        if (iArr.length > 0) {
            this.mDefaultColor = iArr2[0];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2].length == 0) {
                    this.mDefaultColor = iArr2[i2];
                }
            }
        }
    }
}
