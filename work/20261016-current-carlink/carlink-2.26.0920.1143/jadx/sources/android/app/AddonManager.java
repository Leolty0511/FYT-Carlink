package android.app;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ServiceManager;
import android.util.ArrayMap;
import android.util.CheckTime;
import android.util.Log;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AddonManager {
    private static final boolean DEBUG = true;
    private static final String LOGTAG = "AddonManager";
    private static final String NO_PLUGIN = "";
    private static IAddonManager sAddonManagerService;
    private static AddonManager sInstance;
    private Context mContext;
    private List<PackageInfo> mManagedList;
    private IBinder mService;
    private static ArrayMap<String, WeakReference<Object>> sFeatureCache = new ArrayMap<>();
    private static ArrayMap<String, WeakReference<Class>> sClassCache = new ArrayMap<>();
    private static SparseArray<String> sIdMap = new SparseArray<>();

    public interface InitialCallback {
        Class onCreateAddon(Context context, Class cls);
    }

    public AddonManager(ContextImpl contextImpl, IBinder iBinder) {
        this(contextImpl);
        this.mContext = contextImpl;
        this.mService = iBinder;
    }

    public static void attachApplication(Context context) {
    }

    private Object createAddon(ApplicationInfo applicationInfo, Class cls) {
        Object obj = null;
        Context contextCreatePackageContext = null;
        if (cls == null) {
            return null;
        }
        try {
            Object objNewInstance = cls.newInstance();
            try {
                if (objNewInstance instanceof InitialCallback) {
                    InitialCallback initialCallback = (InitialCallback) objNewInstance;
                    try {
                        contextCreatePackageContext = this.mContext.getApplicationContext().createPackageContext(applicationInfo.packageName, 3);
                    } catch (Exception unused) {
                        Log.e(LOGTAG, "Create addon context failed");
                    }
                    Class clsOnCreateAddon = initialCallback.onCreateAddon(contextCreatePackageContext, cls);
                    Log.d(LOGTAG, "->createAddon, wantedClass <" + clsOnCreateAddon + ">, pluginContext: " + contextCreatePackageContext);
                    if (clsOnCreateAddon != null && !clsOnCreateAddon.equals(cls)) {
                        return createAddon(applicationInfo, clsOnCreateAddon);
                    }
                }
                return objNewInstance;
            } catch (Exception e2) {
                e = e2;
                obj = objNewInstance;
                Log.e(LOGTAG, "Createing addon failed", e);
                return obj;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    private Object createDefaultObject(Class cls) {
        try {
            return cls.newInstance();
        } catch (Exception e2) {
            Log.e(LOGTAG, "Terrible, create default instance of class failed!", e2);
            return null;
        }
    }

    private static final Object getCachedFeature(String str) {
        if (str != null && !"".equals(str)) {
            WeakReference<Object> weakReference = sFeatureCache.get(str);
            if (weakReference != null && weakReference.get() != null) {
                return weakReference.get();
            }
            sFeatureCache.remove(str);
        }
        return null;
    }

    private static final String getCachedId(int i2, Context context) {
        String str = sIdMap.get(i2);
        if (str != null) {
            return str;
        }
        String string = context.getString(i2, "");
        sIdMap.put(i2, string);
        return string;
    }

    public static AddonManager getDefault() {
        AddonManager addonManager = sInstance;
        if (addonManager != null) {
            return addonManager;
        }
        AddonManager addonManager2 = new AddonManager(ActivityThread.currentApplication());
        sInstance = addonManager2;
        return addonManager2;
    }

    private static List<PackageInfo> manageFeatureList(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(128);
        if (installedPackages != null && !installedPackages.isEmpty()) {
            String packageName = context.getPackageName();
            for (PackageInfo packageInfo : installedPackages) {
                if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null && applicationInfo.enabled && (bundle = applicationInfo.metaData) != null && bundle.containsKey("isFeatureAddon")) {
                    boolean z2 = false;
                    for (String str : bundle.keySet()) {
                        if (str.startsWith("targetPackages") && bundle.getString(str, "").contains(packageName)) {
                            Log.d(LOGTAG, "-> manageFeatureList: The Plugin of <" + packageName + "> is <" + packageInfo + "> .");
                            arrayList.add(packageInfo);
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        if (packageInfo.installLocation == 1) {
                            Log.d(LOGTAG, "-> manageFeatureList: The Plugin of <" + packageName + "> is <" + packageInfo + "> .");
                            arrayList.add(packageInfo);
                        } else {
                            Log.w(LOGTAG, "-> manageFeatureList: no target package and not install internal only, drop " + packageInfo);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private static List<PackageInfo> manageFeatureListS(Context context) {
        List<PackageInfo> appAddonFeatureList;
        long time = CheckTime.getTime();
        String packageName = context.getPackageName();
        IAddonManager iAddonManager = sAddonManagerService;
        if (iAddonManager == null) {
            List<PackageInfo> listManageFeatureList = manageFeatureList(context);
            printCostTime(false, time, listManageFeatureList, packageName);
            return listManageFeatureList;
        }
        try {
            appAddonFeatureList = iAddonManager.getAppAddonFeatureList(packageName);
            try {
                printCostTime(true, time, appAddonFeatureList, packageName);
                return appAddonFeatureList;
            } catch (Exception e2) {
                e = e2;
                Log.d(LOGTAG, "manageFeatureListS occur error:" + e);
                return appAddonFeatureList;
            }
        } catch (Exception e3) {
            e = e3;
            appAddonFeatureList = null;
        }
    }

    private static void printCostTime(boolean z2, long j2, List list, String str) {
        StringBuilder sb = new StringBuilder("get addon packages");
        sb.append(z2 ? " from AddonManagerService" : " by scan all installed packages");
        sb.append(" for app:");
        sb.append(str);
        sb.append("-->");
        sb.append(list);
        sb.append(" cost ");
        sb.append(CheckTime.getTime() - j2);
        sb.append("ms");
        Log.i(LOGTAG, sb.toString());
    }

    public Object getAddon(Class cls) {
        return getAddon(0, cls);
    }

    public String[] getClassNameSuffix() {
        return new String[]{"Impl"};
    }

    public boolean isFeatureEnabled(int i2) {
        return true;
    }

    public boolean setFeatureEnabled(boolean z2, int i2) {
        return true;
    }

    public Object getAddon(int i2, Class cls) {
        if (i2 > 0) {
            return getAddon(this.mContext.getString(i2, ""), cls);
        }
        String[] classNameSuffix = getClassNameSuffix();
        if (classNameSuffix == null || classNameSuffix.length < 0) {
            return createDefaultObject(cls);
        }
        String name = cls.getName();
        Object addon = null;
        for (String str : classNameSuffix) {
            addon = getAddon(name + str, cls);
            if (!addon.getClass().equals(cls)) {
                break;
            }
        }
        return addon;
    }

    public AddonManager(Context context) {
        this.mContext = context;
        if (sAddonManagerService == null) {
            sAddonManagerService = IAddonManager.Stub.asInterface(ServiceManager.getService("addon"));
        }
        if (this.mManagedList == null) {
            this.mManagedList = manageFeatureListS(context);
        }
    }

    public Object getAddon(String str, Class cls) {
        boolean z2;
        Class<?> clsLoadClass;
        Object objCreateAddon;
        Log.d(LOGTAG, "-> getAddon: featureClassName:" + str);
        if (cls != null) {
            Log.i(LOGTAG, "-> getAddon,The classloader of defClazz is " + cls.getClassLoader());
        }
        ApplicationInfo applicationInfo = this.mContext.getApplicationInfo();
        if ("".equals(str)) {
            objCreateAddon = createDefaultObject(cls);
        } else {
            ClassLoader classLoader = cls.getClassLoader();
            if (!this.mManagedList.isEmpty()) {
                for (PackageInfo packageInfo : this.mManagedList) {
                    Bundle bundle = packageInfo.applicationInfo.metaData;
                    Iterator<String> it = bundle.keySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                        String next = it.next();
                        if (next.startsWith("featureClassNames") && bundle.getString(next, "").contains(str)) {
                            applicationInfo = packageInfo.applicationInfo;
                            z2 = true;
                            break;
                        }
                    }
                    if (z2) {
                        classLoader = ApplicationLoaders.getDefault().getClassLoader(packageInfo.applicationInfo.sourceDir, Build.VERSION.SDK_INT, false, null, null, this.mContext.getClassLoader(), null);
                        break;
                    }
                }
            }
            ApplicationInfo applicationInfo2 = applicationInfo;
            try {
                clsLoadClass = classLoader.loadClass(str);
            } catch (ClassNotFoundException e2) {
                StringBuilder sbV = android.accessibilityservice.c.v("Load class ", str, " failed, have you installed the plugin apk ? ");
                sbV.append(e2.getMessage());
                Log.w(LOGTAG, sbV.toString());
                clsLoadClass = null;
            }
            Log.d(LOGTAG, "->getAddon, createAddon app: " + applicationInfo2 + ", clazz: " + clsLoadClass + ", classloader:" + classLoader);
            objCreateAddon = createAddon(applicationInfo2, clsLoadClass);
        }
        Object obj = objCreateAddon;
        if (obj != null) {
            return obj;
        }
        try {
            Log.d(LOGTAG, "->getAddon: Create feature <" + str + "> object Failed, AddonManager will return <" + cls + "> object.");
            return cls != null ? createDefaultObject(cls) : obj;
        } catch (Exception e3) {
            Log.e(LOGTAG, "Create default instance failed", e3);
            return obj;
        }
    }
}
