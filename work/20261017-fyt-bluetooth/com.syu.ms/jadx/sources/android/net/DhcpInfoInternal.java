package android.net;

import android.text.TextUtils;
import android.util.Log;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DhcpInfoInternal {
    private static final String TAG = "DhcpInfoInternal";
    public String dns1;
    public String dns2;
    public String ipAddress;
    public int leaseDuration;
    private Collection<RouteInfo> mRoutes = new ArrayList();
    public int prefixLength;
    public String serverAddress;
    public String vendorInfo;

    private int convertToInt(String str) {
        if (str == null) {
            return 0;
        }
        try {
            InetAddress inetAddressNumericToInetAddress = NetworkUtils.numericToInetAddress(str);
            if (inetAddressNumericToInetAddress instanceof Inet4Address) {
                return NetworkUtils.inetAddressToInt(inetAddressNumericToInetAddress);
            }
            return 0;
        } catch (IllegalArgumentException unused) {
            return 0;
        }
    }

    public void addRoute(RouteInfo routeInfo) {
        this.mRoutes.add(routeInfo);
    }

    public Collection<RouteInfo> getRoutes() {
        return Collections.unmodifiableCollection(this.mRoutes);
    }

    public boolean hasMeteredHint() {
        String str = this.vendorInfo;
        if (str != null) {
            return str.contains("ANDROID_METERED");
        }
        return false;
    }

    public DhcpInfo makeDhcpInfo() {
        DhcpInfo dhcpInfo = new DhcpInfo();
        dhcpInfo.ipAddress = convertToInt(this.ipAddress);
        for (RouteInfo routeInfo : this.mRoutes) {
            if (routeInfo.isDefaultRoute()) {
                dhcpInfo.gateway = convertToInt(routeInfo.getGateway().getHostAddress());
                break;
            }
        }
        try {
            NetworkUtils.numericToInetAddress(this.ipAddress);
            dhcpInfo.netmask = NetworkUtils.prefixLengthToNetmaskInt(this.prefixLength);
        } catch (IllegalArgumentException unused) {
        }
        dhcpInfo.dns1 = convertToInt(this.dns1);
        dhcpInfo.dns2 = convertToInt(this.dns2);
        dhcpInfo.serverAddress = convertToInt(this.serverAddress);
        dhcpInfo.leaseDuration = this.leaseDuration;
        return dhcpInfo;
    }

    public LinkAddress makeLinkAddress() {
        if (!TextUtils.isEmpty(this.ipAddress)) {
            return new LinkAddress(NetworkUtils.numericToInetAddress(this.ipAddress), this.prefixLength);
        }
        Log.e(TAG, "makeLinkAddress with empty ipAddress");
        return null;
    }

    public LinkProperties makeLinkProperties() {
        LinkProperties linkProperties = new LinkProperties();
        linkProperties.addLinkAddress(makeLinkAddress());
        Iterator<RouteInfo> it = this.mRoutes.iterator();
        while (it.hasNext()) {
            linkProperties.addRoute(it.next());
        }
        if (TextUtils.isEmpty(this.dns1)) {
            Log.d(TAG, "makeLinkProperties with empty dns1!");
        } else {
            linkProperties.addDns(NetworkUtils.numericToInetAddress(this.dns1));
        }
        if (TextUtils.isEmpty(this.dns2)) {
            Log.d(TAG, "makeLinkProperties with empty dns2!");
        } else {
            linkProperties.addDns(NetworkUtils.numericToInetAddress(this.dns2));
        }
        return linkProperties;
    }

    public String toString() {
        Iterator<RouteInfo> it = this.mRoutes.iterator();
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        while (it.hasNext()) {
            str = str + it.next().toString() + " | ";
        }
        return "addr: " + this.ipAddress + "/" + this.prefixLength + " mRoutes: " + str + " dns: " + this.dns1 + "," + this.dns2 + " dhcpServer: " + this.serverAddress + " leaseDuration: " + this.leaseDuration;
    }

    public void updateFromDhcpRequest(DhcpInfoInternal dhcpInfoInternal) {
        if (dhcpInfoInternal == null) {
            return;
        }
        if (TextUtils.isEmpty(this.dns1)) {
            this.dns1 = dhcpInfoInternal.dns1;
        }
        if (TextUtils.isEmpty(this.dns2)) {
            this.dns2 = dhcpInfoInternal.dns2;
        }
        if (this.mRoutes.size() == 0) {
            Iterator<RouteInfo> it = dhcpInfoInternal.getRoutes().iterator();
            while (it.hasNext()) {
                addRoute(it.next());
            }
        }
    }
}
