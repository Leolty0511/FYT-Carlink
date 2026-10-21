package android.net;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class LinkProperties implements Parcelable {
    public static final Parcelable.Creator<LinkProperties> CREATOR = new Parcelable.Creator<LinkProperties>() { // from class: android.net.LinkProperties.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkProperties createFromParcel(Parcel parcel) {
            LinkProperties linkProperties = new LinkProperties();
            String string = parcel.readString();
            if (string != null) {
                linkProperties.setInterfaceName(string);
            }
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                linkProperties.addLinkAddress((LinkAddress) parcel.readParcelable(null));
            }
            int i4 = parcel.readInt();
            for (int i5 = 0; i5 < i4; i5++) {
                try {
                    linkProperties.addDnsServer(InetAddress.getByAddress(parcel.createByteArray()));
                } catch (UnknownHostException unused) {
                }
            }
            linkProperties.setDomains(parcel.readString());
            linkProperties.setMtu(parcel.readInt());
            linkProperties.setTcpBufferSizes(parcel.readString());
            int i6 = parcel.readInt();
            for (int i7 = 0; i7 < i6; i7++) {
                linkProperties.addRoute((RouteInfo) parcel.readParcelable(null));
            }
            if (parcel.readByte() == 1) {
                linkProperties.setHttpProxy((ProxyInfo) parcel.readParcelable(null));
            }
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, LinkProperties.class.getClassLoader());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                linkProperties.addStackedLink((LinkProperties) it.next());
            }
            return linkProperties;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LinkProperties[] newArray(int i2) {
            return new LinkProperties[i2];
        }
    };
    private static final int MAX_MTU = 10000;
    private static final int MIN_MTU = 68;
    private static final int MIN_MTU_V6 = 1280;
    private String mDomains;
    private ProxyInfo mHttpProxy;
    private String mIfaceName;
    private int mMtu;
    private String mTcpBufferSizes;
    private ArrayList<LinkAddress> mLinkAddresses = new ArrayList<>();
    private ArrayList<InetAddress> mDnses = new ArrayList<>();
    private ArrayList<RouteInfo> mRoutes = new ArrayList<>();
    private Hashtable<String, LinkProperties> mStackedLinks = new Hashtable<>();

    public static class CompareResult<T> {
        public List<T> removed = new ArrayList();
        public List<T> added = new ArrayList();

        public String toString() {
            String string = "removed=[";
            for (T t2 : this.removed) {
                StringBuilder sbR = c.r(string);
                sbR.append(t2.toString());
                sbR.append(",");
                string = sbR.toString();
            }
            String strD = c.D(string, "] added=[");
            for (T t3 : this.added) {
                StringBuilder sbR2 = c.r(strD);
                sbR2.append(t3.toString());
                sbR2.append(",");
                strD = sbR2.toString();
            }
            return c.D(strD, "]");
        }
    }

    public enum ProvisioningChange {
        STILL_NOT_PROVISIONED,
        LOST_PROVISIONING,
        GAINED_PROVISIONING,
        STILL_PROVISIONED
    }

    public LinkProperties() {
    }

    public static ProvisioningChange compareProvisioning(LinkProperties linkProperties, LinkProperties linkProperties2) {
        if (linkProperties.isProvisioned() && linkProperties2.isProvisioned()) {
            return ((!linkProperties.isIPv4Provisioned() || linkProperties2.isIPv4Provisioned()) && (!linkProperties.isIPv6Provisioned() || linkProperties2.isIPv6Provisioned())) ? ProvisioningChange.STILL_PROVISIONED : ProvisioningChange.LOST_PROVISIONING;
        }
        if (!linkProperties.isProvisioned() || linkProperties2.isProvisioned()) {
            return (linkProperties.isProvisioned() || !linkProperties2.isProvisioned()) ? ProvisioningChange.STILL_NOT_PROVISIONED : ProvisioningChange.GAINED_PROVISIONING;
        }
        return ProvisioningChange.LOST_PROVISIONING;
    }

    private int findLinkAddressIndex(LinkAddress linkAddress) {
        for (int i2 = 0; i2 < this.mLinkAddresses.size(); i2++) {
            if (this.mLinkAddresses.get(i2).isSameAddressAs(linkAddress)) {
                return i2;
            }
        }
        return -1;
    }

    private boolean hasIPv4AddressOnInterface(String str) {
        return (Objects.equals(str, this.mIfaceName) && hasIPv4Address()) || (str != null && this.mStackedLinks.containsKey(str) && this.mStackedLinks.get(str).hasIPv4Address());
    }

    public static boolean isValidMtu(int i2, boolean z2) {
        if (z2) {
            return i2 >= 1280 && i2 <= 10000;
        }
        return i2 >= 68 && i2 <= 10000;
    }

    private RouteInfo routeWithInterface(RouteInfo routeInfo) {
        return new RouteInfo(routeInfo.getDestination(), routeInfo.getGateway(), this.mIfaceName, routeInfo.getType());
    }

    public boolean addDnsServer(InetAddress inetAddress) {
        if (inetAddress == null || this.mDnses.contains(inetAddress)) {
            return false;
        }
        this.mDnses.add(inetAddress);
        return true;
    }

    public boolean addLinkAddress(LinkAddress linkAddress) {
        if (linkAddress == null) {
            return false;
        }
        int iFindLinkAddressIndex = findLinkAddressIndex(linkAddress);
        if (iFindLinkAddressIndex < 0) {
            this.mLinkAddresses.add(linkAddress);
            return true;
        }
        if (this.mLinkAddresses.get(iFindLinkAddressIndex).equals(linkAddress)) {
            return false;
        }
        this.mLinkAddresses.set(iFindLinkAddressIndex, linkAddress);
        return true;
    }

    public boolean addRoute(RouteInfo routeInfo) {
        if (routeInfo == null) {
            return false;
        }
        String str = routeInfo.getInterface();
        if (str != null && !str.equals(this.mIfaceName)) {
            StringBuilder sbV = c.v("Route added with non-matching interface: ", str, " vs. ");
            sbV.append(this.mIfaceName);
            throw new IllegalArgumentException(sbV.toString());
        }
        RouteInfo routeInfoRouteWithInterface = routeWithInterface(routeInfo);
        if (this.mRoutes.contains(routeInfoRouteWithInterface)) {
            return false;
        }
        this.mRoutes.add(routeInfoRouteWithInterface);
        return true;
    }

    public boolean addStackedLink(LinkProperties linkProperties) {
        if (linkProperties == null || linkProperties.getInterfaceName() == null) {
            return false;
        }
        this.mStackedLinks.put(linkProperties.getInterfaceName(), linkProperties);
        return true;
    }

    public void clear() {
        this.mIfaceName = null;
        this.mLinkAddresses.clear();
        this.mDnses.clear();
        this.mDomains = null;
        this.mRoutes.clear();
        this.mHttpProxy = null;
        this.mStackedLinks.clear();
        this.mMtu = 0;
        this.mTcpBufferSizes = null;
    }

    public CompareResult<LinkAddress> compareAddresses(LinkProperties linkProperties) {
        CompareResult<LinkAddress> compareResult = new CompareResult<>();
        compareResult.removed = new ArrayList(this.mLinkAddresses);
        compareResult.added.clear();
        if (linkProperties != null) {
            for (LinkAddress linkAddress : linkProperties.getLinkAddresses()) {
                if (!compareResult.removed.remove(linkAddress)) {
                    compareResult.added.add(linkAddress);
                }
            }
        }
        return compareResult;
    }

    public CompareResult<String> compareAllInterfaceNames(LinkProperties linkProperties) {
        CompareResult<String> compareResult = new CompareResult<>();
        compareResult.removed = getAllInterfaceNames();
        compareResult.added.clear();
        if (linkProperties != null) {
            for (String str : linkProperties.getAllInterfaceNames()) {
                if (!compareResult.removed.remove(str)) {
                    compareResult.added.add(str);
                }
            }
        }
        return compareResult;
    }

    public CompareResult<RouteInfo> compareAllRoutes(LinkProperties linkProperties) {
        CompareResult<RouteInfo> compareResult = new CompareResult<>();
        compareResult.removed = getAllRoutes();
        compareResult.added.clear();
        if (linkProperties != null) {
            for (RouteInfo routeInfo : linkProperties.getAllRoutes()) {
                if (!compareResult.removed.remove(routeInfo)) {
                    compareResult.added.add(routeInfo);
                }
            }
        }
        return compareResult;
    }

    public CompareResult<InetAddress> compareDnses(LinkProperties linkProperties) {
        CompareResult<InetAddress> compareResult = new CompareResult<>();
        compareResult.removed = new ArrayList(this.mDnses);
        compareResult.added.clear();
        if (linkProperties != null) {
            for (InetAddress inetAddress : linkProperties.getDnsServers()) {
                if (!compareResult.removed.remove(inetAddress)) {
                    compareResult.added.add(inetAddress);
                }
            }
        }
        return compareResult;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void ensureDirectlyConnectedRoutes() {
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            addRoute(new RouteInfo(it.next(), (InetAddress) null, this.mIfaceName));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinkProperties)) {
            return false;
        }
        LinkProperties linkProperties = (LinkProperties) obj;
        return isIdenticalInterfaceName(linkProperties) && isIdenticalAddresses(linkProperties) && isIdenticalDnses(linkProperties) && isIdenticalRoutes(linkProperties) && isIdenticalHttpProxy(linkProperties) && isIdenticalStackedLinks(linkProperties) && isIdenticalMtu(linkProperties) && isIdenticalTcpBufferSizes(linkProperties);
    }

    public List<InetAddress> getAddresses() {
        ArrayList arrayList = new ArrayList();
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getAddress());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<InetAddress> getAllAddresses() {
        ArrayList arrayList = new ArrayList();
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getAddress());
        }
        Iterator<LinkProperties> it2 = this.mStackedLinks.values().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next().getAllAddresses());
        }
        return arrayList;
    }

    public List<String> getAllInterfaceNames() {
        ArrayList arrayList = new ArrayList(this.mStackedLinks.size() + 1);
        String str = this.mIfaceName;
        if (str != null) {
            arrayList.add(new String(str));
        }
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getAllInterfaceNames());
        }
        return arrayList;
    }

    public List<LinkAddress> getAllLinkAddresses() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mLinkAddresses);
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getAllLinkAddresses());
        }
        return arrayList;
    }

    public List<RouteInfo> getAllRoutes() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mRoutes);
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getAllRoutes());
        }
        return arrayList;
    }

    public List<InetAddress> getDnsServers() {
        return Collections.unmodifiableList(this.mDnses);
    }

    public String getDomains() {
        return this.mDomains;
    }

    public ProxyInfo getHttpProxy() {
        return this.mHttpProxy;
    }

    public String getInterfaceName() {
        return this.mIfaceName;
    }

    public List<LinkAddress> getLinkAddresses() {
        return Collections.unmodifiableList(this.mLinkAddresses);
    }

    public int getMtu() {
        return this.mMtu;
    }

    public List<RouteInfo> getRoutes() {
        return Collections.unmodifiableList(this.mRoutes);
    }

    public List<LinkProperties> getStackedLinks() {
        if (this.mStackedLinks.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new LinkProperties(it.next()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String getTcpBufferSizes() {
        return this.mTcpBufferSizes;
    }

    public boolean hasGlobalIPv6Address() {
        for (LinkAddress linkAddress : this.mLinkAddresses) {
            if ((linkAddress.getAddress() instanceof Inet6Address) && linkAddress.isGlobalPreferred()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasIPv4Address() {
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            if (it.next().getAddress() instanceof Inet4Address) {
                return true;
            }
        }
        return false;
    }

    public boolean hasIPv4DefaultRoute() {
        Iterator<RouteInfo> it = this.mRoutes.iterator();
        while (it.hasNext()) {
            if (it.next().isIPv4Default()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasIPv4DnsServer() {
        Iterator<InetAddress> it = this.mDnses.iterator();
        while (it.hasNext()) {
            if (it.next() instanceof Inet4Address) {
                return true;
            }
        }
        return false;
    }

    public boolean hasIPv6DefaultRoute() {
        Iterator<RouteInfo> it = this.mRoutes.iterator();
        while (it.hasNext()) {
            if (it.next().isIPv6Default()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasIPv6DnsServer() {
        Iterator<InetAddress> it = this.mDnses.iterator();
        while (it.hasNext()) {
            if (it.next() instanceof Inet6Address) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode;
        String str = this.mIfaceName;
        if (str == null) {
            iHashCode = 0;
        } else {
            int size = (this.mDnses.size() * 37) + (this.mLinkAddresses.size() * 31) + str.hashCode();
            String str2 = this.mDomains;
            int size2 = (this.mRoutes.size() * 41) + size + (str2 == null ? 0 : str2.hashCode());
            ProxyInfo proxyInfo = this.mHttpProxy;
            iHashCode = (this.mStackedLinks.hashCode() * 47) + size2 + (proxyInfo == null ? 0 : proxyInfo.hashCode());
        }
        int i2 = (this.mMtu * 51) + iHashCode;
        String str3 = this.mTcpBufferSizes;
        return i2 + (str3 != null ? str3.hashCode() : 0);
    }

    public boolean isIPv4Provisioned() {
        return hasIPv4Address() && hasIPv4DefaultRoute() && hasIPv4DnsServer();
    }

    public boolean isIPv6Provisioned() {
        return hasGlobalIPv6Address() && hasIPv6DefaultRoute() && hasIPv6DnsServer();
    }

    public boolean isIdenticalAddresses(LinkProperties linkProperties) {
        List<InetAddress> addresses = linkProperties.getAddresses();
        List<InetAddress> addresses2 = getAddresses();
        if (addresses2.size() == addresses.size()) {
            return addresses2.containsAll(addresses);
        }
        return false;
    }

    public boolean isIdenticalDnses(LinkProperties linkProperties) {
        List<InetAddress> dnsServers = linkProperties.getDnsServers();
        String domains = linkProperties.getDomains();
        String str = this.mDomains;
        if (str == null) {
            if (domains != null) {
                return false;
            }
        } else if (!str.equals(domains)) {
            return false;
        }
        if (this.mDnses.size() == dnsServers.size()) {
            return this.mDnses.containsAll(dnsServers);
        }
        return false;
    }

    public boolean isIdenticalHttpProxy(LinkProperties linkProperties) {
        if (getHttpProxy() == null) {
            return linkProperties.getHttpProxy() == null;
        }
        return getHttpProxy().equals(linkProperties.getHttpProxy());
    }

    public boolean isIdenticalInterfaceName(LinkProperties linkProperties) {
        return TextUtils.equals(getInterfaceName(), linkProperties.getInterfaceName());
    }

    public boolean isIdenticalMtu(LinkProperties linkProperties) {
        return getMtu() == linkProperties.getMtu();
    }

    public boolean isIdenticalRoutes(LinkProperties linkProperties) {
        List<RouteInfo> routes = linkProperties.getRoutes();
        if (this.mRoutes.size() == routes.size()) {
            return this.mRoutes.containsAll(routes);
        }
        return false;
    }

    public boolean isIdenticalStackedLinks(LinkProperties linkProperties) {
        if (!this.mStackedLinks.keySet().equals(linkProperties.mStackedLinks.keySet())) {
            return false;
        }
        for (LinkProperties linkProperties2 : this.mStackedLinks.values()) {
            if (!linkProperties2.equals(linkProperties.mStackedLinks.get(linkProperties2.getInterfaceName()))) {
                return false;
            }
        }
        return true;
    }

    public boolean isIdenticalTcpBufferSizes(LinkProperties linkProperties) {
        return Objects.equals(this.mTcpBufferSizes, linkProperties.mTcpBufferSizes);
    }

    public boolean isProvisioned() {
        return isIPv4Provisioned() || isIPv6Provisioned();
    }

    public boolean isReachable(InetAddress inetAddress) {
        RouteInfo routeInfoSelectBestRoute = RouteInfo.selectBestRoute(getAllRoutes(), inetAddress);
        if (routeInfoSelectBestRoute == null) {
            return false;
        }
        if (inetAddress instanceof Inet4Address) {
            return hasIPv4AddressOnInterface(routeInfoSelectBestRoute.getInterface());
        }
        if (!(inetAddress instanceof Inet6Address)) {
            return false;
        }
        if (inetAddress.isLinkLocalAddress()) {
            return ((Inet6Address) inetAddress).getScopeId() != 0;
        }
        return !routeInfoSelectBestRoute.hasGateway() || hasGlobalIPv6Address();
    }

    public boolean removeDnsServer(InetAddress inetAddress) {
        if (inetAddress != null) {
            return this.mDnses.remove(inetAddress);
        }
        return false;
    }

    public boolean removeLinkAddress(LinkAddress linkAddress) {
        int iFindLinkAddressIndex = findLinkAddressIndex(linkAddress);
        if (iFindLinkAddressIndex < 0) {
            return false;
        }
        this.mLinkAddresses.remove(iFindLinkAddressIndex);
        return true;
    }

    public boolean removeRoute(RouteInfo routeInfo) {
        return routeInfo != null && Objects.equals(this.mIfaceName, routeInfo.getInterface()) && this.mRoutes.remove(routeInfo);
    }

    public boolean removeStackedLink(String str) {
        return (str == null || this.mStackedLinks.remove(str) == null) ? false : true;
    }

    public void setDnsServers(Collection<InetAddress> collection) {
        this.mDnses.clear();
        Iterator<InetAddress> it = collection.iterator();
        while (it.hasNext()) {
            addDnsServer(it.next());
        }
    }

    public void setDomains(String str) {
        this.mDomains = str;
    }

    public void setHttpProxy(ProxyInfo proxyInfo) {
        this.mHttpProxy = proxyInfo;
    }

    public void setInterfaceName(String str) {
        this.mIfaceName = str;
        ArrayList<RouteInfo> arrayList = new ArrayList<>(this.mRoutes.size());
        Iterator<RouteInfo> it = this.mRoutes.iterator();
        while (it.hasNext()) {
            arrayList.add(routeWithInterface(it.next()));
        }
        this.mRoutes = arrayList;
    }

    public void setLinkAddresses(Collection<LinkAddress> collection) {
        this.mLinkAddresses.clear();
        Iterator<LinkAddress> it = collection.iterator();
        while (it.hasNext()) {
            addLinkAddress(it.next());
        }
    }

    public void setMtu(int i2) {
        this.mMtu = i2;
    }

    public void setTcpBufferSizes(String str) {
        this.mTcpBufferSizes = str;
    }

    public String toString() {
        String strD = "";
        String strN = this.mIfaceName == null ? "" : c.n(new StringBuilder("InterfaceName: "), this.mIfaceName, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        String string = "LinkAddresses: [";
        for (LinkAddress linkAddress : this.mLinkAddresses) {
            StringBuilder sbR = c.r(string);
            sbR.append(linkAddress.toString());
            sbR.append(",");
            string = sbR.toString();
        }
        String strD2 = c.D(string, "] ");
        String string2 = "DnsAddresses: [";
        for (InetAddress inetAddress : this.mDnses) {
            StringBuilder sbR2 = c.r(string2);
            sbR2.append(inetAddress.getHostAddress());
            sbR2.append(",");
            string2 = sbR2.toString();
        }
        String strD3 = c.D(string2, "] ");
        String str = "Domains: " + this.mDomains;
        String str2 = " MTU: " + this.mMtu;
        String str3 = this.mTcpBufferSizes != null ? " TcpBufferSizes: " + this.mTcpBufferSizes : "";
        String string3 = " Routes: [";
        for (RouteInfo routeInfo : this.mRoutes) {
            StringBuilder sbR3 = c.r(string3);
            sbR3.append(routeInfo.toString());
            sbR3.append(",");
            string3 = sbR3.toString();
        }
        String strD4 = c.D(string3, "] ");
        String str4 = this.mHttpProxy == null ? "" : " HttpProxy: " + this.mHttpProxy.toString() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
        if (this.mStackedLinks.values().size() > 0) {
            String string4 = " Stacked: [";
            for (LinkProperties linkProperties : this.mStackedLinks.values()) {
                StringBuilder sbU = c.u(string4, " [");
                sbU.append(linkProperties.toString());
                sbU.append(" ],");
                string4 = sbU.toString();
            }
            strD = c.D(string4, "] ");
        }
        StringBuilder sbW = c.w("{", strN, strD2, strD4, strD3);
        sbW.append(str);
        sbW.append(str2);
        sbW.append(str3);
        sbW.append(str4);
        return c.n(sbW, strD, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(getInterfaceName());
        parcel.writeInt(this.mLinkAddresses.size());
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), i2);
        }
        parcel.writeInt(this.mDnses.size());
        Iterator<InetAddress> it2 = this.mDnses.iterator();
        while (it2.hasNext()) {
            parcel.writeByteArray(it2.next().getAddress());
        }
        parcel.writeString(this.mDomains);
        parcel.writeInt(this.mMtu);
        parcel.writeString(this.mTcpBufferSizes);
        parcel.writeInt(this.mRoutes.size());
        Iterator<RouteInfo> it3 = this.mRoutes.iterator();
        while (it3.hasNext()) {
            parcel.writeParcelable(it3.next(), i2);
        }
        if (this.mHttpProxy != null) {
            parcel.writeByte((byte) 1);
            parcel.writeParcelable(this.mHttpProxy, i2);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeList(new ArrayList(this.mStackedLinks.values()));
    }

    public LinkProperties(LinkProperties linkProperties) {
        if (linkProperties != null) {
            this.mIfaceName = linkProperties.getInterfaceName();
            Iterator<LinkAddress> it = linkProperties.getLinkAddresses().iterator();
            while (it.hasNext()) {
                this.mLinkAddresses.add(it.next());
            }
            Iterator<InetAddress> it2 = linkProperties.getDnsServers().iterator();
            while (it2.hasNext()) {
                this.mDnses.add(it2.next());
            }
            this.mDomains = linkProperties.getDomains();
            Iterator<RouteInfo> it3 = linkProperties.getRoutes().iterator();
            while (it3.hasNext()) {
                this.mRoutes.add(it3.next());
            }
            this.mHttpProxy = linkProperties.getHttpProxy() == null ? null : new ProxyInfo(linkProperties.getHttpProxy());
            Iterator<LinkProperties> it4 = linkProperties.mStackedLinks.values().iterator();
            while (it4.hasNext()) {
                addStackedLink(it4.next());
            }
            setMtu(linkProperties.getMtu());
            this.mTcpBufferSizes = linkProperties.mTcpBufferSizes;
        }
    }
}
