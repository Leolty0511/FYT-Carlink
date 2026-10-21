package android.net;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NetworkBadging {
    public static final int BADGING_4K = 30;
    public static final int BADGING_HD = 20;
    public static final int BADGING_NONE = 0;
    public static final int BADGING_SD = 10;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Badging {
    }

    private NetworkBadging() {
    }

    private static int getBadgedWifiSignalResource(int i2) {
        if (i2 == 0) {
            return R.drawable.ic_signal_wifi_badged_0_bars;
        }
        if (i2 == 1) {
            return R.drawable.ic_signal_wifi_badged_1_bar;
        }
        if (i2 == 2) {
            return R.drawable.ic_signal_wifi_badged_2_bars;
        }
        if (i2 == 3) {
            return R.drawable.ic_signal_wifi_badged_3_bars;
        }
        if (i2 == 4) {
            return R.drawable.ic_signal_wifi_badged_4_bars;
        }
        throw new IllegalArgumentException(c.d("Invalid signal level: ", i2));
    }

    public static Drawable getWifiIcon(int i2, int i3, Resources.Theme theme) {
        return Resources.getSystem().getDrawable(getWifiSignalResource(i2), theme);
    }

    private static int getWifiSignalResource(int i2) {
        if (i2 == 0) {
            return R.drawable.ic_wifi_signal_0;
        }
        if (i2 == 1) {
            return R.drawable.ic_wifi_signal_1;
        }
        if (i2 == 2) {
            return R.drawable.ic_wifi_signal_2;
        }
        if (i2 == 3) {
            return R.drawable.ic_wifi_signal_3;
        }
        if (i2 == 4) {
            return R.drawable.ic_wifi_signal_4;
        }
        throw new IllegalArgumentException(c.d("Invalid signal level: ", i2));
    }
}
