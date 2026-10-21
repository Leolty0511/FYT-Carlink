package android.os;

import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes.dex */
public final class Trace {
    private static final int MAX_SECTION_NAME_LEN = 127;
    private static final String TAG = "Trace";
    public static final long TRACE_TAG_ACTIVITY_MANAGER = 64;
    public static final long TRACE_TAG_ADB = 4194304;
    public static final long TRACE_TAG_ALWAYS = 1;
    public static final long TRACE_TAG_APP = 4096;
    public static final long TRACE_TAG_AUDIO = 256;
    public static final long TRACE_TAG_BIONIC = 65536;
    public static final long TRACE_TAG_CAMERA = 1024;
    public static final long TRACE_TAG_DALVIK = 16384;
    public static final long TRACE_TAG_DATABASE = 1048576;
    public static final long TRACE_TAG_GRAPHICS = 2;
    public static final long TRACE_TAG_HAL = 2048;
    public static final long TRACE_TAG_INPUT = 4;
    public static final long TRACE_TAG_NETWORK = 2097152;
    public static final long TRACE_TAG_NEVER = 0;
    private static final long TRACE_TAG_NOT_READY = Long.MIN_VALUE;
    public static final long TRACE_TAG_PACKAGE_MANAGER = 262144;
    public static final long TRACE_TAG_POWER = 131072;
    public static final long TRACE_TAG_RESOURCES = 8192;
    public static final long TRACE_TAG_RS = 32768;
    public static final long TRACE_TAG_SYNC_MANAGER = 128;
    public static final long TRACE_TAG_SYSTEM_SERVER = 524288;
    public static final long TRACE_TAG_VIDEO = 512;
    public static final long TRACE_TAG_VIEW = 8;
    public static final long TRACE_TAG_WEBVIEW = 16;
    public static final long TRACE_TAG_WINDOW_MANAGER = 32;
    private static volatile long sEnabledTags = Long.MIN_VALUE;
    private static int sZygoteDebugFlags;

    static {
        SystemProperties.addChangeCallback(new b(1));
    }

    private Trace() {
    }

    public static void asyncTraceBegin(long j2, String str, int i2) {
        if (isTagEnabled(j2)) {
            nativeAsyncTraceBegin(j2, str, i2);
        }
    }

    public static void asyncTraceEnd(long j2, String str, int i2) {
        if (isTagEnabled(j2)) {
            nativeAsyncTraceEnd(j2, str, i2);
        }
    }

    public static void beginSection(String str) {
        if (isTagEnabled(4096L)) {
            if (str.length() > 127) {
                throw new IllegalArgumentException("sectionName is too long");
            }
            nativeTraceBegin(4096L, str);
        }
    }

    private static long cacheEnabledTags() {
        long jNativeGetEnabledTags = nativeGetEnabledTags();
        sEnabledTags = jNativeGetEnabledTags;
        return jNativeGetEnabledTags;
    }

    public static void endSection() {
        if (isTagEnabled(4096L)) {
            nativeTraceEnd(4096L);
        }
    }

    public static boolean isTagEnabled(long j2) {
        long jCacheEnabledTags = sEnabledTags;
        if (jCacheEnabledTags == Long.MIN_VALUE) {
            jCacheEnabledTags = cacheEnabledTags();
        }
        return (j2 & jCacheEnabledTags) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
        cacheEnabledTags();
        if ((sZygoteDebugFlags & 256) != 0) {
            traceCounter(1L, "java_debuggable", 1);
        }
    }

    @FastNative
    private static native void nativeAsyncTraceBegin(long j2, String str, int i2);

    @FastNative
    private static native void nativeAsyncTraceEnd(long j2, String str, int i2);

    private static native long nativeGetEnabledTags();

    private static native void nativeSetAppTracingAllowed(boolean z2);

    private static native void nativeSetTracingEnabled(boolean z2);

    @FastNative
    private static native void nativeTraceBegin(long j2, String str);

    @FastNative
    private static native void nativeTraceCounter(long j2, String str, int i2);

    @FastNative
    private static native void nativeTraceEnd(long j2);

    public static void setAppTracingAllowed(boolean z2) {
        nativeSetAppTracingAllowed(z2);
        cacheEnabledTags();
    }

    public static void setTracingEnabled(boolean z2, int i2) {
        nativeSetTracingEnabled(z2);
        sZygoteDebugFlags = i2;
        cacheEnabledTags();
    }

    public static void traceBegin(long j2, String str) {
        if (isTagEnabled(j2)) {
            nativeTraceBegin(j2, str);
        }
    }

    public static void traceCounter(long j2, String str, int i2) {
        if (isTagEnabled(j2)) {
            nativeTraceCounter(j2, str, i2);
        }
    }

    public static void traceEnd(long j2) {
        if (isTagEnabled(j2)) {
            nativeTraceEnd(j2);
        }
    }
}
