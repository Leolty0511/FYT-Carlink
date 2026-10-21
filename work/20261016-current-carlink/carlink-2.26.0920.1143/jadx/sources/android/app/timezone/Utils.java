package android.app.timezone;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
final class Utils {
    private Utils() {
    }

    public static <T> T validateConditionalNull(boolean z2, String str, T t2) {
        return z2 ? (T) validateNotNull(str, t2) : (T) validateNull(str, t2);
    }

    public static <T> T validateNotNull(String str, T t2) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(c.D(str, " == null"));
    }

    public static <T> T validateNull(String str, T t2) {
        if (t2 == null) {
            return null;
        }
        throw new IllegalArgumentException(c.D(str, " != null"));
    }

    public static String validateRulesVersion(String str, String str2) {
        validateNotNull(str, str2);
        if (str2.isEmpty()) {
            throw new IllegalArgumentException(c.D(str, " must not be empty"));
        }
        return str2;
    }

    public static int validateVersion(String str, int i2) {
        if (i2 >= 0 && i2 <= 999) {
            return i2;
        }
        throw new IllegalArgumentException("Invalid " + str + " version=" + i2);
    }
}
