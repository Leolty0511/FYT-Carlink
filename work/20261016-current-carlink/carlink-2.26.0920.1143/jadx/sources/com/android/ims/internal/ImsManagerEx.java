package com.android.ims.internal;

import android.hardware.Camera;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.telephony.SubscriptionManager;

/* JADX INFO: loaded from: classes2.dex */
public class ImsManagerEx {
    public static final String EXTRA_IMS_CONFERENCE_PARTICIPANTS = "android.intent.extra.IMS_CONFERENCE_PARTICIPANTS";
    public static final String EXTRA_IMS_CONFERENCE_REQUEST = "android.intent.extra.IMS_CONFERENCE_REQUEST";
    public static final int HANDOVER_CANCELED = 3;
    public static final int HANDOVER_COMPLETED = 1;
    public static final int HANDOVER_FAILED = 2;
    public static final int HANDOVER_STARTED = 0;
    public static final int IMS_PDN_ACTIVE_FAILED = 0;
    public static final int IMS_PDN_READY = 1;
    public static final int IMS_PDN_START = 2;
    public static final int IMS_REGISTERED = 1;
    public static final String IMS_SERVICE_EX = "ims_ex";
    public static final int IMS_UNREGISTERED = 0;
    public static final String IMS_UT_EX = "ims_ut_ex";
    private static final String LTE_LTE_4M = "TL_LF_W_G,TL_LF_W_G";
    private static final String LTE_LTE_5M = "TL_LF_TD_W_G,TL_LF_TD_W_G";
    private static final String MODEM_CONFIG_PROP = "persist.radio.modem.config";

    public static IImsServiceEx getIImsServiceEx() {
        IBinder service = ServiceManager.getService(IMS_SERVICE_EX);
        if (service != null) {
            return IImsServiceEx.Stub.asInterface(service);
        }
        return null;
    }

    public static IImsUtEx getIImsUtEx() {
        IBinder service = ServiceManager.getService(IMS_UT_EX);
        if (service != null) {
            return IImsUtEx.Stub.asInterface(service);
        }
        return null;
    }

    public static boolean isDualLteModem() {
        return SystemProperties.get(MODEM_CONFIG_PROP).equals(LTE_LTE_5M) || SystemProperties.get(MODEM_CONFIG_PROP).equals(LTE_LTE_4M);
    }

    public static boolean isDualVoLTEActive() {
        String str = SystemProperties.get("persist.radio.volte.mode");
        return str != null && str.equalsIgnoreCase("DualVoLTEActive");
    }

    public static boolean isDualVoLTERegistered() {
        String str = SystemProperties.get("gsm.sys.volte.state");
        if (str != null) {
            int i2 = 0;
            for (String str2 : str.split(",")) {
                if (str2.equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                    i2++;
                }
            }
            if (i2 >= 2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEnhancedDualVolteOn() {
        String str = SystemProperties.get("persist.sys.volte.dsda.enhanced");
        return str != null && str.equalsIgnoreCase(Camera.Parameters.FLASH_MODE_ON);
    }

    public static boolean isImsRegisteredForPhone(int i2) {
        String str;
        if (!SubscriptionManager.isValidPhoneId(i2) || (str = SystemProperties.get("gsm.sys.volte.state")) == null) {
            return false;
        }
        if (i2 == 0) {
            return str.startsWith(WifiEnterpriseConfig.ENGINE_ENABLE);
        }
        if (i2 == 1) {
            return str.endsWith(",1");
        }
        return false;
    }

    public static boolean isReadyForDualActiveCall() {
        boolean z2 = isDualVoLTEActive() && isDualVoLTERegistered();
        if (isDualLteModem()) {
            return z2 && SystemProperties.get("ril.dsda.status", WifiEnterpriseConfig.ENGINE_DISABLE).contains(WifiEnterpriseConfig.ENGINE_ENABLE);
        }
        return z2;
    }

    public static void notifyVideoCapabilityChange() {
        try {
            if (getIImsServiceEx() != null) {
                getIImsServiceEx().notifyVideoCapabilityChange();
            }
        } catch (RemoteException unused) {
        }
    }
}
