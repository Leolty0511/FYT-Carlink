package android.net.wifi.p2p.nsd;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pServiceRequest implements Parcelable {
    public static final Parcelable.Creator<WifiP2pServiceRequest> CREATOR = new Parcelable.Creator<WifiP2pServiceRequest>() { // from class: android.net.wifi.p2p.nsd.WifiP2pServiceRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiP2pServiceRequest createFromParcel(Parcel parcel) {
            return new WifiP2pServiceRequest(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiP2pServiceRequest[] newArray(int i2) {
            return new WifiP2pServiceRequest[i2];
        }
    };
    private int mLength;
    private int mProtocolType;
    private String mQuery;
    private int mTransId;

    public static WifiP2pServiceRequest newInstance(int i2, String str) {
        return new WifiP2pServiceRequest(i2, str);
    }

    private void validateQuery(String str) {
        if (str == null) {
            return;
        }
        if (str.length() % 2 == 1) {
            throw new IllegalArgumentException("query size is invalid. query=" + str);
        }
        if (str.length() / 2 > 65535) {
            throw new IllegalArgumentException("query size is too large. len=" + str.length());
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        for (char c2 : lowerCase.toCharArray()) {
            if ((c2 < '0' || c2 > '9') && (c2 < 'a' || c2 > 'f')) {
                throw new IllegalArgumentException("query should be hex string. query=" + lowerCase);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WifiP2pServiceRequest)) {
            return false;
        }
        WifiP2pServiceRequest wifiP2pServiceRequest = (WifiP2pServiceRequest) obj;
        if (wifiP2pServiceRequest.mProtocolType == this.mProtocolType && wifiP2pServiceRequest.mLength == this.mLength) {
            String str = wifiP2pServiceRequest.mQuery;
            if (str == null && this.mQuery == null) {
                return true;
            }
            if (str != null) {
                return str.equals(this.mQuery);
            }
        }
        return false;
    }

    public String getSupplicantQuery() {
        StringBuffer stringBuffer = new StringBuffer();
        Locale locale = Locale.US;
        stringBuffer.append(String.format(locale, "%02x", Integer.valueOf(this.mLength & 255)));
        stringBuffer.append(String.format(locale, "%02x", Integer.valueOf((this.mLength >> 8) & 255)));
        stringBuffer.append(String.format(locale, "%02x", Integer.valueOf(this.mProtocolType)));
        stringBuffer.append(String.format(locale, "%02x", Integer.valueOf(this.mTransId)));
        String str = this.mQuery;
        if (str != null) {
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    public int getTransactionId() {
        return this.mTransId;
    }

    public int hashCode() {
        int i2 = (((527 + this.mProtocolType) * 31) + this.mLength) * 31;
        String str = this.mQuery;
        return i2 + (str == null ? 0 : str.hashCode());
    }

    public void setTransactionId(int i2) {
        this.mTransId = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mProtocolType);
        parcel.writeInt(this.mLength);
        parcel.writeInt(this.mTransId);
        parcel.writeString(this.mQuery);
    }

    public WifiP2pServiceRequest(int i2, String str) {
        validateQuery(str);
        this.mProtocolType = i2;
        this.mQuery = str;
        if (str != null) {
            this.mLength = (str.length() / 2) + 2;
        } else {
            this.mLength = 2;
        }
    }

    public static WifiP2pServiceRequest newInstance(int i2) {
        return new WifiP2pServiceRequest(i2, null);
    }

    private WifiP2pServiceRequest(int i2, int i3, int i4, String str) {
        this.mProtocolType = i2;
        this.mLength = i3;
        this.mTransId = i4;
        this.mQuery = str;
    }
}
