package android.plugin;

import android.app.AddonManager;
import android.telephony.TelephonyManager;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class ClaroTelephonyHelper {
    static ClaroTelephonyHelper sInstance;

    public static ClaroTelephonyHelper getInstance() {
        ClaroTelephonyHelper claroTelephonyHelper = sInstance;
        if (claroTelephonyHelper != null) {
            return claroTelephonyHelper;
        }
        ClaroTelephonyHelper claroTelephonyHelper2 = (ClaroTelephonyHelper) AddonManager.getDefault().getAddon(R.string.claro_telephony_plugin_name, ClaroTelephonyHelper.class);
        sInstance = claroTelephonyHelper2;
        return claroTelephonyHelper2;
    }

    public String getEmergencyNumbersForCard(int i2) {
        return TelephonyManager.getDefault().hasIccCard(i2) ? "112,911" : "112,911,000,08,110,118,119,999";
    }

    public String getVoiceMailAlphaTag(String str) {
        return str;
    }
}
