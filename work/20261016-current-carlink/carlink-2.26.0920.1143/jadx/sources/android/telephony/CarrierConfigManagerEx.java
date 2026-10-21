package android.telephony;

import android.accessibilityservice.c;
import android.content.Context;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.telephony.ICarrierConfigLoaderEx;

/* JADX INFO: loaded from: classes2.dex */
public class CarrierConfigManagerEx {
    public static final String CARRIER_CONFIG_CHANGED_TYPE = "carrier_changed_type";
    public static final String KEY_ALWAYS_SHOW_NETWORK_OPTION = "always_show_network_option";
    public static final String KEY_ANTITHEFT_PREFER_GPS = "antitheft_prefer_gps";
    public static final String KEY_CALL_FORWARD_SHOW_DIALOG = "call_forward_show_dialog";
    public static final String KEY_CALL_TELCEL_SHOW_TOAST = "support_show_toast";
    public static final String KEY_CARRIER_DEREG_VOWIFI_BEFORE_ECC = "deregister_vowifi_before_dial_ecc";
    public static final String KEY_CARRIER_DISABLE_MERGE_CALL = "disable_merge_call";
    public static final String KEY_CARRIER_RETRY_ECC_VOWIFI = "retry_ecc_vowifi";
    public static final String KEY_CARRIER_SET_VOICE_CARD_TO_PRIMARY_CARD_BOOL = "set_voice_card_to_primary_card_bool";
    public static final String KEY_CARRIER_SHOW_HOLD_BUTTON = "show_hold_button";
    public static final String KEY_CARRIER_SUPPORTS_MULTI_CALL = "support_multi_call";
    public static final String KEY_CARRIER_SUPPORTS_VIDEO_CALL_ONLY = "support_video_call_only";
    public static final String KEY_CARRIER_SUPPORTS_VIDEO_RING_TONE = "support_video_ring_tone";
    public static final String KEY_CARRIER_SUPPORTS_VOWIFI_EMERGENCY_CALL = "support_vowifi_emergency_call";
    public static final String KEY_FEATURE_AIRTEL_RINGBACKTONE_ENABLED_BOOL = "airtel_ringbacktone_enabled_bool";
    public static final String KEY_FEATURE_ATTACH_APN_ENABLE_BOOL = "attach_apn_enable";
    public static final String KEY_FEATURE_AUTOMATIC_CALL_RECORD_ENABLED_BOOL = "automatic_call_record_enabled_bool";
    public static final String KEY_FEATURE_DATA_AND_APN_POP_BOOL = "feature_data_and_apn_pop_bool";
    public static final String KEY_FEATURE_DATA_AND_APN_POP_OPERATOR_STRING = "feature_data_and_apn_pop_operator_string";
    public static final String KEY_FEATURE_DOUBLE_PRESS_ON_HEADSET_KEY_BOOL = "double_press_on_headset_key_bool";
    public static final String KEY_FEATURE_DUAL_VOLTE_WHILTELIST = "operator_dual_volte_whiltelist";
    public static final String KEY_FEATURE_EF_SPN_DISPLAY_FIRST = "EF_SPN_display_first";
    public static final String KEY_FEATURE_FADE_IN_ENABLED_BOOL = "fade_in_enabled_bool";
    public static final String KEY_FEATURE_FLIP_SILENT_INCOMING_CALL_ENABLED_BOOL = "flip_to_silent_incoming_call_enabled_bool";
    public static final String KEY_FEATURE_INVITE_ENABLED_BOOL = "invite_enabled_bool";
    public static final String KEY_FEATURE_IP_DIAL_ENABLED_BOOL = "ip_dial_enabled_bool";
    public static final String KEY_FEATURE_PLMNS_ESM_FLAG_STRING = "plmns_esm_flag";
    public static final String KEY_FEATURE_QUERY_NETWORK_RESULT_SHOW_STATE_SUFFIX = "query_network_result_show_state_suffix";
    public static final String KEY_FEATURE_QUERY_NETWORK_RESULT_SHOW_TYPE_SUFFIX = "query_network_result_show_type_suffix";
    public static final String KEY_FEATURE_SET_FAKE_SIM_ENABLE_BOOL = "set_fake_sim_enable_boolean";
    public static final String KEY_FEATURE_SET_VOICE_DOMAIN_BOOL = "set_voice_domain_bool";
    public static final String KEY_FEATURE_SHOW_NETWORK_SELECTION_WARNING_BOOL = "show_network_selection_warning_bool";
    public static final String KEY_FEATURE_VIBRATE_FOR_CALL_CONNECTION_BOOL = "vibrate_for_call_connection_bool";
    public static final String KEY_FIXED_PRIMARY_SLOT_INT = "fixed_primary_slot_int";
    public static final String KEY_FORCE_AUTO_SET_PRIMARY_CARD_AFTER_HOT_SWAP = "key_force_auto_set_primary_card_after_hot_swap";
    public static final String KEY_GLO_CONF_ECC_LIST_NO_CARD = "ecclist_nocard";
    public static final String KEY_GLO_CONF_ECC_LIST_WITH_CARD = "ecclist_withcard";
    public static final String KEY_GLO_CONF_FAKE_ECC_LIST_WITH_CARD = "fake_ecclist_withcard";
    public static final String KEY_GLO_CONF_HOMEPAGE_URL = "homepage_url";
    public static final String KEY_GLO_CONF_ROAMING_VOICEMAIL_NUMBER = "roamingvm";
    public static final String KEY_GLO_CONF_VOICEMAIL_NUMBER = "vmnumber";
    public static final String KEY_GLO_CONF_VOICEMAIL_TAG = "vmtag";
    public static final String KEY_HIDE_CALLBARRING_DEACTIVATE_ALL = "hide_callbarring_deactivate_all";
    public static final String KEY_HIDE_VIDEO_CALL_FORWARD = "hide_video_call_forward";
    public static final String KEY_MANAGE_CONFERENCE_EVEN_SRVCC = "manage_conference_even_srvcc_bool";
    public static final String KEY_MTU_CONFIG = "mtu_config";
    public static final String KEY_MTU_CONFIG_FOR_IPV6 = "mtu_config_for_IPV6";
    public static final String KEY_NETWORK_NAT_OVERTIME_2G = "network_nat_overtime_2g";
    public static final String KEY_NETWORK_NAT_OVERTIME_3G = "network_nat_overtime_3g";
    public static final String KEY_NETWORK_NAT_OVERTIME_4G = "network_nat_overtime_4g";
    public static final String KEY_NETWORK_OPTION_NOT_ALLOWED_FOR_NON_PRIMARY_CARD = "network_option_not_allowed_for_non_primary_card";
    public static final String KEY_NETWORK_OPTION_NOT_ALLOWED_FOR_NON_USIM_CARD = "network_option_not_allowed_for_non_USIM_card";
    public static final String KEY_NETWORK_RAT_PREFER_INT = "network_RAT_prefer";
    public static final String KEY_NETWORK_SMS_BEARER = "network_sms_berrer";
    public static final String KEY_OPERATOR_APN_NOT_EDITABLE = "operator_apn_not_editable";
    public static final String KEY_OPERATOR_APN_NOT_SHOW_XCAP = "operator_apn_not_show_xcap";
    public static final String KEY_OPERATOR_SHOW_IMS_APN = "operator_show_ims_apn";
    public static final String KEY_PLMNS_CALLFORWARD_ONLY = "plmns_callforward_only";
    public static final String KEY_PLMNS_SINGLE_PDN = "plmns_single_pdn";
    public static final String KEY_SCREEN_OFF_IN_ACTIVE_CALL_STATE_BOOL = "screen_off_in_active_call_state_bool";
    public static final String KEY_SUPPORT_SEND_USSD_OVER_VOWIFI = "support_send_ussd_over_vowifi";
    public static final String KEY_SUPPORT_SHOW_NETWORK_DIALOG = "support_show_open_network_dialog";
    public static final String KEY_SUPPORT_SHOW_WIFI_CALLING_PREFERENCE = "support_show_wifi_calling_preference";
    public static final String KEY_UT_FALLBACK_VOLTE = "ut_fallback_volte";
    public static final String KEY_UT_PRIORITY = "ut_priority";
    public static final String KEY_WIFI_CALL_NOTIFICATION_ENABLE = "wifi_call_notification_enable";
    private static final String TAG = "CarrierConfigManagerEx";
    public static final String VODAFONE_WIFI_CALL_SHOWN = "vodafone_wifi_call_shown";
    private static final PersistableBundle sDefaultsEx;

