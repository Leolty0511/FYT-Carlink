package android.mtp;

/* JADX INFO: loaded from: classes.dex */
class MtpPropertyList {
    private int mCount;
    public final int[] mDataTypes;
    public long[] mLongValues;
    private final int mMaxCount;
    public final int[] mObjectHandles;
    public final int[] mPropertyCodes;
    public int mResult;
    public String[] mStringValues;

    public MtpPropertyList(int i2, int i3) {
        this.mMaxCount = i2;
        this.mResult = i3;
        this.mObjectHandles = new int[i2];
        this.mPropertyCodes = new int[i2];
        this.mDataTypes = new int[i2];
    }

    public void append(int i2, int i3, int i4, long j2) {
        int i5 = this.mCount;
        this.mCount = i5 + 1;
        if (this.mLongValues == null) {
            this.mLongValues = new long[this.mMaxCount];
        }
        this.mObjectHandles[i5] = i2;
        this.mPropertyCodes[i5] = i3;
        this.mDataTypes[i5] = i4;
        this.mLongValues[i5] = j2;
    }

    public void setResult(int i2) {
        this.mResult = i2;
    }

    public void append(int i2, int i3, String str) {
        int i4 = this.mCount;
        this.mCount = i4 + 1;
        if (this.mStringValues == null) {
            this.mStringValues = new String[this.mMaxCount];
        }
        this.mObjectHandles[i4] = i2;
        this.mPropertyCodes[i4] = i3;
        this.mDataTypes[i4] = 65535;
        this.mStringValues[i4] = str;
    }
}
