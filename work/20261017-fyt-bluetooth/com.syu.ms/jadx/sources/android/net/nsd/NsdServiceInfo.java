package android.net.nsd;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public final class NsdServiceInfo implements Parcelable {
    public static final Parcelable.Creator<NsdServiceInfo> CREATOR = new Parcelable.Creator<NsdServiceInfo>() { // from class: android.net.nsd.NsdServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NsdServiceInfo createFromParcel(Parcel parcel) {
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.mServiceName = parcel.readString();
            nsdServiceInfo.mServiceType = parcel.readString();
            nsdServiceInfo.mTxtRecord = (DnsSdTxtRecord) parcel.readParcelable(null);
            if (parcel.readByte() == 1) {
                try {
                    nsdServiceInfo.mHost = InetAddress.getByAddress(parcel.createByteArray());
                } catch (UnknownHostException unused) {
                }
            }
            nsdServiceInfo.mPort = parcel.readInt();
            return nsdServiceInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NsdServiceInfo[] newArray(int i2) {
            return new NsdServiceInfo[i2];
        }
    };
    private InetAddress mHost;
    private int mPort;
    private String mServiceName;
    private String mServiceType;
    private DnsSdTxtRecord mTxtRecord;

    public NsdServiceInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public InetAddress getHost() {
        return this.mHost;
    }

    public int getPort() {
        return this.mPort;
    }

    public String getServiceName() {
        return this.mServiceName;
    }

    public String getServiceType() {
        return this.mServiceType;
    }

    public DnsSdTxtRecord getTxtRecord() {
        return this.mTxtRecord;
    }

    public void setHost(InetAddress inetAddress) {
        this.mHost = inetAddress;
    }

    public void setPort(int i2) {
        this.mPort = i2;
    }

    public void setServiceName(String str) {
        this.mServiceName = str;
    }

    public void setServiceType(String str) {
        this.mServiceType = str;
    }

    public void setTxtRecord(DnsSdTxtRecord dnsSdTxtRecord) {
        this.mTxtRecord = new DnsSdTxtRecord(dnsSdTxtRecord);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("name: ");
        stringBuffer.append(this.mServiceName);
        stringBuffer.append("type: ");
        stringBuffer.append(this.mServiceType);
        stringBuffer.append("host: ");
        stringBuffer.append(this.mHost);
        stringBuffer.append("port: ");
        stringBuffer.append(this.mPort);
        stringBuffer.append("txtRecord: ");
        stringBuffer.append(this.mTxtRecord);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mServiceName);
        parcel.writeString(this.mServiceType);
        parcel.writeParcelable(this.mTxtRecord, i2);
        if (this.mHost != null) {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.mHost.getAddress());
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeInt(this.mPort);
    }

    public NsdServiceInfo(String str, String str2, DnsSdTxtRecord dnsSdTxtRecord) {
        this.mServiceName = str;
        this.mServiceType = str2;
        this.mTxtRecord = dnsSdTxtRecord;
    }
}
