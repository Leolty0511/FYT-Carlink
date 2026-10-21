package android.net;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class RouteInfo implements Parcelable {
    public static final Parcelable.Creator<RouteInfo> CREATOR = new Parcelable.Creator<RouteInfo>() { // from class: android.net.RouteInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RouteInfo createFromParcel(Parcel parcel) {
            InetAddress byAddress = null;
            IpPrefix ipPrefix = (IpPrefix) parcel.readParcelable(null);
            try {
                byAddress = InetAddress.getByAddress(parcel.createByteArray());
            } catch (UnknownHostException unused) {
            }
            return new RouteInfo(ipPrefix, byAddress, parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RouteInfo[] newArray(int i2) {
            return new RouteInfo[i2];
        }
    };
    public static final int RTN_THROW = 9;
    public static final int RTN_UNICAST = 1;
    public static final int RTN_UNREACHABLE = 7;
    private final IpPrefix mDestination;
    private final InetAddress mGateway;
    private final boolean mHasGateway;
    private final String mInterface;
    private final boolean mIsHost;
    private final int mType;

    public RouteInfo(IpPrefix ipPrefix, InetAddress inetAddress, String str, int i2) {
        if (i2 != 1 && i2 != 7 && i2 != 9) {
            throw new IllegalArgumentException(c.d("Unknown route type ", i2));
        }
        if (ipPrefix == null) {
            if (inetAddress == null) {
                throw new IllegalArgumentException("Invalid arguments passed in: " + inetAddress + "," + ipPrefix);
            }
            ipPrefix = inetAddress instanceof Inet4Address ? new IpPrefix(Inet4Address.ANY, 0) : new IpPrefix(Inet6Address.ANY, 0);
        }
        inetAddress = inetAddress == null ? ipPrefix.getAddress() instanceof Inet4Address ? Inet4Address.ANY : Inet6Address.ANY : inetAddress;
        this.mHasGateway = true ^ inetAddress.isAnyLocalAddress();
        if (((ipPrefix.getAddress() instanceof Inet4Address) && !(inetAddress instanceof Inet4Address)) || ((ipPrefix.getAddress() instanceof Inet6Address) && !(inetAddress instanceof Inet6Address))) {
            throw new IllegalArgumentException("address family mismatch in RouteInfo constructor");
        }
        this.mDestination = ipPrefix;
        this.mGateway = inetAddress;
        this.mInterface = str;
        this.mType = i2;
        this.mIsHost = isHost();
    }

    private boolean isHost() {
        return ((this.mDestination.getAddress() instanceof Inet4Address) && this.mDestination.getPrefixLength() == 32) || ((this.mDestination.getAddress() instanceof Inet6Address) && this.mDestination.getPrefixLength() == 128);
    }

    public static RouteInfo makeHostRoute(InetAddress inetAddress, String str) {
        return makeHostRoute(inetAddress, null, str);
    }

    public static RouteInfo selectBestRoute(Collection<RouteInfo> collection, InetAddress inetAddress) {
        RouteInfo routeInfo = null;
        if (collection != null && inetAddress != null) {
            for (RouteInfo routeInfo2 : collection) {
                if (NetworkUtils.addressTypeMatches(routeInfo2.mDestination.getAddress(), inetAddress) && (routeInfo == null || routeInfo.mDestination.getPrefixLength() < routeInfo2.mDestination.getPrefixLength())) {
                    if (routeInfo2.matches(inetAddress)) {
                        routeInfo = routeInfo2;
                    }
                }
            }
        }
        return routeInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RouteInfo)) {
            return false;
        }
        RouteInfo routeInfo = (RouteInfo) obj;
        return Objects.equals(this.mDestination, routeInfo.getDestination()) && Objects.equals(this.mGateway, routeInfo.getGateway()) && Objects.equals(this.mInterface, routeInfo.getInterface()) && this.mType == routeInfo.getType();
    }

    public IpPrefix getDestination() {
        return this.mDestination;
    }

    public LinkAddress getDestinationLinkAddress() {
        return new LinkAddress(this.mDestination.getAddress(), this.mDestination.getPrefixLength());
    }

    public InetAddress getGateway() {
        return this.mGateway;
    }

    public String getInterface() {
        return this.mInterface;
    }

    public int getType() {
        return this.mType;
    }

    public boolean hasGateway() {
        return this.mHasGateway;
    }

    public int hashCode() {
        int iHashCode = this.mDestination.hashCode() * 41;
        InetAddress inetAddress = this.mGateway;
        int iHashCode2 = iHashCode + (inetAddress == null ? 0 : inetAddress.hashCode() * 47);
        String str = this.mInterface;
        return (this.mType * 71) + iHashCode2 + (str != null ? str.hashCode() * 67 : 0);
    }

    public boolean isDefaultRoute() {
        return this.mType == 1 && this.mDestination.getPrefixLength() == 0;
    }

    public boolean isHostRoute() {
        return this.mIsHost;
    }

    public boolean isIPv4Default() {
        return isDefaultRoute() && (this.mDestination.getAddress() instanceof Inet4Address);
    }

    public boolean isIPv6Default() {
        return isDefaultRoute() && (this.mDestination.getAddress() instanceof Inet6Address);
    }

    public boolean matches(InetAddress inetAddress) {
        return this.mDestination.contains(inetAddress);
    }

    public String toString() {
        IpPrefix ipPrefix = this.mDestination;
        String string = ipPrefix != null ? ipPrefix.toString() : "";
        int i2 = this.mType;
        if (i2 == 7) {
            return c.D(string, " unreachable");
        }
        if (i2 == 9) {
            return c.D(string, " throw");
        }
        String strD = c.D(string, " ->");
        if (this.mGateway != null) {
            StringBuilder sbU = c.u(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbU.append(this.mGateway.getHostAddress());
            strD = sbU.toString();
        }
        if (this.mInterface != null) {
            StringBuilder sbU2 = c.u(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbU2.append(this.mInterface);
            strD = sbU2.toString();
        }
        if (this.mType == 1) {
            return strD;
        }
        StringBuilder sbU3 = c.u(strD, " unknown type ");
        sbU3.append(this.mType);
        return sbU3.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mDestination, i2);
        InetAddress inetAddress = this.mGateway;
        parcel.writeByteArray(inetAddress == null ? null : inetAddress.getAddress());
        parcel.writeString(this.mInterface);
        parcel.writeInt(this.mType);
    }

    public static RouteInfo makeHostRoute(InetAddress inetAddress, InetAddress inetAddress2, String str) {
        if (inetAddress == null) {
            return null;
        }
        return inetAddress instanceof Inet4Address ? new RouteInfo(new IpPrefix(inetAddress, 32), inetAddress2, str) : new RouteInfo(new IpPrefix(inetAddress, 128), inetAddress2, str);
    }

    public RouteInfo(IpPrefix ipPrefix, InetAddress inetAddress, String str) {
        this(ipPrefix, inetAddress, str, 1);
    }

    public RouteInfo(LinkAddress linkAddress, InetAddress inetAddress, String str) {
        this(linkAddress == null ? null : new IpPrefix(linkAddress.getAddress(), linkAddress.getPrefixLength()), inetAddress, str);
    }

    public RouteInfo(IpPrefix ipPrefix, InetAddress inetAddress) {
        this(ipPrefix, inetAddress, (String) null);
    }

    public RouteInfo(LinkAddress linkAddress, InetAddress inetAddress) {
        this(linkAddress, inetAddress, (String) null);
    }

    public RouteInfo(InetAddress inetAddress) {
        this((IpPrefix) null, inetAddress, (String) null);
    }

    public RouteInfo(IpPrefix ipPrefix) {
        this(ipPrefix, (InetAddress) null, (String) null);
    }

    public RouteInfo(LinkAddress linkAddress) {
        this(linkAddress, (InetAddress) null, (String) null);
    }

    public RouteInfo(IpPrefix ipPrefix, int i2) {
        this(ipPrefix, null, null, i2);
    }
}
