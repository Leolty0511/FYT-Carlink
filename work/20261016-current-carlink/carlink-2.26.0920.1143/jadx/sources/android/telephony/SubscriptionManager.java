package android.telephony;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.INetworkPolicyManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import com.android.internal.telephony.IOnSubscriptionsChangedListener;
import com.android.internal.telephony.ISub;
import com.android.internal.telephony.ITelephonyRegistry;
import com.android.internal.telephony.PhoneConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SubscriptionManager {
    public static final String ACCESS_RULES = "access_rules";
    public static final String ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED";
    public static final String ACTION_DEFAULT_SUBSCRIPTION_CHANGED = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED";
    public static final String CARRIER_NAME = "carrier_name";
    public static final String CB_ALERT_REMINDER_INTERVAL = "alert_reminder_interval";
    public static final String CB_ALERT_SOUND_DURATION = "alert_sound_duration";
    public static final String CB_ALERT_SPEECH = "enable_alert_speech";
    public static final String CB_ALERT_VIBRATE = "enable_alert_vibrate";
    public static final String CB_AMBER_ALERT = "enable_cmas_amber_alerts";
    public static final String CB_CHANNEL_50_ALERT = "enable_channel_50_alerts";
    public static final String CB_CMAS_TEST_ALERT = "enable_cmas_test_alerts";
    public static final String CB_EMERGENCY_ALERT = "enable_emergency_alerts";
    public static final String CB_ETWS_TEST_ALERT = "enable_etws_test_alerts";
    public static final String CB_EXTREME_THREAT_ALERT = "enable_cmas_extreme_threat_alerts";
    public static final String CB_OPT_OUT_DIALOG = "show_cmas_opt_out_dialog";
    public static final String CB_SEVERE_THREAT_ALERT = "enable_cmas_severe_threat_alerts";
    public static final String COLOR = "color";
    public static final int COLOR_1 = 0;
    public static final int COLOR_2 = 1;
    public static final int COLOR_3 = 2;
    public static final int COLOR_4 = 3;
    public static final int COLOR_DEFAULT = 0;
    public static final Uri CONTENT_URI = Uri.parse("content://telephony/siminfo");
    public static final String DATA_ROAMING = "data_roaming";
    public static final int DATA_ROAMING_DEFAULT = 0;
    public static final int DATA_ROAMING_DISABLE = 0;
    public static final int DATA_ROAMING_ENABLE = 1;
    private static final boolean DBG = false;
    public static final int DEFAULT_NAME_RES = 17039374;
    public static final int DEFAULT_PHONE_INDEX = Integer.MAX_VALUE;
    public static final int DEFAULT_SIM_SLOT_INDEX = Integer.MAX_VALUE;
    public static final int DEFAULT_SUBSCRIPTION_ID = Integer.MAX_VALUE;
    public static final String DISPLAY_NAME = "display_name";
    public static final int DISPLAY_NUMBER_DEFAULT = 1;
    public static final int DISPLAY_NUMBER_FIRST = 1;
    public static final String DISPLAY_NUMBER_FORMAT = "display_number_format";
    public static final int DISPLAY_NUMBER_LAST = 2;
    public static final int DISPLAY_NUMBER_NONE = 0;
    public static final int DUMMY_SUBSCRIPTION_ID_BASE = -2;
    public static final String EXTRA_SUBSCRIPTION_INDEX = "android.telephony.extra.SUBSCRIPTION_INDEX";
    public static final String ICC_ID = "icc_id";
    public static final int INVALID_PHONE_INDEX = -1;
    public static final int INVALID_SIM_SLOT_INDEX = -1;
    public static final int INVALID_SUBSCRIPTION_ID = -1;
    public static final String IS_EMBEDDED = "is_embedded";
    public static final String IS_REMOVABLE = "is_removable";
    private static final String LOG_TAG = "SubscriptionManager";
    public static final int MAX_SUBSCRIPTION_ID_VALUE = 2147483646;
    public static final String MCC = "mcc";
    public static final int MIN_SUBSCRIPTION_ID_VALUE = 0;
    public static final String MNC = "mnc";
    public static final String NAME_SOURCE = "name_source";
    public static final int NAME_SOURCE_DEFAULT_SOURCE = 0;
    public static final int NAME_SOURCE_SIM_SOURCE = 1;
    public static final int NAME_SOURCE_UNDEFINDED = -1;
    public static final int NAME_SOURCE_USER_INPUT = 2;
    public static final String NUMBER = "number";
    public static final int SIM_NOT_INSERTED = -1;
    public static final int SIM_PROVISIONED = 0;
    public static final String SIM_PROVISIONING_STATUS = "sim_provisioning_status";
    public static final String SIM_SLOT_INDEX = "sim_id";
    public static final String SUB_DEFAULT_CHANGED_ACTION = "android.intent.action.SUB_DEFAULT_CHANGED";
    public static final String UNIQUE_KEY_SUBSCRIPTION_ID = "_id";
    private static final boolean VDBG = false;
    private final Context mContext;

    public static class OnSubscriptionsChangedListener {
        private final Handler mHandler = new Handler() { // from class: android.telephony.SubscriptionManager.OnSubscriptionsChangedListener.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                OnSubscriptionsChangedListener.this.onSubscriptionsChanged();
            }
        };
        IOnSubscriptionsChangedListener callback = new IOnSubscriptionsChangedListener.Stub() { // from class: android.telephony.SubscriptionManager.OnSubscriptionsChangedListener.2
            @Override // com.android.internal.telephony.IOnSubscriptionsChangedListener
            public void onSubscriptionsChanged() {
                OnSubscriptionsChangedListener.this.mHandler.sendEmptyMessage(0);
            }
        };

        private void log(String str) {
            Rlog.d(SubscriptionManager.LOG_TAG, str);
        }

        public void onSubscriptionsChanged() {
        }
    }

    public SubscriptionManager(Context context) {
        this.mContext = context;
    }

    public static SubscriptionManager from(Context context) {
        return (SubscriptionManager) context.getSystemService(Context.TELEPHONY_SUBSCRIPTION_SERVICE);
    }

    public static boolean getBooleanSubscriptionProperty(int i2, String str, boolean z2, Context context) {
        String subscriptionProperty = getSubscriptionProperty(i2, str, context);
        if (subscriptionProperty != null) {
            try {
                return Integer.parseInt(subscriptionProperty) == 1;
            } catch (NumberFormatException unused) {
                logd("getBooleanSubscriptionProperty NumberFormat exception");
            }
        }
        return z2;
    }

    public static int getDefaultDataSubscriptionId() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getDefaultDataSubId();
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static int getDefaultSmsSubscriptionId() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getDefaultSmsSubId();
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static int getDefaultSubscriptionId() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getDefaultSubId();
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static int getDefaultVoicePhoneId() {
        return getPhoneId(getDefaultVoiceSubscriptionId());
    }

    public static int getDefaultVoiceSubscriptionId() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getDefaultVoiceSubId();
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static int getIntegerSubscriptionProperty(int i2, String str, int i3, Context context) {
        String subscriptionProperty = getSubscriptionProperty(i2, str, context);
        if (subscriptionProperty != null) {
            try {
                return Integer.parseInt(subscriptionProperty);
            } catch (NumberFormatException unused) {
                logd("getBooleanSubscriptionProperty NumberFormat exception");
            }
        }
        return i3;
    }

    public static int getPhoneId(int i2) {
        if (!isValidSubscriptionId(i2)) {
            return -1;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getPhoneId(i2);
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static Resources getResourcesForSubId(Context context, int i2) {
        SubscriptionInfo activeSubscriptionInfo = from(context).getActiveSubscriptionInfo(i2);
        Configuration configuration = context.getResources().getConfiguration();
        Configuration configuration2 = new Configuration();
        configuration2.setTo(configuration);
        if (activeSubscriptionInfo != null) {
            configuration2.mcc = activeSubscriptionInfo.getMcc();
            int mnc = activeSubscriptionInfo.getMnc();
            configuration2.mnc = mnc;
            if (mnc == 0) {
                configuration2.mnc = 65535;
            }
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        displayMetrics2.setTo(displayMetrics);
        return new Resources(context.getResources().getAssets(), displayMetrics2, configuration2);
    }

    public static int getSimStateForSlotIndex(int i2) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getSimStateForSlotIndex(i2);
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public static int getSlotIndex(int i2) {
        isValidSubscriptionId(i2);
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getSlotIndex(i2);
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public static int[] getSubId(int i2) {
        if (!isValidSlotIndex(i2)) {
            logd("[getSubId]- fail");
            return null;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getSubId(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    private static String getSubscriptionProperty(int i2, String str, Context context) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getSubscriptionProperty(i2, str, context.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public static boolean isUsableSubIdValue(int i2) {
        return i2 >= 0 && i2 <= 2147483646;
    }

    public static boolean isValidPhoneId(int i2) {
        return i2 >= 0 && i2 < TelephonyManager.getDefault().getPhoneCount();
    }

    public static boolean isValidSlotIndex(int i2) {
        return i2 >= 0 && i2 < TelephonyManager.getDefault().getSimCount();
    }

    public static boolean isValidSubscriptionId(int i2) {
        return i2 > -1;
    }

    private static void logd(String str) {
        Rlog.d(LOG_TAG, str);
    }

    public static void putPhoneIdAndSubIdExtra(Intent intent, int i2) {
        int[] subId = getSubId(i2);
        if (subId == null || subId.length <= 0) {
            logd("putPhoneIdAndSubIdExtra: no valid subs");
        } else {
            putPhoneIdAndSubIdExtra(intent, i2, subId[0]);
        }
    }

    public static void setSubscriptionProperty(int i2, String str, String str2) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.setSubscriptionProperty(i2, str, str2);
            }
        } catch (RemoteException unused) {
        }
    }

    public void addOnSubscriptionsChangedListener(OnSubscriptionsChangedListener onSubscriptionsChangedListener) {
        Context context = this.mContext;
        String opPackageName = context != null ? context.getOpPackageName() : MediaStore.UNKNOWN_STRING;
        try {
            ITelephonyRegistry iTelephonyRegistryAsInterface = ITelephonyRegistry.Stub.asInterface(ServiceManager.getService("telephony.registry"));
            if (iTelephonyRegistryAsInterface != null) {
                iTelephonyRegistryAsInterface.addOnSubscriptionsChangedListener(opPackageName, onSubscriptionsChangedListener.callback);
            }
        } catch (RemoteException unused) {
        }
    }

    public Uri addSubscriptionInfoRecord(String str, int i2) {
        if (str == null) {
            logd("[addSubscriptionInfoRecord]- null iccId");
        }
        if (!isValidSlotIndex(i2)) {
            logd("[addSubscriptionInfoRecord]- invalid slotIndex");
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface == null) {
                return null;
            }
            iSubAsInterface.addSubInfoRecord(str, i2);
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean allDefaultsSelected() {
        return isValidSubscriptionId(getDefaultDataSubscriptionId()) && isValidSubscriptionId(getDefaultSmsSubscriptionId()) && isValidSubscriptionId(getDefaultVoiceSubscriptionId());
    }

    public void clearDefaultsForInactiveSubIds() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.clearDefaultsForInactiveSubIds();
            }
        } catch (RemoteException unused) {
        }
    }

    public void clearSubscriptionInfo() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.clearSubInfo();
            }
        } catch (RemoteException unused) {
        }
    }

    public List<SubscriptionInfo> getAccessibleSubscriptionInfoList() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getAccessibleSubscriptionInfoList(this.mContext.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int[] getActiveSubscriptionIdList() {
        int[] activeSubIdList = null;
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                activeSubIdList = iSubAsInterface.getActiveSubIdList();
            }
        } catch (RemoteException unused) {
        }
        return activeSubIdList == null ? new int[0] : activeSubIdList;
    }

    public SubscriptionInfo getActiveSubscriptionInfo(int i2) {
        if (!isValidSubscriptionId(i2)) {
            return null;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getActiveSubscriptionInfo(i2, this.mContext.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getActiveSubscriptionInfoCount() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getActiveSubInfoCount(this.mContext.getOpPackageName());
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public int getActiveSubscriptionInfoCountMax() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getActiveSubInfoCountMax();
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public SubscriptionInfo getActiveSubscriptionInfoForIccIndex(String str) {
        if (str == null) {
            logd("[getActiveSubscriptionInfoForIccIndex]- null iccid");
            return null;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getActiveSubscriptionInfoForIccId(str, this.mContext.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public SubscriptionInfo getActiveSubscriptionInfoForSimSlotIndex(int i2) {
        if (!isValidSlotIndex(i2)) {
            logd("[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex");
            return null;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getActiveSubscriptionInfoForSimSlotIndex(i2, this.mContext.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<SubscriptionInfo> getActiveSubscriptionInfoList() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getActiveSubscriptionInfoList(this.mContext.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getAllSubscriptionInfoCount() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getAllSubInfoCount(this.mContext.getOpPackageName());
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public List<SubscriptionInfo> getAllSubscriptionInfoList() {
        List<SubscriptionInfo> allSubInfoList = null;
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                allSubInfoList = iSubAsInterface.getAllSubInfoList(this.mContext.getOpPackageName());
            }
        } catch (RemoteException unused) {
        }
        return allSubInfoList == null ? new ArrayList() : allSubInfoList;
    }

    public List<SubscriptionInfo> getAvailableSubscriptionInfoList() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.getAvailableSubscriptionInfoList(this.mContext.getOpPackageName());
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getDefaultDataPhoneId() {
        return getPhoneId(getDefaultDataSubscriptionId());
    }

    public SubscriptionInfo getDefaultDataSubscriptionInfo() {
        return getActiveSubscriptionInfo(getDefaultDataSubscriptionId());
    }

    public int getDefaultSmsPhoneId() {
        return getPhoneId(getDefaultSmsSubscriptionId());
    }

    public SubscriptionInfo getDefaultSmsSubscriptionInfo() {
        return getActiveSubscriptionInfo(getDefaultSmsSubscriptionId());
    }

    public SubscriptionInfo getDefaultVoiceSubscriptionInfo() {
        return getActiveSubscriptionInfo(getDefaultVoiceSubscriptionId());
    }

    public List<SubscriptionPlan> getSubscriptionPlans(int i2) {
        try {
            SubscriptionPlan[] subscriptionPlans = INetworkPolicyManager.Stub.asInterface(ServiceManager.getService(Context.NETWORK_POLICY_SERVICE)).getSubscriptionPlans(i2, this.mContext.getOpPackageName());
            return subscriptionPlans == null ? Collections.emptyList() : Arrays.asList(subscriptionPlans);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isActiveSubId(int i2) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.isActiveSubId(i2);
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isNetworkRoaming(int i2) {
        if (getPhoneId(i2) < 0) {
            return false;
        }
        return TelephonyManager.getDefault().isNetworkRoaming(i2);
    }

    public void removeOnSubscriptionsChangedListener(OnSubscriptionsChangedListener onSubscriptionsChangedListener) {
        Context context = this.mContext;
        String opPackageName = context != null ? context.getOpPackageName() : MediaStore.UNKNOWN_STRING;
        try {
            ITelephonyRegistry iTelephonyRegistryAsInterface = ITelephonyRegistry.Stub.asInterface(ServiceManager.getService("telephony.registry"));
            if (iTelephonyRegistryAsInterface != null) {
                iTelephonyRegistryAsInterface.removeOnSubscriptionsChangedListener(opPackageName, onSubscriptionsChangedListener.callback);
            }
        } catch (RemoteException unused) {
        }
    }

    public void requestEmbeddedSubscriptionInfoListRefresh() {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.requestEmbeddedSubscriptionInfoListRefresh();
            }
        } catch (RemoteException unused) {
        }
    }

    public int setDataRoaming(int i2, int i3) {
        if (i2 < 0 || !isValidSubscriptionId(i3)) {
            logd("[setDataRoaming]- fail");
            return -1;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.setDataRoaming(i2, i3);
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public void setDefaultDataSubId(int i2) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.setDefaultDataSubId(i2);
            }
        } catch (RemoteException unused) {
        }
    }

    public void setDefaultSmsSubId(int i2) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.setDefaultSmsSubId(i2);
            }
        } catch (RemoteException unused) {
        }
    }

    public void setDefaultVoiceSubId(int i2) {
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                iSubAsInterface.setDefaultVoiceSubId(i2);
            }
        } catch (RemoteException unused) {
        }
    }

    public int setDisplayName(String str, int i2) {
        return setDisplayName(str, i2, -1L);
    }

    public int setDisplayNumber(String str, int i2) {
        if (str == null || !isValidSubscriptionId(i2)) {
            logd("[setDisplayNumber]- fail");
            return -1;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.setDisplayNumber(str, i2);
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public int setIconTint(int i2, int i3) {
        if (!isValidSubscriptionId(i3)) {
            logd("[setIconTint]- fail");
            return -1;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.setIconTint(i2, i3);
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public void setSubscriptionPlans(int i2, List<SubscriptionPlan> list) {
        try {
            INetworkPolicyManager.Stub.asInterface(ServiceManager.getService(Context.NETWORK_POLICY_SERVICE)).setSubscriptionPlans(i2, (SubscriptionPlan[]) list.toArray(new SubscriptionPlan[list.size()]), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int setDisplayName(String str, int i2, long j2) {
        if (!isValidSubscriptionId(i2)) {
            logd("[setDisplayName]- fail");
            return -1;
        }
        try {
            ISub iSubAsInterface = ISub.Stub.asInterface(ServiceManager.getService("isub"));
            if (iSubAsInterface != null) {
                return iSubAsInterface.setDisplayNameUsingSrc(str, i2, j2);
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public static void putPhoneIdAndSubIdExtra(Intent intent, int i2, int i3) {
        intent.putExtra(PhoneConstants.SUBSCRIPTION_KEY, i3);
        intent.putExtra(EXTRA_SUBSCRIPTION_INDEX, i3);
        intent.putExtra("phone", i2);
        intent.putExtra(PhoneConstants.SLOT_KEY, i2);
    }
}
