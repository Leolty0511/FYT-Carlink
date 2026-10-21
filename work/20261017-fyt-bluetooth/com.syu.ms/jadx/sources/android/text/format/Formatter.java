package android.text.format;

import android.content.Context;
import android.net.NetworkUtils;
import android.net.ProxyProperties;

/* JADX INFO: loaded from: classes.dex */
public final class Formatter {
    public static String formatFileSize(Context context, long j2) {
        return formatFileSize(context, j2, false);
    }

    @Deprecated
    public static String formatIpAddress(int i2) {
        return NetworkUtils.intToInetAddress(i2).getHostAddress();
    }

    public static String formatShortFileSize(Context context, long j2) {
        return formatFileSize(context, j2, true);
    }

    private static String formatFileSize(Context context, long j2, boolean z2) {
        String str;
        if (context == null) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        float f2 = j2;
        int i2 = 17039435;
        if (f2 > 900.0f) {
            i2 = 17039436;
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            i2 = 17039437;
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            i2 = 17039438;
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            i2 = 17039439;
            f2 /= 1024.0f;
        }
        if (f2 > 900.0f) {
            i2 = 17039440;
            f2 /= 1024.0f;
        }
        if (f2 < 1.0f) {
            str = String.format("%.2f", Float.valueOf(f2));
        } else if (f2 < 10.0f) {
            str = z2 ? String.format("%.1f", Float.valueOf(f2)) : String.format("%.2f", Float.valueOf(f2));
        } else {
            str = (f2 >= 100.0f || z2) ? String.format("%.0f", Float.valueOf(f2)) : String.format("%.2f", Float.valueOf(f2));
        }
        return context.getResources().getString(17039441, str, context.getString(i2));
    }
}
