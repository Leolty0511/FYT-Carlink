package android.net;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
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
    public static IConnectivityManager getService() {
        return IConnectivityManager.Stub.asInterface(ServiceManager.getService(Context.CONNECTIVITY_SERVICE));
    }

    public static Intent prepare(Context context) {
        try {
            if (getService().prepareVpn(context.getPackageName(), null)) {
                return null;
            }
        } catch (RemoteException unused) {
        }
        return VpnConfig.a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null || !SERVICE_INTERFACE.equals(intent.getAction())) {
            return null;
        }
        return new Callback();
    }

    public void onRevoke() {
        stopSelf();
    }

    public boolean protect(int i2) {
        ParcelFileDescriptor parcelFileDescriptorFromFd = null;
        try {
            parcelFileDescriptorFromFd = ParcelFileDescriptor.fromFd(i2);
            return getService().protectVpn(parcelFileDescriptorFromFd);
        } catch (Exception unused) {
            return false;
        } finally {
            try {
                parcelFileDescriptorFromFd.close();
            } catch (Exception unused2) {
            }
        }
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
            vpnConfig.f986a = VpnService.this.getClass().getName();
        }

        private void check(InetAddress inetAddress, int i2) {
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

        public Builder addAddress(InetAddress inetAddress, int i2) {
            check(inetAddress, i2);
            if (inetAddress.isAnyLocalAddress()) {
                throw new IllegalArgumentException("Bad address");
            }
            this.mAddresses.add(new LinkAddress(inetAddress, i2));
            return this;
        }

        public Builder addDnsServer(InetAddress inetAddress) {
            if (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) {
                throw new IllegalArgumentException("Bad address");
            }
            VpnConfig vpnConfig = this.mConfig;
            if (vpnConfig.f992g == null) {
                vpnConfig.f992g = new ArrayList();
            }
            this.mConfig.f992g.add(inetAddress.getHostAddress());
            return this;
        }

        public Builder addRoute(InetAddress inetAddress, int i2) {
            check(inetAddress, i2);
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
            this.mRoutes.add(new RouteInfo(new LinkAddress(inetAddress, i2), null));
            return this;
        }

        public Builder addSearchDomain(String str) {
            VpnConfig vpnConfig = this.mConfig;
            if (vpnConfig.f993h == null) {
                vpnConfig.f993h = new ArrayList();
            }
            this.mConfig.f993h.add(str);
            return this;
        }

        public ParcelFileDescriptor establish() {
            VpnConfig vpnConfig = this.mConfig;
            vpnConfig.f990e = this.mAddresses;
            vpnConfig.f991f = this.mRoutes;
            try {
                return VpnService.getService().establishVpn(this.mConfig);
            } catch (RemoteException e2) {
                throw new IllegalStateException(e2);
            }
        }

        public Builder setConfigureIntent(PendingIntent pendingIntent) {
            this.mConfig.f994i = pendingIntent;
            return this;
        }

        public Builder setMtu(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Bad mtu");
            }
            this.mConfig.f989d = i2;
            return this;
        }

        public Builder setSession(String str) {
            this.mConfig.f988c = str;
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

    public boolean protect(Socket socket) {
        return protect(socket.getFileDescriptor$().getInt$());
    }

    public boolean protect(DatagramSocket datagramSocket) {
        return protect(datagramSocket.getFileDescriptor$().getInt$());
    }
}