    static {
        PersistableBundle persistableBundle = new PersistableBundle();
        sDefaultsEx = persistableBundle;
        persistableBundle.putBoolean(KEY_FEATURE_AUTOMATIC_CALL_RECORD_ENABLED_BOOL, true);
        persistableBundle.putBoolean(KEY_FEATURE_VIBRATE_FOR_CALL_CONNECTION_BOOL, true);
        persistableBundle.putString(KEY_GLO_CONF_HOMEPAGE_URL, "");
        persistableBundle.putBoolean(KEY_CARRIER_SUPPORTS_VOWIFI_EMERGENCY_CALL, false);
        persistableBundle.putBoolean(KEY_CARRIER_RETRY_ECC_VOWIFI, false);
        persistableBundle.putBoolean(KEY_CARRIER_DEREG_VOWIFI_BEFORE_ECC, false);
        persistableBundle.putString(KEY_OPERATOR_APN_NOT_EDITABLE, "");
        persistableBundle.putString(KEY_OPERATOR_APN_NOT_SHOW_XCAP, "");
        persistableBundle.putBoolean(KEY_CARRIER_SET_VOICE_CARD_TO_PRIMARY_CARD_BOOL, false);
        persistableBundle.putBoolean(KEY_FORCE_AUTO_SET_PRIMARY_CARD_AFTER_HOT_SWAP, false);
        persistableBundle.putBoolean(KEY_FEATURE_QUERY_NETWORK_RESULT_SHOW_TYPE_SUFFIX, true);
        persistableBundle.putBoolean(KEY_FEATURE_QUERY_NETWORK_RESULT_SHOW_STATE_SUFFIX, true);
        persistableBundle.putString(KEY_GLO_CONF_ECC_LIST_NO_CARD, "");
        persistableBundle.putString(KEY_GLO_CONF_ECC_LIST_WITH_CARD, "");
        persistableBundle.putString(KEY_GLO_CONF_FAKE_ECC_LIST_WITH_CARD, "");
        persistableBundle.putBoolean(KEY_CARRIER_SUPPORTS_VIDEO_CALL_ONLY, false);
        persistableBundle.putBoolean(KEY_CARRIER_SHOW_HOLD_BUTTON, true);
        persistableBundle.putBoolean(KEY_CARRIER_SUPPORTS_VIDEO_RING_TONE, false);
        persistableBundle.putBoolean(KEY_FEATURE_FLIP_SILENT_INCOMING_CALL_ENABLED_BOOL, true);
        persistableBundle.putString(KEY_GLO_CONF_VOICEMAIL_NUMBER, "");
        persistableBundle.putString(KEY_GLO_CONF_VOICEMAIL_TAG, "");
        persistableBundle.putString(KEY_GLO_CONF_ROAMING_VOICEMAIL_NUMBER, "");
        persistableBundle.putBoolean(KEY_ALWAYS_SHOW_NETWORK_OPTION, false);
        persistableBundle.putBoolean(KEY_NETWORK_OPTION_NOT_ALLOWED_FOR_NON_PRIMARY_CARD, true);
        persistableBundle.putBoolean(KEY_NETWORK_OPTION_NOT_ALLOWED_FOR_NON_USIM_CARD, false);
        persistableBundle.putString(KEY_PLMNS_CALLFORWARD_ONLY, "");
        persistableBundle.putString(KEY_UT_PRIORITY, "");
        persistableBundle.putString(KEY_UT_FALLBACK_VOLTE, "");
        persistableBundle.putInt(KEY_NETWORK_RAT_PREFER_INT, 0);
        persistableBundle.putBoolean(KEY_FEATURE_FADE_IN_ENABLED_BOOL, true);
        persistableBundle.putBoolean(KEY_FEATURE_DOUBLE_PRESS_ON_HEADSET_KEY_BOOL, false);
        persistableBundle.putInt(KEY_NETWORK_SMS_BEARER, 1);
        persistableBundle.putBoolean(KEY_FEATURE_DATA_AND_APN_POP_BOOL, false);
        persistableBundle.putString(KEY_FEATURE_DATA_AND_APN_POP_OPERATOR_STRING, "");
        persistableBundle.putBoolean(KEY_FEATURE_SHOW_NETWORK_SELECTION_WARNING_BOOL, true);
        persistableBundle.putBoolean(KEY_FEATURE_IP_DIAL_ENABLED_BOOL, true);
        persistableBundle.putInt(KEY_NETWORK_NAT_OVERTIME_2G, 5);
        persistableBundle.putInt(KEY_NETWORK_NAT_OVERTIME_3G, 15);
        persistableBundle.putInt(KEY_NETWORK_NAT_OVERTIME_4G, 30);
        persistableBundle.putBoolean(KEY_FEATURE_SET_FAKE_SIM_ENABLE_BOOL, false);
        persistableBundle.putBoolean(KEY_SUPPORT_SHOW_NETWORK_DIALOG, true);
        persistableBundle.putBoolean(KEY_SUPPORT_SEND_USSD_OVER_VOWIFI, true);
        persistableBundle.putBoolean(KEY_HIDE_CALLBARRING_DEACTIVATE_ALL, false);
        persistableBundle.putBoolean(KEY_CALL_FORWARD_SHOW_DIALOG, true);
        persistableBundle.putString(KEY_HIDE_VIDEO_CALL_FORWARD, "");
        persistableBundle.putInt(KEY_MTU_CONFIG_FOR_IPV6, 0);
        persistableBundle.putInt(KEY_MTU_CONFIG, 1500);
        persistableBundle.putBoolean(KEY_FEATURE_EF_SPN_DISPLAY_FIRST, false);
        persistableBundle.putBoolean(KEY_FEATURE_INVITE_ENABLED_BOOL, true);
        persistableBundle.putBoolean(KEY_FEATURE_SET_VOICE_DOMAIN_BOOL, false);
        persistableBundle.putBoolean(KEY_MANAGE_CONFERENCE_EVEN_SRVCC, false);
        persistableBundle.putString(KEY_OPERATOR_SHOW_IMS_APN, "");
        persistableBundle.putBoolean(KEY_ANTITHEFT_PREFER_GPS, false);
        persistableBundle.putBoolean(KEY_CARRIER_SUPPORTS_MULTI_CALL, true);
        persistableBundle.putString(KEY_FEATURE_DUAL_VOLTE_WHILTELIST, "");
        persistableBundle.putBoolean(KEY_CALL_TELCEL_SHOW_TOAST, true);
        persistableBundle.putBoolean(KEY_WIFI_CALL_NOTIFICATION_ENABLE, false);
        persistableBundle.putBoolean(KEY_CARRIER_DISABLE_MERGE_CALL, false);
        persistableBundle.putBoolean(KEY_FEATURE_AIRTEL_RINGBACKTONE_ENABLED_BOOL, false);
        persistableBundle.putInt(KEY_FIXED_PRIMARY_SLOT_INT, 0);
        persistableBundle.putBoolean(KEY_SUPPORT_SHOW_WIFI_CALLING_PREFERENCE, true);
        persistableBundle.putBoolean(VODAFONE_WIFI_CALL_SHOWN, true);
    }

