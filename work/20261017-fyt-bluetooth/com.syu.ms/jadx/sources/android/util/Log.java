package android.util;

import android.net.ProxyProperties;
import com.android.internal.os.RuntimeInit;
import java.io.StringWriter;
import java.io.Writer;
import java.net.UnknownHostException;
import java.util.Objects;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public final class Log {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int LOG_ID_EVENTS = 2;
    public static final int LOG_ID_MAIN = 0;
    public static final int LOG_ID_RADIO = 1;
    public static final int LOG_ID_SYSTEM = 3;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static TerribleFailureHandler sWtfHandler = new TerribleFailureHandler() { // from class: android.util.Log.1
        @Override // android.util.Log.TerribleFailureHandler
        public void onTerribleFailure(String str, TerribleFailure terribleFailure) {
            RuntimeInit.c(str, terribleFailure);
        }
    };

    public static class TerribleFailure extends Exception {
        public TerribleFailure(String str, Throwable th) {
            super(str, th);
        }
    }

    public interface TerribleFailureHandler {
        void onTerribleFailure(String str, TerribleFailure terribleFailure);
    }

    private Log() {
    }

    public static int d(String str, String str2) {
        return println_native(0, 3, str, str2);
    }

    public static int e(String str, String str2) {
        return println_native(0, 6, str, str2);
    }

    public static String getStackTraceString(Throwable th) {
        if (th == null) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
        }
        StringWriter stringWriter = new StringWriter();
        e eVar = new e((Writer) stringWriter, false, 256);
        th.printStackTrace(eVar);
        eVar.flush();
        return stringWriter.toString();
    }

    public static int i(String str, String str2) {
        return println_native(0, 4, str, str2);
    }

    public static native boolean isLoggable(String str, int i2);

    public static int println(int i2, String str, String str2) {
        return println_native(0, i2, str, str2);
    }

    public static native int println_native(int i2, int i3, String str, String str2);

    public static TerribleFailureHandler setWtfHandler(TerribleFailureHandler terribleFailureHandler) {
        Objects.requireNonNull(terribleFailureHandler, "handler == null");
        TerribleFailureHandler terribleFailureHandler2 = sWtfHandler;
        sWtfHandler = terribleFailureHandler;
        return terribleFailureHandler2;
    }

    public static int v(String str, String str2) {
        return println_native(0, 2, str, str2);
    }

    public static int w(String str, String str2) {
        return println_native(0, 5, str, str2);
    }

    public static int wtf(String str, String str2) {
        return wtf(0, str, str2, null, false);
    }

    public static int wtfStack(String str, String str2) {
        return wtf(0, str, str2, null, true);
    }

    public static int d(String str, String str2, Throwable th) {
        return println_native(0, 3, str, str2 + '\n' + getStackTraceString(th));
    }

    public static int e(String str, String str2, Throwable th) {
        return println_native(0, 6, str, str2 + '\n' + getStackTraceString(th));
    }

    public static int i(String str, String str2, Throwable th) {
        return println_native(0, 4, str, str2 + '\n' + getStackTraceString(th));
    }

    public static int v(String str, String str2, Throwable th) {
        return println_native(0, 2, str, str2 + '\n' + getStackTraceString(th));
    }

    public static int w(String str, String str2, Throwable th) {
        return println_native(0, 5, str, str2 + '\n' + getStackTraceString(th));
    }

    public static int wtf(String str, Throwable th) {
        return wtf(0, str, th.getMessage(), th, false);
    }

    public static int w(String str, Throwable th) {
        return println_native(0, 5, str, getStackTraceString(th));
    }

    public static int wtf(String str, String str2, Throwable th) {
        return wtf(0, str, str2, th, false);
    }

    public static int wtf(int i2, String str, String str2, Throwable th, boolean z2) {
        TerribleFailure terribleFailure = new TerribleFailure(str2, th);
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append('\n');
        if (z2) {
            th = terribleFailure;
        }
        sb.append(getStackTraceString(th));
        int iPrintln_native = println_native(i2, 7, str, sb.toString());
        sWtfHandler.onTerribleFailure(str, terribleFailure);
        return iPrintln_native;
    }
}
