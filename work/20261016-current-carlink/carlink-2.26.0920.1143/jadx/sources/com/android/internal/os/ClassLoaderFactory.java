package com.android.internal.os;

import android.accessibilityservice.c;
import android.app.o;
import android.os.Trace;
import android.provider.SettingsStringUtil;
import dalvik.system.DelegateLastClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.PathClassLoader;

/* JADX INFO: loaded from: classes2.dex */
public class ClassLoaderFactory {
    private static final String PATH_CLASS_LOADER_NAME = PathClassLoader.class.getName();
    private static final String DEX_CLASS_LOADER_NAME = DexClassLoader.class.getName();
    private static final String DELEGATE_LAST_CLASS_LOADER_NAME = DelegateLastClassLoader.class.getName();

    private ClassLoaderFactory() {
    }

    public static ClassLoader createClassLoader(String str, String str2, ClassLoader classLoader, String str3) {
        if (isPathClassLoaderName(str3)) {
            return new PathClassLoader(str, str2, classLoader);
        }
        if (!isDelegateLastClassLoaderName(str3)) {
            throw new AssertionError(c.j("Invalid classLoaderName: ", str3));
        }
        o.d();
        return o.c(str, str2, classLoader);
    }

    private static native String createClassloaderNamespace(ClassLoader classLoader, int i2, String str, String str2, boolean z2, boolean z3);

    public static boolean isDelegateLastClassLoaderName(String str) {
        return DELEGATE_LAST_CLASS_LOADER_NAME.equals(str);
    }

    public static boolean isPathClassLoaderName(String str) {
        return str == null || PATH_CLASS_LOADER_NAME.equals(str) || DEX_CLASS_LOADER_NAME.equals(str);
    }

    public static boolean isValidClassLoaderName(String str) {
        return str != null && (isPathClassLoaderName(str) || isDelegateLastClassLoaderName(str));
    }

    public static ClassLoader createClassLoader(String str, String str2, String str3, ClassLoader classLoader, int i2, boolean z2, String str4) {
        boolean z3;
        ClassLoader classLoaderCreateClassLoader = createClassLoader(str, str2, classLoader, str4);
        String[] strArrSplit = str.split(SettingsStringUtil.DELIMITER);
        int length = strArrSplit.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                z3 = false;
                break;
            }
            if (strArrSplit[i3].startsWith("/vendor/")) {
                z3 = true;
                break;
            }
            i3++;
        }
        Trace.traceBegin(64L, "createClassloaderNamespace");
        String strCreateClassloaderNamespace = createClassloaderNamespace(classLoaderCreateClassLoader, i2, str2, str3, z2, z3);
        Trace.traceEnd(64L);
        if (strCreateClassloaderNamespace == null) {
            return classLoaderCreateClassLoader;
        }
        throw new UnsatisfiedLinkError("Unable to create namespace for the classloader " + classLoaderCreateClassLoader + ": " + strCreateClassloaderNamespace);
    }
}
