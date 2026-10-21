package android.telephony;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TelephonyHistogram implements Parcelable {
    private static final int ABSENT = 0;
    public static final Parcelable.Creator<TelephonyHistogram> CREATOR = new Parcelable.Creator<TelephonyHistogram>() { // from class: android.telephony.TelephonyHistogram.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TelephonyHistogram createFromParcel(Parcel parcel) {
            return new TelephonyHistogram(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TelephonyHistogram[] newArray(int i2) {
            return new TelephonyHistogram[i2];
        }
    };
    private static final int PRESENT = 1;
    private static final int RANGE_CALCULATION_COUNT = 10;
    public static final int TELEPHONY_CATEGORY_RIL = 1;
    private int mAverageTimeMs;
    private final int mBucketCount;
    private final int[] mBucketCounters;
    private final int[] mBucketEndPoints;
    private final int mCategory;
    private final int mId;
    private int[] mInitialTimings;
    private int mMaxTimeMs;
    private int mMinTimeMs;
    private int mSampleCount;

    public TelephonyHistogram(int i2, int i3, int i4) {
        if (i4 <= 1) {
            throw new IllegalArgumentException("Invalid number of buckets");
        }
        this.mCategory = i2;
        this.mId = i3;
        this.mMinTimeMs = Integer.MAX_VALUE;
        this.mMaxTimeMs = 0;
        this.mAverageTimeMs = 0;
        this.mSampleCount = 0;
        this.mInitialTimings = new int[10];
        this.mBucketCount = i4;
        this.mBucketEndPoints = new int[i4 - 1];
        this.mBucketCounters = new int[i4];
    }

    private void addToBucketCounter(int[] iArr, int[] iArr2, int i2) {
        int i3 = 0;
        while (i3 < iArr.length) {
            if (i2 <= iArr[i3]) {
                iArr2[i3] = iArr2[i3] + 1;
                return;
            }
            i3++;
        }
        iArr2[i3] = iArr2[i3] + 1;
    }

    private void calculateBucketEndPoints(int[] iArr) {
        int i2 = 1;
        while (true) {
            int i3 = this.mBucketCount;
            if (i2 >= i3) {
                return;
            }
            int i4 = this.mMinTimeMs;
            iArr[i2 - 1] = (((this.mMaxTimeMs - i4) * i2) / i3) + i4;
            i2++;
        }
    }

    private int[] getDeepCopyOfArray(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    private int[] getInitialTimings() {
        return this.mInitialTimings;
    }

    public void addTimeTaken(int i2) {
        int i3 = this.mSampleCount;
        if (i3 == 0 || i3 == Integer.MAX_VALUE) {
            if (i3 == 0) {
                this.mMinTimeMs = i2;
                this.mMaxTimeMs = i2;
                this.mAverageTimeMs = i2;
            } else {
                this.mInitialTimings = new int[10];
            }
            this.mSampleCount = 1;
            Arrays.fill(this.mInitialTimings, 0);
            this.mInitialTimings[0] = i2;
            Arrays.fill(this.mBucketEndPoints, 0);
            Arrays.fill(this.mBucketCounters, 0);
            return;
        }
        if (i2 < this.mMinTimeMs) {
            this.mMinTimeMs = i2;
        }
        if (i2 > this.mMaxTimeMs) {
            this.mMaxTimeMs = i2;
        }
        long j2 = (((long) this.mAverageTimeMs) * ((long) i3)) + ((long) i2);
        int i4 = i3 + 1;
        this.mSampleCount = i4;
        this.mAverageTimeMs = (int) (j2 / ((long) i4));
        if (i4 < 10) {
            this.mInitialTimings[i4 - 1] = i2;
            return;
        }
        if (i4 != 10) {
            addToBucketCounter(this.mBucketEndPoints, this.mBucketCounters, i2);
            return;
        }
        this.mInitialTimings[i4 - 1] = i2;
        calculateBucketEndPoints(this.mBucketEndPoints);
        for (int i5 = 0; i5 < 10; i5++) {
            addToBucketCounter(this.mBucketEndPoints, this.mBucketCounters, this.mInitialTimings[i5]);
        }
        this.mInitialTimings = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAverageTime() {
        return this.mAverageTimeMs;
    }

    public int getBucketCount() {
        return this.mBucketCount;
    }

    public int[] getBucketCounters() {
        int i2 = this.mSampleCount;
        if (i2 <= 1 || i2 >= 10) {
            return getDeepCopyOfArray(this.mBucketCounters);
        }
        int i3 = this.mBucketCount;
        int[] iArr = new int[i3 - 1];
        int[] iArr2 = new int[i3];
        calculateBucketEndPoints(iArr);
        for (int i4 = 0; i4 < this.mSampleCount; i4++) {
            addToBucketCounter(iArr, iArr2, this.mInitialTimings[i4]);
        }
        return iArr2;
    }

    public int[] getBucketEndPoints() {
        int i2 = this.mSampleCount;
        if (i2 <= 1 || i2 >= 10) {
            return getDeepCopyOfArray(this.mBucketEndPoints);
        }
        int[] iArr = new int[this.mBucketCount - 1];
        calculateBucketEndPoints(iArr);
        return iArr;
    }

    public int getCategory() {
        return this.mCategory;
    }

    public int getId() {
        return this.mId;
    }

    public int getMaxTime() {
        return this.mMaxTimeMs;
    }

    public int getMinTime() {
        return this.mMinTimeMs;
    }

    public int getSampleCount() {
        return this.mSampleCount;
    }

    public String toString() {
        String str = " Histogram id = " + this.mId + " Time(ms): min = " + this.mMinTimeMs + " max = " + this.mMaxTimeMs + " avg = " + this.mAverageTimeMs + " Count = " + this.mSampleCount;
        if (this.mSampleCount < 10) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(" Interval Endpoints:");
        for (int i2 = 0; i2 < this.mBucketEndPoints.length; i2++) {
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mBucketEndPoints[i2]);
        }
        stringBuffer.append(" Interval counters:");
        for (int i3 = 0; i3 < this.mBucketCounters.length; i3++) {
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mBucketCounters[i3]);
        }
        return str + ((Object) stringBuffer);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCategory);
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mMinTimeMs);
        parcel.writeInt(this.mMaxTimeMs);
        parcel.writeInt(this.mAverageTimeMs);
        parcel.writeInt(this.mSampleCount);
        if (this.mInitialTimings == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeIntArray(this.mInitialTimings);
        }
        parcel.writeInt(this.mBucketCount);
        parcel.writeIntArray(this.mBucketEndPoints);
        parcel.writeIntArray(this.mBucketCounters);
    }

    public TelephonyHistogram(TelephonyHistogram telephonyHistogram) {
        this.mCategory = telephonyHistogram.getCategory();
        this.mId = telephonyHistogram.getId();
        this.mMinTimeMs = telephonyHistogram.getMinTime();
        this.mMaxTimeMs = telephonyHistogram.getMaxTime();
        this.mAverageTimeMs = telephonyHistogram.getAverageTime();
        this.mSampleCount = telephonyHistogram.getSampleCount();
        this.mInitialTimings = telephonyHistogram.getInitialTimings();
        this.mBucketCount = telephonyHistogram.getBucketCount();
        this.mBucketEndPoints = telephonyHistogram.getBucketEndPoints();
        this.mBucketCounters = telephonyHistogram.getBucketCounters();
    }

    public TelephonyHistogram(Parcel parcel) {
        this.mCategory = parcel.readInt();
        this.mId = parcel.readInt();
        this.mMinTimeMs = parcel.readInt();
        this.mMaxTimeMs = parcel.readInt();
        this.mAverageTimeMs = parcel.readInt();
        this.mSampleCount = parcel.readInt();
        if (parcel.readInt() == 1) {
            int[] iArr = new int[10];
            this.mInitialTimings = iArr;
            parcel.readIntArray(iArr);
        }
        int i2 = parcel.readInt();
        this.mBucketCount = i2;
        int[] iArr2 = new int[i2 - 1];
        this.mBucketEndPoints = iArr2;
        parcel.readIntArray(iArr2);
        int[] iArr3 = new int[i2];
        this.mBucketCounters = iArr3;
        parcel.readIntArray(iArr3);
    }
}
