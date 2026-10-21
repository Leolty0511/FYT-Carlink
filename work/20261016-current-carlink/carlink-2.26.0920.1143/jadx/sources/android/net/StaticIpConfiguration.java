package android.net;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class StaticIpConfiguration implements Parcelable {
    public static Parcelable.Creator<StaticIpConfiguration> CREATOR = new Parcelable.Creator<StaticIpConfiguration>() { // from class: android.net.StaticIpConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StaticIpConfiguration createFromParcel(Parcel parcel) {
            StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
            StaticIpConfiguration.readFromParcel(staticIpConfiguration, parcel);
            return staticIpConfiguration;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StaticIpConfiguration[] newArray(int i2) {
            return new StaticIpConfiguration[i2];
        }
    };
    public final ArrayList<InetAddress> dnsServers;
    public String domains;
    public InetAddress gateway;
    public LinkAddress ipAddress;

    public StaticIpConfiguration() {
        this.dnsServers = new ArrayList<>();
    }

    public static void readFromParcel(StaticIpConfiguration staticIpConfiguration, Parcel parcel) {
        staticIpConfiguration.ipAddress = (LinkAddress) parcel.readParcelable(null);
        staticIpConfiguration.gateway = NetworkUtils.unparcelInetAddress(parcel);
        staticIpConfiguration.dnsServers.clear();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            staticIpConfiguration.dnsServers.add(NetworkUtils.unparcelInetAddress(parcel));
        }
        staticIpConfiguration.domains = parcel.readString();
    }

    public void clear() {
        this.ipAddress = null;
        this.gateway = null;
        this.dnsServers.clear();
        this.domains = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StaticIpConfiguration)) {
            return false;
        }
        StaticIpConfiguration staticIpConfiguration = (StaticIpConfiguration) obj;
        return staticIpConfiguration != null && Objects.equals(this.ipAddress, staticIpConfiguration.ipAddress) && Objects.equals(this.gateway, staticIpConfiguration.gateway) && this.dnsServers.equals(staticIpConfiguration.dnsServers) && Objects.equals(this.domains, staticIpConfiguration.domains);
    }

    public List<RouteInfo> getRoutes(String str) {
        ArrayList arrayList = new ArrayList(3);
        if (this.ipAddress != null) {
            RouteInfo routeInfo = new RouteInfo(this.ipAddress, (InetAddress) null, str);
            arrayList.add(routeInfo);
            InetAddress inetAddress = this.gateway;
            if (inetAddress != null && !routeInfo.matches(inetAddress)) {
                arrayList.add(RouteInfo.makeHostRoute(this.gateway, str));
            }
        }
        if (this.gateway != null) {
            arrayList.add(new RouteInfo((IpPrefix) null, this.gateway, str));
        }
        return arrayList;
    }

    public int hashCode() {
        LinkAddress linkAddress = this.ipAddress;
        int iHashCode = (611 + (linkAddress == null ? 0 : linkAddress.hashCode())) * 47;
        InetAddress inetAddress = this.gateway;
        int iHashCode2 = (iHashCode + (inetAddress == null ? 0 : inetAddress.hashCode())) * 47;
        String str = this.domains;
        return this.dnsServers.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 47);
    }

    public LinkProperties toLinkProperties(String str) {
        LinkProperties linkProperties = new LinkProperties();
        linkProperties.setInterfaceName(str);
        LinkAddress linkAddress = this.ipAddress;
        if (linkAddress != null) {
            linkProperties.addLinkAddress(linkAddress);
        }
        Iterator<RouteInfo> it = getRoutes(str).iterator();
        while (it.hasNext()) {
            linkProperties.addRoute(it.next());
        }
        Iterator<InetAddress> it2 = this.dnsServers.iterator();
        while (it2.hasNext()) {
            linkProperties.addDnsServer(it2.next());
        }
        linkProperties.setDomains(this.domains);
        return linkProperties;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("IP address ");
        LinkAddress linkAddress = this.ipAddress;
        if (linkAddress != null) {
            stringBuffer.append(linkAddress);
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        stringBuffer.append("Gateway ");
        InetAddress inetAddress = this.gateway;
        if (inetAddress != null) {
            stringBuffer.append(inetAddress.getHostAddress());
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        stringBuffer.append(" DNS servers: [");
        for (InetAddress inetAddress2 : this.dnsServers) {
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            stringBuffer.append(inetAddress2.getHostAddress());
        }
        stringBuffer.append(" ] Domains ");
        String str = this.domains;
        if (str != null) {
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.ipAddress, i2);
        NetworkUtils.parcelInetAddress(parcel, this.gateway, i2);
        parcel.writeInt(this.dnsServers.size());
        Iterator<InetAddress> it = this.dnsServers.iterator();
        while (it.hasNext()) {
            NetworkUtils.parcelInetAddress(parcel, it.next(), i2);
        }
        parcel.writeString(this.domains);
    }

    public StaticIpConfiguration(StaticIpConfiguration staticIpConfiguration) {
        this();
        if (staticIpConfiguration != null) {
            this.ipAddress = staticIpConfiguration.ipAddress;
            this.gateway = staticIpConfiguration.gateway;
            this.dnsServers.addAll(staticIpConfiguration.dnsServers);
            this.domains = staticIpConfiguration.domains;
        }
    }
}
