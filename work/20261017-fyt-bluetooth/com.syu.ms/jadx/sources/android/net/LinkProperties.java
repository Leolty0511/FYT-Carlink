package android.net;

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

/* JADX INFO: loaded from: classes.dex */
public class LinkProperties implements Parcelable {
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
                    linkProperties.addDns(InetAddress.getByAddress(parcel.createByteArray()));
                } catch (UnknownHostException unused) {
                }
            }
            linkProperties.setDomains(parcel.readString());
            linkProperties.setMtu(parcel.readInt());
            int i6 = parcel.readInt();
            for (int i7 = 0; i7 < i6; i7++) {
                linkProperties.addRoute((RouteInfo) parcel.readParcelable(null));
            }
            if (parcel.readByte() == 1) {
                linkProperties.setHttpProxy((ProxyProperties) parcel.readParcelable(null));
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
    private String mDomains;
    private ProxyProperties mHttpProxy;
    private String mIfaceName;
    private int mMtu;
    private Collection<LinkAddress> mLinkAddresses = new ArrayList();
    private Collection<InetAddress> mDnses = new ArrayList();
    private Collection<RouteInfo> mRoutes = new ArrayList();
    private Hashtable<String, LinkProperties> mStackedLinks = new Hashtable<>();

    public static class CompareResult<T> {
        public Collection<T> removed = new ArrayList();
        public Collection<T> added = new ArrayList();

        public String toString() {
            Iterator<T> it = this.removed.iterator();
            String str = "removed=[";
            while (it.hasNext()) {
                str = str + it.next().toString() + ",";
            }
            String str2 = str + "] added=[";
            Iterator<T> it2 = this.added.iterator();
            while (it2.hasNext()) {
                str2 = str2 + it2.next().toString() + ",";
            }
            return str2 + "]";
        }
    }

    public LinkProperties() {
        clear();
    }

    private RouteInfo routeWithInterface(RouteInfo routeInfo) {
        return new RouteInfo(routeInfo.getDestination(), routeInfo.getGateway(), this.mIfaceName);
    }

    public void addDns(InetAddress inetAddress) {
        if (inetAddress != null) {
            this.mDnses.add(inetAddress);
        }
    }

    public boolean addLinkAddress(LinkAddress linkAddress) {
        if (linkAddress == null || this.mLinkAddresses.contains(linkAddress)) {
            return false;
        }
        this.mLinkAddresses.add(linkAddress);
        return true;
    }

    public void addRoute(RouteInfo routeInfo) {
        if (routeInfo != null) {
            String str = routeInfo.getInterface();
            if (str == null || str.equals(this.mIfaceName)) {
                this.mRoutes.add(routeWithInterface(routeInfo));
                return;
            }
            throw new IllegalArgumentException("Route added with non-matching interface: " + str + " vs. " + this.mIfaceName);
        }
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
            for (InetAddress inetAddress : linkProperties.getDnses()) {
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinkProperties)) {
            return false;
        }
        LinkProperties linkProperties = (LinkProperties) obj;
        return isIdenticalInterfaceName(linkProperties) && isIdenticalAddresses(linkProperties) && isIdenticalDnses(linkProperties) && isIdenticalRoutes(linkProperties) && isIdenticalHttpProxy(linkProperties) && isIdenticalStackedLinks(linkProperties) && isIdenticalMtu(linkProperties);
    }

    public Collection<InetAddress> getAddresses() {
        ArrayList arrayList = new ArrayList();
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getAddress());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public Collection<InetAddress> getAllAddresses() {
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

    public Collection<String> getAllInterfaceNames() {
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

    public Collection<LinkAddress> getAllLinkAddresses() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mLinkAddresses);
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getAllLinkAddresses());
        }
        return arrayList;
    }

    public Collection<RouteInfo> getAllRoutes() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mRoutes);
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getAllRoutes());
        }
        return arrayList;
    }

    public Collection<InetAddress> getDnses() {
        return Collections.unmodifiableCollection(this.mDnses);
    }

    public String getDomains() {
        return this.mDomains;
    }

    public ProxyProperties getHttpProxy() {
        return this.mHttpProxy;
    }

    public String getInterfaceName() {
        return this.mIfaceName;
    }

    public Collection<LinkAddress> getLinkAddresses() {
        return Collections.unmodifiableCollection(this.mLinkAddresses);
    }

    public int getMtu() {
        return this.mMtu;
    }

    public Collection<RouteInfo> getRoutes() {
        return Collections.unmodifiableCollection(this.mRoutes);
    }

    public Collection<LinkProperties> getStackedLinks() {
        ArrayList arrayList = new ArrayList();
        Iterator<LinkProperties> it = this.mStackedLinks.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new LinkProperties(it.next()));
        }
        return Collections.unmodifiableCollection(arrayList);
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

    public boolean hasIPv6Address() {
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        while (it.hasNext()) {
            if (it.next().getAddress() instanceof Inet6Address) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.mIfaceName;
        int iHashCode = 0;
        if (str != null) {
            int iHashCode2 = str.hashCode() + (this.mLinkAddresses.size() * 31) + (this.mDnses.size() * 37);
            String str2 = this.mDomains;
            int iHashCode3 = iHashCode2 + (str2 == null ? 0 : str2.hashCode()) + (this.mRoutes.size() * 41);
            ProxyProperties proxyProperties = this.mHttpProxy;
            iHashCode = (this.mStackedLinks.hashCode() * 47) + iHashCode3 + (proxyProperties != null ? proxyProperties.hashCode() : 0);
        }
        return iHashCode + (this.mMtu * 51);
    }

    public boolean isIdenticalAddresses(LinkProperties linkProperties) {
        Collection<InetAddress> addresses = linkProperties.getAddresses();
        Collection<InetAddress> addresses2 = getAddresses();
        if (addresses2.size() == addresses.size()) {
            return addresses2.containsAll(addresses);
        }
        return false;
    }

    public boolean isIdenticalDnses(LinkProperties linkProperties) {
        Collection<InetAddress> dnses = linkProperties.getDnses();
        String domains = linkProperties.getDomains();
        String str = this.mDomains;
        if (str == null) {
            if (domains != null) {
                return false;
            }
        } else if (!str.equals(domains)) {
            return false;
        }
        if (this.mDnses.size() == dnses.size()) {
            return this.mDnses.containsAll(dnses);
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
        Collection<RouteInfo> routes = linkProperties.getRoutes();
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

    public boolean removeLinkAddress(LinkAddress linkAddress) {
        return this.mLinkAddresses.remove(linkAddress);
    }

    public boolean removeStackedLink(LinkProperties linkProperties) {
        return (linkProperties == null || linkProperties.getInterfaceName() == null || this.mStackedLinks.remove(linkProperties.getInterfaceName()) == null) ? false : true;
    }

    public void setDomains(String str) {
        this.mDomains = str;
    }

    public void setHttpProxy(ProxyProperties proxyProperties) {
        this.mHttpProxy = proxyProperties;
    }

    public void setInterfaceName(String str) {
        this.mIfaceName = str;
        ArrayList arrayList = new ArrayList(this.mRoutes.size());
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

    public String toString() {
        String str;
        String str2;
        String str3 = this.mIfaceName;
        String str4 = ProxyProperties.LOCAL_EXCL_LIST;
        if (str3 == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        } else {
            str = "InterfaceName: " + this.mIfaceName + " ";
        }
        Iterator<LinkAddress> it = this.mLinkAddresses.iterator();
        String str5 = "LinkAddresses: [";
        while (it.hasNext()) {
            str5 = str5 + it.next().toString() + ",";
        }
        String str6 = str5 + "] ";
        Iterator<InetAddress> it2 = this.mDnses.iterator();
        String str7 = "DnsAddresses: [";
        while (it2.hasNext()) {
            str7 = str7 + it2.next().getHostAddress() + ",";
        }
        String str8 = str7 + "] ";
        String str9 = "Domains: " + this.mDomains;
        String str10 = "MTU: " + this.mMtu;
        Iterator<RouteInfo> it3 = this.mRoutes.iterator();
        String str11 = " Routes: [";
        while (it3.hasNext()) {
            str11 = str11 + it3.next().toString() + ",";
        }
        String str12 = str11 + "] ";
        if (this.mHttpProxy == null) {
            str2 = ProxyProperties.LOCAL_EXCL_LIST;
        } else {
            str2 = "HttpProxy: " + this.mHttpProxy.toString() + " ";
        }
        if (this.mStackedLinks.values().size() > 0) {
            String str13 = ProxyProperties.LOCAL_EXCL_LIST + " Stacked: [";
            Iterator<LinkProperties> it4 = this.mStackedLinks.values().iterator();
            while (it4.hasNext()) {
                str13 = str13 + " [" + it4.next().toString() + " ],";
            }
            str4 = str13 + "] ";
        }
        return "{" + str + str6 + str12 + str8 + str9 + str10 + str2 + str4 + "}";
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
            Iterator<InetAddress> it2 = linkProperties.getDnses().iterator();
            while (it2.hasNext()) {
                this.mDnses.add(it2.next());
            }
            this.mDomains = linkProperties.getDomains();
            Iterator<RouteInfo> it3 = linkProperties.getRoutes().iterator();
            while (it3.hasNext()) {
                this.mRoutes.add(it3.next());
            }
            this.mHttpProxy = linkProperties.getHttpProxy() == null ? null : new ProxyProperties(linkProperties.getHttpProxy());
            Iterator<LinkProperties> it4 = linkProperties.mStackedLinks.values().iterator();
            while (it4.hasNext()) {
                addStackedLink(it4.next());
            }
            setMtu(linkProperties.getMtu());
        }
    }
}
