package android.net.http;

import android.R;
import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class ErrorStrings {
    private static final String LOGTAG = "Http";

    private ErrorStrings() {
    }

    public static int getResource(int i2) {
        switch (i2) {
            case -15:
                return 17039533;
            case -14:
                return 17039532;
            case -13:
                return 17039531;
            case -12:
                return R.string.httpErrorBadUrl;
            case -11:
                return 17039530;
            case -10:
                return R.string.httpErrorUnsupportedScheme;
            case -9:
                return 17039529;
            case -8:
                return 17039528;
            case -7:
                return 17039527;
            case -6:
                return 17039526;
            case -5:
                return 17039525;
            case -4:
                return 17039524;
            case -3:
                return 17039523;
            case -2:
                return 17039522;
            case -1:
                return 17039521;
            case 0:
                return 17039520;
            default:
                Log.w(LOGTAG, "Using generic message for unknown error code: " + i2);
                return 17039521;
        }
    }

    public static String getString(int i2, Context context) {
        return context.getText(getResource(i2)).toString();
    }
}
