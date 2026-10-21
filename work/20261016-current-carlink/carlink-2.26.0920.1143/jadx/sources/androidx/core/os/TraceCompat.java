package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class TraceCompat {
    private static final String TAG = "TraceCompat";
    private static Method sAsyncTraceBeginMethod;
    private static Method sAsyncTraceEndMethod;
    private static Method sIsTagEnabledMethod;
    private static Method sTraceCounterMethod;
    private static long sTraceTagApp;

    @RequiresApi(18)
    public static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        public static void beginSection(String str) {
            Trace.beginSection(str);
        }

        @DoNotInline
        public static void endSection() {
            Trace.endSection();
        }
    }

    @RequiresApi(29)
    public static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        public static void beginAsyncSection(String str, int i2) {
            Trace.beginAsyncSection(str, i2);
        }

        @DoNotInline
        public static void endAsyncSection(String str, int i2) {
            Trace.endAsyncSection(str, i2);
        }

        @DoNotInline
        public static boolean isEnabled() {
            return Trace.isEnabled();
        }

        @DoNotInline
        public static void setCounter(String str, long j2) {
            Trace.setCounter(str, j2);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 18 || i2 >= 29) {
            return;
        }
        try {
            sTraceTagApp = Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Class cls = Long.TYPE;
            sIsTagEnabledMethod = Trace.class.getMethod("isTagEnabled", cls);
            Class cls2 = Integer.TYPE;
            sAsyncTraceBeginMethod = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
            sAsyncTraceEndMethod = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
            sTraceCounterMethod = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception e2) {
            Log.i(TAG, "Unable to initialize via reflection.", e2);
        }
    }

    private TraceCompat() {
    }

    public static void beginAsyncSection(@NonNull String str, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29) {
            Api29Impl.beginAsyncSection(str, i2);
        } else if (i3 >= 18) {
            try {
                sAsyncTraceBeginMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i2));
            } catch (Exception unused) {
                Log.v(TAG, "Unable to invoke asyncTraceBegin() via reflection.");
            }
        }
    }

    public static void beginSection(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Api18Impl.beginSection(str);
        }
    }

    public static void endAsyncSection(@NonNull String str, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29) {
            Api29Impl.endAsyncSection(str, i2);
        } else if (i3 >= 18) {
            try {
                sAsyncTraceEndMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i2));
            } catch (Exception unused) {
                Log.v(TAG, "Unable to invoke endAsyncSection() via reflection.");
            }
        }
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            Api18Impl.endSection();
        }
    }

    public static boolean isEnabled() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return Api29Impl.isEnabled();
        }
        if (i2 >= 18) {
            try {
                return ((Boolean) sIsTagEnabledMethod.invoke(null, Long.valueOf(sTraceTagApp))).booleanValue();
            } catch (Exception unused) {
                Log.v(TAG, "Unable to invoke isTagEnabled() via reflection.");
            }
        }
        return false;
    }

    public static void setCounter(@NonNull String str, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29) {
            Api29Impl.setCounter(str, i2);
        } else if (i3 >= 18) {
            try {
                sTraceCounterMethod.invoke(null, Long.valueOf(sTraceTagApp), str, Integer.valueOf(i2));
            } catch (Exception unused) {
                Log.v(TAG, "Unable to invoke traceCounter() via reflection.");
            }
        }
    }
}
