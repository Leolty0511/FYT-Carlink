package com.android.server.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Looper;
import android.os.PersistableBundle;
import android.telephony.CarrierConfigManager;
import android.telephony.ImsiEncryptionInfo;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import com.android.server.wifi.util.ScanResultUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CarrierNetworkConfig {
    private static final int CONFIG_ELEMENT_SIZE = 2;
    private static final Uri CONTENT_URI = Uri.parse("content://carrier_information/carrier");
    private static final int EAP_TYPE_INDEX = 1;
    private static final int ENCODED_SSID_INDEX = 0;
    private static final String NETWORK_CONFIG_SEPARATOR = ",";
    private static final int PRESET_EAP_AUTOJOIN_MEN_INDEX = 7;
    private static final int PRESET_EAP_CONFIG_ELEMENT_SIZE = 10;
    private static final int PRESET_EAP_FORGET_INDEX = 9;
    private static final int PRESET_EAP_IMSI_INDEX = 4;
    private static final int PRESET_EAP_MAX_CONNECT_TIME_INDEX = 6;
    private static final int PRESET_EAP_METHOD_INDEX = 2;
    private static final int PRESET_EAP_METHOD_NOSIM_INDEX = 3;
    private static final int PRESET_EAP_MODIFY_INDEX = 8;
    private static final int PRESET_EAP_SIMSLOT_INDEX = 5;
    private static final int PRESET_EAP_SSID_INDEX = 0;
    private static final int PRESET_EAP_WITHSIMLOAD_INDEX = 1;
    private static final String TAG = "CarrierNetworkConfig";
    private boolean mDbg = false;
    private boolean mIsCarrierImsiEncryptionInfoAvailable = false;
    private ImsiEncryptionInfo mLastImsiEncryptionInfo = null;
    private final Map<String, NetworkInfo> mCarrierNetworkMap = new HashMap();

    public void enableVerboseLogging(int verbose) {
        this.mDbg = verbose > 0;
    }

    public CarrierNetworkConfig(final Context context, Looper looper, FrameworkFacade framework) {
        updateNetworkConfig(context);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        context.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.wifi.CarrierNetworkConfig.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                CarrierNetworkConfig.this.updateNetworkConfig(context2);
            }
        }, filter);
        framework.registerContentObserver(context, CONTENT_URI, false, new ContentObserver(new Handler(looper)) { // from class: com.android.server.wifi.CarrierNetworkConfig.2
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                CarrierNetworkConfig.this.updateNetworkConfig(context);
            }
        });
    }

    public boolean isCarrierNetwork(String ssid) {
        return this.mCarrierNetworkMap.containsKey(ssid);
    }

    public int getNetworkEapType(String ssid) {
        NetworkInfo info = this.mCarrierNetworkMap.get(ssid);
        if (info == null) {
            return -1;
        }
        return info.mEapType;
    }

    public String getCarrierName(String ssid) {
        NetworkInfo info = this.mCarrierNetworkMap.get(ssid);
        if (info == null) {
            return null;
        }
        return info.mCarrierName;
    }

    public boolean isCarrierEncryptionInfoAvailable() {
        return this.mIsCarrierImsiEncryptionInfoAvailable;
    }

    private boolean verifyCarrierImsiEncryptionInfoIsAvailable(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return false;
        }
        try {
            this.mLastImsiEncryptionInfo = telephonyManager.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).getCarrierInfoForImsiEncryption(2);
            if (this.mLastImsiEncryptionInfo == null) {
                return false;
            }
            return true;
        } catch (RuntimeException e) {
            Log.e(TAG, "Failed to get imsi encryption info: " + e.getMessage());
            return false;
        }
    }

    private static class NetworkInfo {
        final String mCarrierName;
        final int mEapType;

        NetworkInfo(int eapType, String carrierName) {
            this.mEapType = eapType;
            this.mCarrierName = carrierName;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer("NetworkInfo: eap=");
            stringBuffer.append(this.mEapType);
            stringBuffer.append(", carrier=");
            stringBuffer.append(this.mCarrierName);
            return stringBuffer.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworkConfig(Context context) {
        SubscriptionManager subscriptionManager;
        List<SubscriptionInfo> subInfoList;
        this.mIsCarrierImsiEncryptionInfoAvailable = verifyCarrierImsiEncryptionInfoIsAvailable(context);
        this.mCarrierNetworkMap.clear();
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) context.getSystemService("carrier_config");
        if (carrierConfigManager == null || (subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service")) == null || (subInfoList = subscriptionManager.getActiveSubscriptionInfoList()) == null) {
            return;
        }
        for (SubscriptionInfo subInfo : subInfoList) {
            CharSequence displayNameCs = subInfo.getDisplayName();
            String displayNameStr = displayNameCs == null ? "" : displayNameCs.toString();
            PersistableBundle bundle = carrierConfigManager.getConfigForSubId(subInfo.getSubscriptionId());
            processNetworkConfig(bundle, displayNameStr);
        }
    }

    private void processNetworkConfig(PersistableBundle carrierConfig, String carrierName) {
        if (carrierConfig == null) {
            return;
        }
        String[] networkConfigs = carrierConfig.getStringArray("carrier_wifi_string_array");
        if (this.mDbg) {
            Log.v(TAG, "processNetworkConfig: networkConfigs=" + Arrays.deepToString(networkConfigs));
        }
        if (networkConfigs == null) {
            return;
        }
        for (String networkConfig : networkConfigs) {
            String[] configArr = networkConfig.split(NETWORK_CONFIG_SEPARATOR);
            if (configArr.length != 2) {
                Log.e(TAG, "Ignore invalid config: " + networkConfig);
            } else {
                try {
                    String ssid = new String(Base64.decode(configArr[0], 2));
                    int eapType = parseEapType(Integer.parseInt(configArr[1]));
                    if (eapType == -1) {
                        Log.e(TAG, "Invalid EAP type: " + configArr[1]);
                    } else {
                        this.mCarrierNetworkMap.put(ssid, new NetworkInfo(eapType, carrierName));
                    }
                } catch (NumberFormatException e) {
                    Log.e(TAG, "Failed to parse EAP type: '" + configArr[1] + "' " + e.getMessage());
                } catch (IllegalArgumentException e2) {
                    Log.e(TAG, "Failed to decode SSID: '" + configArr[0] + "' " + e2.getMessage());
                }
            }
        }
    }

    private static int parseEapType(int eapType) {
        if (eapType == 18) {
            return 4;
        }
        if (eapType == 23) {
            return 5;
        }
        if (eapType == 50) {
            return 6;
        }
        return -1;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("CarrierNetworkConfig: ");
        pw.println("mCarrierNetworkMap=" + this.mCarrierNetworkMap);
        pw.println("mIsCarrierImsiEncryptionInfoAvailable=" + this.mIsCarrierImsiEncryptionInfoAvailable);
        pw.println("mLastImsiEncryptionInfo=" + this.mLastImsiEncryptionInfo);
    }

    public void presetWifiEapNetwork(String[] networks, WifiConfigManager wifiConfigManager, TelephonyManager telephonyManager) {
        int slotEnabled;
        String[] strArr = networks;
        TelephonyManager telephonyManager2 = telephonyManager;
        if (strArr == null || wifiConfigManager == null || telephonyManager2 == null) {
            return;
        }
        try {
            int length = strArr.length;
            char c = 0;
            int i = 0;
            while (i < length) {
                String network = strArr[i];
                String[] configArr = network.split(NETWORK_CONFIG_SEPARATOR);
                if (configArr.length != 10) {
                    Log.e(TAG, "Ignore Preset invalid config: " + network);
                    length = length;
                    c = c;
                } else {
                    boolean needSimLoad = Boolean.parseBoolean(configArr[1]);
                    int maxConnectTime = Integer.parseInt(configArr[6]);
                    String imsi = configArr[4];
                    if ((imsi == null || imsi.isEmpty()) && (needSimLoad || maxConnectTime > 0)) {
                        Log.e(TAG, "Ignore Preset, invalid imsi");
                    } else {
                        int eapMethod = Integer.parseInt(configArr[2]);
                        if (4 != eapMethod && 5 != eapMethod && 6 != eapMethod) {
                            length = length;
                            c = c;
                        } else {
                            String ssid = configArr[c];
                            String configKey = ScanResultUtil.createQuotedSSID(ssid) + WifiConfiguration.KeyMgmt.strings[2];
                            WifiConfiguration config = wifiConfigManager.getConfiguredNetwork(configKey);
                            int simSlot = Integer.parseInt(configArr[5]);
                            int slotEnabled2 = checkEapNetworkSlot(imsi, telephonyManager2);
                            length = length;
                            if (config == null) {
                                if (needSimLoad) {
                                    slotEnabled = slotEnabled2;
                                    if (slotEnabled == -1) {
                                        c = 0;
                                    }
                                } else {
                                    slotEnabled = slotEnabled2;
                                }
                                config = new WifiConfiguration();
                                config.SSID = ScanResultUtil.createQuotedSSID(ssid);
                                config.allowedKeyManagement.set(2);
                                config.allowedKeyManagement.set(3);
                                config.enterpriseConfig = new WifiEnterpriseConfig();
                                config.enterpriseConfig.setEapMethod(eapMethod);
                                if (slotEnabled == telephonyManager.getPhoneCount() || slotEnabled == -1) {
                                    config.enterpriseConfig.setSimNum(simSlot);
                                } else {
                                    config.enterpriseConfig.setSimNum(slotEnabled);
                                }
                            } else {
                                slotEnabled = slotEnabled2;
                                if (slotEnabled >= 0) {
                                    config.enterpriseConfig.setEapMethod(eapMethod);
                                    if (slotEnabled != telephonyManager.getPhoneCount()) {
                                        config.enterpriseConfig.setSimNum(slotEnabled);
                                    }
                                } else {
                                    config.enterpriseConfig.setEapMethod(Integer.parseInt(configArr[3]));
                                }
                            }
                            config.autoJoinMenu = Boolean.parseBoolean(configArr[7]);
                            config.canModify = Boolean.parseBoolean(configArr[8]);
                            config.canForget = Boolean.parseBoolean(configArr[9]);
                            config.enterpriseConfig.setImsi(imsi);
                            config.enterpriseConfig.setMaxConnectTime(maxConnectTime);
                            Log.d(TAG, "addOrUpdateNetwork : " + config);
                            NetworkUpdateResult result = wifiConfigManager.addOrUpdateNetwork(config, 1010);
                            if (result.isSuccess()) {
                                int slotEnabled3 = result.getNetworkId();
                                c = 0;
                                if (!wifiConfigManager.enableNetwork(slotEnabled3, false, 1010)) {
                                    Log.e(TAG, "Failed to enable preset network: " + config);
                                }
                            } else {
                                Log.e(TAG, "Failed to add preset network: " + config);
                                c = 0;
                            }
                        }
                    }
                }
                i++;
                strArr = networks;
                c = c;
                length = length;
                telephonyManager2 = telephonyManager;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    public int checkEapNetworkSlot(String configImsi, TelephonyManager telephonyManager) {
        int count = 0;
        int slotEnabledIndex = -1;
        int phoneCount = telephonyManager.getPhoneCount();
        for (int i = 0; i < phoneCount; i++) {
            if (isSimSlotEnabledForEapNetwork(i, configImsi, telephonyManager)) {
                count++;
                slotEnabledIndex = i;
            }
        }
        Log.d(TAG, "Check Eap Network slot count : " + count + ", slotEnabledIndex = " + slotEnabledIndex);
        return count == phoneCount ? count : slotEnabledIndex;
    }

    private boolean isSimSlotEnabledForEapNetwork(int slot, String configImsi, TelephonyManager telephonyManager) {
        if (telephonyManager.hasIccCard(slot)) {
            if (configImsi == null || configImsi.isEmpty()) {
                return true;
            }
            int[] subId = SubscriptionManager.getSubId(slot);
            String imsi = telephonyManager.getSubscriberId(subId == null ? -1 : subId[0]);
            if (imsi == null || imsi.isEmpty()) {
                return false;
            }
            String[] imsiList = configImsi.split("-");
            for (String str : imsiList) {
                if (imsi.startsWith(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
