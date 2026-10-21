package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DhcpResults implements Parcelable {
    public static final Parcelable.Creator<DhcpResults> CREATOR = new Parcelable.Creator<DhcpResults>() { // from class: android.net.DhcpResults.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DhcpResults createFromParcel(Parcel parcel) {
            DhcpResults dhcpResults = new DhcpResults((LinkProperties) parcel.readParcelable(null));
            dhcpResults.leaseDuration = parcel.readInt();
            if (parcel.readByte() == 1) {
                try {
                    dhcpResults.serverAddress = InetAddress.getByAddress(parcel.createByteArray());
                } catch (UnknownHostException unused) {
                }
            }
            dhcpResults.vendorInfo = parcel.readString();
            return dhcpResults;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DhcpResults[] newArray(int i2) {
            return new DhcpResults[i2];
        }
    };
    private static final String TAG = "DhcpResults";
    public int leaseDuration;
    public final LinkProperties linkProperties;
    public InetAddress serverAddress;
    public String vendorInfo;

    public DhcpResults() {
        this.linkProperties = new LinkProperties();
    }

    public boolean addDns(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            this.linkProperties.addDns(NetworkUtils.numericToInetAddress(str));
            return false;
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "addDns failed with addrString " + str);
            return true;
        }
    }

    public boolean addGateway(String str) {
        try {
            this.linkProperties.addRoute(new RouteInfo(NetworkUtils.numericToInetAddress(str)));
            return false;
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "addGateway failed with addrString " + str);
            return true;
        }
    }

    public boolean addLinkAddress(String str, int i2) {
        try {
            LinkAddress linkAddress = new LinkAddress(NetworkUtils.numericToInetAddress(str), i2);
            this.linkProperties.addLinkAddress(linkAddress);
            this.linkProperties.addRoute(new RouteInfo(linkAddress));
            return false;
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "addLinkAddress failed with addrString " + str);
            return true;
        }
    }

    public void clear() {
        this.linkProperties.clear();
        this.serverAddress = null;
        this.vendorInfo = null;
        this.leaseDuration = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DhcpResults)) {
            return false;
        }
        DhcpResults dhcpResults = (DhcpResults) obj;
        LinkProperties linkProperties = this.linkProperties;
        if (linkProperties == null) {
            if (dhcpResults.linkProperties != null) {
                return false;
            }
        } else if (!linkProperties.equals(dhcpResults.linkProperties)) {
            return false;
        }
        InetAddress inetAddress = this.serverAddress;
        if (inetAddress == null) {
            if (dhcpResults.serverAddress != null) {
                return false;
            }
        } else if (!inetAddress.equals(dhcpResults.serverAddress)) {
            return false;
        }
        String str = this.vendorInfo;
        if (str == null) {
            if (dhcpResults.vendorInfo != null) {
                return false;
            }
        } else if (!str.equals(dhcpResults.vendorInfo)) {
            return false;
        }
        return this.leaseDuration == dhcpResults.leaseDuration;
    }

    public boolean hasMeteredHint() {
        String str = this.vendorInfo;
        if (str != null) {
            return str.contains("ANDROID_METERED");
        }
        return false;
    }

    public void setDomains(String str) {
        this.linkProperties.setDomains(str);
    }

    public void setInterfaceName(String str) {
        this.linkProperties.setInterfaceName(str);
    }

    public void setLeaseDuration(int i2) {
        this.leaseDuration = i2;
    }

    public boolean setServerAddress(String str) {
        try {
            this.serverAddress = NetworkUtils.numericToInetAddress(str);
            return false;
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "setServerAddress failed with addrString " + str);
            return true;
        }
    }

    public void setVendorInfo(String str) {
        this.vendorInfo = str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.linkProperties.toString());
        stringBuffer.append(" DHCP server ");
        stringBuffer.append(this.serverAddress);
        stringBuffer.append(" Vendor info ");
        stringBuffer.append(this.vendorInfo);
        stringBuffer.append(" lease ");
        stringBuffer.append(this.leaseDuration);
        stringBuffer.append(" seconds");
        return stringBuffer.toString();
    }

    public void updateFromDhcpRequest(DhcpResults dhcpResults) {
        if (dhcpResults == null || dhcpResults.linkProperties == null) {
            return;
        }
        if (this.linkProperties.getRoutes().size() == 0) {
            Iterator<RouteInfo> it = dhcpResults.linkProperties.getRoutes().iterator();
            while (it.hasNext()) {
                this.linkProperties.addRoute(it.next());
            }
        }
        if (this.linkProperties.getDnses().size() == 0) {
            Iterator<InetAddress> it2 = dhcpResults.linkProperties.getDnses().iterator();
            while (it2.hasNext()) {
                this.linkProperties.addDns(it2.next());
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.linkProperties.writeToParcel(parcel, i2);
        parcel.writeInt(this.leaseDuration);
        if (this.serverAddress != null) {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.serverAddress.getAddress());
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeString(this.vendorInfo);
    }

    public DhcpResults(DhcpResults dhcpResults) {
        if (dhcpResults != null) {
            this.linkProperties = new LinkProperties(dhcpResults.linkProperties);
            this.serverAddress = dhcpResults.serverAddress;
            this.leaseDuration = dhcpResults.leaseDuration;
            this.vendorInfo = dhcpResults.vendorInfo;
            return;
        }
        this.linkProperties = new LinkProperties();
    }

    public DhcpResults(LinkProperties linkProperties) {
        this.linkProperties = new LinkProperties(linkProperties);
    }
}
