package android.webkit;

import android.app.m;
import android.content.Context;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
class LegacyErrorStrings {
    private static final String LOGTAG = "Http";

    private LegacyErrorStrings() {
    }

    private static int getResource(int i2) {
        switch (i2) {
            case -15:
                return R.string.httpErrorTooManyRequests;
            case -14:
                return R.string.httpErrorFileNotFound;
            case -13:
                return R.string.httpErrorFile;
            case -12:
                return 17039367;
            case -11:
                return R.string.httpErrorFailedSslHandshake;
            case -10:
                return 17039368;
            case -9:
                return R.string.httpErrorRedirectLoop;
            case -8:
                return R.string.httpErrorTimeout;
            case -7:
                return R.string.httpErrorIO;
            case -6:
                return R.string.httpErrorConnect;
            case -5:
                return R.string.httpErrorProxyAuth;
            case -4:
                return R.string.httpErrorAuth;
            case -3:
                return R.string.httpErrorUnsupportedAuthScheme;
            case -2:
                return R.string.httpErrorLookup;
            case -1:
                return R.string.httpError;
            case 0:
                return R.string.httpErrorOk;
            default:
                m.A("Using generic message for unknown error code: ", i2, LOGTAG);
                return R.string.httpError;
        }
    }

    public static String getString(int i2, Context context) {
        return context.getText(getResource(i2)).toString();
    }
}
