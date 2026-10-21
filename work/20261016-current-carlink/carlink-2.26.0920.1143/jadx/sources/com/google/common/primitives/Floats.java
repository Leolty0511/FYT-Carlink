package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
public final class Floats extends FloatsMethodsForWeb {
    public static final int BYTES = 4;

    @GwtCompatible
    public static class FloatArrayAsList extends AbstractList<Float> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final float[] array;
        final int end;
        final int start;

        public FloatArrayAsList(float[] fArr) {
            this(fArr, 0, fArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Float) && Floats.indexOf(this.array, ((Float) obj).floatValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FloatArrayAsList)) {
                return super.equals(obj);
            }
            FloatArrayAsList floatArrayAsList = (FloatArrayAsList) obj;
            int size = size();
            if (floatArrayAsList.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (this.array[this.start + i2] != floatArrayAsList.array[floatArrayAsList.start + i2]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                iHashCode = (iHashCode * 31) + Floats.hashCode(this.array[i2]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            if (!(obj instanceof Float) || (iIndexOf = Floats.indexOf(this.array, ((Float) obj).floatValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iIndexOf - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            if (!(obj instanceof Float) || (iLastIndexOf = Floats.lastIndexOf(this.array, ((Float) obj).floatValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iLastIndexOf - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Float> subList(int i2, int i3) {
            Preconditions.checkPositionIndexes(i2, i3, size());
            if (i2 == i3) {
                return Collections.emptyList();
            }
            float[] fArr = this.array;
            int i4 = this.start;
            return new FloatArrayAsList(fArr, i2 + i4, i4 + i3);
        }

        public float[] toFloatArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[');
            sb.append(this.array[this.start]);
            int i2 = this.start;
            while (true) {
                i2++;
                if (i2 >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(this.array[i2]);
            }
        }

        public FloatArrayAsList(float[] fArr, int i2, int i3) {
            this.array = fArr;
            this.start = i2;
            this.end = i3;
        }

        @Override // java.util.AbstractList, java.util.List
        public Float get(int i2) {
            Preconditions.checkElementIndex(i2, size());
            return Float.valueOf(this.array[this.start + i2]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Float set(int i2, Float f2) {
            Preconditions.checkElementIndex(i2, size());
            float[] fArr = this.array;
            int i3 = this.start;
            float f3 = fArr[i3 + i2];
            fArr[i3 + i2] = ((Float) Preconditions.checkNotNull(f2)).floatValue();
            return Float.valueOf(f3);
        }
    }

    public static final class FloatConverter extends Converter<String, Float> implements Serializable {
        static final FloatConverter INSTANCE = new FloatConverter();
        private static final long serialVersionUID = 1;

        private FloatConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Floats.stringConverter()";
        }

        @Override // com.google.common.base.Converter
        public String doBackward(Float f2) {
            return f2.toString();
        }

        @Override // com.google.common.base.Converter
        public Float doForward(String str) {
            return Float.valueOf(str);
        }
    }

    public enum LexicographicalComparator implements Comparator<float[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Floats.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(float[] fArr, float[] fArr2) {
            int iMin = Math.min(fArr.length, fArr2.length);
            for (int i2 = 0; i2 < iMin; i2++) {
                int iCompare = Float.compare(fArr[i2], fArr2[i2]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return fArr.length - fArr2.length;
        }
    }

    private Floats() {
    }

    public static List<Float> asList(float... fArr) {
        return fArr.length == 0 ? Collections.emptyList() : new FloatArrayAsList(fArr);
    }

    public static int compare(float f2, float f3) {
        return Float.compare(f2, f3);
    }

    public static float[] concat(float[]... fArr) {
        int length = 0;
        for (float[] fArr2 : fArr) {
            length += fArr2.length;
        }
        float[] fArr3 = new float[length];
        int length2 = 0;
        for (float[] fArr4 : fArr) {
            System.arraycopy(fArr4, 0, fArr3, length2, fArr4.length);
            length2 += fArr4.length;
        }
        return fArr3;
    }

    public static float constrainToRange(float f2, float f3, float f4) {
        if (f3 <= f4) {
            return Math.min(Math.max(f2, f3), f4);
        }
        throw new IllegalArgumentException(Strings.lenientFormat("min (%s) must be less than or equal to max (%s)", Float.valueOf(f3), Float.valueOf(f4)));
    }

    public static boolean contains(float[] fArr, float f2) {
        for (float f3 : fArr) {
            if (f3 == f2) {
                return true;
            }
        }
        return false;
    }

    public static float[] ensureCapacity(float[] fArr, int i2, int i3) {
        Preconditions.checkArgument(i2 >= 0, "Invalid minLength: %s", i2);
        Preconditions.checkArgument(i3 >= 0, "Invalid padding: %s", i3);
        return fArr.length < i2 ? Arrays.copyOf(fArr, i2 + i3) : fArr;
    }

    public static int hashCode(float f2) {
        return Float.valueOf(f2).hashCode();
    }

    public static int indexOf(float[] fArr, float f2) {
        return indexOf(fArr, f2, 0, fArr.length);
    }

    public static boolean isFinite(float f2) {
        return Float.NEGATIVE_INFINITY < f2 && f2 < Float.POSITIVE_INFINITY;
    }

    public static String join(String str, float... fArr) {
        Preconditions.checkNotNull(str);
        if (fArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(fArr.length * 12);
        sb.append(fArr[0]);
        for (int i2 = 1; i2 < fArr.length; i2++) {
            sb.append(str);
            sb.append(fArr[i2]);
        }
        return sb.toString();
    }

    public static int lastIndexOf(float[] fArr, float f2) {
        return lastIndexOf(fArr, f2, 0, fArr.length);
    }

    public static Comparator<float[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    @GwtIncompatible("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static float max(float... fArr) {
        Preconditions.checkArgument(fArr.length > 0);
        float fMax = fArr[0];
        for (int i2 = 1; i2 < fArr.length; i2++) {
            fMax = Math.max(fMax, fArr[i2]);
        }
        return fMax;
    }

    @GwtIncompatible("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static float min(float... fArr) {
        Preconditions.checkArgument(fArr.length > 0);
        float fMin = fArr[0];
        for (int i2 = 1; i2 < fArr.length; i2++) {
            fMin = Math.min(fMin, fArr[i2]);
        }
        return fMin;
    }

    public static void reverse(float[] fArr) {
        Preconditions.checkNotNull(fArr);
        reverse(fArr, 0, fArr.length);
    }

    public static void rotate(float[] fArr, int i2) {
        rotate(fArr, i2, 0, fArr.length);
    }

    public static void sortDescending(float[] fArr) {
        Preconditions.checkNotNull(fArr);
        sortDescending(fArr, 0, fArr.length);
    }

    public static Converter<String, Float> stringConverter() {
        return FloatConverter.INSTANCE;
    }

    public static float[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof FloatArrayAsList) {
            return ((FloatArrayAsList) collection).toFloatArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        float[] fArr = new float[length];
        for (int i2 = 0; i2 < length; i2++) {
            fArr[i2] = ((Number) Preconditions.checkNotNull(array[i2])).floatValue();
        }
        return fArr;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static Float tryParse(String str) {
        if (!Doubles.FLOATING_POINT_PATTERN.matcher(str).matches()) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(float[] fArr, float f2, int i2, int i3) {
        while (i2 < i3) {
            if (fArr[i2] == f2) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(float[] fArr, float f2, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            if (fArr[i4] == f2) {
                return i4;
            }
        }
        return -1;
    }

    public static void rotate(float[] fArr, int i2, int i3, int i4) {
        Preconditions.checkNotNull(fArr);
        Preconditions.checkPositionIndexes(i3, i4, fArr.length);
        if (fArr.length <= 1) {
            return;
        }
        int i5 = i4 - i3;
        int i6 = (-i2) % i5;
        if (i6 < 0) {
            i6 += i5;
        }
        int i7 = i6 + i3;
        if (i7 == i3) {
            return;
        }
        reverse(fArr, i3, i7);
        reverse(fArr, i7, i4);
        reverse(fArr, i3, i4);
    }

    public static int indexOf(float[] fArr, float[] fArr2) {
        Preconditions.checkNotNull(fArr, "array");
        Preconditions.checkNotNull(fArr2, TypedValues.AttributesType.S_TARGET);
        if (fArr2.length == 0) {
            return 0;
        }
        for (int i2 = 0; i2 < (fArr.length - fArr2.length) + 1; i2++) {
            for (int i3 = 0; i3 < fArr2.length; i3++) {
                if (fArr[i2 + i3] != fArr2[i3]) {
                }
            }
            return i2;
        }
        return -1;
    }

    public static void reverse(float[] fArr, int i2, int i3) {
        Preconditions.checkNotNull(fArr);
        Preconditions.checkPositionIndexes(i2, i3, fArr.length);
        for (int i4 = i3 - 1; i2 < i4; i4--) {
            float f2 = fArr[i2];
            fArr[i2] = fArr[i4];
            fArr[i4] = f2;
            i2++;
        }
    }

    public static void sortDescending(float[] fArr, int i2, int i3) {
        Preconditions.checkNotNull(fArr);
        Preconditions.checkPositionIndexes(i2, i3, fArr.length);
        Arrays.sort(fArr, i2, i3);
        reverse(fArr, i2, i3);
    }
}
