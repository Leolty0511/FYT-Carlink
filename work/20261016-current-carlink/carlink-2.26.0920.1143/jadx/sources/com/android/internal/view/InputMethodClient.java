package com.android.internal.view;

import android.accessibilityservice.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public final class InputMethodClient {
    public static final int START_INPUT_REASON_ACTIVATED_BY_IMMS = 7;
    public static final int START_INPUT_REASON_APP_CALLED_RESTART_INPUT_API = 3;
    public static final int START_INPUT_REASON_BOUND_TO_IMMS = 5;
    public static final int START_INPUT_REASON_CHECK_FOCUS = 4;
    public static final int START_INPUT_REASON_DEACTIVATED_BY_IMMS = 8;
    public static final int START_INPUT_REASON_SESSION_CREATED_BY_IME = 9;
    public static final int START_INPUT_REASON_UNBOUND_FROM_IMMS = 6;
    public static final int START_INPUT_REASON_UNSPECIFIED = 0;
    public static final int START_INPUT_REASON_WINDOW_FOCUS_GAIN = 1;
    public static final int START_INPUT_REASON_WINDOW_FOCUS_GAIN_REPORT_ONLY = 2;
    public static final int UNBIND_REASON_DISCONNECT_IME = 3;
    public static final int UNBIND_REASON_NO_IME = 4;
    public static final int UNBIND_REASON_SWITCH_CLIENT = 1;
    public static final int UNBIND_REASON_SWITCH_IME = 2;
    public static final int UNBIND_REASON_SWITCH_IME_FAILED = 5;
    public static final int UNBIND_REASON_SWITCH_USER = 6;
    public static final int UNBIND_REASON_UNSPECIFIED = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StartInputReason {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UnbindReason {
    }

    public static String getStartInputReason(int i2) {
        switch (i2) {
            case 0:
                return "UNSPECIFIED";
            case 1:
                return "WINDOW_FOCUS_GAIN";
            case 2:
                return "WINDOW_FOCUS_GAIN_REPORT_ONLY";
            case 3:
                return "APP_CALLED_RESTART_INPUT_API";
            case 4:
                return "CHECK_FOCUS";
            case 5:
                return "BOUND_TO_IMMS";
            case 6:
                return "UNBOUND_FROM_IMMS";
            case 7:
                return "ACTIVATED_BY_IMMS";
            case 8:
                return "DEACTIVATED_BY_IMMS";
            case 9:
                return "SESSION_CREATED_BY_IME";
            default:
                return c.d("Unknown=", i2);
        }
    }

    public static String getUnbindReason(int i2) {
        switch (i2) {
            case 0:
                return "UNSPECIFIED";
            case 1:
                return "SWITCH_CLIENT";
            case 2:
                return "SWITCH_IME";
            case 3:
                return "DISCONNECT_IME";
            case 4:
                return "NO_IME";
            case 5:
                return "SWITCH_IME_FAILED";
            case 6:
                return "SWITCH_USER";
            default:
                return c.d("Unknown=", i2);
        }
    }

    public static String softInputModeToString(int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = i2 & 15;
        int i4 = i2 & 240;
        boolean z2 = (i2 & 256) != 0;
        if (i3 == 0) {
            sb.append("STATE_UNSPECIFIED");
        } else if (i3 == 1) {
            sb.append("STATE_UNCHANGED");
        } else if (i3 == 2) {
            sb.append("STATE_HIDDEN");
        } else if (i3 == 3) {
            sb.append("STATE_ALWAYS_HIDDEN");
        } else if (i3 == 4) {
            sb.append("STATE_VISIBLE");
        } else if (i3 != 5) {
            sb.append("STATE_UNKNOWN(");
            sb.append(i3);
            sb.append(")");
        } else {
            sb.append("STATE_ALWAYS_VISIBLE");
        }
        if (i4 == 0) {
            sb.append("|ADJUST_UNSPECIFIED");
        } else if (i4 == 16) {
            sb.append("|ADJUST_RESIZE");
        } else if (i4 == 32) {
            sb.append("|ADJUST_PAN");
        } else if (i4 != 48) {
            sb.append("|ADJUST_UNKNOWN(");
            sb.append(i4);
            sb.append(")");
        } else {
            sb.append("|ADJUST_NOTHING");
        }
        if (z2) {
            sb.append("|IS_FORWARD_NAVIGATION");
        }
        return sb.toString();
    }
}
