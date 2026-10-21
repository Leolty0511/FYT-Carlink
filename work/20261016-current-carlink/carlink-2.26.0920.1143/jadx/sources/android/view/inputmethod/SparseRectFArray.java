package android.view.inputmethod;

import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SparseRectFArray implements Parcelable {
    public static final Parcelable.Creator<SparseRectFArray> CREATOR = new Parcelable.Creator<SparseRectFArray>() { // from class: android.view.inputmethod.SparseRectFArray.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SparseRectFArray createFromParcel(Parcel parcel) {
            return new SparseRectFArray(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SparseRectFArray[] newArray(int i2) {
            return new SparseRectFArray[i2];
        }
    };
    private final float[] mCoordinates;
    private final int[] mFlagsArray;
    private final int[] mKeys;

    public static final class SparseRectFArrayBuilder {
        private static int INITIAL_SIZE = 16;
        private int mCount = 0;
        private int[] mKeys = null;
        private float[] mCoordinates = null;
        private int[] mFlagsArray = null;

        private void checkIndex(int i2) {
            int i3 = this.mCount;
            if (i3 != 0 && this.mKeys[i3 - 1] >= i2) {
                throw new IllegalArgumentException("key must be greater than all existing keys.");
            }
        }

        private void ensureBufferSize() {
            if (this.mKeys == null) {
                this.mKeys = new int[INITIAL_SIZE];
            }
            if (this.mCoordinates == null) {
                this.mCoordinates = new float[INITIAL_SIZE * 4];
            }
            if (this.mFlagsArray == null) {
                this.mFlagsArray = new int[INITIAL_SIZE];
            }
            int i2 = this.mCount;
            int i3 = i2 + 1;
            int[] iArr = this.mKeys;
            if (iArr.length <= i3) {
                int[] iArr2 = new int[i3 * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.mKeys = iArr2;
            }
            int i4 = this.mCount;
            int i5 = (i4 + 1) * 4;
            float[] fArr = this.mCoordinates;
            if (fArr.length <= i5) {
                float[] fArr2 = new float[i5 * 2];
                System.arraycopy(fArr, 0, fArr2, 0, i4 * 4);
                this.mCoordinates = fArr2;
            }
            int[] iArr3 = this.mFlagsArray;
            if (iArr3.length <= i3) {
                int[] iArr4 = new int[i3 * 2];
                System.arraycopy(iArr3, 0, iArr4, 0, this.mCount);
                this.mFlagsArray = iArr4;
            }
        }

        public SparseRectFArrayBuilder append(int i2, float f2, float f3, float f4, float f5, int i3) {
            checkIndex(i2);
            ensureBufferSize();
            int i4 = this.mCount;
            int i5 = i4 * 4;
            float[] fArr = this.mCoordinates;
            fArr[i5 + 0] = f2;
            fArr[i5 + 1] = f3;
            fArr[i5 + 2] = f4;
            fArr[i5 + 3] = f5;
            this.mFlagsArray[i4] = i3;
            this.mKeys[i4] = i2;
            this.mCount = i4 + 1;
            return this;
        }

        public SparseRectFArray build() {
            return new SparseRectFArray(this);
        }

        public boolean isEmpty() {
            return this.mCount <= 0;
        }

        public void reset() {
            if (this.mCount == 0) {
                this.mKeys = null;
                this.mCoordinates = null;
                this.mFlagsArray = null;
            }
            this.mCount = 0;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SparseRectFArray)) {
            return false;
        }
        SparseRectFArray sparseRectFArray = (SparseRectFArray) obj;
        return Arrays.equals(this.mKeys, sparseRectFArray.mKeys) && Arrays.equals(this.mCoordinates, sparseRectFArray.mCoordinates) && Arrays.equals(this.mFlagsArray, sparseRectFArray.mFlagsArray);
    }

    public RectF get(int i2) {
        int iBinarySearch;
        int[] iArr = this.mKeys;
        if (iArr == null || i2 < 0 || (iBinarySearch = Arrays.binarySearch(iArr, i2)) < 0) {
            return null;
        }
        int i3 = iBinarySearch * 4;
        float[] fArr = this.mCoordinates;
        return new RectF(fArr[i3], fArr[i3 + 1], fArr[i3 + 2], fArr[i3 + 3]);
    }

    public int getFlags(int i2, int i3) {
        int iBinarySearch;
        int[] iArr = this.mKeys;
        return (iArr != null && i2 >= 0 && (iBinarySearch = Arrays.binarySearch(iArr, i2)) >= 0) ? this.mFlagsArray[iBinarySearch] : i3;
    }

    public int hashCode() {
        int[] iArr = this.mKeys;
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        int length = iArr.length;
        for (int i2 = 0; i2 < 4; i2++) {
            length = (int) ((length * 31) + this.mCoordinates[i2]);
        }
        return (length * 31) + this.mFlagsArray[0];
    }

    public String toString() {
        if (this.mKeys == null || this.mCoordinates == null || this.mFlagsArray == null) {
            return "SparseRectFArray{}";
        }
        StringBuilder sb = new StringBuilder("SparseRectFArray{");
        for (int i2 = 0; i2 < this.mKeys.length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            int i3 = i2 * 4;
            sb.append(this.mKeys[i2]);
            sb.append(":[");
            sb.append(this.mCoordinates[i3 + 0]);
            sb.append(",");
            sb.append(this.mCoordinates[i3 + 1]);
            sb.append("],[");
            sb.append(this.mCoordinates[i3 + 2]);
            sb.append(",");
            sb.append(this.mCoordinates[i3 + 3]);
            sb.append("]:flagsArray=");
            sb.append(this.mFlagsArray[i2]);
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.mKeys);
        parcel.writeFloatArray(this.mCoordinates);
        parcel.writeIntArray(this.mFlagsArray);
    }

    public SparseRectFArray(Parcel parcel) {
        this.mKeys = parcel.createIntArray();
        this.mCoordinates = parcel.createFloatArray();
        this.mFlagsArray = parcel.createIntArray();
    }

    private SparseRectFArray(SparseRectFArrayBuilder sparseRectFArrayBuilder) {
        if (sparseRectFArrayBuilder.mCount == 0) {
            this.mKeys = null;
            this.mCoordinates = null;
            this.mFlagsArray = null;
            return;
        }
        int[] iArr = new int[sparseRectFArrayBuilder.mCount];
        this.mKeys = iArr;
        float[] fArr = new float[sparseRectFArrayBuilder.mCount * 4];
        this.mCoordinates = fArr;
        int[] iArr2 = new int[sparseRectFArrayBuilder.mCount];
        this.mFlagsArray = iArr2;
        System.arraycopy(sparseRectFArrayBuilder.mKeys, 0, iArr, 0, sparseRectFArrayBuilder.mCount);
        System.arraycopy(sparseRectFArrayBuilder.mCoordinates, 0, fArr, 0, sparseRectFArrayBuilder.mCount * 4);
        System.arraycopy(sparseRectFArrayBuilder.mFlagsArray, 0, iArr2, 0, sparseRectFArrayBuilder.mCount);
    }
}
