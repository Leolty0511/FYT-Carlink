package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class RouteInfo implements Parcelable {
    public static final Parcelable.Creator<RouteInfo> CREATOR = new Parcelable.Creator<RouteInfo>() { // from class: android.net.RouteInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code duplicated, block: B:11:0x001d  */
        /* JADX WARN: Code duplicated, block: B:14:0x0026  */
        /* JADX WARN: Code duplicated, block: B:17:0x002d  */
        @Override // android.os.Parcelable.Creator
        public RouteInfo createFromParcel(Parcel parcel) {
            int i2;
            InetAddress byAddress;
            InetAddress byAddress2;
            if (parcel.readByte() == 1) {
                byte[] bArrCreateByteArray = parcel.createByteArray();
                i2 = parcel.readInt();
                try {
                    byAddress = InetAddress.getByAddress(bArrCreateByteArray);
                } catch (UnknownHostException unused) {
                    byAddress = null;
                }
                if (parcel.readByte() == 1) {
                    try {
                        byAddress2 = InetAddress.getByAddress(parcel.createByteArray());
                    } catch (UnknownHostException unused2) {
                        byAddress2 = null;
                    }
                } else {
                    byAddress2 = null;
                }
                return new RouteInfo(byAddress != null ? new LinkAddress(byAddress, i2) : null, byAddress2, parcel.readString());
            }
            i2 = 0;
            byAddress = null;
            if (parcel.readByte() == 1) {
                byAddress2 = InetAddress.getByAddress(parcel.createByteArray());
            } else {
                byAddress2 = null;
            }
            return new RouteInfo(byAddress != null ? new LinkAddress(byAddress, i2) : null, byAddress2, parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RouteInfo[] newArray(int i2) {
            return new RouteInfo[i2];
        }
    };
    private final LinkAddress mDestination;
    private final InetAddress mGateway;
    private final boolean mHasGateway;
    private final String mInterface;
    private final boolean mIsDefault;
    private final boolean mIsHost;

    public RouteInfo(LinkAddress linkAddress, InetAddress inetAddress, String str) {
        if (linkAddress == null) {
            if (inetAddress == null) {
                throw new IllegalArgumentException("Invalid arguments passed in: " + inetAddress + "," + linkAddress);
            }
            linkAddress = inetAddress instanceof Inet4Address ? new LinkAddress(Inet4Address.ANY, 0) : new LinkAddress(Inet6Address.ANY, 0);
        }
        inetAddress = inetAddress == null ? linkAddress.getAddress() instanceof Inet4Address ? Inet4Address.ANY : Inet6Address.ANY : inetAddress;
        this.mHasGateway = !inetAddress.isAnyLocalAddress();
        this.mDestination = new LinkAddress(NetworkUtils.getNetworkPart(linkAddress.getAddress(), linkAddress.getNetworkPrefixLength()), linkAddress.getNetworkPrefixLength());
        this.mGateway = inetAddress;
        this.mInterface = str;
        this.mIsDefault = isDefault();
        this.mIsHost = isHost();
    }

    private boolean isDefault() {
        InetAddress inetAddress = this.mGateway;
        if (inetAddress == null) {
            return false;
        }
        if (inetAddress instanceof Inet4Address) {
            LinkAddress linkAddress = this.mDestination;
            if (linkAddress != null && linkAddress.getNetworkPrefixLength() != 0) {
                return false;
            }
        } else {
            LinkAddress linkAddress2 = this.mDestination;
            if (linkAddress2 != null && linkAddress2.getNetworkPrefixLength() != 0) {
                return false;
            }
        }
        return true;
    }

    private boolean isHost() {
        return ((this.mDestination.getAddress() instanceof Inet4Address) && this.mDestination.getNetworkPrefixLength() == 32) || ((this.mDestination.getAddress() instanceof Inet6Address) && this.mDestination.getNetworkPrefixLength() == 128);
    }

    public static RouteInfo makeHostRoute(InetAddress inetAddress, String str) {
        return makeHostRoute(inetAddress, null, str);
    }

    public static RouteInfo selectBestRoute(Collection<RouteInfo> collection, InetAddress inetAddress) {
        RouteInfo routeInfo = null;
        if (collection != null && inetAddress != null) {
            for (RouteInfo routeInfo2 : collection) {
                if (NetworkUtils.addressTypeMatches(routeInfo2.mDestination.getAddress(), inetAddress) && (routeInfo == null || routeInfo.mDestination.getNetworkPrefixLength() < routeInfo2.mDestination.getNetworkPrefixLength())) {
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
        boolean zEquals;
        boolean zEquals2;
        boolean zEquals3;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RouteInfo)) {
            return false;
        }
        RouteInfo routeInfo = (RouteInfo) obj;
        LinkAddress linkAddress = this.mDestination;
        if (linkAddress == null) {
            zEquals = routeInfo.getDestination() == null;
        } else {
            zEquals = linkAddress.equals(routeInfo.getDestination());
        }
        InetAddress inetAddress = this.mGateway;
        if (inetAddress == null) {
            zEquals2 = routeInfo.getGateway() == null;
        } else {
            zEquals2 = inetAddress.equals(routeInfo.getGateway());
        }
        String str = this.mInterface;
        if (str == null) {
            zEquals3 = routeInfo.getInterface() == null;
        } else {
            zEquals3 = str.equals(routeInfo.getInterface());
        }
        return zEquals && zEquals2 && zEquals3 && this.mIsDefault == routeInfo.mIsDefault;
    }

    public LinkAddress getDestination() {
        return this.mDestination;
    }

    public InetAddress getGateway() {
        return this.mGateway;
    }

    public String getInterface() {
        return this.mInterface;
    }

    public boolean hasGateway() {
        return this.mHasGateway;
    }

    public int hashCode() {
        LinkAddress linkAddress = this.mDestination;
        int iHashCode = linkAddress == null ? 0 : linkAddress.hashCode() * 41;
        InetAddress inetAddress = this.mGateway;
        int iHashCode2 = iHashCode + (inetAddress == null ? 0 : inetAddress.hashCode() * 47);
        String str = this.mInterface;
        return iHashCode2 + (str != null ? str.hashCode() * 67 : 0) + (this.mIsDefault ? 3 : 7);
    }

    public boolean isDefaultRoute() {
        return this.mIsDefault;
    }

    public boolean isHostRoute() {
        return this.mIsHost;
    }

    public boolean matches(InetAddress inetAddress) {
        if (inetAddress == null) {
            return false;
        }
        return this.mDestination.getAddress().equals(NetworkUtils.getNetworkPart(inetAddress, this.mDestination.getNetworkPrefixLength()));
    }

    public String toString() {
        LinkAddress linkAddress = this.mDestination;
        String string = linkAddress != null ? linkAddress.toString() : ProxyProperties.LOCAL_EXCL_LIST;
        if (this.mGateway == null) {
            return string;
        }
        return string + " -> " + this.mGateway.getHostAddress();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mDestination == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.mDestination.getAddress().getAddress());
            parcel.writeInt(this.mDestination.getNetworkPrefixLength());
        }
        if (this.mGateway == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.mGateway.getAddress());
        }
        parcel.writeString(this.mInterface);
    }

    public static RouteInfo makeHostRoute(InetAddress inetAddress, InetAddress inetAddress2, String str) {
        if (inetAddress == null) {
            return null;
        }
        return inetAddress instanceof Inet4Address ? new RouteInfo(new LinkAddress(inetAddress, 32), inetAddress2, str) : new RouteInfo(new LinkAddress(inetAddress, 128), inetAddress2, str);
    }

    public RouteInfo(LinkAddress linkAddress, InetAddress inetAddress) {
        this(linkAddress, inetAddress, null);
    }

    public RouteInfo(InetAddress inetAddress) {
        this(null, inetAddress, null);
    }

    public RouteInfo(LinkAddress linkAddress) {
        this(linkAddress, null, null);
    }
}
