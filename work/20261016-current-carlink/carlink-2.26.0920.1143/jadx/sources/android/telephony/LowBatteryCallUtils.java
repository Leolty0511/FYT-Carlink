package android.telephony;

import android.app.AddonManager;
import android.content.Context;
import android.content.Intent;
import android.telecom.Call;
import android.util.Log;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class LowBatteryCallUtils {
    private static final String TAG = "LowBatteryCallUtils";
    static LowBatteryCallUtils sInstance;

    public static LowBatteryCallUtils getInstance() {
        Log.d(TAG, "enter LowBatteryCallUtils");
        LowBatteryCallUtils lowBatteryCallUtils = sInstance;
        if (lowBatteryCallUtils != null) {
            return lowBatteryCallUtils;
        }
        LowBatteryCallUtils lowBatteryCallUtils2 = (LowBatteryCallUtils) AddonManager.getDefault().getAddon(R.string.feature_AddonLowBatteryCallUtils, LowBatteryCallUtils.class);
        sInstance = lowBatteryCallUtils2;
        return lowBatteryCallUtils2;
    }

    public boolean isBatteryLow() {
        Log.d(TAG, "not reliance project, isBatteryLow = false");
        return false;
    }

    public void showLowBatteryChangeToVideoDialog(Call call) {
        Log.d(TAG, "showLowBatteryChangeToVideoDialog");
    }

    public void showLowBatteryDialDialog(Context context, Intent intent, boolean z2) {
        Log.d(TAG, "showLowBatteryDialDialog");
    }

    public void showLowBatteryInCallDialog(Context context, Call call) {
        Log.d(TAG, "showLowBatteryInCallDialog");
    }
}
