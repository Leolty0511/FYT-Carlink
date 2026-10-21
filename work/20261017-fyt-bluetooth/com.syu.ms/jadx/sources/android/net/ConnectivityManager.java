package android.net;

import android.content.Context;
import android.os.Binder;
import android.os.Messenger;
import android.os.RemoteException;
import java.net.InetAddress;
import u.j;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityManager {

    @Deprecated
    public static final String ACTION_BACKGROUND_DATA_SETTING_CHANGED = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED";
    public static final String ACTION_CAPTIVE_PORTAL_TEST_COMPLETED = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED";
    public static final String ACTION_DATA_ACTIVITY_CHANGE = "android.net.conn.DATA_ACTIVITY_CHANGE";
    public static final String ACTION_TETHER_STATE_CHANGED = "android.net.conn.TETHER_STATE_CHANGED";
    public static final String CONNECTIVITY_ACTION = "android.net.conn.CONNECTIVITY_CHANGE";
    public static final String CONNECTIVITY_ACTION_IMMEDIATE = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE";
    public static final int CONNECTIVITY_CHANGE_DELAY_DEFAULT = 3000;

    @Deprecated
    public static final int DEFAULT_NETWORK_PREFERENCE = 1;
    public static final String EXTRA_ACTIVE_TETHER = "activeArray";
    public static final String EXTRA_AVAILABLE_TETHER = "availableArray";
    public static final String EXTRA_DEVICE_TYPE = "deviceType";
    public static final String EXTRA_ERRORED_TETHER = "erroredArray";
    public static final String EXTRA_EXTRA_INFO = "extraInfo";
    public static final String EXTRA_INET_CONDITION = "inetCondition";
    public static final String EXTRA_IS_ACTIVE = "isActive";
    public static final String EXTRA_IS_CAPTIVE_PORTAL = "captivePortal";
    public static final String EXTRA_IS_FAILOVER = "isFailover";

    @Deprecated
    public static final String EXTRA_NETWORK_INFO = "networkInfo";
    public static final String EXTRA_NETWORK_TYPE = "networkType";
    public static final String EXTRA_NO_CONNECTIVITY = "noConnectivity";
    public static final String EXTRA_OTHER_NETWORK_INFO = "otherNetwork";
    public static final String EXTRA_REASON = "reason";
    public static final String INET_CONDITION_ACTION = "android.net.conn.INET_CONDITION_ACTION";
    public static final int MAX_NETWORK_TYPE = 14;
    public static final int MAX_RADIO_TYPE = 14;
    private static final String TAG = "ConnectivityManager";
    public static final int TETHER_ERROR_DISABLE_NAT_ERROR = 9;
    public static final int TETHER_ERROR_ENABLE_NAT_ERROR = 8;
    public static final int TETHER_ERROR_IFACE_CFG_ERROR = 10;
    public static final int TETHER_ERROR_MASTER_ERROR = 5;
    public static final int TETHER_ERROR_NO_ERROR = 0;
    public static final int TETHER_ERROR_SERVICE_UNAVAIL = 2;
    public static final int TETHER_ERROR_TETHER_IFACE_ERROR = 6;
    public static final int TETHER_ERROR_UNAVAIL_IFACE = 4;
    public static final int TETHER_ERROR_UNKNOWN_IFACE = 1;
    public static final int TETHER_ERROR_UNSUPPORTED = 3;
    public static final int TETHER_ERROR_UNTETHER_IFACE_ERROR = 7;
    public static final int TYPE_BLUETOOTH = 7;
    public static final int TYPE_DUMMY = 8;
    public static final int TYPE_ETHERNET = 9;
    public static final int TYPE_MOBILE = 0;
    public static final int TYPE_MOBILE_CBS = 12;
    public static final int TYPE_MOBILE_DUN = 4;
    public static final int TYPE_MOBILE_FOTA = 10;
    public static final int TYPE_MOBILE_HIPRI = 5;
    public static final int TYPE_MOBILE_IA = 14;
    public static final int TYPE_MOBILE_IMS = 11;
    public static final int TYPE_MOBILE_MMS = 2;
    public static final int TYPE_MOBILE_SUPL = 3;
    public static final int TYPE_NONE = -1;
    public static final int TYPE_WIFI = 1;
    public static final int TYPE_WIFI_P2P = 13;
    public static final int TYPE_WIMAX = 6;
    private final String mPackageName;
    private final IConnectivityManager mService;

    public ConnectivityManager(IConnectivityManager iConnectivityManager, String str) {
        this.mService = (IConnectivityManager) j.b(iConnectivityManager, "missing IConnectivityManager");
        this.mPackageName = (String) j.b(str, "missing package name");
    }

    public static ConnectivityManager from(Context context) {
        return (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
    }

    public static String getNetworkTypeName(int i2) {
        switch (i2) {
            case 0:
                return "MOBILE";
            case 1:
                return "WIFI";
            case 2:
                return "MOBILE_MMS";
            case 3:
                return "MOBILE_SUPL";
            case 4:
                return "MOBILE_DUN";
            case 5:
                return "MOBILE_HIPRI";
            case 6:
                return "WIMAX";
            case 7:
                return "BLUETOOTH";
            case 8:
                return "DUMMY";
            case 9:
                return "ETHERNET";
            case 10:
                return "MOBILE_FOTA";
            case 11:
                return "MOBILE_IMS";
            case 12:
                return "MOBILE_CBS";
            case 13:
                return "WIFI_P2P";
            case 14:
                return "MOBILE_IA";
            default:
                return Integer.toString(i2);
        }
    }

    public static boolean isNetworkTypeExempt(int i2) {
        return i2 == 2 || i2 == 3 || i2 == 5 || i2 == 14;
    }

    public static boolean isNetworkTypeMobile(int i2) {
        if (i2 == 0 || i2 == 14 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
            return true;
        }
        switch (i2) {
            case 10:
            case 11:
            case 12:
                return true;
            default:
                return false;
        }
    }

    public static boolean isNetworkTypeValid(int i2) {
        return i2 >= 0 && i2 <= 14;
    }

    public static boolean isNetworkTypeWifi(int i2) {
        return i2 == 1 || i2 == 13;
    }

    public void captivePortalCheckComplete(NetworkInfo networkInfo) {
        try {
            this.mService.captivePortalCheckComplete(networkInfo);
        } catch (RemoteException unused) {
        }
    }

    public void captivePortalCheckCompleted(NetworkInfo networkInfo, boolean z2) {
        try {
            this.mService.captivePortalCheckCompleted(networkInfo, z2);
        } catch (RemoteException unused) {
        }
    }

    public int checkMobileProvisioning(int i2) {
        try {
            return this.mService.checkMobileProvisioning(i2);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public LinkProperties getActiveLinkProperties() {
        try {
            return this.mService.getActiveLinkProperties();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public LinkQualityInfo getActiveLinkQualityInfo() {
        try {
            return this.mService.getActiveLinkQualityInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public NetworkInfo getActiveNetworkInfo() {
        try {
            return this.mService.getActiveNetworkInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public NetworkInfo getActiveNetworkInfoForUid(int i2) {
        try {
            return this.mService.getActiveNetworkInfoForUid(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public NetworkQuotaInfo getActiveNetworkQuotaInfo() {
        try {
            return this.mService.getActiveNetworkQuotaInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public LinkQualityInfo[] getAllLinkQualityInfo() {
        try {
            return this.mService.getAllLinkQualityInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public NetworkInfo[] getAllNetworkInfo() {
        try {
            return this.mService.getAllNetworkInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Deprecated
    public boolean getBackgroundDataSetting() {
        return true;
    }

    public ProxyProperties getGlobalProxy() {
        try {
            return this.mService.getGlobalProxy();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getLastTetherError(String str) {
        try {
            return this.mService.getLastTetherError(str);
        } catch (RemoteException unused) {
            return 2;
        }
    }

    public LinkProperties getLinkProperties(int i2) {
        try {
            return this.mService.getLinkProperties(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public LinkQualityInfo getLinkQualityInfo(int i2) {
        try {
            return this.mService.getLinkQualityInfo(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean getMobileDataEnabled() {
        try {
            return this.mService.getMobileDataEnabled();
        } catch (RemoteException unused) {
            return true;
        }
    }

    public String getMobileProvisioningUrl() {
        try {
            return this.mService.getMobileProvisioningUrl();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getMobileRedirectedProvisioningUrl() {
        try {
            return this.mService.getMobileRedirectedProvisioningUrl();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public NetworkInfo getNetworkInfo(int i2) {
        try {
            return this.mService.getNetworkInfo(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getNetworkPreference() {
        try {
            return this.mService.getNetworkPreference();
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public NetworkInfo getProvisioningOrActiveNetworkInfo() {
        try {
            return this.mService.getProvisioningOrActiveNetworkInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public ProxyProperties getProxy() {
        try {
            return this.mService.getProxy();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String[] getTetherableBluetoothRegexs() {
        try {
            return this.mService.getTetherableBluetoothRegexs();
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public String[] getTetherableIfaces() {
        try {
            return this.mService.getTetherableIfaces();
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public String[] getTetherableUsbRegexs() {
        try {
            return this.mService.getTetherableUsbRegexs();
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public String[] getTetherableWifiRegexs() {
        try {
            return this.mService.getTetherableWifiRegexs();
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public String[] getTetheredIfaces() {
        try {
            return this.mService.getTetheredIfaces();
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public String[] getTetheringErroredIfaces() {
        try {
            return this.mService.getTetheringErroredIfaces();
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public boolean isActiveNetworkMetered() {
        try {
            return this.mService.isActiveNetworkMetered();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isNetworkSupported(int i2) {
        try {
            return this.mService.isNetworkSupported(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isTetheringSupported() {
        try {
            return this.mService.isTetheringSupported();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void reportInetCondition(int i2, int i3) {
        try {
            this.mService.reportInetCondition(i2, i3);
        } catch (RemoteException unused) {
        }
    }

    public boolean requestNetworkTransitionWakelock(String str) {
        try {
            this.mService.requestNetworkTransitionWakelock(str);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean requestRouteToHost(int i2, int i3) {
        InetAddress inetAddressIntToInetAddress = NetworkUtils.intToInetAddress(i3);
        if (inetAddressIntToInetAddress == null) {
            return false;
        }
        return requestRouteToHostAddress(i2, inetAddressIntToInetAddress);
    }

    public boolean requestRouteToHostAddress(int i2, InetAddress inetAddress) {
        try {
            return this.mService.requestRouteToHostAddress(i2, inetAddress.getAddress(), this.mPackageName);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void setAirplaneMode(boolean z2) {
        try {
            this.mService.setAirplaneMode(z2);
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public void setBackgroundDataSetting(boolean z2) {
    }

    public void setDataDependency(int i2, boolean z2) {
        try {
            this.mService.setDataDependency(i2, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setGlobalProxy(ProxyProperties proxyProperties) {
        try {
            this.mService.setGlobalProxy(proxyProperties);
        } catch (RemoteException unused) {
        }
    }

    public void setMobileDataEnabled(boolean z2) {
        try {
            this.mService.setMobileDataEnabled(z2);
        } catch (RemoteException unused) {
        }
    }

    public void setNetworkPreference(int i2) {
        try {
            this.mService.setNetworkPreference(i2);
        } catch (RemoteException unused) {
        }
    }

    public void setProvisioningNotificationVisible(boolean z2, int i2, String str, String str2) {
        try {
            this.mService.setProvisioningNotificationVisible(z2, i2, str, str2);
        } catch (RemoteException unused) {
        }
    }

    public boolean setRadio(int i2, boolean z2) {
        try {
            return this.mService.setRadio(i2, z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean setRadios(boolean z2) {
        try {
            return this.mService.setRadios(z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int setUsbTethering(boolean z2) {
        try {
            return this.mService.setUsbTethering(z2);
        } catch (RemoteException unused) {
            return 2;
        }
    }

    public int startUsingNetworkFeature(int i2, String str) {
        try {
            return this.mService.startUsingNetworkFeature(i2, str, new Binder());
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public int stopUsingNetworkFeature(int i2, String str) {
        try {
            return this.mService.stopUsingNetworkFeature(i2, str);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public void supplyMessenger(int i2, Messenger messenger) {
        try {
            this.mService.supplyMessenger(i2, messenger);
        } catch (RemoteException unused) {
        }
    }

    public int tether(String str) {
        try {
            return this.mService.tether(str);
        } catch (RemoteException unused) {
            return 2;
        }
    }

    public int untether(String str) {
        try {
            return this.mService.untether(str);
        } catch (RemoteException unused) {
            return 2;
        }
    }

    public boolean updateLockdownVpn() {
        try {
            return this.mService.updateLockdownVpn();
        } catch (RemoteException unused) {
            return false;
        }
    }
}
