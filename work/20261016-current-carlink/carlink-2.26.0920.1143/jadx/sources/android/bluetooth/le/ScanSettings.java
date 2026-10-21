package android.bluetooth.le;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class ScanSettings implements Parcelable {
    public static final int CALLBACK_TYPE_ALL_MATCHES = 1;
    public static final int CALLBACK_TYPE_FIRST_MATCH = 2;
    public static final int CALLBACK_TYPE_MATCH_LOST = 4;
    public static final Parcelable.Creator<ScanSettings> CREATOR = new Parcelable.Creator<ScanSettings>() { // from class: android.bluetooth.le.ScanSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanSettings createFromParcel(Parcel parcel) {
            return new ScanSettings(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanSettings[] newArray(int i2) {
            return new ScanSettings[i2];
        }
    };
    public static final int MATCH_MODE_AGGRESSIVE = 1;
    public static final int MATCH_MODE_STICKY = 2;
    public static final int MATCH_NUM_FEW_ADVERTISEMENT = 2;
    public static final int MATCH_NUM_MAX_ADVERTISEMENT = 3;
    public static final int MATCH_NUM_ONE_ADVERTISEMENT = 1;
    public static final int PHY_LE_ALL_SUPPORTED = 255;
    public static final int SCAN_MODE_BALANCED = 1;
    public static final int SCAN_MODE_LOW_LATENCY = 2;
    public static final int SCAN_MODE_LOW_POWER = 0;
    public static final int SCAN_MODE_OPPORTUNISTIC = -1;
    public static final int SCAN_RESULT_TYPE_ABBREVIATED = 1;
    public static final int SCAN_RESULT_TYPE_FULL = 0;
    private int mCallbackType;
    private boolean mLegacy;
    private int mMatchMode;
    private int mNumOfMatchesPerFilter;
    private int mPhy;
    private long mReportDelayMillis;
    private int mScanMode;
    private int mScanResultType;

    public static final class Builder {
        private int mScanMode = 0;
        private int mCallbackType = 1;
        private int mScanResultType = 0;
        private long mReportDelayMillis = 0;
        private int mMatchMode = 1;
        private int mNumOfMatchesPerFilter = 3;
        private boolean mLegacy = true;
        private int mPhy = 255;

        private boolean isValidCallbackType(int i2) {
            return i2 == 1 || i2 == 2 || i2 == 4 || i2 == 6;
        }

        public ScanSettings build() {
            return new ScanSettings(this.mScanMode, this.mCallbackType, this.mScanResultType, this.mReportDelayMillis, this.mMatchMode, this.mNumOfMatchesPerFilter, this.mLegacy, this.mPhy);
        }

        public Builder setCallbackType(int i2) {
            if (!isValidCallbackType(i2)) {
                throw new IllegalArgumentException(c.d("invalid callback type - ", i2));
            }
            this.mCallbackType = i2;
            return this;
        }

        public Builder setLegacy(boolean z2) {
            this.mLegacy = z2;
            return this;
        }

        public Builder setMatchMode(int i2) {
            if (i2 < 1 || i2 > 2) {
                throw new IllegalArgumentException(c.d("invalid matchMode ", i2));
            }
            this.mMatchMode = i2;
            return this;
        }

        public Builder setNumOfMatches(int i2) {
            if (i2 < 1 || i2 > 3) {
                throw new IllegalArgumentException(c.d("invalid numOfMatches ", i2));
            }
            this.mNumOfMatchesPerFilter = i2;
            return this;
        }

        public Builder setPhy(int i2) {
            this.mPhy = i2;
            return this;
        }

        public Builder setReportDelay(long j2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("reportDelay must be > 0");
            }
            this.mReportDelayMillis = j2;
            return this;
        }

        public Builder setScanMode(int i2) {
            if (i2 < -1 || i2 > 2) {
                throw new IllegalArgumentException(c.d("invalid scan mode ", i2));
            }
            this.mScanMode = i2;
            return this;
        }

        public Builder setScanResultType(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException(c.d("invalid scanResultType - ", i2));
            }
            this.mScanResultType = i2;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCallbackType() {
        return this.mCallbackType;
    }

    public boolean getLegacy() {
        return this.mLegacy;
    }

    public int getMatchMode() {
        return this.mMatchMode;
    }

    public int getNumOfMatches() {
        return this.mNumOfMatchesPerFilter;
    }

    public int getPhy() {
        return this.mPhy;
    }

    public long getReportDelayMillis() {
        return this.mReportDelayMillis;
    }

    public int getScanMode() {
        return this.mScanMode;
    }

    public int getScanResultType() {
        return this.mScanResultType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mScanMode);
        parcel.writeInt(this.mCallbackType);
        parcel.writeInt(this.mScanResultType);
        parcel.writeLong(this.mReportDelayMillis);
        parcel.writeInt(this.mMatchMode);
        parcel.writeInt(this.mNumOfMatchesPerFilter);
        parcel.writeInt(this.mLegacy ? 1 : 0);
        parcel.writeInt(this.mPhy);
    }

    private ScanSettings(int i2, int i3, int i4, long j2, int i5, int i6, boolean z2, int i7) {
        this.mScanMode = i2;
        this.mCallbackType = i3;
        this.mScanResultType = i4;
        this.mReportDelayMillis = j2;
        this.mNumOfMatchesPerFilter = i6;
        this.mMatchMode = i5;
        this.mLegacy = z2;
        this.mPhy = i7;
    }

    private ScanSettings(Parcel parcel) {
        this.mScanMode = parcel.readInt();
        this.mCallbackType = parcel.readInt();
        this.mScanResultType = parcel.readInt();
        this.mReportDelayMillis = parcel.readLong();
        this.mMatchMode = parcel.readInt();
        this.mNumOfMatchesPerFilter = parcel.readInt();
        this.mLegacy = parcel.readInt() != 0;
        this.mPhy = parcel.readInt();
    }
}
