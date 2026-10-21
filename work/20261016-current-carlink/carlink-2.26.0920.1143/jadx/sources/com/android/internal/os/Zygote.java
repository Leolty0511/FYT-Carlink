package com.android.internal.os;

import android.os.Trace;
import android.system.ErrnoException;
import android.system.Os;
import dalvik.system.ZygoteHooks;

/* JADX INFO: loaded from: classes2.dex */
public final class Zygote {
    public static final int DEBUG_ALWAYS_JIT = 64;
    public static final int DEBUG_ENABLE_ASSERT = 4;
    public static final int DEBUG_ENABLE_CHECKJNI = 2;
    public static final int DEBUG_ENABLE_JDWP = 1;
    public static final int DEBUG_ENABLE_JNI_LOGGING = 16;
    public static final int DEBUG_ENABLE_SAFEMODE = 8;
    public static final int DEBUG_GENERATE_DEBUG_INFO = 32;
    public static final int DEBUG_JAVA_DEBUGGABLE = 256;
    public static final int DEBUG_NATIVE_DEBUGGABLE = 128;
    public static final int MOUNT_EXTERNAL_DEFAULT = 1;
    public static final int MOUNT_EXTERNAL_NONE = 0;
    public static final int MOUNT_EXTERNAL_READ = 2;
    public static final int MOUNT_EXTERNAL_WRITE = 3;
    private static final ZygoteHooks VM_HOOKS = new ZygoteHooks();

    private Zygote() {
    }

    public static void appendQuotedShellArgs(StringBuilder sb, String[] strArr) {
        for (String str : strArr) {
            sb.append(" '");
            sb.append(str.replace("'", "'\\''"));
            sb.append("'");
        }
    }

    private static void callPostForkChildHooks(int i2, boolean z2, String str) {
        VM_HOOKS.postForkChild(i2, z2, str);
    }

    public static void execShell(String str) {
        try {
            Os.execv("/system/bin/sh", new String[]{"/system/bin/sh", "-c", str});
        } catch (ErrnoException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static int forkAndSpecialize(int i2, int i3, int[] iArr, int i4, int[][] iArr2, int i5, String str, String str2, int[] iArr3, int[] iArr4, String str3, String str4) {
        ZygoteHooks zygoteHooks = VM_HOOKS;
        zygoteHooks.preFork();
        resetNicePriority();
        int iNativeForkAndSpecialize = nativeForkAndSpecialize(i2, i3, iArr, i4, iArr2, i5, str, str2, iArr3, iArr4, str3, str4);
        if (iNativeForkAndSpecialize == 0) {
            Trace.setTracingEnabled(true, i4);
            Trace.traceBegin(64L, "PostFork");
        }
        zygoteHooks.postForkCommon();
        return iNativeForkAndSpecialize;
    }

    public static int forkSystemServer(int i2, int i3, int[] iArr, int i4, int[][] iArr2, long j2, long j3) {
        ZygoteHooks zygoteHooks = VM_HOOKS;
        zygoteHooks.preFork();
        resetNicePriority();
        int iNativeForkSystemServer = nativeForkSystemServer(i2, i3, iArr, i4, iArr2, j2, j3);
        if (iNativeForkSystemServer == 0) {
            Trace.setTracingEnabled(true, i4);
        }
        zygoteHooks.postForkCommon();
        return iNativeForkSystemServer;
    }

    public static native void nativeAllowFileAcrossFork(String str);

    private static native int nativeForkAndSpecialize(int i2, int i3, int[] iArr, int i4, int[][] iArr2, int i5, String str, String str2, int[] iArr3, int[] iArr4, String str3, String str4);

    private static native int nativeForkSystemServer(int i2, int i3, int[] iArr, int i4, int[][] iArr2, long j2, long j3);

    public static native void nativePreApplicationInit();

    public static native void nativeUnmountStorageOnInit();

    public static void resetNicePriority() {
        Thread.currentThread().setPriority(5);
    }
}