    public static CarrierConfigManagerEx from(Context context) {
        return (CarrierConfigManagerEx) context.getSystemService("carrier_config_ex");
    }

    public static PersistableBundle getDefaultConfig() {
        return new PersistableBundle(sDefaultsEx);
    }

    private ICarrierConfigLoaderEx getICarrierConfigLoaderEx() {
        return ICarrierConfigLoaderEx.Stub.asInterface(ServiceManager.getService("carrier_config_ex"));
    }

    public PersistableBundle getConfig() {
        return getConfigForSubId(SubscriptionManager.getDefaultSubscriptionId());
    }

    public PersistableBundle getConfigForDefaultPhone() {
        int phoneId = SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultSubscriptionId());
        if (!SubscriptionManager.isValidPhoneId(phoneId)) {
            phoneId = 0;
        }
        try {
            return getICarrierConfigLoaderEx().getConfigForPhoneId(phoneId);
        } catch (RemoteException e2) {
            Rlog.e(TAG, "Error getting config for default phone " + Integer.toString(phoneId) + ": " + e2.toString());
            return null;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "Error getting config for default phone " + Integer.toString(phoneId) + ": " + e3.toString());
            return null;
        }
    }

    public PersistableBundle getConfigForPhoneId(int i2) {
        try {
            return getICarrierConfigLoaderEx().getConfigForPhoneId(i2);
        } catch (RemoteException e2) {
            Rlog.e(TAG, "Error getting config for phoneId " + Integer.toString(i2) + ": " + e2.toString());
            return null;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "Error getting config for phoneId " + Integer.toString(i2) + ": " + e3.toString());
            return null;
        }
    }

    public PersistableBundle getConfigForSubId(int i2) {
        try {
            ICarrierConfigLoaderEx iCarrierConfigLoaderEx = getICarrierConfigLoaderEx();
            if (iCarrierConfigLoaderEx != null) {
                return iCarrierConfigLoaderEx.getConfigForSubId(i2);
            }
            Rlog.w(TAG, "Error getting config for subId " + i2 + " ICarrierConfigLoaderEx is null");
            return null;
        } catch (RemoteException e2) {
            StringBuilder sbS = c.s("Error getting config for subId ", i2, ": ");
            sbS.append(e2.toString());
            Rlog.e(TAG, sbS.toString());
            return null;
        }
    }

    public void notifyConfigChangedForSubId(int i2) {
        try {
            ICarrierConfigLoaderEx iCarrierConfigLoaderEx = getICarrierConfigLoaderEx();
            if (iCarrierConfigLoaderEx != null) {
                iCarrierConfigLoaderEx.notifyConfigChangedForSubId(i2);
                return;
            }
            Rlog.w(TAG, "Error reloading config for subId=" + i2 + " ICarrierConfigLoaderEx is null");
        } catch (RemoteException e2) {
            StringBuilder sbS = c.s("Error reloading config for subId=", i2, ": ");
            sbS.append(e2.toString());
            Rlog.e(TAG, sbS.toString());
        }
    }

    public void updateConfigForPhoneId(int i2, String str) {
        try {
            ICarrierConfigLoaderEx iCarrierConfigLoaderEx = getICarrierConfigLoaderEx();
            if (iCarrierConfigLoaderEx != null) {
                iCarrierConfigLoaderEx.updateConfigForPhoneId(i2, str);
                return;
            }
            Rlog.w(TAG, "Error updating config for phoneId=" + i2 + " ICarrierConfigLoaderEx is null");
        } catch (RemoteException e2) {
            StringBuilder sbS = c.s("Error updating config for phoneId=", i2, ": ");
            sbS.append(e2.toString());
            Rlog.e(TAG, sbS.toString());
        }
    }
}
