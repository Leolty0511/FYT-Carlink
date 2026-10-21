package android.app;

import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import com.android.internal.os.ClassLoaderFactory;
import dalvik.system.PathClassLoader;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationLoaders {
    private static final ApplicationLoaders gApplicationLoaders = new ApplicationLoaders();
    private final ArrayMap<String, ClassLoader> mLoaders = new ArrayMap<>();

    public static ApplicationLoaders getDefault() {
        return gApplicationLoaders;
    }

    private static native void setupVulkanLayerPath(ClassLoader classLoader, String str);

    public void addPath(ClassLoader classLoader, String str) {
        if (!(classLoader instanceof PathClassLoader)) {
            throw new IllegalStateException("class loader is not a PathClassLoader");
        }
        ((PathClassLoader) classLoader).addDexPath(str);
    }

    public ClassLoader createAndCacheWebViewClassLoader(String str, String str2, String str3) {
        return getClassLoader(str, Build.VERSION.SDK_INT, false, str2, null, null, str3, null);
    }

    public ClassLoader getClassLoader(String str, int i2, boolean z2, String str2, String str3, ClassLoader classLoader, String str4) {
        return getClassLoader(str, i2, z2, str2, str3, classLoader, str, str4);
    }

    private ClassLoader getClassLoader(String str, int i2, boolean z2, String str2, String str3, ClassLoader classLoader, String str4, String str5) {
        ClassLoader parent = ClassLoader.getSystemClassLoader().getParent();
        synchronized (this.mLoaders) {
            ClassLoader classLoader2 = classLoader == null ? parent : classLoader;
            try {
                if (classLoader2 != parent) {
                    Trace.traceBegin(64L, str);
                    ClassLoader classLoaderCreateClassLoader = ClassLoaderFactory.createClassLoader(str, null, classLoader2, str5);
                    Trace.traceEnd(64L);
                    return classLoaderCreateClassLoader;
                }
                ClassLoader classLoader3 = this.mLoaders.get(str4);
                if (classLoader3 != null) {
                    return classLoader3;
                }
                Trace.traceBegin(64L, str);
                ClassLoader classLoaderCreateClassLoader2 = ClassLoaderFactory.createClassLoader(str, str2, str3, classLoader2, i2, z2, str5);
                Trace.traceEnd(64L);
                Trace.traceBegin(64L, "setupVulkanLayerPath");
                setupVulkanLayerPath(classLoaderCreateClassLoader2, str2);
                Trace.traceEnd(64L);
                this.mLoaders.put(str4, classLoaderCreateClassLoader2);
                return classLoaderCreateClassLoader2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
