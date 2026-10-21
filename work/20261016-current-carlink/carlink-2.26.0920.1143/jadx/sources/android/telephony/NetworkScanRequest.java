package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class NetworkScanRequest implements Parcelable {
    public static final Parcelable.Creator<NetworkScanRequest> CREATOR = new Parcelable.Creator<NetworkScanRequest>() { // from class: android.telephony.NetworkScanRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkScanRequest createFromParcel(Parcel parcel) {
            return new NetworkScanRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkScanRequest[] newArray(int i2) {
            return new NetworkScanRequest[i2];
        }
    };
    public static final int MAX_BANDS = 8;
    public static final int MAX_CHANNELS = 32;
    public static final int MAX_RADIO_ACCESS_NETWORKS = 8;
    public static final int SCAN_TYPE_ONE_SHOT = 0;
    public static final int SCAN_TYPE_PERIODIC = 1;
    public int scanType;
    public RadioAccessSpecifier[] specifiers;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        try {
            NetworkScanRequest networkScanRequest = (NetworkScanRequest) obj;
            return obj != null && this.scanType == networkScanRequest.scanType && Arrays.equals(this.specifiers, networkScanRequest.specifiers);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.specifiers) * 37) + (this.scanType * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.scanType);
        parcel.writeParcelableArray(this.specifiers, i2);
    }

    public NetworkScanRequest(int i2, RadioAccessSpecifier[] radioAccessSpecifierArr) {
        this.scanType = i2;
        this.specifiers = radioAccessSpecifierArr;
    }

    private NetworkScanRequest(Parcel parcel) {
        this.scanType = parcel.readInt();
        this.specifiers = (RadioAccessSpecifier[]) parcel.readParcelableArray(Object.class.getClassLoader(), RadioAccessSpecifier.class);
    }
}
