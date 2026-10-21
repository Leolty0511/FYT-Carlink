package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RssiCurve implements Parcelable {
    public static final Parcelable.Creator<RssiCurve> CREATOR = new Parcelable.Creator<RssiCurve>() { // from class: android.net.RssiCurve.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RssiCurve createFromParcel(Parcel parcel) {
            return new RssiCurve(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RssiCurve[] newArray(int i2) {
            return new RssiCurve[i2];
        }
    };
    private static final int DEFAULT_ACTIVE_NETWORK_RSSI_BOOST = 25;
    public final int activeNetworkRssiBoost;
    public final int bucketWidth;
    public final byte[] rssiBuckets;
    public final int start;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RssiCurve rssiCurve = (RssiCurve) obj;
        return this.start == rssiCurve.start && this.bucketWidth == rssiCurve.bucketWidth && Arrays.equals(this.rssiBuckets, rssiCurve.rssiBuckets) && this.activeNetworkRssiBoost == rssiCurve.activeNetworkRssiBoost;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.start), Integer.valueOf(this.bucketWidth), Integer.valueOf(this.activeNetworkRssiBoost)) ^ Arrays.hashCode(this.rssiBuckets);
    }

    public byte lookupScore(int i2) {
        return lookupScore(i2, false);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RssiCurve[start=");
        sb.append(this.start);
        sb.append(",bucketWidth=");
        sb.append(this.bucketWidth);
        sb.append(",activeNetworkRssiBoost=");
        sb.append(this.activeNetworkRssiBoost);
        sb.append(",buckets=");
        int i2 = 0;
        while (true) {
            byte[] bArr = this.rssiBuckets;
            if (i2 >= bArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append((int) bArr[i2]);
            if (i2 < this.rssiBuckets.length - 1) {
                sb.append(",");
            }
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.start);
        parcel.writeInt(this.bucketWidth);
        parcel.writeInt(this.rssiBuckets.length);
        parcel.writeByteArray(this.rssiBuckets);
        parcel.writeInt(this.activeNetworkRssiBoost);
    }

    public RssiCurve(int i2, int i3, byte[] bArr) {
        this(i2, i3, bArr, 25);
    }

    public byte lookupScore(int i2, boolean z2) {
        if (z2) {
            i2 += this.activeNetworkRssiBoost;
        }
        int length = (i2 - this.start) / this.bucketWidth;
        if (length < 0) {
            length = 0;
        } else {
            byte[] bArr = this.rssiBuckets;
            if (length > bArr.length - 1) {
                length = bArr.length - 1;
            }
        }
        return this.rssiBuckets[length];
    }

    public RssiCurve(int i2, int i3, byte[] bArr, int i4) {
        this.start = i2;
        this.bucketWidth = i3;
        if (bArr != null && bArr.length != 0) {
            this.rssiBuckets = bArr;
            this.activeNetworkRssiBoost = i4;
            return;
        }
        throw new IllegalArgumentException("rssiBuckets must be at least one element large.");
    }

    private RssiCurve(Parcel parcel) {
        this.start = parcel.readInt();
        this.bucketWidth = parcel.readInt();
        byte[] bArr = new byte[parcel.readInt()];
        this.rssiBuckets = bArr;
        parcel.readByteArray(bArr);
        this.activeNetworkRssiBoost = parcel.readInt();
    }
}
