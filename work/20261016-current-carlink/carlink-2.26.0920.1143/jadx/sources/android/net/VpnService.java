package android.net;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.IPackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.system.OsConstants;
import com.android.internal.net.VpnConfig;
import java.net.DatagramSocket;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VpnService extends Service {
    public static final String SERVICE_INTERFACE = "android.net.VpnService";
    public static final String SERVICE_META_DATA_SUPPORTS_ALWAYS_ON = "android.net.VpnService.SUPPORTS_ALWAYS_ON";

    public class Callback extends Binder {
        private Callback() {
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 16777215) {
                return false;
            }
            VpnService.this.onRevoke();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void check(InetAddress inetAddress, int i2) {
        if (inetAddress.isLoopbackAddress()) {
            throw new IllegalArgumentException("Bad address");
        }
        if (inetAddress instanceof Inet4Address) {
            if (i2 < 0 || i2 > 32) {
                throw new IllegalArgumentException("Bad prefixLength");
            }
        } else {
            if (!(inetAddress instanceof Inet6Address)) {
                throw new IllegalArgumentException("Unsupported family");
            }
            if (i2 < 0 || i2 > 128) {
                throw new IllegalArgumentException("Bad prefixLength");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IConnectivityManager getService() {
        return IConnectivityManager.Stub.asInterface(ServiceManager.getService(Context.CONNECTIVITY_SERVICE));
    }

    public static Intent prepare(Context context) {
        try {
            if (getService().prepareVpn(context.getPackageName(), null, UserHandle.myUserId())) {
                return null;
            }
        } catch (RemoteException unused) {
        }
        return VpnConfig.getIntentForConfirmation();
    }

    public static void prepareAndAuthorize(Context context) {
        IConnectivityManager service = getService();
        String packageName = context.getPackageName();
        try {
            int iMyUserId = UserHandle.myUserId();
            if (!service.prepareVpn(packageName, null, iMyUserId)) {
                service.prepareVpn(null, packageName, iMyUserId);
            }
            service.setVpnPackageAuthorization(packageName, iMyUserId, true);
        } catch (RemoteException unused) {
        }
    }

    public boolean addAddress(InetAddress inetAddress, int i2) {
        check(inetAddress, i2);
        try {
            return getService().addVpnAddress(inetAddress.getHostAddress(), i2);
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null || !"android.net.VpnService".equals(intent.getAction())) {
            return null;
        }
        return new Callback();
    }

    public void onRevoke() {
        stopSelf();
    }

    public boolean protect(int i2) {
        return NetworkUtils.protectFromVpn(i2);
    }

    public boolean removeAddress(InetAddress inetAddress, int i2) {
        check(inetAddress, i2);
        try {
            return getService().removeVpnAddress(inetAddress.getHostAddress(), i2);
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public boolean setUnderlyingNetworks(Network[] networkArr) {
        try {
            return getService().setUnderlyingNetworksForVpn(networkArr);
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public boolean protect(Socket socket) {
        return protect(socket.getFileDescriptor$().getInt$());
    }

    public boolean protect(DatagramSocket datagramSocket) {
        return protect(datagramSocket.getFileDescriptor$().getInt$());
    }

    public class Builder {
        private final List<LinkAddress> mAddresses;
        private final VpnConfig mConfig;
        private final List<RouteInfo> mRoutes;

        public Builder() {
            VpnConfig vpnConfig = new VpnConfig();
            this.mConfig = vpnConfig;
            this.mAddresses = new ArrayList();
            this.mRoutes = new ArrayList();
            vpnConfig.user = VpnService.this.getClass().getName();
        }

        private void verifyApp(String str) {
            try {
                IPackageManager.Stub.asInterface(ServiceManager.getService("package")).getApplicationInfo(str, 0, UserHandle.getCallingUserId());
            } catch (RemoteException e2) {
                throw new IllegalStateException(e2);
            }
        }

        public Builder addAddress(InetAddress inetAddress, int i2) {
            VpnService.check(inetAddress, i2);
            if (inetAddress.isAnyLocalAddress()) {
                throw new IllegalArgumentException("Bad address");
            }
            this.mAddresses.add(new LinkAddress(inetAddress, i2));
            this.mConfig.updateAllowedFamilies(inetAddress);
            return this;
        }

        public Builder addAllowedApplication(String str) {
            if (this.mConfig.disallowedApplications != null) {
                throw new UnsupportedOperationException("addDisallowedApplication already called");
            }
            verifyApp(str);
            VpnConfig vpnConfig = this.mConfig;
            if (vpnConfig.allowedApplications == null) {
                vpnConfig.allowedApplications = new ArrayList();
            }
            this.mConfig.allowedApplications.add(str);
            return this;
        }

        public Builder addDisallowedApplication(String str) {
            if (this.mConfig.allowedApplications != null) {
                throw new UnsupportedOperationException("addAllowedApplication already called");
            }
            verifyApp(str);
            VpnConfig vpnConfig = this.mConfig;
            if (vpnConfig.disallowedApplications == null) {
                vpnConfig.disallowedApplications = new ArrayList();
            }
            this.mConfig.disallowedApplications.add(str);
            return this;
        }

        public Builder addDnsServer(InetAddress inetAddress) {
            if (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) {
                throw new IllegalArgumentException("Bad address");
            }
            VpnConfig vpnConfig = this.mConfig;
            if (vpnConfig.dnsServers == null) {
                vpnConfig.dnsServers = new ArrayList();
            }
            this.mConfig.dnsServers.add(inetAddress.getHostAddress());
            return this;
        }

        public Builder addRoute(InetAddress inetAddress, int i2) {
            VpnService.check(inetAddress, i2);
            int i3 = i2 / 8;
            byte[] address = inetAddress.getAddress();
            if (i3 < address.length) {
                address[i3] = (byte) (address[i3] << (i2 % 8));
                while (i3 < address.length) {
                    if (address[i3] != 0) {
                        throw new IllegalArgumentException("Bad address");
                    }
                    i3++;
                }
            }
            this.mRoutes.add(new RouteInfo(new IpPrefix(inetAddress, i2), (InetAddress) null));
            this.mConfig.updateAllowedFamilies(inetAddress);
            return this;
        }

        public Builder addSearchDomain(String str) {
            VpnConfig vpnConfig = this.mConfig;
            if (vpnConfig.searchDomains == null) {
                vpnConfig.searchDomains = new ArrayList();
            }
            this.mConfig.searchDomains.add(str);
            return this;
        }

        public Builder allowBypass() {
            this.mConfig.allowBypass = true;
            return this;
        }

        public Builder allowFamily(int i2) {
            if (i2 == OsConstants.AF_INET) {
                this.mConfig.allowIPv4 = true;
            } else {
                if (i2 != OsConstants.AF_INET6) {
                    throw new IllegalArgumentException(i2 + " is neither " + OsConstants.AF_INET + " nor " + OsConstants.AF_INET6);
                }
                this.mConfig.allowIPv6 = true;
            }
            return this;
        }

        public ParcelFileDescriptor establish() {
            VpnConfig vpnConfig = this.mConfig;
            vpnConfig.addresses = this.mAddresses;
            vpnConfig.routes = this.mRoutes;
            try {
                return VpnService.getService().establishVpn(this.mConfig);
            } catch (RemoteException e2) {
                throw new IllegalStateException(e2);
            }
        }

        public Builder setBlocking(boolean z2) {
            this.mConfig.blocking = z2;
            return this;
        }

        public Builder setConfigureIntent(PendingIntent pendingIntent) {
            this.mConfig.configureIntent = pendingIntent;
            return this;
        }

        public Builder setMtu(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Bad mtu");
            }
            this.mConfig.mtu = i2;
            return this;
        }

        public Builder setSession(String str) {
            this.mConfig.session = str;
            return this;
        }

        public Builder setUnderlyingNetworks(Network[] networkArr) {
            this.mConfig.underlyingNetworks = networkArr != null ? (Network[]) networkArr.clone() : null;
            return this;
        }

        public Builder addAddress(String str, int i2) {
            return addAddress(InetAddress.parseNumericAddress(str), i2);
        }

        public Builder addDnsServer(String str) {
            return addDnsServer(InetAddress.parseNumericAddress(str));
        }

        public Builder addRoute(String str, int i2) {
            return addRoute(InetAddress.parseNumericAddress(str), i2);
        }
    }
}
