package com.android.server.wifi;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiFeaturesUtils;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.notification.SystemNotificationChannels;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class WifiApConfigStore {
    public static final String ACTION_HOTSPOT_CONFIG_USER_TAPPED_CONTENT = "com.android.server.wifi.WifiApConfigStoreUtil.HOTSPOT_CONFIG_USER_TAPPED_CONTENT";

    @VisibleForTesting
    static final int AP_CHANNEL_DEFAULT = 0;
    private static final int AP_CONFIG_FILE_VERSION = 3;
    private static final String DEFAULT_AP_CONFIG_FILE = Environment.getDataDirectory() + "/misc/wifi/softap.conf";

    @VisibleForTesting
    static final int PSK_MAX_LEN = 63;

    @VisibleForTesting
    static final int PSK_MIN_LEN = 8;
    private static final int RAND_SSID_INT_MAX = 9999;
    private static final int RAND_SSID_INT_MIN = 1000;

    @VisibleForTesting
    static final int SSID_MAX_LEN = 32;

    @VisibleForTesting
    static final int SSID_MIN_LEN = 1;
    private static final String TAG = "WifiApConfigStore";
    private ArrayList<Integer> mAllowed2GChannel;
    private final String mApConfigFile;
    private final BackupManagerProxy mBackupManagerProxy;
    private final BroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private final FrameworkFacade mFrameworkFacade;
    private final Handler mHandler;
    private boolean mRequiresApBandConversion;
    private WifiConfiguration mWifiApConfig;

    WifiApConfigStore(Context context, Looper looper, BackupManagerProxy backupManagerProxy, FrameworkFacade frameworkFacade) {
        this(context, looper, backupManagerProxy, frameworkFacade, DEFAULT_AP_CONFIG_FILE);
    }

    WifiApConfigStore(Context context, Looper looper, BackupManagerProxy backupManagerProxy, FrameworkFacade frameworkFacade, String apConfigFile) {
        this.mWifiApConfig = null;
        this.mAllowed2GChannel = null;
        this.mRequiresApBandConversion = false;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.wifi.WifiApConfigStore.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (((action.hashCode() == 765958520 && action.equals(WifiApConfigStore.ACTION_HOTSPOT_CONFIG_USER_TAPPED_CONTENT)) ? (byte) 0 : (byte) -1) == 0) {
                    WifiApConfigStore.this.handleUserHotspotConfigTappedContent();
                    return;
                }
                Log.e(WifiApConfigStore.TAG, "Unknown action " + intent.getAction());
            }
        };
        this.mContext = context;
        this.mHandler = new Handler(looper);
        this.mBackupManagerProxy = backupManagerProxy;
        this.mFrameworkFacade = frameworkFacade;
        this.mApConfigFile = apConfigFile;
        String ap2GChannelListStr = this.mContext.getResources().getString(R.string.biometric_dialog_default_title);
        Log.d(TAG, "2G band allowed channels are:" + ap2GChannelListStr);
        if (ap2GChannelListStr != null) {
            this.mAllowed2GChannel = new ArrayList<>();
            String[] channelList = ap2GChannelListStr.split(",");
            for (String tmp : channelList) {
                this.mAllowed2GChannel.add(Integer.valueOf(Integer.parseInt(tmp)));
            }
        }
        this.mRequiresApBandConversion = this.mContext.getResources().getBoolean(R.bool.config_cecSystemAudioControlDisabled_allowed);
        this.mWifiApConfig = loadApConfiguration(this.mApConfigFile);
        if (this.mWifiApConfig == null) {
            Log.d(TAG, "Fallback to use default AP configuration");
            this.mWifiApConfig = getDefaultApConfiguration();
            writeApConfiguration(this.mApConfigFile, this.mWifiApConfig);
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction(ACTION_HOTSPOT_CONFIG_USER_TAPPED_CONTENT);
        this.mContext.registerReceiver(this.mBroadcastReceiver, filter, null, this.mHandler);
    }

    public synchronized WifiConfiguration getApConfiguration() {
        WifiConfiguration config = apBandCheckConvert(this.mWifiApConfig);
        if (this.mWifiApConfig != config) {
            Log.d(TAG, "persisted config was converted, need to resave it");
            this.mWifiApConfig = config;
            persistConfigAndTriggerBackupManagerProxy(this.mWifiApConfig);
        }
        return this.mWifiApConfig;
    }

    public synchronized void setApConfiguration(WifiConfiguration config) {
        try {
            if (config == null) {
                this.mWifiApConfig = getDefaultApConfiguration();
            } else {
                this.mWifiApConfig = apBandCheckConvert(config);
            }
            persistConfigAndTriggerBackupManagerProxy(this.mWifiApConfig);
        } catch (Throwable th) {
            throw th;
        }
    }

    public ArrayList<Integer> getAllowed2GChannel() {
        return this.mAllowed2GChannel;
    }

    public void notifyUserOfApBandConversion(String packageName) {
        Log.w(TAG, "ready to post notification - triggered by " + packageName);
        Notification notification = createConversionNotification();
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        notificationManager.notify(50, notification);
    }

    private Notification createConversionNotification() {
        CharSequence title = this.mContext.getResources().getText(R.string.permlab_callCompanionApp);
        CharSequence contentSummary = this.mContext.getResources().getText(R.string.permlab_camera);
        CharSequence content = this.mContext.getResources().getText(R.string.permlab_callPhone);
        int color = this.mContext.getResources().getColor(R.color.system_notification_accent_color, this.mContext.getTheme());
        return new Notification.Builder(this.mContext, SystemNotificationChannels.NETWORK_STATUS).setSmallIcon(R.drawable.ic_menu_blocked_user).setPriority(1).setCategory("sys").setContentTitle(title).setContentText(contentSummary).setContentIntent(getPrivateBroadcast(ACTION_HOTSPOT_CONFIG_USER_TAPPED_CONTENT)).setTicker(title).setShowWhen(false).setLocalOnly(true).setColor(color).setStyle(new Notification.BigTextStyle().bigText(content).setBigContentTitle(title).setSummaryText(contentSummary)).build();
    }

    private WifiConfiguration apBandCheckConvert(WifiConfiguration config) {
        if (this.mRequiresApBandConversion) {
            if (config.apBand == 1) {
                Log.w(TAG, "Supplied ap config band was 5GHz only, converting to ANY");
                WifiConfiguration convertedConfig = new WifiConfiguration(config);
                convertedConfig.apBand = -1;
                convertedConfig.apChannel = 0;
                return convertedConfig;
            }
        } else if (config.apBand == -1) {
            Log.w(TAG, "Supplied ap config band was ANY, converting to 5GHz");
            WifiConfiguration convertedConfig2 = new WifiConfiguration(config);
            convertedConfig2.apBand = 1;
            convertedConfig2.apChannel = 0;
            return convertedConfig2;
        }
        return config;
    }

    private void persistConfigAndTriggerBackupManagerProxy(WifiConfiguration config) {
        writeApConfiguration(this.mApConfigFile, this.mWifiApConfig);
        this.mBackupManagerProxy.notifyDataChanged();
    }

    private static WifiConfiguration loadApConfiguration(String filename) {
        WifiConfiguration config;
        StringBuilder sb;
        DataInputStream in = null;
        try {
            try {
                config = new WifiConfiguration();
                DataInputStream in2 = new DataInputStream(new BufferedInputStream(new FileInputStream(filename)));
                int version = in2.readInt();
                if (version >= 1 && version <= 3) {
                    config.SSID = in2.readUTF();
                    if (version >= 2) {
                        config.apBand = in2.readInt();
                        config.apChannel = in2.readInt();
                    }
                    if (version >= 3) {
                        config.hiddenSSID = in2.readBoolean();
                    }
                    config.softApMaxNumSta = in2.readInt();
                    config.macAddrAcl = in2.readInt();
                    if (version == 2) {
                        in2.readInt();
                    }
                    int authType = in2.readInt();
                    config.allowedKeyManagement.set(authType);
                    if (authType != 0) {
                        config.preSharedKey = in2.readUTF();
                    }
                    try {
                        in2.close();
                    } catch (IOException e) {
                        e = e;
                        sb = new StringBuilder();
                        sb.append("Error closing hotspot configuration during read");
                        sb.append(e);
                        Log.e(TAG, sb.toString());
                    }
                    return config;
                }
                Log.e(TAG, "Bad version on hotspot configuration file");
                try {
                    in2.close();
                } catch (IOException e2) {
                    Log.e(TAG, "Error closing hotspot configuration during read" + e2);
                }
                return null;
            } catch (IOException e3) {
                Log.e(TAG, "Error reading hotspot configuration " + e3);
                config = null;
                if (0 != 0) {
                    try {
                        in.close();
                    } catch (IOException e4) {
                        e = e4;
                        sb = new StringBuilder();
                        sb.append("Error closing hotspot configuration during read");
                        sb.append(e);
                        Log.e(TAG, sb.toString());
                    }
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    in.close();
                } catch (IOException e5) {
                    Log.e(TAG, "Error closing hotspot configuration during read" + e5);
                }
            }
            throw th;
        }
    }

    private static void writeApConfiguration(String filename, WifiConfiguration config) {
        try {
            DataOutputStream out = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(filename)));
            try {
                out.writeInt(3);
                out.writeUTF(config.SSID);
                out.writeInt(config.apBand);
                out.writeInt(config.apChannel);
                out.writeBoolean(config.hiddenSSID);
                out.writeInt(config.softApMaxNumSta);
                out.writeInt(config.macAddrAcl);
                int authType = config.getAuthType();
                out.writeInt(authType);
                if (authType != 0) {
                    out.writeUTF(config.preSharedKey);
                }
                out.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        out.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e) {
            Log.e(TAG, "Error writing hotspot configuration" + e);
        }
    }

    private WifiConfiguration getDefaultApConfiguration() {
        WifiConfiguration config = new WifiConfiguration();
        config.apBand = 0;
        String ssid = WifiFeaturesUtils.FeatureProperty.SUPPORT_SPRD_SOFTAP_CUSTOMIZED_NAME;
        if (ssid != null && ssid.isEmpty()) {
            config.SSID = this.mContext.getResources().getString(R.string.permlab_changeWifiState) + "_" + getRandomIntForDefaultSsid();
        } else {
            config.SSID = ssid;
        }
        config.allowedKeyManagement.set(4);
        String randomUUID = UUID.randomUUID().toString();
        config.preSharedKey = randomUUID.substring(0, 8) + randomUUID.substring(9, 13);
        return config;
    }

    private static int getRandomIntForDefaultSsid() {
        Random random = new Random();
        return random.nextInt(9000) + 1000;
    }

    public static WifiConfiguration generateLocalOnlyHotspotConfig(Context context, int apBand) {
        WifiConfiguration config = new WifiConfiguration();
        config.SSID = context.getResources().getString(R.string.permlab_backgroundCamera) + "_" + getRandomIntForDefaultSsid();
        config.apBand = apBand;
        config.allowedKeyManagement.set(4);
        config.networkId = -2;
        String randomUUID = UUID.randomUUID().toString();
        config.preSharedKey = randomUUID.substring(0, 8) + randomUUID.substring(9, 13);
        return config;
    }

    private static boolean validateApConfigSsid(String ssid) {
        if (TextUtils.isEmpty(ssid)) {
            Log.d(TAG, "SSID for softap configuration must be set.");
            return false;
        }
        try {
            byte[] ssid_bytes = ssid.getBytes(StandardCharsets.UTF_8);
            if (ssid_bytes.length >= 1 && ssid_bytes.length <= 32) {
                return true;
            }
            Log.d(TAG, "softap SSID is defined as UTF-8 and it must be at least 1 byte and not more than 32 bytes");
            return false;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "softap config SSID verification failed: malformed string " + ssid);
            return false;
        }
    }

    private static boolean validateApConfigPreSharedKey(String preSharedKey) {
        if (preSharedKey.length() < 8 || preSharedKey.length() > 63) {
            Log.d(TAG, "softap network password string size must be at least 8 and no more than 63");
            return false;
        }
        try {
            preSharedKey.getBytes(StandardCharsets.UTF_8);
            return true;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "softap network password verification failed: malformed string");
            return false;
        }
    }

    static boolean validateApWifiConfiguration(WifiConfiguration apConfig) {
        if (!validateApConfigSsid(apConfig.SSID)) {
            return false;
        }
        if (apConfig.allowedKeyManagement == null) {
            Log.d(TAG, "softap config key management bitset was null");
            return false;
        }
        String preSharedKey = apConfig.preSharedKey;
        boolean hasPreSharedKey = !TextUtils.isEmpty(preSharedKey);
        try {
            int authType = apConfig.getAuthType();
            if (authType == 0) {
                if (hasPreSharedKey) {
                    Log.d(TAG, "open softap network should not have a password");
                    return false;
                }
            } else if (authType == 4) {
                if (!hasPreSharedKey) {
                    Log.d(TAG, "softap network password must be set");
                    return false;
                }
                if (!validateApConfigPreSharedKey(preSharedKey)) {
                    return false;
                }
            } else {
                Log.d(TAG, "softap configs must either be open or WPA2 PSK networks");
                return false;
            }
            return true;
        } catch (IllegalStateException e) {
            Log.d(TAG, "Unable to get AuthType for softap config: " + e.getMessage());
            return false;
        }
    }

    private void startSoftApSettings() {
        this.mContext.startActivity(new Intent("com.android.settings.WIFI_TETHER_SETTINGS").addFlags(268435456));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUserHotspotConfigTappedContent() {
        startSoftApSettings();
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        notificationManager.cancel(50);
    }

    private PendingIntent getPrivateBroadcast(String action) {
        Intent intent = new Intent(action).setPackage("android");
        return this.mFrameworkFacade.getBroadcast(this.mContext, 0, intent, 134217728);
    }
}
