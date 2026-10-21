package android.net.wifi;

import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.Log;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class WifiManagerEx {
    public static final String ALARM_FOR_CONNECT_WIFI_ACTION = "sprd.wifi.alarm.CONNECT_WIFI";
    public static final String ALARM_FOR_DISCONNECT_WIFI_ACTION = "sprd.wifi.alarm.DISCONNECT_WIFI";
    public static final int INTERVAL_MILLIS = 86400000;
    private static final String TAG = "WifiManagerEx";
    public static final String WIFI_AUTO_CONNECT = "wifi_auto_connect";
    public static final String WIFI_CONNECTED_AP_ABSENT_ACTION = "sprd.net.wifi.WIFI_CONNECTED_AP_ABSENT";
    public static final String WIFI_CONNECT_ALARM_FLAG = "wifi_connect_alarm_flag";
    public static final String WIFI_CONNECT_ALARM_HOUR = "wifi_connect_alarm_hour";
    public static final String WIFI_CONNECT_ALARM_MINUTE = "wifi_connect_alarm_minute";
    public static final String WIFI_DISABLED_WHEN_CONNECTED_ACTION = "sprd.net.wifi.WIFI_DISABLED_WHEN_CONNECTED";
    public static final String WIFI_DISCONNECT_ALARM_FLAG = "wifi_disconnect_alarm_flag";
    public static final String WIFI_DISCONNECT_ALARM_HOUR = "wifi_disconnect_alarm_hour";
    public static final String WIFI_DISCONNECT_ALARM_MINUTE = "wifi_disconnect_alarm_minute";
    public static final String WIFI_MOBILE_TO_WLAN_POLICY = "wifi_mobile_to_wlan_policy";
    public static final String WIFI_SCAN_RESULTS_AVAILABLE_ACTION = "sprd.net.wifi.SCAN_RESULTS_AVAILABLE";
    public static final String WIFI_SCAN_RESULT_BSS_REMOVED_ACTION = "sprd.net.wifi.BSS_REMOVED_ACTION";
    private Context mContext;
    private String mWifiOperator;

    public WifiManagerEx(Context context) {
        this.mContext = context;
        try {
            this.mWifiOperator = context.getResources().getString(R.string.config_wifi_operator);
        } catch (Resources.NotFoundException unused) {
            Log.e(TAG, "config_wifi_operator = null");
        }
    }

    public boolean isAutoConnect() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), WIFI_AUTO_CONNECT, 1) == 1;
    }

    public boolean isSupportCMCC() {
        return "cmcc".equals(this.mWifiOperator);
    }

    public boolean isSupportCUCC() {
        return "cucc".equals(this.mWifiOperator);
    }

    public void setAutoConnect(boolean z2) {
        if (isAutoConnect() != z2) {
            Settings.Global.putInt(this.mContext.getContentResolver(), WIFI_AUTO_CONNECT, z2 ? 1 : 0);
        }
    }
}
