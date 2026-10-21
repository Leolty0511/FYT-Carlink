package androidx.core.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.c;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.internal.telephony.IccCardConstants;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;

    private AccessibilityServiceInfoCompat() {
    }

    @NonNull
    public static String capabilityToString(int i2) {
        if (i2 == 1) {
            return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
        }
        if (i2 == 2) {
            return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
        }
        if (i2 != 4) {
            return i2 != 8 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "CAPABILITY_CAN_FILTER_KEY_EVENTS";
        }
        return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
    }

    @NonNull
    public static String feedbackTypeToString(int i2) {
        StringBuilder sbR = c.r("[");
        while (i2 > 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (sbR.length() > 1) {
                sbR.append(", ");
            }
            if (iNumberOfTrailingZeros == 1) {
                sbR.append("FEEDBACK_SPOKEN");
            } else if (iNumberOfTrailingZeros == 2) {
                sbR.append("FEEDBACK_HAPTIC");
            } else if (iNumberOfTrailingZeros == 4) {
                sbR.append("FEEDBACK_AUDIBLE");
            } else if (iNumberOfTrailingZeros == 8) {
                sbR.append("FEEDBACK_VISUAL");
            } else if (iNumberOfTrailingZeros == 16) {
                sbR.append("FEEDBACK_GENERIC");
            }
        }
        sbR.append("]");
        return sbR.toString();
    }

    @Nullable
    public static String flagToString(int i2) {
        if (i2 == 1) {
            return "DEFAULT";
        }
        if (i2 == 2) {
            return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
        }
        if (i2 == 4) {
            return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
        }
        if (i2 == 8) {
            return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (i2 == 16) {
            return "FLAG_REPORT_VIEW_IDS";
        }
        if (i2 != 32) {
            return null;
        }
        return "FLAG_REQUEST_FILTER_KEY_EVENTS";
    }

    public static int getCapabilities(@NonNull AccessibilityServiceInfo accessibilityServiceInfo) {
        if (Build.VERSION.SDK_INT >= 18) {
            return accessibilityServiceInfo.getCapabilities();
        }
        return accessibilityServiceInfo.getCanRetrieveWindowContent() ? 1 : 0;
    }

    @Nullable
    public static String loadDescription(@NonNull AccessibilityServiceInfo accessibilityServiceInfo, @NonNull PackageManager packageManager) {
        return Build.VERSION.SDK_INT >= 16 ? accessibilityServiceInfo.loadDescription(packageManager) : accessibilityServiceInfo.getDescription();
    }
}
