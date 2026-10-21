package android.telephony;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.app.ActivityThread;
import android.app.PendingIntent;
import android.app.m;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkStats;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.service.carrier.CarrierIdentifier;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.util.Log;
import com.android.ims.internal.IImsServiceController;
import com.android.ims.internal.IImsServiceFeatureListener;
import com.android.internal.R;
import com.android.internal.telecom.ITelecomService;
import com.android.internal.telephony.CellNetworkScanResult;
import com.android.internal.telephony.IPhoneSubInfo;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephonyRegistry;
import com.android.internal.telephony.IccCardConstants;
import com.android.internal.telephony.OperatorInfo;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.telephony.TelephonyProperties;
import com.android.internal.util.Preconditions;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TelephonyManager {
    public static final String ACTION_CONFIGURE_VOICEMAIL = "android.telephony.action.CONFIGURE_VOICEMAIL";
    public static final String ACTION_EMERGENCY_ASSISTANCE = "android.telephony.action.EMERGENCY_ASSISTANCE";
    public static final String ACTION_PHONE_STATE_CHANGED = "android.intent.action.PHONE_STATE";
    public static final String ACTION_PRECISE_CALL_STATE_CHANGED = "android.intent.action.PRECISE_CALL_STATE";

    @Deprecated
    public static final String ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED";
    public static final String ACTION_RESPOND_VIA_MESSAGE = "android.intent.action.RESPOND_VIA_MESSAGE";
    public static final String ACTION_SHOW_VOICEMAIL_NOTIFICATION = "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION";
    public static final int APPTYPE_CSIM = 4;
    public static final int APPTYPE_ISIM = 5;
    public static final int APPTYPE_RUIM = 3;
    public static final int APPTYPE_SIM = 1;
    public static final int APPTYPE_USIM = 2;
    public static final int AUTHTYPE_EAP_AKA = 129;
    public static final int AUTHTYPE_EAP_SIM = 128;
    public static final int CALL_STATE_IDLE = 0;
    public static final int CALL_STATE_OFFHOOK = 2;
    public static final int CALL_STATE_RINGING = 1;
    public static final int CARD_POWER_DOWN = 0;
    public static final int CARD_POWER_UP = 1;
    public static final int CARD_POWER_UP_PASS_THROUGH = 2;
    public static final int CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES = -2;
    public static final int CARRIER_PRIVILEGE_STATUS_HAS_ACCESS = 1;
    public static final int CARRIER_PRIVILEGE_STATUS_NO_ACCESS = 0;
    public static final int CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED = -1;
    public static final int DATA_ACTIVITY_DORMANT = 4;
    public static final int DATA_ACTIVITY_IN = 1;
    public static final int DATA_ACTIVITY_INOUT = 3;
    public static final int DATA_ACTIVITY_NONE = 0;
    public static final int DATA_ACTIVITY_OUT = 2;
    public static final int DATA_CONNECTED = 2;
    public static final int DATA_CONNECTING = 1;
    public static final int DATA_DISCONNECTED = 0;
    public static final int DATA_SUSPENDED = 3;
    public static final int DATA_UNKNOWN = -1;
    public static final boolean EMERGENCY_ASSISTANCE_ENABLED = true;
    public static final String EVENT_CALL_FORWARDED = "android.telephony.event.EVENT_CALL_FORWARDED";
    public static final String EVENT_DOWNGRADE_DATA_DISABLED = "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED";
    public static final String EVENT_DOWNGRADE_DATA_LIMIT_REACHED = "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED";
    public static final String EVENT_HANDOVER_TO_WIFI_FAILED = "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED";
    public static final String EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE";
    public static final String EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC = "android.telephony.event.EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC";
    public static final String EXTRA_BACKGROUND_CALL_STATE = "background_state";
    public static final String EXTRA_CALL_VOICEMAIL_INTENT = "android.telephony.extra.CALL_VOICEMAIL_INTENT";
    public static final String EXTRA_DATA_APN = "apn";
    public static final String EXTRA_DATA_APN_TYPE = "apnType";
    public static final String EXTRA_DATA_CHANGE_REASON = "reason";
    public static final String EXTRA_DATA_FAILURE_CAUSE = "failCause";
    public static final String EXTRA_DATA_LINK_PROPERTIES_KEY = "linkProperties";
    public static final String EXTRA_DATA_NETWORK_TYPE = "networkType";
    public static final String EXTRA_DATA_STATE = "state";
    public static final String EXTRA_DISCONNECT_CAUSE = "disconnect_cause";
    public static final String EXTRA_FOREGROUND_CALL_STATE = "foreground_state";
    public static final String EXTRA_HIDE_PUBLIC_SETTINGS = "android.telephony.extra.HIDE_PUBLIC_SETTINGS";
    public static final String EXTRA_INCOMING_NUMBER = "incoming_number";
    public static final String EXTRA_IS_REFRESH = "android.telephony.extra.IS_REFRESH";
    public static final String EXTRA_LAUNCH_VOICEMAIL_SETTINGS_INTENT = "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT";
    public static final String EXTRA_NOTIFICATION_COUNT = "android.telephony.extra.NOTIFICATION_COUNT";
    public static final String EXTRA_PHONE_ACCOUNT_HANDLE = "android.telephony.extra.PHONE_ACCOUNT_HANDLE";
    public static final String EXTRA_PRECISE_DISCONNECT_CAUSE = "precise_disconnect_cause";
    public static final String EXTRA_RINGING_CALL_STATE = "ringing_state";
    public static final String EXTRA_STATE = "state";
    public static final String EXTRA_VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL = "android.telephony.extra.VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL";
    public static final String EXTRA_VOICEMAIL_NUMBER = "android.telephony.extra.VOICEMAIL_NUMBER";
    public static final String EXTRA_VOICEMAIL_SCRAMBLED_PIN_STRING = "android.telephony.extra.VOICEMAIL_SCRAMBLED_PIN_STRING";
    public static final int KEY_TYPE_EPDG = 1;
    public static final int KEY_TYPE_WLAN = 2;
    public static final String METADATA_HIDE_VOICEMAIL_SETTINGS_MENU = "android.telephony.HIDE_VOICEMAIL_SETTINGS_MENU";
    public static final String MODEM_ACTIVITY_RESULT_KEY = "controller_activity";
    public static final int NETWORK_CLASS_2_G = 1;
    public static final int NETWORK_CLASS_3_G = 2;
    public static final int NETWORK_CLASS_4_G = 3;
    public static final int NETWORK_CLASS_UNKNOWN = 0;
    public static final int NETWORK_TYPE_1xRTT = 7;
    public static final int NETWORK_TYPE_CDMA = 4;
    public static final int NETWORK_TYPE_EDGE = 2;
    public static final int NETWORK_TYPE_EHRPD = 14;
    public static final int NETWORK_TYPE_EVDO_0 = 5;
    public static final int NETWORK_TYPE_EVDO_A = 6;
    public static final int NETWORK_TYPE_EVDO_B = 12;
    public static final int NETWORK_TYPE_GPRS = 1;
    public static final int NETWORK_TYPE_GSM = 16;
    public static final int NETWORK_TYPE_HSDPA = 8;
    public static final int NETWORK_TYPE_HSPA = 10;
    public static final int NETWORK_TYPE_HSPAP = 15;
    public static final int NETWORK_TYPE_HSUPA = 9;
    public static final int NETWORK_TYPE_IDEN = 11;
    public static final int NETWORK_TYPE_IWLAN = 18;
    public static final int NETWORK_TYPE_LTE = 13;
    public static final int NETWORK_TYPE_LTE_CA = 19;
    public static final int NETWORK_TYPE_TD_SCDMA = 17;
    public static final int NETWORK_TYPE_UMTS = 3;
    public static final int NETWORK_TYPE_UNKNOWN = 0;
    public static final int OTASP_NEEDED = 2;
    public static final int OTASP_NOT_NEEDED = 3;
    public static final int OTASP_SIM_UNPROVISIONED = 5;
    public static final int OTASP_UNINITIALIZED = 0;
    public static final int OTASP_UNKNOWN = 1;
    public static final int PHONE_TYPE_CDMA = 2;
    public static final int PHONE_TYPE_GSM = 1;
    public static final int PHONE_TYPE_NONE = 0;
    public static final int PHONE_TYPE_SIP = 3;
    public static final int SIM_ACTIVATION_STATE_ACTIVATED = 2;
    public static final int SIM_ACTIVATION_STATE_ACTIVATING = 1;
    public static final int SIM_ACTIVATION_STATE_DEACTIVATED = 3;
    public static final int SIM_ACTIVATION_STATE_RESTRICTED = 4;
    public static final int SIM_ACTIVATION_STATE_UNKNOWN = 0;
    public static final int SIM_STATE_ABSENT = 1;
    public static final int SIM_STATE_CARD_IO_ERROR = 8;
    public static final int SIM_STATE_CARD_RESTRICTED = 9;
    public static final int SIM_STATE_NETWORK_LOCKED = 4;
    public static final int SIM_STATE_NOT_READY = 6;
    public static final int SIM_STATE_PERM_DISABLED = 7;
    public static final int SIM_STATE_PIN_REQUIRED = 2;
    public static final int SIM_STATE_PUK_REQUIRED = 3;
    public static final int SIM_STATE_READY = 5;
    public static final int SIM_STATE_UNKNOWN = 0;
    private static final String TAG = "TelephonyManager";
    public static final int USSD_ERROR_SERVICE_UNAVAIL = -2;
    public static final String USSD_RESPONSE = "USSD_RESPONSE";
    public static final int USSD_RETURN_FAILURE = -1;
    public static final int USSD_RETURN_SUCCESS = 100;
    public static final String VVM_TYPE_CVVM = "vvm_type_cvvm";
    public static final String VVM_TYPE_OMTP = "vvm_type_omtp";
    private final Context mContext;
    private final int mSubId;
    private SubscriptionManager mSubscriptionManager;
    private TelephonyScanManager mTelephonyScanManager;
    private static String multiSimConfig = SystemProperties.get(TelephonyProperties.PROPERTY_MULTI_SIM_CONFIG);
    private static TelephonyManager sInstance = new TelephonyManager();
    public static final String EXTRA_STATE_IDLE = PhoneConstants.State.IDLE.toString();
    public static final String EXTRA_STATE_RINGING = PhoneConstants.State.RINGING.toString();
    public static final String EXTRA_STATE_OFFHOOK = PhoneConstants.State.OFFHOOK.toString();
    private static final String sKernelCmdLine = getProcCmdLine();
    private static final Pattern sProductTypePattern = Pattern.compile("\\sproduct_type\\s*=\\s*(\\w+)");
    private static final String sLteOnCdmaProductType = SystemProperties.get(TelephonyProperties.PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE, "");

    /* JADX INFO: renamed from: android.telephony.TelephonyManager$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$telephony$TelephonyManager$MultiSimVariants;

        static {
            int[] iArr = new int[MultiSimVariants.values().length];
            $SwitchMap$android$telephony$TelephonyManager$MultiSimVariants = iArr;
            try {
                iArr[MultiSimVariants.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$telephony$TelephonyManager$MultiSimVariants[MultiSimVariants.DSDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$telephony$TelephonyManager$MultiSimVariants[MultiSimVariants.DSDA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$telephony$TelephonyManager$MultiSimVariants[MultiSimVariants.TSTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Feature {
    }

    public enum MultiSimVariants {
        DSDS,
        DSDA,
        TSTS,
        UNKNOWN
    }

    public static abstract class UssdResponseCallback {
        public void onReceiveUssdResponse(TelephonyManager telephonyManager, String str, CharSequence charSequence) {
        }

        public void onReceiveUssdResponseFailed(TelephonyManager telephonyManager, String str, int i2) {
        }
    }

    public interface WifiCallingChoices {
        public static final int ALWAYS_USE = 0;
        public static final int ASK_EVERY_TIME = 1;
        public static final int NEVER_USE = 2;
    }

    public TelephonyManager(Context context) {
        this(context, Integer.MAX_VALUE);
    }

    public static TelephonyManager from(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static TelephonyManager getDefault() {
        return sInstance;
    }

    private ITelephony getITelephony() {
        return ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    }

    public static int getIntAtIndex(ContentResolver contentResolver, String str, int i2) throws Settings.SettingNotFoundException {
        String str2;
        String string = Settings.Global.getString(contentResolver, str);
        if (string != null) {
            String[] strArrSplit = string.split(",");
            if (i2 >= 0 && i2 < strArrSplit.length && (str2 = strArrSplit[i2]) != null) {
                try {
                    return Integer.parseInt(str2);
                } catch (NumberFormatException unused) {
                }
            }
        }
        throw new Settings.SettingNotFoundException(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v10, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v6 */
    public static int getIntWithSubId(ContentResolver contentResolver, String str, int i2) throws Settings.SettingNotFoundException {
        ?? r5;
        boolean zEqualsIgnoreCase;
        boolean zEqualsIgnoreCase2;
        try {
            try {
                return Settings.Global.getInt(contentResolver, str + i2);
            } catch (Settings.SettingNotFoundException unused) {
                throw new Settings.SettingNotFoundException(str);
            }
        } catch (Settings.SettingNotFoundException unused2) {
            int i3 = Settings.Global.getInt(contentResolver, str);
            Settings.Global.putInt(contentResolver, str + i2, i3);
            if (str.equals(Settings.Global.MOBILE_DATA)) {
                zEqualsIgnoreCase2 = "true".equalsIgnoreCase(SystemProperties.get("ro.com.android.mobiledata", "true"));
            } else if (str.equals("data_roaming")) {
                zEqualsIgnoreCase = "true".equalsIgnoreCase(SystemProperties.get("ro.com.android.dataroaming", "false"));
            } else {
                r5 = i3;
            }
            if (r5 != i3) {
                r5 = zEqualsIgnoreCase;
                r5 = zEqualsIgnoreCase2;
                Settings.Global.putInt(contentResolver, str, r5);
            }
            r5 = zEqualsIgnoreCase;
            r5 = zEqualsIgnoreCase2;
            return i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4 */
    public static int getLteOnCdmaModeStatic() {
        ?? Equals;
        int i2 = SystemProperties.getInt(TelephonyProperties.PROPERTY_LTE_ON_CDMA_DEVICE, -1);
        String strGroup = "";
        if (i2 == -1) {
            Matcher matcher = sProductTypePattern.matcher(sKernelCmdLine);
            Equals = 0;
            if (matcher.find()) {
                strGroup = matcher.group(1);
                Equals = sLteOnCdmaProductType.equals(strGroup);
            }
        } else {
            Equals = i2;
        }
        StringBuilder sbT = c.t("getLteOnCdmaMode=", Equals, " curVal=", i2, " product_type='");
        sbT.append(strGroup);
        sbT.append("' lteOnCdmaProductType='");
        sbT.append(sLteOnCdmaProductType);
        sbT.append("'");
        Rlog.d(TAG, sbT.toString());
        return Equals;
    }

    public static int getNetworkClass(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 2;
            case 13:
            case 18:
            case 19:
                return 3;
            default:
                return 0;
        }
    }

    public static String getNetworkTypeName(int i2) {
        switch (i2) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "CDMA - EvDo rev. 0";
            case 6:
                return "CDMA - EvDo rev. A";
            case 7:
                return "CDMA - 1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "iDEN";
            case 12:
                return "CDMA - EvDo rev. B";
            case 13:
                return "LTE";
            case 14:
                return "CDMA - eHRPD";
            case 15:
                return "HSPA+";
            case 16:
                return "GSM";
            case 17:
                return "TD_SCDMA";
            case 18:
                return "IWLAN";
            case 19:
                return "LTE_CA";
            default:
                return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
        }
    }

    private String getOpPackageName() {
        Context context = this.mContext;
        return context != null ? context.getOpPackageName() : ActivityThread.currentOpPackageName();
    }

    private int getPhoneId() {
        return SubscriptionManager.getPhoneId(getSubId());
    }

    private int getPhoneTypeFromNetworkType() {
        return getPhoneTypeFromNetworkType(getPhoneId());
    }

    private int getPhoneTypeFromProperty() {
        return getPhoneTypeFromProperty(getPhoneId());
    }

    /* JADX WARN: Code duplicated, block: B:34:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static String getProcCmdLine() throws Throwable {
        FileInputStream fileInputStream;
        IOException e2;
        String str = "";
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/cmdline");
            try {
                try {
                    byte[] bArr = new byte[2048];
                    int i2 = fileInputStream.read(bArr);
                    if (i2 > 0) {
                        str = new String(bArr, 0, i2);
                    }
                } catch (IOException e3) {
                    e2 = e3;
                    Rlog.d(TAG, "No /proc/cmdline exception=" + e2);
                    if (fileInputStream != null) {
                    }
                    Rlog.d(TAG, "/proc/cmdline=".concat(str));
                    return str;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            fileInputStream = null;
            e2 = e4;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
        try {
            fileInputStream.close();
        } catch (IOException unused2) {
        }
        Rlog.d(TAG, "/proc/cmdline=".concat(str));
        return str;
    }

    private int getSubId() {
        return SubscriptionManager.isUsableSubIdValue(this.mSubId) ? this.mSubId : SubscriptionManager.getDefaultSubscriptionId();
    }

    private int getSubIdForPhoneAccountHandle(PhoneAccountHandle phoneAccountHandle) {
        try {
            ITelecomService telecomService = getTelecomService();
            if (telecomService != null) {
                return getSubIdForPhoneAccount(telecomService.getPhoneAccount(phoneAccountHandle));
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    private IPhoneSubInfo getSubscriberInfo() {
        return IPhoneSubInfo.Stub.asInterface(ServiceManager.getService("iphonesubinfo"));
    }

    private ITelecomService getTelecomService() {
        return ITelecomService.Stub.asInterface(ServiceManager.getService(Context.TELECOM_SERVICE));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001c  */
    public static String getTelephonyProperty(int i2, String str, String str2) {
        String str3;
        String str4 = SystemProperties.get(str);
        if (str4 == null || str4.length() <= 0) {
            str3 = null;
        } else {
            String[] strArrSplit = str4.split(",");
            if (i2 < 0 || i2 >= strArrSplit.length || (str3 = strArrSplit[i2]) == null) {
                str3 = null;
            }
        }
        return str3 == null ? str2 : str3;
    }

    private ITelephonyRegistry getTelephonyRegistry() {
        return ITelephonyRegistry.Stub.asInterface(ServiceManager.getService("telephony.registry"));
    }

    private boolean isImsiEncryptionRequired(int i2, int i3) {
        PersistableBundle configForSubId;
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) this.mContext.getSystemService(Context.CARRIER_CONFIG_SERVICE);
        if (carrierConfigManager == null || (configForSubId = carrierConfigManager.getConfigForSubId(i2)) == null) {
            return false;
        }
        return isKeyEnabled(configForSubId.getInt(CarrierConfigManager.IMSI_KEY_AVAILABILITY_INT), i3);
    }

    private static boolean isKeyEnabled(int i2, int i3) {
        return ((i2 >> (i3 - 1)) & 1) == 1;
    }

    public static boolean putIntAtIndex(ContentResolver contentResolver, String str, int i2, int i3) {
        String string = Settings.Global.getString(contentResolver, str);
        if (i2 == Integer.MAX_VALUE) {
            throw new RuntimeException(c.d("putIntAtIndex index == MAX_VALUE index=", i2));
        }
        if (i2 < 0) {
            throw new RuntimeException(c.d("putIntAtIndex index < 0 index=", i2));
        }
        String[] strArrSplit = string != null ? string.split(",") : null;
        int i4 = 0;
        String strH = "";
        while (i4 < i2) {
            strH = m.h(strH, (strArrSplit == null || i4 >= strArrSplit.length) ? "" : strArrSplit[i4], ",");
            i4++;
        }
        String string2 = strH + i3;
        if (strArrSplit != null) {
            while (true) {
                i2++;
                if (i2 >= strArrSplit.length) {
                    break;
                }
                StringBuilder sbU = c.u(string2, ",");
                sbU.append(strArrSplit[i2]);
                string2 = sbU.toString();
            }
        }
        return Settings.Global.putString(contentResolver, str, string2);
    }

    public static void setTelephonyProperty(int i2, String str, String str2) {
        String str3 = SystemProperties.get(str);
        if (str2 == null) {
            str2 = "";
        }
        String[] strArrSplit = str3 != null ? str3.split(",") : null;
        if (!SubscriptionManager.isValidPhoneId(i2)) {
            Rlog.d(TAG, "setTelephonyProperty: invalid phoneId=" + i2 + " property=" + str + " value: " + str2 + " prop=" + str3);
            return;
        }
        int i3 = 0;
        String strH = "";
        while (i3 < i2) {
            strH = m.h(strH, (strArrSplit == null || i3 >= strArrSplit.length) ? "" : strArrSplit[i3], ",");
            i3++;
        }
        String strD = c.D(strH, str2);
        if (strArrSplit != null) {
            for (int i4 = i2 + 1; i4 < strArrSplit.length; i4++) {
                StringBuilder sbU = c.u(strD, ",");
                sbU.append(strArrSplit[i4]);
                strD = sbU.toString();
            }
        }
        if (strD.length() > 91) {
            Rlog.d(TAG, "setTelephonyProperty: property too long phoneId=" + i2 + " property=" + str + " value: " + str2 + " propVal=" + strD);
            return;
        }
        Rlog.d(TAG, "setTelephonyProperty: success phoneId=" + i2 + " property=" + str + " value: " + str2 + " propVal=" + strD);
        SystemProperties.set(str, strD);
    }

    public void answerRingingCall() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.answerRingingCall();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#answerRingingCall", e2);
        }
    }

    public void call(String str, String str2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.call(str, str2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#call", e2);
        }
    }

    public boolean canChangeDtmfToneLength() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.canChangeDtmfToneLength();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#canChangeDtmfToneLength", e2);
            return false;
        } catch (SecurityException e3) {
            Log.e(TAG, "Permission error calling ITelephony#canChangeDtmfToneLength", e3);
            return false;
        }
    }

    public void carrierActionReportDefaultNetworkStatus(int i2, boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.carrierActionReportDefaultNetworkStatus(i2, z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#carrierActionReportDefaultNetworkStatus", e2);
        }
    }

    public void carrierActionSetMeteredApnsEnabled(int i2, boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.carrierActionSetMeteredApnsEnabled(i2, z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#carrierActionSetMeteredApnsEnabled", e2);
        }
    }

    public void carrierActionSetRadioEnabled(int i2, boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.carrierActionSetRadioEnabled(i2, z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#carrierActionSetRadioEnabled", e2);
        }
    }

    @SuppressLint({"Doclava125"})
    public int checkCarrierPrivilegesForPackage(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.checkCarrierPrivilegesForPackage(str);
            }
            return 0;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "checkCarrierPrivilegesForPackage RemoteException", e2);
            return 0;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "checkCarrierPrivilegesForPackage NPE", e3);
            return 0;
        }
    }

    @SuppressLint({"Doclava125"})
    public int checkCarrierPrivilegesForPackageAnyPhone(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.checkCarrierPrivilegesForPackageAnyPhone(str);
            }
            return 0;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "checkCarrierPrivilegesForPackageAnyPhone RemoteException", e2);
            return 0;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "checkCarrierPrivilegesForPackageAnyPhone NPE", e3);
            return 0;
        }
    }

    public TelephonyManager createForPhoneAccountHandle(PhoneAccountHandle phoneAccountHandle) {
        int subIdForPhoneAccountHandle = getSubIdForPhoneAccountHandle(phoneAccountHandle);
        if (SubscriptionManager.isValidSubscriptionId(subIdForPhoneAccountHandle)) {
            return new TelephonyManager(this.mContext, subIdForPhoneAccountHandle);
        }
        return null;
    }

    public TelephonyManager createForSubscriptionId(int i2) {
        return new TelephonyManager(this.mContext, i2);
    }

    @SuppressLint({"Doclava125"})
    public void dial(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.dial(str);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#dial", e2);
        }
    }

    public boolean disableDataConnectivity() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.disableDataConnectivity();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#disableDataConnectivity", e2);
            return false;
        }
    }

    public void disableLocationUpdates() {
        disableLocationUpdates(getSubId());
    }

    public void disableVisualVoicemailSmsFilter(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.disableVisualVoicemailSmsFilter(this.mContext.getOpPackageName(), i2);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public boolean enableDataConnectivity() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.enableDataConnectivity();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#enableDataConnectivity", e2);
            return false;
        }
    }

    public void enableLocationUpdates() {
        enableLocationUpdates(getSubId());
    }

    public void enableVideoCalling(boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.enableVideoCalling(z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#enableVideoCalling", e2);
        }
    }

    public void enableVisualVoicemailSmsFilter(int i2, VisualVoicemailSmsFilterSettings visualVoicemailSmsFilterSettings) {
        if (visualVoicemailSmsFilterSettings == null) {
            throw new IllegalArgumentException("Settings cannot be null");
        }
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.enableVisualVoicemailSmsFilter(this.mContext.getOpPackageName(), i2, visualVoicemailSmsFilterSettings);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public boolean endCall() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.endCall();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#endCall", e2);
            return false;
        }
    }

    public void factoryReset(int i2) {
        try {
            Log.d(TAG, "factoryReset: subId=" + i2);
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.factoryReset(i2);
            }
        } catch (RemoteException unused) {
        }
    }

    public VisualVoicemailSmsFilterSettings getActiveVisualVoicemailSmsFilterSettings(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getActiveVisualVoicemailSmsFilterSettings(i2);
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getAidForAppType(int i2) {
        return getAidForAppType(getSubId(), i2);
    }

    public List<CellInfo> getAllCellInfo() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getAllCellInfo(getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public List<CarrierIdentifier> getAllowedCarriers(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getAllowedCarriers(i2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getAllowedCarriers", e2);
        } catch (NullPointerException e3) {
            Log.e(TAG, "Error calling ITelephony#getAllowedCarriers", e3);
        }
        return new ArrayList(0);
    }

    public int getCallState() {
        try {
            ITelecomService telecomService = getTelecomService();
            if (telecomService != null) {
                return telecomService.getCallState();
            }
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelecomService#getCallState", e2);
            return 0;
        }
    }

    public int getCallStateForSlot(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return 0;
            }
            return iTelephony.getCallStateForSlot(i2);
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public PersistableBundle getCarrierConfig() {
        return ((CarrierConfigManager) this.mContext.getSystemService(CarrierConfigManager.class)).getConfigForSubId(getSubId());
    }

    public ImsiEncryptionInfo getCarrierInfoForImsiEncryption(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                throw new RuntimeException("IMSI error: Subscriber Info is null");
            }
            int subId = getSubId(SubscriptionManager.getDefaultDataSubscriptionId());
            if (i2 != 1 && i2 != 2) {
                throw new IllegalArgumentException("IMSI error: Invalid key type");
            }
            ImsiEncryptionInfo carrierInfoForImsiEncryption = subscriberInfo.getCarrierInfoForImsiEncryption(subId, i2, this.mContext.getOpPackageName());
            if (carrierInfoForImsiEncryption == null && isImsiEncryptionRequired(subId, i2)) {
                Rlog.e(TAG, "IMSI error: key is required but not found");
                throw new RuntimeException("IMSI error: key is required but not found");
            }
            return carrierInfoForImsiEncryption;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getCarrierInfoForImsiEncryption RemoteException" + e2);
            throw new RuntimeException("IMSI error: Remote Exception");
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "getCarrierInfoForImsiEncryption NullPointerException" + e3);
            throw new RuntimeException("IMSI error: Null Pointer exception");
        }
    }

    public List<String> getCarrierPackageNamesForIntent(Intent intent) {
        return getCarrierPackageNamesForIntentAndPhone(intent, getPhoneId());
    }

    public List<String> getCarrierPackageNamesForIntentAndPhone(Intent intent, int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getCarrierPackageNamesForIntentAndPhone(intent, i2);
            }
            return null;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getCarrierPackageNamesForIntentAndPhone RemoteException", e2);
            return null;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "getCarrierPackageNamesForIntentAndPhone NPE", e3);
            return null;
        }
    }

    public int getCdmaEriIconIndex() {
        return getCdmaEriIconIndex(getSubId());
    }

    public int getCdmaEriIconMode() {
        return getCdmaEriIconMode(getSubId());
    }

    public String getCdmaEriText() {
        return getCdmaEriText(getSubId());
    }

    public String getCdmaMdn() {
        return getCdmaMdn(getSubId());
    }

    public String getCdmaMin() {
        return getCdmaMin(getSubId());
    }

    public String getCdmaPrlVersion() {
        return getCdmaPrlVersion(getSubId());
    }

    @Deprecated
    public CellLocation getCellLocation() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                Rlog.d(TAG, "getCellLocation returning null because telephony is null");
                return null;
            }
            Bundle cellLocation = iTelephony.getCellLocation(this.mContext.getOpPackageName());
            if (cellLocation.isEmpty()) {
                Rlog.d(TAG, "getCellLocation returning null because bundle is empty");
                return null;
            }
            CellLocation cellLocationNewFromBundle = CellLocation.newFromBundle(cellLocation);
            if (!cellLocationNewFromBundle.isEmpty()) {
                return cellLocationNewFromBundle;
            }
            Rlog.d(TAG, "getCellLocation returning null because CellLocation is empty");
            return null;
        } catch (RemoteException e2) {
            Rlog.d(TAG, "getCellLocation returning null due to RemoteException " + e2);
            return null;
        } catch (NullPointerException e3) {
            Rlog.d(TAG, "getCellLocation returning null due to NullPointerException " + e3);
            return null;
        }
    }

    public CellNetworkScanResult getCellNetworkScanResults(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getCellNetworkScanResults(i2);
            }
            return null;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getCellNetworkScanResults RemoteException", e2);
            return null;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "getCellNetworkScanResults NPE", e3);
            return null;
        }
    }

    public List<ClientRequestStats> getClientRequestStats(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getClientRequestStats(getOpPackageName(), i2);
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getClientRequestStats", e2);
            return null;
        }
    }

    public String getCompleteVoiceMailNumber() {
        return getCompleteVoiceMailNumber(getSubId());
    }

    public int getCurrentPhoneType() {
        return getCurrentPhoneType(getSubId());
    }

    public int getCurrentPhoneTypeForSlot(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony != null ? iTelephony.getActivePhoneTypeForSlot(i2) : getPhoneTypeFromProperty(i2);
        } catch (RemoteException unused) {
            return getPhoneTypeFromProperty(i2);
        } catch (NullPointerException unused2) {
            return getPhoneTypeFromProperty(i2);
        }
    }

    public int getDataActivationState(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getDataActivationState(i2, getOpPackageName());
            }
            return 0;
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public int getDataActivity() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return 0;
            }
            return iTelephony.getDataActivity();
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    @Deprecated
    public boolean getDataEnabled() {
        return isDataEnabled();
    }

    public int getDataNetworkType() {
        return getDataNetworkType(getSubId(SubscriptionManager.getDefaultDataSubscriptionId()));
    }

    public int getDataState() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return 0;
            }
            return iTelephony.getDataState();
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    @Deprecated
    public String getDeviceId() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getDeviceId(this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getDeviceSoftwareVersion() {
        return getDeviceSoftwareVersion(getSlotIndex());
    }

    public boolean getEmergencyCallbackMode() {
        return getEmergencyCallbackMode(getSubId());
    }

    public String getEsn() {
        return getEsn(getSubId());
    }

    public String[] getForbiddenPlmns() {
        return getForbiddenPlmns(getSubId(), 2);
    }

    public String getGroupIdLevel1() {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getGroupIdLevel1(this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIccAuthentication(int i2, int i3, String str) {
        return getIccAuthentication(getSubId(), i2, i3, str);
    }

    public String getImei() {
        return getImei(getSlotIndex());
    }

    public IImsServiceController getImsServiceControllerAndListen(int i2, int i3, IImsServiceFeatureListener iImsServiceFeatureListener) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getImsServiceControllerAndListen(i2, i3, iImsServiceFeatureListener);
            }
            return null;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getImsServiceControllerAndListen, RemoteException: " + e2.getMessage());
            return null;
        }
    }

    public String getIsimChallengeResponse(String str) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimChallengeResponse(str);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimDomain() {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimDomain();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimImpi() {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimImpi();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String[] getIsimImpu() {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimImpu();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimIst() {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimIst();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String[] getIsimPcscf() {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIsimPcscf();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getLine1AlphaTag() {
        return getLine1AlphaTag(getSubId());
    }

    public String getLine1Number() {
        return getLine1Number(getSubId());
    }

    public String getLocaleFromDefaultSim() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getLocaleFromDefaultSim();
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getLteOnCdmaMode() {
        return getLteOnCdmaMode(getSubId());
    }

    public String getMeid() {
        return getMeid(getSlotIndex());
    }

    public String[] getMergedSubscriberIds() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getMergedSubscriberIds(getOpPackageName());
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getMmsUAProfUrl() {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        return context.getResources().getString(R.string.config_mms_user_agent_profile_url);
    }

    public String getMmsUserAgent() {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        return context.getResources().getString(R.string.config_mms_user_agent);
    }

    public String getMsisdn() {
        return getMsisdn(getSubId());
    }

    public MultiSimVariants getMultiSimConfiguration() {
        String str = SystemProperties.get(TelephonyProperties.PROPERTY_MULTI_SIM_CONFIG);
        if (str.equals("dsds")) {
            return MultiSimVariants.DSDS;
        }
        if (str.equals("dsda")) {
            return MultiSimVariants.DSDA;
        }
        return str.equals("tsts") ? MultiSimVariants.TSTS : MultiSimVariants.UNKNOWN;
    }

    public String getNai() {
        return getNai(getSlotIndex());
    }

    @Deprecated
    public List<NeighboringCellInfo> getNeighboringCellInfo() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getNeighboringCellInfo(this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getNetworkCountryIso() {
        return getNetworkCountryIsoForPhone(getPhoneId());
    }

    public String getNetworkCountryIsoForPhone(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony == null ? "" : iTelephony.getNetworkCountryIsoForPhone(i2);
        } catch (RemoteException unused) {
            return "";
        }
    }

    public String getNetworkOperator() {
        return getNetworkOperatorForPhone(getPhoneId());
    }

    public String getNetworkOperatorForPhone(int i2) {
        return getTelephonyProperty(i2, TelephonyProperties.PROPERTY_OPERATOR_NUMERIC, "");
    }

    public String getNetworkOperatorName() {
        return getNetworkOperatorName(getSubId());
    }

    public String getNetworkSpecifier() {
        return String.valueOf(getSubId());
    }

    public int getNetworkType() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getNetworkType();
            }
            return 0;
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public String getOtaSpNumberSchema(String str) {
        return getOtaSpNumberSchemaForPhone(getPhoneId(), str);
    }

    public String getOtaSpNumberSchemaForPhone(int i2, String str) {
        return SubscriptionManager.isValidPhoneId(i2) ? getTelephonyProperty(i2, TelephonyProperties.PROPERTY_OTASP_NUM_SCHEMA, str) : str;
    }

    public List<String> getPackagesWithCarrierPrivileges() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getPackagesWithCarrierPrivileges();
            }
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getPackagesWithCarrierPrivileges RemoteException", e2);
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "getPackagesWithCarrierPrivileges NPE", e3);
        }
        return Collections.EMPTY_LIST;
    }

    public String[] getPcscfAddress(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony == null ? new String[0] : iTelephony.getPcscfAddress(str, getOpPackageName());
        } catch (RemoteException unused) {
            return new String[0];
        }
    }

    public int getPhoneCount() {
        Context context;
        ConnectivityManager connectivityManager;
        int i2;
        int i3 = AnonymousClass2.$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants[getMultiSimConfiguration().ordinal()];
        if (i3 != 1) {
            i2 = 2;
            if (i3 != 2 && i3 != 3) {
                return i3 != 4 ? 1 : 3;
            }
        } else {
            if (isVoiceCapable() || isSmsCapable() || (context = this.mContext) == null || (connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)) == null) {
                return 1;
            }
            i2 = 0;
            if (connectivityManager.isNetworkSupported(0)) {
                return 1;
            }
        }
        return i2;
    }

    public int getPhoneType() {
        if (isVoiceCapable()) {
            return getCurrentPhoneType();
        }
        return 0;
    }

    public int getPreferredNetworkType(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getPreferredNetworkType(i2);
            }
            return -1;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "getPreferredNetworkType RemoteException", e2);
            return -1;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "getPreferredNetworkType NPE", e3);
            return -1;
        }
    }

    public ServiceState getServiceState() {
        return getServiceStateForSubscriber(getSubId());
    }

    public ServiceState getServiceStateForSubscriber(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getServiceStateForSubscriber(i2, getOpPackageName());
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getServiceStateForSubscriber", e2);
            return null;
        }
    }

    public SignalStrength getSignalStrength() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getSignalStrength(getSubId());
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getSignalStrength", e2);
            return null;
        }
    }

    public int getSimCount() {
        return isMultiSimEnabled() ? 2 : 1;
    }

    public String getSimCountryIso() {
        return getSimCountryIsoForPhone(getPhoneId());
    }

    public String getSimCountryIsoForPhone(int i2) {
        return getTelephonyProperty(i2, TelephonyProperties.PROPERTY_ICC_OPERATOR_ISO_COUNTRY, "");
    }

    public String getSimOperator() {
        return getSimOperatorNumeric();
    }

    public String getSimOperatorName() {
        return getSimOperatorNameForPhone(getPhoneId());
    }

    public String getSimOperatorNameForPhone(int i2) {
        return getTelephonyProperty(i2, TelephonyProperties.PROPERTY_ICC_OPERATOR_ALPHA, "");
    }

    public String getSimOperatorNumeric() {
        int defaultDataSubscriptionId = SubscriptionManager.getDefaultDataSubscriptionId();
        if (!SubscriptionManager.isUsableSubIdValue(defaultDataSubscriptionId)) {
            defaultDataSubscriptionId = SubscriptionManager.getDefaultSmsSubscriptionId();
            if (!SubscriptionManager.isUsableSubIdValue(defaultDataSubscriptionId)) {
                defaultDataSubscriptionId = SubscriptionManager.getDefaultVoiceSubscriptionId();
                if (!SubscriptionManager.isUsableSubIdValue(defaultDataSubscriptionId)) {
                    defaultDataSubscriptionId = SubscriptionManager.getDefaultSubscriptionId();
                }
            }
        }
        return getSimOperatorNumeric(defaultDataSubscriptionId);
    }

    public String getSimOperatorNumericForPhone(int i2) {
        return getTelephonyProperty(i2, TelephonyProperties.PROPERTY_ICC_OPERATOR_NUMERIC, "");
    }

    public String getSimSerialNumber() {
        return getSimSerialNumber(getSubId());
    }

    public int getSimState() {
        int slotIndex = getSlotIndex();
        if (slotIndex >= 0) {
            return getSimState(slotIndex);
        }
        for (int i2 = 0; i2 < getPhoneCount(); i2++) {
            int simState = getSimState(i2);
            if (simState != 1) {
                StringBuilder sbT = c.t("getSimState: default sim:", slotIndex, ", sim state for slotIndex=", i2, " is ");
                sbT.append(simState);
                sbT.append(", return state as unknown");
                Rlog.d(TAG, sbT.toString());
                return 0;
            }
        }
        Rlog.d(TAG, "getSimState: default sim:" + slotIndex + ", all SIMs absent, return state as absent");
        return 1;
    }

    public int getSlotIndex() {
        int slotIndex = SubscriptionManager.getSlotIndex(getSubId());
        if (slotIndex == -1) {
            return Integer.MAX_VALUE;
        }
        return slotIndex;
    }

    public boolean getSmsReceiveCapable(boolean z2) {
        return getSmsReceiveCapableForPhone(getPhoneId(), z2);
    }

    public boolean getSmsReceiveCapableForPhone(int i2, boolean z2) {
        return SubscriptionManager.isValidPhoneId(i2) ? Boolean.parseBoolean(getTelephonyProperty(i2, TelephonyProperties.PROPERTY_SMS_RECEIVE, String.valueOf(z2))) : z2;
    }

    public boolean getSmsSendCapable(boolean z2) {
        return getSmsSendCapableForPhone(getPhoneId(), z2);
    }

    public boolean getSmsSendCapableForPhone(int i2, boolean z2) {
        return SubscriptionManager.isValidPhoneId(i2) ? Boolean.parseBoolean(getTelephonyProperty(i2, TelephonyProperties.PROPERTY_SMS_SEND, String.valueOf(z2))) : z2;
    }

    public int getSubIdForPhoneAccount(PhoneAccount phoneAccount) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getSubIdForPhoneAccount(phoneAccount);
            }
            return -1;
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public String getSubscriberId() {
        return getSubscriberId(getSubId());
    }

    public List<TelephonyHistogram> getTelephonyHistograms() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getTelephonyHistograms();
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getTelephonyHistograms", e2);
            return null;
        }
    }

    public int getTetherApnRequired() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getTetherApnRequired();
            }
            return 2;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "hasMatchedTetherApnSetting RemoteException", e2);
            return 2;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "hasMatchedTetherApnSetting NPE", e3);
            return 2;
        }
    }

    public String getVisualVoicemailPackageName() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVisualVoicemailPackageName(this.mContext.getOpPackageName(), getSubId());
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    @SuppressLint({"Doclava125"})
    public Bundle getVisualVoicemailSettings() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVisualVoicemailSettings(this.mContext.getOpPackageName(), this.mSubId);
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public VisualVoicemailSmsFilterSettings getVisualVoicemailSmsFilterSettings(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVisualVoicemailSmsFilterSettings(this.mContext.getOpPackageName(), i2);
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getVoiceActivationState(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVoiceActivationState(i2, getOpPackageName());
            }
            return 0;
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public String getVoiceMailAlphaTag() {
        return getVoiceMailAlphaTag(getSubId());
    }

    public String getVoiceMailNumber() {
        return getVoiceMailNumber(getSubId());
    }

    public int getVoiceMessageCount() {
        return getVoiceMessageCount(getSubId());
    }

    public int getVoiceNetworkType() {
        return getVoiceNetworkType(getSubId());
    }

    public Uri getVoicemailRingtoneUri(PhoneAccountHandle phoneAccountHandle) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVoicemailRingtoneUri(phoneAccountHandle);
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getVoicemailRingtoneUri", e2);
            return null;
        }
    }

    public NetworkStats getVtDataUsage(int i2) {
        boolean z2 = i2 == 1;
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVtDataUsage(getSubId(), z2);
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getVtDataUsage", e2);
            return null;
        }
    }

    public boolean handlePinMmi(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.handlePinMmi(str);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#handlePinMmi", e2);
            return false;
        }
    }

    public boolean handlePinMmiForSubscriber(int i2, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.handlePinMmiForSubscriber(i2, str);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#handlePinMmi", e2);
            return false;
        }
    }

    public boolean hasCarrierPrivileges() {
        return hasCarrierPrivileges(getSubId());
    }

    public boolean hasIccCard() {
        return hasIccCard(getSlotIndex());
    }

    public boolean iccCloseLogicalChannel(int i2) {
        return iccCloseLogicalChannel(getSubId(), i2);
    }

    public byte[] iccExchangeSimIO(int i2, int i3, int i4, int i5, int i6, String str) {
        return iccExchangeSimIO(getSubId(), i2, i3, i4, i5, i6, str);
    }

    @Deprecated
    public IccOpenLogicalChannelResponse iccOpenLogicalChannel(String str) {
        return iccOpenLogicalChannel(getSubId(), str, -1);
    }

    public String iccTransmitApduBasicChannel(int i2, int i3, int i4, int i5, int i6, String str) {
        return iccTransmitApduBasicChannel(getSubId(), i2, i3, i4, i5, i6, str);
    }

    public String iccTransmitApduLogicalChannel(int i2, int i3, int i4, int i5, int i6, int i7, String str) {
        return iccTransmitApduLogicalChannel(getSubId(), i2, i3, i4, i5, i6, i7, str);
    }

    @Deprecated
    public int invokeOemRilRequestRaw(byte[] bArr, byte[] bArr2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.invokeOemRilRequestRaw(bArr, bArr2);
            }
            return -1;
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public boolean isConcurrentVoiceAndDataSupported() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return false;
            }
            return iTelephony.isConcurrentVoiceAndDataAllowed(getSubId());
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isConcurrentVoiceAndDataAllowed", e2);
            return false;
        }
    }

    public boolean isDataConnectivityPossible() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isDataConnectivityPossible(getSubId(SubscriptionManager.getDefaultDataSubscriptionId()));
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isDataAllowed", e2);
            return false;
        }
    }

    public boolean isDataEnabled() {
        return getDataEnabled(getSubId(SubscriptionManager.getDefaultDataSubscriptionId()));
    }

    public boolean isHearingAidCompatibilitySupported() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isHearingAidCompatibilitySupported();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isHearingAidCompatibilitySupported", e2);
            return false;
        } catch (SecurityException e3) {
            Log.e(TAG, "Permission error calling ITelephony#isHearingAidCompatibilitySupported", e3);
            return false;
        }
    }

    public boolean isIdle() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isIdle(getOpPackageName());
            }
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isIdle", e2);
            return true;
        }
    }

    public boolean isImsRegistered() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return false;
            }
            return iTelephony.isImsRegistered();
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public boolean isMultiSimEnabled() {
        return multiSimConfig.equals("dsds") || multiSimConfig.equals("dsda") || multiSimConfig.equals("tsts");
    }

    public boolean isNetworkRoaming() {
        return isNetworkRoaming(getSubId());
    }

    public boolean isOffhook() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isOffhook(getOpPackageName());
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isOffhook", e2);
            return false;
        }
    }

    public boolean isRadioOn() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isRadioOn(getOpPackageName());
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isRadioOn", e2);
            return false;
        }
    }

    public boolean isRinging() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isRinging(getOpPackageName());
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isRinging", e2);
            return false;
        }
    }

    public boolean isSmsCapable() {
        Context context = this.mContext;
        if (context == null) {
            return true;
        }
        return context.getResources().getBoolean(R.bool.config_sms_capable);
    }

    public boolean isTtyModeSupported() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isTtyModeSupported();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isTtyModeSupported", e2);
            return false;
        } catch (SecurityException e3) {
            Log.e(TAG, "Permission error calling ITelephony#isTtyModeSupported", e3);
            return false;
        }
    }

    public boolean isVideoCallingEnabled() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isVideoCallingEnabled(getOpPackageName());
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isVideoCallingEnabled", e2);
            return false;
        }
    }

    public boolean isVideoTelephonyAvailable() {
        try {
            return getITelephony().isVideoTelephonyAvailable();
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    @SuppressLint({"Doclava125"})
    public boolean isVisualVoicemailEnabled(PhoneAccountHandle phoneAccountHandle) {
        return false;
    }

    public boolean isVoiceCapable() {
        Context context = this.mContext;
        if (context == null) {
            return true;
        }
        return context.getResources().getBoolean(R.bool.config_voice_capable);
    }

    public boolean isVoicemailVibrationEnabled(PhoneAccountHandle phoneAccountHandle) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isVoicemailVibrationEnabled(phoneAccountHandle);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isVoicemailVibrationEnabled", e2);
            return false;
        }
    }

    public boolean isVolteAvailable() {
        try {
            return getITelephony().isVolteAvailable();
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public boolean isWifiCallingAvailable() {
        try {
            return getITelephony().isWifiCallingAvailable();
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public boolean isWorldPhone() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.isWorldPhone();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isWorldPhone", e2);
            return false;
        } catch (SecurityException e3) {
            Log.e(TAG, "Permission error calling ITelephony#isWorldPhone", e3);
            return false;
        }
    }

    public void listen(PhoneStateListener phoneStateListener, int i2) {
        if (this.mContext == null) {
            return;
        }
        try {
            boolean z2 = getITelephony() != null;
            if (phoneStateListener.mSubId == null) {
                phoneStateListener.mSubId = Integer.valueOf(this.mSubId);
            }
            ITelephonyRegistry telephonyRegistry = getTelephonyRegistry();
            if (telephonyRegistry != null) {
                telephonyRegistry.listenForSubscriber(phoneStateListener.mSubId.intValue(), getOpPackageName(), phoneStateListener.callback, i2, z2);
            } else {
                Rlog.w(TAG, "telephony registry not ready.");
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public boolean needsOtaServiceProvisioning() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.needsOtaServiceProvisioning();
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#needsOtaServiceProvisioning", e2);
            return false;
        }
    }

    public String nvReadItem(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony != null ? iTelephony.nvReadItem(i2) : "";
        } catch (RemoteException e2) {
            Rlog.e(TAG, "nvReadItem RemoteException", e2);
            return "";
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "nvReadItem NPE", e3);
            return "";
        }
    }

    public boolean nvResetConfig(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.nvResetConfig(i2);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "nvResetConfig RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "nvResetConfig NPE", e3);
            return false;
        }
    }

    public boolean nvWriteCdmaPrl(byte[] bArr) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.nvWriteCdmaPrl(bArr);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "nvWriteCdmaPrl RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "nvWriteCdmaPrl NPE", e3);
            return false;
        }
    }

    public boolean nvWriteItem(int i2, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.nvWriteItem(i2, str);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "nvWriteItem RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "nvWriteItem NPE", e3);
            return false;
        }
    }

    public void requestModemActivityInfo(ResultReceiver resultReceiver) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.requestModemActivityInfo(resultReceiver);
                return;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getModemActivityInfo", e2);
        }
        resultReceiver.send(0, null);
    }

    public NetworkScan requestNetworkScan(NetworkScanRequest networkScanRequest, TelephonyScanManager.NetworkScanCallback networkScanCallback) {
        synchronized (this) {
            if (this.mTelephonyScanManager == null) {
                this.mTelephonyScanManager = new TelephonyScanManager();
            }
        }
        return this.mTelephonyScanManager.requestNetworkScan(getSubId(), networkScanRequest, networkScanCallback);
    }

    public void sendDialerSpecialCode(String str) {
        try {
            getITelephony().sendDialerSpecialCode(this.mContext.getOpPackageName(), str);
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
        } catch (NullPointerException unused) {
            throw new IllegalStateException("Telephony service unavailable");
        }
    }

    public String sendEnvelopeWithStatus(String str) {
        return sendEnvelopeWithStatus(getSubId(), str);
    }

    public void sendUssdRequest(String str, final UssdResponseCallback ussdResponseCallback, Handler handler) {
        Preconditions.checkNotNull(ussdResponseCallback, "UssdResponseCallback cannot be null.");
        ResultReceiver resultReceiver = new ResultReceiver(handler) { // from class: android.telephony.TelephonyManager.1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i2, Bundle bundle) {
                Rlog.d(TelephonyManager.TAG, "USSD:" + i2);
                Preconditions.checkNotNull(bundle, "ussdResponse cannot be null.");
                UssdResponse ussdResponse = (UssdResponse) bundle.getParcelable(TelephonyManager.USSD_RESPONSE);
                if (i2 == 100) {
                    ussdResponseCallback.onReceiveUssdResponse(this, ussdResponse.getUssdRequest(), ussdResponse.getReturnMessage());
                } else {
                    ussdResponseCallback.onReceiveUssdResponseFailed(this, ussdResponse.getUssdRequest(), i2);
                }
            }
        };
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.handleUssdRequest(getSubId(), str, resultReceiver);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#sendUSSDCode", e2);
            UssdResponse ussdResponse = new UssdResponse(str, "");
            Bundle bundle = new Bundle();
            bundle.putParcelable(USSD_RESPONSE, ussdResponse);
            resultReceiver.send(-2, bundle);
        }
    }

    public void sendVisualVoicemailSms(String str, int i2, String str2, PendingIntent pendingIntent) {
        sendVisualVoicemailSmsForSubscriber(this.mSubId, str, i2, str2, pendingIntent);
    }

    public void sendVisualVoicemailSmsForSubscriber(int i2, String str, int i3, String str2, PendingIntent pendingIntent) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.sendVisualVoicemailSmsForSubscriber(this.mContext.getOpPackageName(), i2, str, i3, str2, pendingIntent);
            }
        } catch (RemoteException unused) {
        }
    }

    public int setAllowedCarriers(int i2, List<CarrierIdentifier> list) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setAllowedCarriers(i2, list);
            }
            return -1;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setAllowedCarriers", e2);
            return -1;
        } catch (NullPointerException e3) {
            Log.e(TAG, "Error calling ITelephony#setAllowedCarriers", e3);
            return -1;
        }
    }

    public void setBasebandVersion(String str) {
        setBasebandVersionForPhone(getPhoneId(), str);
    }

    public void setBasebandVersionForPhone(int i2, String str) {
        if (SubscriptionManager.isValidPhoneId(i2)) {
            StringBuilder sb = new StringBuilder(TelephonyProperties.PROPERTY_BASEBAND_VERSION);
            sb.append(i2 == 0 ? "" : Integer.toString(i2));
            SystemProperties.set(sb.toString(), str);
        }
    }

    public void setCarrierInfoForImsiEncryption(ImsiEncryptionInfo imsiEncryptionInfo) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return;
            }
            subscriberInfo.setCarrierInfoForImsiEncryption(this.mSubId, this.mContext.getOpPackageName(), imsiEncryptionInfo);
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setCarrierInfoForImsiEncryption RemoteException", e2);
        } catch (NullPointerException unused) {
        }
    }

    public void setCellInfoListRate(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setCellInfoListRate(i2);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public void setDataActivationState(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setDataActivationState(i2, i3);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public void setDataEnabled(boolean z2) {
        setDataEnabled(getSubId(SubscriptionManager.getDefaultDataSubscriptionId()), z2);
    }

    public void setDataNetworkType(int i2) {
        setDataNetworkTypeForPhone(getPhoneId(SubscriptionManager.getDefaultDataSubscriptionId()), i2);
    }

    public void setDataNetworkTypeForPhone(int i2, int i3) {
        if (SubscriptionManager.isValidPhoneId(i2)) {
            setTelephonyProperty(i2, TelephonyProperties.PROPERTY_DATA_NETWORK_TYPE, ServiceState.rilRadioTechnologyToString(i3));
        }
    }

    public void setImsRegistrationState(boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setImsRegistrationState(z2);
            }
        } catch (RemoteException unused) {
        }
    }

    public boolean setLine1NumberForDisplay(String str, String str2) {
        return setLine1NumberForDisplay(getSubId(), str, str2);
    }

    public void setNetworkCountryIso(String str) {
        setNetworkCountryIsoForPhone(getPhoneId(), str);
    }

    public void setNetworkCountryIsoForPhone(int i2, String str) {
        if (SubscriptionManager.isValidPhoneId(i2)) {
            setTelephonyProperty(i2, TelephonyProperties.PROPERTY_OPERATOR_ISO_COUNTRY, str);
        }
    }

    public void setNetworkOperatorName(String str) {
        setNetworkOperatorNameForPhone(getPhoneId(), str);
    }

    public void setNetworkOperatorNameForPhone(int i2, String str) {
        if (SubscriptionManager.isValidPhoneId(i2)) {
            setTelephonyProperty(i2, TelephonyProperties.PROPERTY_OPERATOR_ALPHA, str);
        }
    }

    public void setNetworkOperatorNumeric(String str) {
        setNetworkOperatorNumericForPhone(getPhoneId(), str);
    }

    public void setNetworkOperatorNumericForPhone(int i2, String str) {
        setTelephonyProperty(i2, TelephonyProperties.PROPERTY_OPERATOR_NUMERIC, str);
    }

    public void setNetworkRoaming(boolean z2) {
        setNetworkRoamingForPhone(getPhoneId(), z2);
    }

    public void setNetworkRoamingForPhone(int i2, boolean z2) {
        if (SubscriptionManager.isValidPhoneId(i2)) {
            setTelephonyProperty(i2, TelephonyProperties.PROPERTY_OPERATOR_ISROAMING, z2 ? "true" : "false");
        }
    }

    public void setNetworkSelectionModeAutomatic(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setNetworkSelectionModeAutomatic(i2);
            }
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setNetworkSelectionModeAutomatic RemoteException", e2);
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "setNetworkSelectionModeAutomatic NPE", e3);
        }
    }

    public boolean setNetworkSelectionModeManual(int i2, OperatorInfo operatorInfo, boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setNetworkSelectionModeManual(i2, operatorInfo, z2);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setNetworkSelectionModeManual RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "setNetworkSelectionModeManual NPE", e3);
            return false;
        }
    }

    public boolean setOperatorBrandOverride(String str) {
        return setOperatorBrandOverride(getSubId(), str);
    }

    public void setPhoneType(int i2) {
        setPhoneType(getPhoneId(), i2);
    }

    public void setPolicyDataEnabled(boolean z2, int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setPolicyDataEnabled(z2, i2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setPolicyDataEnabled", e2);
        }
    }

    public boolean setPreferredNetworkType(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setPreferredNetworkType(i2, i3);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setPreferredNetworkType RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "setPreferredNetworkType NPE", e3);
            return false;
        }
    }

    public boolean setPreferredNetworkTypeToGlobal() {
        return setPreferredNetworkTypeToGlobal(getSubId());
    }

    public boolean setRadio(boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setRadio(z2);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setRadio", e2);
            return false;
        }
    }

    public boolean setRadioPower(boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setRadioPower(z2);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setRadioPower", e2);
            return false;
        }
    }

    public boolean setRoamingOverride(List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        return setRoamingOverride(getSubId(), list, list2, list3, list4);
    }

    public void setSimCountryIso(String str) {
        setSimCountryIsoForPhone(getPhoneId(), str);
    }

    public void setSimCountryIsoForPhone(int i2, String str) {
        setTelephonyProperty(i2, TelephonyProperties.PROPERTY_ICC_OPERATOR_ISO_COUNTRY, str);
    }

    public void setSimOperatorName(String str) {
        setSimOperatorNameForPhone(getPhoneId(), str);
    }

    public void setSimOperatorNameForPhone(int i2, String str) {
        setTelephonyProperty(i2, TelephonyProperties.PROPERTY_ICC_OPERATOR_ALPHA, str);
    }

    public void setSimOperatorNumeric(String str) {
        setSimOperatorNumericForPhone(getPhoneId(), str);
    }

    public void setSimOperatorNumericForPhone(int i2, String str) {
        setTelephonyProperty(i2, TelephonyProperties.PROPERTY_ICC_OPERATOR_NUMERIC, str);
    }

    public void setSimPowerState(int i2) {
        setSimPowerStateForSlot(getSlotIndex(), i2);
    }

    public void setSimPowerStateForSlot(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setSimPowerStateForSlot(i2, i3);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setSimPowerStateForSlot", e2);
        } catch (SecurityException e3) {
            Log.e(TAG, "Permission error calling ITelephony#setSimPowerStateForSlot", e3);
        }
    }

    public void setSimState(String str) {
        setSimStateForPhone(getPhoneId(), str);
    }

    public void setSimStateForPhone(int i2, String str) {
        setTelephonyProperty(i2, TelephonyProperties.PROPERTY_SIM_STATE, str);
    }

    @SuppressLint({"Doclava125"})
    public void setVisualVoicemailEnabled(PhoneAccountHandle phoneAccountHandle, boolean z2) {
    }

    public void setVisualVoicemailSmsFilterSettings(VisualVoicemailSmsFilterSettings visualVoicemailSmsFilterSettings) {
        if (visualVoicemailSmsFilterSettings == null) {
            disableVisualVoicemailSmsFilter(this.mSubId);
        } else {
            enableVisualVoicemailSmsFilter(this.mSubId, visualVoicemailSmsFilterSettings);
        }
    }

    public void setVoiceActivationState(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setVoiceActivationState(i2, i3);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public boolean setVoiceMailNumber(String str, String str2) {
        return setVoiceMailNumber(getSubId(), str, str2);
    }

    public void setVoicemailRingtoneUri(PhoneAccountHandle phoneAccountHandle, Uri uri) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setVoicemailRingtoneUri(getOpPackageName(), phoneAccountHandle, uri);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setVoicemailRingtoneUri", e2);
        }
    }

    public void setVoicemailVibrationEnabled(PhoneAccountHandle phoneAccountHandle, boolean z2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setVoicemailVibrationEnabled(getOpPackageName(), phoneAccountHandle, z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isVoicemailVibrationEnabled", e2);
        }
    }

    @SuppressLint({"Doclava125"})
    public void silenceRinger() {
        try {
            getTelecomService().silenceRinger(getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelecomService#silenceRinger", e2);
        }
    }

    public boolean supplyPin(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.supplyPin(str);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#supplyPin", e2);
            return false;
        }
    }

    public int[] supplyPinReportResult(String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.supplyPinReportResult(str);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#supplyPinReportResult", e2);
        }
        return new int[0];
    }

    public boolean supplyPuk(String str, String str2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.supplyPuk(str, str2);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#supplyPuk", e2);
            return false;
        }
    }

    public int[] supplyPukReportResult(String str, String str2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.supplyPukReportResult(str, str2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#]", e2);
        }
        return new int[0];
    }

    public void toggleRadioOnOff() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.toggleRadioOnOff();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#toggleRadioOnOff", e2);
        }
    }

    @SuppressLint({"Doclava125"})
    public void updateServiceLocation() {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.updateServiceLocation();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#updateServiceLocation", e2);
        }
    }

    public TelephonyManager(Context context, int i2) {
        this.mSubId = i2;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            this.mContext = applicationContext;
        } else {
            this.mContext = context;
        }
        this.mSubscriptionManager = SubscriptionManager.from(this.mContext);
    }

    private int getPhoneId(int i2) {
        return SubscriptionManager.getPhoneId(getSubId(i2));
    }

    private int getPhoneTypeFromNetworkType(int i2) {
        String telephonyProperty = getTelephonyProperty(i2, "ro.telephony.default_network", null);
        if (telephonyProperty == null || telephonyProperty.isEmpty()) {
            return 0;
        }
        return getPhoneType(Integer.parseInt(telephonyProperty));
    }

    private int getPhoneTypeFromProperty(int i2) {
        String telephonyProperty = getTelephonyProperty(i2, TelephonyProperties.CURRENT_ACTIVE_PHONE, null);
        return (telephonyProperty == null || telephonyProperty.isEmpty()) ? getPhoneTypeFromNetworkType(i2) : Integer.parseInt(telephonyProperty);
    }

    public void disableLocationUpdates(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.disableLocationUpdatesForSubscriber(i2);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public void enableLocationUpdates(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.enableLocationUpdatesForSubscriber(i2);
            }
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public String getAidForAppType(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getAidForAppType(i2, i3);
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getAidForAppType", e2);
            return null;
        }
    }

    public int getCdmaEriIconIndex(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return -1;
            }
            return iTelephony.getCdmaEriIconIndexForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public int getCdmaEriIconMode(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return -1;
            }
            return iTelephony.getCdmaEriIconModeForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public String getCdmaEriText(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getCdmaEriTextForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getCdmaMdn(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getCdmaMdn(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getCdmaMin(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getCdmaMin(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getCdmaPrlVersion(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getCdmaPrlVersion(i2);
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getCdmaPrlVersion", e2);
            return null;
        }
    }

    public String getCompleteVoiceMailNumber(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getCompleteVoiceMailNumberForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getCurrentPhoneType(int i2) {
        return getCurrentPhoneTypeForSlot(i2 == -1 ? 0 : SubscriptionManager.getPhoneId(i2));
    }

    public boolean getDataEnabled(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getDataEnabled(i2);
            }
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getDataEnabled", e2);
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public int getDataNetworkType(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getDataNetworkTypeForSubscriber(i2, getOpPackageName());
            }
        } catch (RemoteException | NullPointerException unused) {
        }
        return 0;
    }

    public String getDeviceSoftwareVersion(int i2) {
        ITelephony iTelephony = getITelephony();
        if (iTelephony == null) {
            return null;
        }
        try {
            return iTelephony.getDeviceSoftwareVersionForSlot(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public boolean getEmergencyCallbackMode(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return false;
            }
            return iTelephony.getEmergencyCallbackMode(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getEmergencyCallbackMode", e2);
            return false;
        }
    }

    public String getEsn(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getEsn(i2);
            }
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#getEsn", e2);
            return null;
        }
    }

    public String[] getForbiddenPlmns(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return null;
            }
            return iTelephony.getForbiddenPlmns(i2, i3);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIccAuthentication(int i2, int i3, int i4, String str) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIccSimChallengeResponse(i2, i3, i4, str);
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getImei(int i2) {
        ITelephony iTelephony = getITelephony();
        if (iTelephony == null) {
            return null;
        }
        try {
            return iTelephony.getImeiForSlot(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getLine1AlphaTag(int i2) {
        String line1AlphaTagForDisplay;
        try {
            ITelephony iTelephony = getITelephony();
            line1AlphaTagForDisplay = iTelephony != null ? iTelephony.getLine1AlphaTagForDisplay(i2, getOpPackageName()) : null;
        } catch (RemoteException | NullPointerException unused) {
        }
        if (line1AlphaTagForDisplay != null) {
            return line1AlphaTagForDisplay;
        }
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getLine1AlphaTagForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused2) {
            return null;
        }
    }

    public String getLine1Number(int i2) {
        String line1NumberForDisplay;
        try {
            ITelephony iTelephony = getITelephony();
            line1NumberForDisplay = iTelephony != null ? iTelephony.getLine1NumberForDisplay(i2, this.mContext.getOpPackageName()) : null;
        } catch (RemoteException | NullPointerException unused) {
        }
        if (line1NumberForDisplay != null) {
            return line1NumberForDisplay;
        }
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getLine1NumberForSubscriber(i2, this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused2) {
            return null;
        }
    }

    public int getLteOnCdmaMode(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return -1;
            }
            return iTelephony.getLteOnCdmaModeForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public String getMeid(int i2) {
        ITelephony iTelephony = getITelephony();
        if (iTelephony == null) {
            return null;
        }
        try {
            return iTelephony.getMeidForSlot(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getMsisdn(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getMsisdnForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getNai(int i2) {
        int[] subId = SubscriptionManager.getSubId(i2);
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            String naiForSubscriber = subscriberInfo.getNaiForSubscriber(subId[0], this.mContext.getOpPackageName());
            if (Log.isLoggable(TAG, 2)) {
                Rlog.v(TAG, "Nai = " + naiForSubscriber);
            }
            return naiForSubscriber;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getNetworkCountryIso(int i2) {
        return getNetworkCountryIsoForPhone(getPhoneId(i2));
    }

    public String getNetworkOperator(int i2) {
        return getNetworkOperatorForPhone(SubscriptionManager.getPhoneId(i2));
    }

    public String getNetworkOperatorName(int i2) {
        return getTelephonyProperty(SubscriptionManager.getPhoneId(i2), TelephonyProperties.PROPERTY_OPERATOR_ALPHA, "");
    }

    public String getNetworkTypeName() {
        return getNetworkTypeName(getNetworkType());
    }

    public String getSimCountryIso(int i2) {
        return getSimCountryIsoForPhone(SubscriptionManager.getPhoneId(i2));
    }

    public String getSimOperator(int i2) {
        return getSimOperatorNumeric(i2);
    }

    public String getSimOperatorName(int i2) {
        return getSimOperatorNameForPhone(SubscriptionManager.getPhoneId(i2));
    }

    public String getSimSerialNumber(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getIccSerialNumberForSubscriber(i2, this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getSubscriberId(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getSubscriberIdForSubscriber(i2, this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getVoiceMailAlphaTag(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getVoiceMailAlphaTagForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getVoiceMailNumber(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getVoiceMailNumberForSubscriber(i2, getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getVoiceMessageCount(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return 0;
            }
            return iTelephony.getVoiceMessageCountForSubscriber(i2);
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public int getVoiceNetworkType(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getVoiceNetworkTypeForSubscriber(i2, getOpPackageName());
            }
        } catch (RemoteException | NullPointerException unused) {
        }
        return 0;
    }

    public boolean hasCarrierPrivileges(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony != null && iTelephony.getCarrierPrivilegeStatus(this.mSubId) == 1;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "hasCarrierPrivileges RemoteException", e2);
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "hasCarrierPrivileges NPE", e3);
        }
        return false;
    }

    public boolean hasIccCard(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony == null) {
                return false;
            }
            return iTelephony.hasIccCardUsingSlotIndex(i2);
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public boolean iccCloseLogicalChannel(int i2, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.iccCloseLogicalChannel(i2, i3);
            }
            return false;
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public byte[] iccExchangeSimIO(int i2, int i3, int i4, int i5, int i6, int i7, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.iccExchangeSimIO(i2, i3, i4, i5, i6, i7, str);
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public IccOpenLogicalChannelResponse iccOpenLogicalChannel(String str, int i2) {
        return iccOpenLogicalChannel(getSubId(), str, i2);
    }

    public String iccTransmitApduBasicChannel(int i2, int i3, int i4, int i5, int i6, int i7, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony != null ? iTelephony.iccTransmitApduBasicChannel(i2, i3, i4, i5, i6, i7, str) : "";
        } catch (RemoteException | NullPointerException unused) {
            return "";
        }
    }

    public String iccTransmitApduLogicalChannel(int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony != null ? iTelephony.iccTransmitApduLogicalChannel(i2, i3, i4, i5, i6, i7, i8, str) : "";
        } catch (RemoteException | NullPointerException unused) {
            return "";
        }
    }

    public boolean isNetworkRoaming(int i2) {
        return Boolean.parseBoolean(getTelephonyProperty(SubscriptionManager.getPhoneId(i2), TelephonyProperties.PROPERTY_OPERATOR_ISROAMING, null));
    }

    public String sendEnvelopeWithStatus(int i2, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            return iTelephony != null ? iTelephony.sendEnvelopeWithStatus(i2, str) : "";
        } catch (RemoteException | NullPointerException unused) {
            return "";
        }
    }

    public void setDataEnabled(int i2, boolean z2) {
        try {
            Log.d(TAG, "setDataEnabled: enabled=" + z2);
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                iTelephony.setDataEnabled(i2, z2);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setDataEnabled", e2);
        }
    }

    public boolean setLine1NumberForDisplay(int i2, String str, String str2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setLine1NumberForDisplayForSubscriber(i2, str, str2);
            }
            return false;
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public boolean setOperatorBrandOverride(int i2, String str) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setOperatorBrandOverride(i2, str);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setOperatorBrandOverride RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "setOperatorBrandOverride NPE", e3);
            return false;
        }
    }

    public boolean setPreferredNetworkTypeToGlobal(int i2) {
        return setPreferredNetworkType(i2, 10);
    }

    public boolean setRoamingOverride(int i2, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setRoamingOverride(i2, list, list2, list3, list4);
            }
            return false;
        } catch (RemoteException e2) {
            Rlog.e(TAG, "setRoamingOverride RemoteException", e2);
            return false;
        } catch (NullPointerException e3) {
            Rlog.e(TAG, "setRoamingOverride NPE", e3);
            return false;
        }
    }

    public boolean setVoiceMailNumber(int i2, String str, String str2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.setVoiceMailNumber(i2, str, str2);
            }
            return false;
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public static int getPhoneType(int i2) {
        if (i2 == 11) {
            return getLteOnCdmaModeStatic() == 1 ? 2 : 1;
        }
        if (i2 != 21) {
            switch (i2) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    return 1;
            }
        }
        return 2;
    }

    @Deprecated
    public String getDeviceId(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getDeviceIdForPhone(i2, this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getGroupIdLevel1(int i2) {
        try {
            IPhoneSubInfo subscriberInfo = getSubscriberInfo();
            if (subscriberInfo == null) {
                return null;
            }
            return subscriberInfo.getGroupIdLevel1ForSubscriber(i2, this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getNetworkType(int i2) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.getNetworkTypeForSubscriber(i2, getOpPackageName());
            }
        } catch (RemoteException | NullPointerException unused) {
        }
        return 0;
    }

    public IccOpenLogicalChannelResponse iccOpenLogicalChannel(int i2, String str, int i3) {
        try {
            ITelephony iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.iccOpenLogicalChannel(i2, getOpPackageName(), str, i3);
            }
            return null;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public void setPhoneType(int i2, int i3) {
        if (SubscriptionManager.isValidPhoneId(i2)) {
            setTelephonyProperty(i2, TelephonyProperties.CURRENT_ACTIVE_PHONE, String.valueOf(i3));
        }
    }

    private int getSubId(int i2) {
        return SubscriptionManager.isUsableSubIdValue(this.mSubId) ? this.mSubId : i2;
    }

    public int getCallState(int i2) {
        return getCallStateForSlot(SubscriptionManager.getPhoneId(i2));
    }

    private TelephonyManager() {
        this.mContext = null;
        this.mSubId = -1;
    }

    public String getSimOperatorNumeric(int i2) {
        return getSimOperatorNumericForPhone(SubscriptionManager.getPhoneId(i2));
    }

    public int getSimState(int i2) {
        return SubscriptionManager.getSimStateForSlotIndex(i2);
    }
}
