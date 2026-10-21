package android.net;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.os.RemoteException;
import android.os.UserHandle;
import android.security.keystore.KeyProperties;
import android.util.DebugUtils;
import android.util.Pair;
import java.time.ZonedDateTime;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class NetworkPolicyManager {
    private static final boolean ALLOW_PLATFORM_APP_POLICY = true;
    public static final String EXTRA_NETWORK_TEMPLATE = "android.net.NETWORK_TEMPLATE";
    public static final int FIREWALL_CHAIN_DOZABLE = 1;
    public static final String FIREWALL_CHAIN_NAME_DOZABLE = "dozable";
    public static final String FIREWALL_CHAIN_NAME_NONE = "none";
    public static final String FIREWALL_CHAIN_NAME_POWERSAVE = "powersave";
    public static final String FIREWALL_CHAIN_NAME_STANDBY = "standby";
    public static final int FIREWALL_CHAIN_NONE = 0;
    public static final int FIREWALL_CHAIN_POWERSAVE = 3;
    public static final int FIREWALL_CHAIN_STANDBY = 2;
    public static final int FIREWALL_RULE_ALLOW = 1;
    public static final int FIREWALL_RULE_DEFAULT = 0;
    public static final int FIREWALL_RULE_DENY = 2;
    public static final int FIREWALL_TYPE_BLACKLIST = 1;
    public static final int FIREWALL_TYPE_WHITELIST = 0;
    public static final int MASK_ALL_NETWORKS = 240;
    public static final int MASK_METERED_NETWORKS = 15;
    public static final int POLICY_ALLOW_METERED_BACKGROUND = 4;
    public static final int POLICY_NONE = 0;
    public static final int POLICY_REJECT_METERED_BACKGROUND = 1;
    public static final int RULE_ALLOW_ALL = 32;
    public static final int RULE_ALLOW_METERED = 1;
    public static final int RULE_NONE = 0;
    public static final int RULE_REJECT_ALL = 64;
    public static final int RULE_REJECT_METERED = 4;
    public static final int RULE_TEMPORARY_ALLOW_METERED = 2;
    private final Context mContext;
    private INetworkPolicyManager mService;

    public NetworkPolicyManager(Context context, INetworkPolicyManager iNetworkPolicyManager) {
        if (iNetworkPolicyManager == null) {
            throw new IllegalArgumentException("missing INetworkPolicyManager");
        }
        this.mContext = context;
        this.mService = iNetworkPolicyManager;
    }

    public static Iterator<Pair<ZonedDateTime, ZonedDateTime>> cycleIterator(NetworkPolicy networkPolicy) {
        return networkPolicy.cycleIterator();
    }

    public static NetworkPolicyManager from(Context context) {
        return (NetworkPolicyManager) context.getSystemService(Context.NETWORK_POLICY_SERVICE);
    }

    public static boolean isProcStateAllowedWhileIdleOrPowerSaveMode(int i2) {
        return i2 <= 4;
    }

    public static boolean isProcStateAllowedWhileOnRestrictBackground(int i2) {
        return i2 <= 4;
    }

    @Deprecated
    public static boolean isUidValidForPolicy(Context context, int i2) {
        return UserHandle.isApp(i2);
    }

    public static String resolveNetworkId(WifiConfiguration wifiConfiguration) {
        return WifiInfo.removeDoubleQuotes(wifiConfiguration.isPasspoint() ? wifiConfiguration.providerFriendlyName : wifiConfiguration.SSID);
    }

    public static String uidPoliciesToString(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append(" (");
        if (i2 == 0) {
            sb.append(KeyProperties.DIGEST_NONE);
        } else {
            sb.append(DebugUtils.flagsToString(NetworkPolicyManager.class, "POLICY_", i2));
        }
        sb.append(")");
        return sb.toString();
    }

    public static String uidRulesToString(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append(" (");
        if (i2 == 0) {
            sb.append(KeyProperties.DIGEST_NONE);
        } else {
            sb.append(DebugUtils.flagsToString(NetworkPolicyManager.class, "RULE_", i2));
        }
        sb.append(")");
        return sb.toString();
    }

    public void addUidPolicy(int i2, int i3) {
        try {
            this.mService.addUidPolicy(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void factoryReset(String str) {
        try {
            this.mService.factoryReset(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public NetworkPolicy[] getNetworkPolicies() {
        try {
            return this.mService.getNetworkPolicies(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean getRestrictBackground() {
        try {
            return this.mService.getRestrictBackground();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getUidPolicy(int i2) {
        try {
            return this.mService.getUidPolicy(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int[] getUidsWithPolicy(int i2) {
        try {
            return this.mService.getUidsWithPolicy(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void registerListener(INetworkPolicyListener iNetworkPolicyListener) {
        try {
            this.mService.registerListener(iNetworkPolicyListener);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeUidPolicy(int i2, int i3) {
        try {
            this.mService.removeUidPolicy(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setNetworkPolicies(NetworkPolicy[] networkPolicyArr) {
        try {
            this.mService.setNetworkPolicies(networkPolicyArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setRestrictBackground(boolean z2) {
        try {
            this.mService.setRestrictBackground(z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUidPolicy(int i2, int i3) {
        try {
            this.mService.setUidPolicy(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void unregisterListener(INetworkPolicyListener iNetworkPolicyListener) {
        try {
            this.mService.unregisterListener(iNetworkPolicyListener);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static String resolveNetworkId(String str) {
        return WifiInfo.removeDoubleQuotes(str);
    }
}
