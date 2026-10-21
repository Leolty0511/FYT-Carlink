package android.telephony;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ModemActivityInfo implements Parcelable {
    public static final Parcelable.Creator<ModemActivityInfo> CREATOR = new Parcelable.Creator<ModemActivityInfo>() { // from class: android.telephony.ModemActivityInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModemActivityInfo createFromParcel(Parcel parcel) {
            long j2 = parcel.readLong();
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int[] iArr = new int[5];
            for (int i4 = 0; i4 < 5; i4++) {
                iArr[i4] = parcel.readInt();
            }
            return new ModemActivityInfo(j2, i2, i3, iArr, parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModemActivityInfo[] newArray(int i2) {
            return new ModemActivityInfo[i2];
        }
    };
    public static final int TX_POWER_LEVELS = 5;
    private final int mEnergyUsed;
    private final int mIdleTimeMs;
    private final int mRxTimeMs;
    private final int mSleepTimeMs;
    private final long mTimestamp;
    private final int[] mTxTimeMs;

    public ModemActivityInfo(long j2, int i2, int i3, int[] iArr, int i4, int i5) {
        int[] iArr2 = new int[5];
        this.mTxTimeMs = iArr2;
        this.mTimestamp = j2;
        this.mSleepTimeMs = i2;
        this.mIdleTimeMs = i3;
        if (iArr != null) {
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, 5));
        }
        this.mRxTimeMs = i4;
        this.mEnergyUsed = i5;
    }

    private boolean isEmpty() {
        for (int i2 : getTxTimeMillis()) {
            if (i2 != 0) {
                return false;
            }
        }
        return getIdleTimeMillis() == 0 && getSleepTimeMillis() == 0 && getRxTimeMillis() == 0 && getEnergyUsed() == 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getEnergyUsed() {
        return this.mEnergyUsed;
    }

    public int getIdleTimeMillis() {
        return this.mIdleTimeMs;
    }

    public int getRxTimeMillis() {
        return this.mRxTimeMs;
    }

    public int getSleepTimeMillis() {
        return this.mSleepTimeMs;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public int[] getTxTimeMillis() {
        return this.mTxTimeMs;
    }

    public boolean isValid() {
        for (int i2 : getTxTimeMillis()) {
            if (i2 < 0) {
                return false;
            }
        }
        return getIdleTimeMillis() >= 0 && getSleepTimeMillis() >= 0 && getRxTimeMillis() >= 0 && getEnergyUsed() >= 0 && !isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ModemActivityInfo{ mTimestamp=");
        sb.append(this.mTimestamp);
        sb.append(" mSleepTimeMs=");
        sb.append(this.mSleepTimeMs);
        sb.append(" mIdleTimeMs=");
        sb.append(this.mIdleTimeMs);
        sb.append(" mTxTimeMs[]=");
        sb.append(Arrays.toString(this.mTxTimeMs));
        sb.append(" mRxTimeMs=");
        sb.append(this.mRxTimeMs);
        sb.append(" mEnergyUsed=");
        return c.m(sb, this.mEnergyUsed, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mTimestamp);
        parcel.writeInt(this.mSleepTimeMs);
        parcel.writeInt(this.mIdleTimeMs);
        for (int i3 = 0; i3 < 5; i3++) {
            parcel.writeInt(this.mTxTimeMs[i3]);
        }
        parcel.writeInt(this.mRxTimeMs);
        parcel.writeInt(this.mEnergyUsed);
    }
}
