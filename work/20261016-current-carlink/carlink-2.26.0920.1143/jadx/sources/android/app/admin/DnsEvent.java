package android.app.admin;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.security.keystore.KeyProperties;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DnsEvent extends NetworkEvent {
    public static final Parcelable.Creator<DnsEvent> CREATOR = new Parcelable.Creator<DnsEvent>() { // from class: android.app.admin.DnsEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DnsEvent createFromParcel(Parcel parcel) {
            if (parcel.readInt() != 1) {
                return null;
            }
            return new DnsEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DnsEvent[] newArray(int i2) {
            return new DnsEvent[i2];
        }
    };
    private final String hostname;
    private final String[] ipAddresses;
    private final int ipAddressesCount;

    @Override // android.app.admin.NetworkEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHostname() {
        return this.hostname;
    }

    public List<InetAddress> getInetAddresses() {
        String[] strArr = this.ipAddresses;
        if (strArr == null || strArr.length == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.ipAddresses.length);
        for (String str : this.ipAddresses) {
            try {
                arrayList.add(InetAddress.getByName(str));
            } catch (UnknownHostException unused) {
            }
        }
        return arrayList;
    }

    public int getTotalResolvedAddressCount() {
        return this.ipAddressesCount;
    }

    public String toString() {
        String string;
        Object[] objArr = new Object[5];
        objArr[0] = this.hostname;
        String[] strArr = this.ipAddresses;
        if (strArr == null) {
            string = KeyProperties.DIGEST_NONE;
        } else {
            StringBuilder sb = new StringBuilder();
            if (strArr.length > 0) {
                sb.append((CharSequence) strArr[0]);
                for (int i2 = 1; i2 < strArr.length; i2++) {
                    sb.append((CharSequence) WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    sb.append((CharSequence) strArr[i2]);
                }
            }
            string = sb.toString();
        }
        objArr[1] = string;
        objArr[2] = Integer.valueOf(this.ipAddressesCount);
        objArr[3] = Long.valueOf(this.timestamp);
        objArr[4] = this.packageName;
        return String.format("DnsEvent(%s, %s, %d, %d, %s)", objArr);
    }

    @Override // android.app.admin.NetworkEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(1);
        parcel.writeString(this.hostname);
        parcel.writeStringArray(this.ipAddresses);
        parcel.writeInt(this.ipAddressesCount);
        parcel.writeString(this.packageName);
        parcel.writeLong(this.timestamp);
    }

    public DnsEvent(String str, String[] strArr, int i2, String str2, long j2) {
        super(str2, j2);
        this.hostname = str;
        this.ipAddresses = strArr;
        this.ipAddressesCount = i2;
    }

    private DnsEvent(Parcel parcel) {
        this.hostname = parcel.readString();
        this.ipAddresses = parcel.createStringArray();
        this.ipAddressesCount = parcel.readInt();
        this.packageName = parcel.readString();
        this.timestamp = parcel.readLong();
    }
}
