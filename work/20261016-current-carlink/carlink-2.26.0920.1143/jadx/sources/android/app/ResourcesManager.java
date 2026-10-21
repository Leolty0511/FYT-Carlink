package android.app;

import android.content.res.AssetManager;
import android.content.res.CompatResources;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.ResourcesImpl;
import android.content.res.ResourcesKey;
import android.hardware.display.DisplayManagerGlobal;
import android.os.IBinder;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.view.Display;
import android.view.DisplayAdjustments;
import com.android.internal.util.ArrayUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class ResourcesManager {
    private static final boolean DEBUG = false;
    static final String TAG = "ResourcesManager";
    private static final Predicate<WeakReference<Resources>> sEmptyReferencePredicate = new Predicate<WeakReference<Resources>>() { // from class: android.app.ResourcesManager.1
        @Override // java.util.function.Predicate
        public boolean test(WeakReference<Resources> weakReference) {
            return weakReference == null || weakReference.get() == null;
        }
    };
    private static ResourcesManager sResourcesManager;
    private CompatibilityInfo mResCompatibilityInfo;
    private final Configuration mResConfiguration = new Configuration();
    private final ArrayMap<ResourcesKey, WeakReference<ResourcesImpl>> mResourceImpls = new ArrayMap<>();
    private final ArrayList<WeakReference<Resources>> mResourceReferences = new ArrayList<>();
    private final WeakHashMap<IBinder, ActivityResources> mActivityResourceReferences = new WeakHashMap<>();
    private final ArrayMap<Pair<Integer, DisplayAdjustments>, WeakReference<Display>> mAdjustedDisplays = new ArrayMap<>();

    public static class ActivityResources {
        public final ArrayList<WeakReference<Resources>> activityResources;
        public final Configuration overrideConfig;

        private ActivityResources() {
            this.overrideConfig = new Configuration();
            this.activityResources = new ArrayList<>();
        }
    }

    private static void applyNonDefaultDisplayMetricsToConfiguration(DisplayMetrics displayMetrics, Configuration configuration) {
        configuration.touchscreen = 1;
        configuration.densityDpi = displayMetrics.densityDpi;
        float f2 = displayMetrics.widthPixels;
        float f3 = displayMetrics.density;
        configuration.screenWidthDp = (int) (f2 / f3);
        configuration.screenHeightDp = (int) (displayMetrics.heightPixels / f3);
        int iResetScreenLayout = Configuration.resetScreenLayout(configuration.screenLayout);
        if (displayMetrics.widthPixels > displayMetrics.heightPixels) {
            configuration.orientation = 2;
            configuration.screenLayout = Configuration.reduceScreenLayout(iResetScreenLayout, configuration.screenWidthDp, configuration.screenHeightDp);
        } else {
            configuration.orientation = 1;
            configuration.screenLayout = Configuration.reduceScreenLayout(iResetScreenLayout, configuration.screenHeightDp, configuration.screenWidthDp);
        }
        int i2 = configuration.screenWidthDp;
        configuration.smallestScreenWidthDp = i2;
        configuration.compatScreenWidthDp = i2;
        configuration.compatScreenHeightDp = configuration.screenHeightDp;
        configuration.compatSmallestScreenWidthDp = i2;
    }

    private void cleanupResourceImpl(ResourcesKey resourcesKey) {
        ResourcesImpl resourcesImpl = this.mResourceImpls.remove(resourcesKey).get();
        if (resourcesImpl != null) {
            resourcesImpl.flushLayoutCache();
        }
    }

    private ResourcesImpl createResourcesImpl(ResourcesKey resourcesKey) {
        DisplayAdjustments displayAdjustments = new DisplayAdjustments(resourcesKey.mOverrideConfiguration);
        displayAdjustments.setCompatibilityInfo(resourcesKey.mCompatInfo);
        AssetManager assetManagerCreateAssetManager = createAssetManager(resourcesKey);
        if (assetManagerCreateAssetManager == null) {
            return null;
        }
        DisplayMetrics displayMetrics = getDisplayMetrics(resourcesKey.mDisplayId, displayAdjustments);
        return new ResourcesImpl(assetManagerCreateAssetManager, displayMetrics, generateConfig(resourcesKey, displayMetrics), displayAdjustments);
    }

    private ResourcesKey findKeyForResourceImplLocked(ResourcesImpl resourcesImpl) {
        int size = this.mResourceImpls.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                return null;
            }
            WeakReference<ResourcesImpl> weakReferenceValueAt = this.mResourceImpls.valueAt(i2);
            ResourcesImpl resourcesImpl2 = weakReferenceValueAt != null ? weakReferenceValueAt.get() : null;
            if (resourcesImpl2 != null && resourcesImpl == resourcesImpl2) {
                return this.mResourceImpls.keyAt(i2);
            }
            i2++;
        }
    }

    private ResourcesImpl findOrCreateResourcesImplForKeyLocked(ResourcesKey resourcesKey) {
        ResourcesImpl resourcesImplFindResourcesImplForKeyLocked = findResourcesImplForKeyLocked(resourcesKey);
        if (resourcesImplFindResourcesImplForKeyLocked == null && (resourcesImplFindResourcesImplForKeyLocked = createResourcesImpl(resourcesKey)) != null) {
            this.mResourceImpls.put(resourcesKey, new WeakReference<>(resourcesImplFindResourcesImplForKeyLocked));
        }
        return resourcesImplFindResourcesImplForKeyLocked;
    }

    private ResourcesImpl findResourcesImplForKeyLocked(ResourcesKey resourcesKey) {
        WeakReference<ResourcesImpl> weakReference = this.mResourceImpls.get(resourcesKey);
        ResourcesImpl resourcesImpl = weakReference != null ? weakReference.get() : null;
        if (resourcesImpl == null || !resourcesImpl.getAssets().isUpToDate()) {
            return null;
        }
        return resourcesImpl;
    }

    private Configuration generateConfig(ResourcesKey resourcesKey, DisplayMetrics displayMetrics) {
        boolean z2 = resourcesKey.mDisplayId == 0;
        boolean zHasOverrideConfiguration = resourcesKey.hasOverrideConfiguration();
        if (z2 && !zHasOverrideConfiguration) {
            return getConfiguration();
        }
        Configuration configuration = new Configuration(getConfiguration());
        if (!z2) {
            applyNonDefaultDisplayMetricsToConfiguration(displayMetrics, configuration);
        }
        if (zHasOverrideConfiguration) {
            configuration.updateFrom(resourcesKey.mOverrideConfiguration);
        }
        return configuration;
    }

    private Display getAdjustedDisplay(int i2, DisplayAdjustments displayAdjustments) {
        Display display;
        Pair<Integer, DisplayAdjustments> pairCreate = Pair.create(Integer.valueOf(i2), displayAdjustments != null ? new DisplayAdjustments(displayAdjustments) : new DisplayAdjustments());
        synchronized (this) {
            WeakReference<Display> weakReference = this.mAdjustedDisplays.get(pairCreate);
            if (weakReference != null && (display = weakReference.get()) != null) {
                return display;
            }
            DisplayManagerGlobal displayManagerGlobal = DisplayManagerGlobal.getInstance();
            if (displayManagerGlobal == null) {
                return null;
            }
            Display compatibleDisplay = displayManagerGlobal.getCompatibleDisplay(i2, pairCreate.second);
            if (compatibleDisplay != null) {
                this.mAdjustedDisplays.put(pairCreate, new WeakReference<>(compatibleDisplay));
            }
            return compatibleDisplay;
        }
    }

    public static ResourcesManager getInstance() {
        ResourcesManager resourcesManager;
        synchronized (ResourcesManager.class) {
            if (sResourcesManager == null) {
                sResourcesManager = new ResourcesManager();
            }
            resourcesManager = sResourcesManager;
        }
        return resourcesManager;
    }

    private ActivityResources getOrCreateActivityResourcesStructLocked(IBinder iBinder) {
        ActivityResources activityResources = this.mActivityResourceReferences.get(iBinder);
        if (activityResources != null) {
            return activityResources;
        }
        ActivityResources activityResources2 = new ActivityResources();
        this.mActivityResourceReferences.put(iBinder, activityResources2);
        return activityResources2;
    }

    private Resources getOrCreateResources(IBinder iBinder, ResourcesKey resourcesKey, ClassLoader classLoader) {
        Resources orCreateResourcesForActivityLocked;
        synchronized (this) {
            try {
                if (iBinder != null) {
                    ActivityResources orCreateActivityResourcesStructLocked = getOrCreateActivityResourcesStructLocked(iBinder);
                    ArrayUtils.unstableRemoveIf(orCreateActivityResourcesStructLocked.activityResources, sEmptyReferencePredicate);
                    if (resourcesKey.hasOverrideConfiguration() && !orCreateActivityResourcesStructLocked.overrideConfig.equals(Configuration.EMPTY)) {
                        Configuration configuration = new Configuration(orCreateActivityResourcesStructLocked.overrideConfig);
                        configuration.updateFrom(resourcesKey.mOverrideConfiguration);
                        resourcesKey.mOverrideConfiguration.setTo(configuration);
                    }
                    ResourcesImpl resourcesImplFindResourcesImplForKeyLocked = findResourcesImplForKeyLocked(resourcesKey);
                    if (resourcesImplFindResourcesImplForKeyLocked != null) {
                        return getOrCreateResourcesForActivityLocked(iBinder, classLoader, resourcesImplFindResourcesImplForKeyLocked, resourcesKey.mCompatInfo);
                    }
                } else {
                    ArrayUtils.unstableRemoveIf(this.mResourceReferences, sEmptyReferencePredicate);
                    ResourcesImpl resourcesImplFindResourcesImplForKeyLocked2 = findResourcesImplForKeyLocked(resourcesKey);
                    if (resourcesImplFindResourcesImplForKeyLocked2 != null) {
                        return getOrCreateResourcesLocked(classLoader, resourcesImplFindResourcesImplForKeyLocked2, resourcesKey.mCompatInfo);
                    }
                }
                ResourcesImpl resourcesImplCreateResourcesImpl = createResourcesImpl(resourcesKey);
                if (resourcesImplCreateResourcesImpl == null) {
                    return null;
                }
                synchronized (this) {
                    ResourcesImpl resourcesImplFindResourcesImplForKeyLocked3 = findResourcesImplForKeyLocked(resourcesKey);
                    if (resourcesImplFindResourcesImplForKeyLocked3 != null) {
                        resourcesImplCreateResourcesImpl.getAssets().close();
                        resourcesImplCreateResourcesImpl = resourcesImplFindResourcesImplForKeyLocked3;
                    } else {
                        this.mResourceImpls.put(resourcesKey, new WeakReference<>(resourcesImplCreateResourcesImpl));
                    }
                    orCreateResourcesForActivityLocked = iBinder != null ? getOrCreateResourcesForActivityLocked(iBinder, classLoader, resourcesImplCreateResourcesImpl, resourcesKey.mCompatInfo) : getOrCreateResourcesLocked(classLoader, resourcesImplCreateResourcesImpl, resourcesKey.mCompatInfo);
                }
                return orCreateResourcesForActivityLocked;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Resources getOrCreateResourcesForActivityLocked(IBinder iBinder, ClassLoader classLoader, ResourcesImpl resourcesImpl, CompatibilityInfo compatibilityInfo) {
        ActivityResources orCreateActivityResourcesStructLocked = getOrCreateActivityResourcesStructLocked(iBinder);
        int size = orCreateActivityResourcesStructLocked.activityResources.size();
        for (int i2 = 0; i2 < size; i2++) {
            Resources resources = orCreateActivityResourcesStructLocked.activityResources.get(i2).get();
            if (resources != null && Objects.equals(resources.getClassLoader(), classLoader) && resources.getImpl() == resourcesImpl) {
                return resources;
            }
        }
        Resources compatResources = compatibilityInfo.needsCompatResources() ? new CompatResources(classLoader) : new Resources(classLoader);
        compatResources.setImpl(resourcesImpl);
        orCreateActivityResourcesStructLocked.activityResources.add(new WeakReference<>(compatResources));
        return compatResources;
    }

    private Resources getOrCreateResourcesLocked(ClassLoader classLoader, ResourcesImpl resourcesImpl, CompatibilityInfo compatibilityInfo) {
        int size = this.mResourceReferences.size();
        for (int i2 = 0; i2 < size; i2++) {
            Resources resources = this.mResourceReferences.get(i2).get();
            if (resources != null && Objects.equals(resources.getClassLoader(), classLoader) && resources.getImpl() == resourcesImpl) {
                return resources;
            }
        }
        Resources compatResources = compatibilityInfo.needsCompatResources() ? new CompatResources(classLoader) : new Resources(classLoader);
        compatResources.setImpl(resourcesImpl);
        this.mResourceReferences.add(new WeakReference<>(compatResources));
        return compatResources;
    }

    private void redirectResourcesToNewImplLocked(ArrayMap<ResourcesImpl, ResourcesKey> arrayMap) {
        ResourcesKey resourcesKey;
        ResourcesKey resourcesKey2;
        if (arrayMap.isEmpty()) {
            return;
        }
        int size = this.mResourceReferences.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                for (ActivityResources activityResources : this.mActivityResourceReferences.values()) {
                    int size2 = activityResources.activityResources.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        WeakReference<Resources> weakReference = activityResources.activityResources.get(i3);
                        Resources resources = weakReference != null ? weakReference.get() : null;
                        if (resources != null && (resourcesKey = arrayMap.get(resources.getImpl())) != null) {
                            ResourcesImpl resourcesImplFindOrCreateResourcesImplForKeyLocked = findOrCreateResourcesImplForKeyLocked(resourcesKey);
                            if (resourcesImplFindOrCreateResourcesImplForKeyLocked == null) {
                                throw new Resources.NotFoundException("failed to redirect ResourcesImpl");
                            }
                            resources.setImpl(resourcesImplFindOrCreateResourcesImplForKeyLocked);
                        }
                    }
                }
                return;
            }
            WeakReference<Resources> weakReference2 = this.mResourceReferences.get(i2);
            Resources resources2 = weakReference2 != null ? weakReference2.get() : null;
            if (resources2 != null && (resourcesKey2 = arrayMap.get(resources2.getImpl())) != null) {
                ResourcesImpl resourcesImplFindOrCreateResourcesImplForKeyLocked2 = findOrCreateResourcesImplForKeyLocked(resourcesKey2);
                if (resourcesImplFindOrCreateResourcesImplForKeyLocked2 == null) {
                    throw new Resources.NotFoundException("failed to redirect ResourcesImpl");
                }
                resources2.setImpl(resourcesImplFindOrCreateResourcesImplForKeyLocked2);
            }
            i2++;
        }
    }

    public void appendLibAssetForMainAssetPath(String str, String str2) {
        synchronized (this) {
            ArrayMap<ResourcesImpl, ResourcesKey> arrayMap = new ArrayMap<>();
            int size = this.mResourceImpls.size();
            for (int i2 = 0; i2 < size; i2++) {
                ResourcesKey resourcesKeyKeyAt = this.mResourceImpls.keyAt(i2);
                WeakReference<ResourcesImpl> weakReferenceValueAt = this.mResourceImpls.valueAt(i2);
                ResourcesImpl resourcesImpl = weakReferenceValueAt != null ? weakReferenceValueAt.get() : null;
                if (resourcesImpl != null && Objects.equals(resourcesKeyKeyAt.mResDir, str) && !ArrayUtils.contains(resourcesKeyKeyAt.mLibDirs, str2)) {
                    String[] strArr = resourcesKeyKeyAt.mLibDirs;
                    int length = 1 + (strArr != null ? strArr.length : 0);
                    String[] strArr2 = new String[length];
                    if (strArr != null) {
                        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                    }
                    strArr2[length - 1] = str2;
                    arrayMap.put(resourcesImpl, new ResourcesKey(resourcesKeyKeyAt.mResDir, resourcesKeyKeyAt.mSplitResDirs, resourcesKeyKeyAt.mOverlayDirs, strArr2, resourcesKeyKeyAt.mDisplayId, resourcesKeyKeyAt.mOverrideConfiguration, resourcesKeyKeyAt.mCompatInfo));
                }
            }
            redirectResourcesToNewImplLocked(arrayMap);
        }
    }

    public boolean applyCompatConfigurationLocked(int i2, Configuration configuration) {
        CompatibilityInfo compatibilityInfo = this.mResCompatibilityInfo;
        if (compatibilityInfo == null || compatibilityInfo.supportsScreen()) {
            return false;
        }
        this.mResCompatibilityInfo.applyToConfiguration(i2, configuration);
        return true;
    }

    public final boolean applyConfigurationToResourcesLocked(Configuration configuration, CompatibilityInfo compatibilityInfo) {
        CompatibilityInfo compatibilityInfo2;
        try {
            Trace.traceBegin(8192L, "ResourcesManager#applyConfigurationToResourcesLocked");
            boolean z2 = false;
            if (!this.mResConfiguration.isOtherSeqNewer(configuration) && compatibilityInfo == null) {
                return false;
            }
            int iUpdateFrom = this.mResConfiguration.updateFrom(configuration);
            this.mAdjustedDisplays.clear();
            DisplayMetrics displayMetrics = getDisplayMetrics();
            if (compatibilityInfo != null && ((compatibilityInfo2 = this.mResCompatibilityInfo) == null || !compatibilityInfo2.equals(compatibilityInfo))) {
                this.mResCompatibilityInfo = compatibilityInfo;
                iUpdateFrom |= 3328;
            }
            Resources.updateSystemConfiguration(configuration, displayMetrics, compatibilityInfo);
            ApplicationPackageManager.configurationChanged();
            boolean z3 = true;
            int size = this.mResourceImpls.size() - 1;
            Configuration configuration2 = null;
            while (size >= 0) {
                ResourcesKey resourcesKeyKeyAt = this.mResourceImpls.keyAt(size);
                WeakReference<ResourcesImpl> weakReferenceValueAt = this.mResourceImpls.valueAt(size);
                ResourcesImpl resourcesImpl = weakReferenceValueAt != null ? weakReferenceValueAt.get() : null;
                if (resourcesImpl != null) {
                    int i2 = resourcesKeyKeyAt.mDisplayId;
                    boolean z4 = i2 == 0 ? z3 : z2;
                    boolean zHasOverrideConfiguration = resourcesKeyKeyAt.hasOverrideConfiguration();
                    if (!z4 || zHasOverrideConfiguration) {
                        if (configuration2 == null) {
                            configuration2 = new Configuration();
                        }
                        configuration2.setTo(configuration);
                        DisplayAdjustments displayAdjustments = resourcesImpl.getDisplayAdjustments();
                        if (compatibilityInfo != null) {
                            DisplayAdjustments displayAdjustments2 = new DisplayAdjustments(displayAdjustments);
                            displayAdjustments2.setCompatibilityInfo(compatibilityInfo);
                            displayAdjustments = displayAdjustments2;
                        }
                        DisplayMetrics displayMetrics2 = getDisplayMetrics(i2, displayAdjustments);
                        if (!z4) {
                            applyNonDefaultDisplayMetricsToConfiguration(displayMetrics2, configuration2);
                        }
                        if (zHasOverrideConfiguration) {
                            configuration2.updateFrom(resourcesKeyKeyAt.mOverrideConfiguration);
                        }
                        resourcesImpl.updateConfiguration(configuration2, displayMetrics2, compatibilityInfo);
                    } else {
                        resourcesImpl.updateConfiguration(configuration, displayMetrics, compatibilityInfo);
                    }
                } else {
                    this.mResourceImpls.removeAt(size);
                }
                size--;
                z2 = false;
                z3 = true;
            }
            return iUpdateFrom != 0;
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public final void applyNewResourceDirsLocked(String str, String[] strArr) {
        String str2;
        try {
            Trace.traceBegin(8192L, "ResourcesManager#applyNewResourceDirsLocked");
            ArrayMap<ResourcesImpl, ResourcesKey> arrayMap = new ArrayMap<>();
            int size = this.mResourceImpls.size();
            for (int i2 = 0; i2 < size; i2++) {
                ResourcesKey resourcesKeyKeyAt = this.mResourceImpls.keyAt(i2);
                WeakReference<ResourcesImpl> weakReferenceValueAt = this.mResourceImpls.valueAt(i2);
                ResourcesImpl resourcesImpl = weakReferenceValueAt != null ? weakReferenceValueAt.get() : null;
                if (resourcesImpl != null && ((str2 = resourcesKeyKeyAt.mResDir) == null || str2.equals(str))) {
                    arrayMap.put(resourcesImpl, new ResourcesKey(resourcesKeyKeyAt.mResDir, resourcesKeyKeyAt.mSplitResDirs, strArr, resourcesKeyKeyAt.mLibDirs, resourcesKeyKeyAt.mDisplayId, resourcesKeyKeyAt.mOverrideConfiguration, resourcesKeyKeyAt.mCompatInfo));
                }
            }
            redirectResourcesToNewImplLocked(arrayMap);
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public AssetManager createAssetManager(ResourcesKey resourcesKey) {
        AssetManager assetManager = new AssetManager();
        String str = resourcesKey.mResDir;
        if (str != null && assetManager.addAssetPath(str) == 0) {
            Log.e(TAG, "failed to add asset path " + resourcesKey.mResDir);
            return null;
        }
        String[] strArr = resourcesKey.mSplitResDirs;
        if (strArr != null) {
            for (String str2 : strArr) {
                if (assetManager.addAssetPath(str2) == 0) {
                    m.r("failed to add split asset path ", str2, TAG);
                    return null;
                }
            }
        }
        String[] strArr2 = resourcesKey.mOverlayDirs;
        if (strArr2 != null) {
            for (String str3 : strArr2) {
                assetManager.addOverlayPath(str3);
            }
        }
        String[] strArr3 = resourcesKey.mLibDirs;
        if (strArr3 != null) {
            for (String str4 : strArr3) {
                if (str4.endsWith(".apk") && assetManager.addAssetPathAsSharedLibrary(str4) == 0) {
                    m.s("Asset path '", str4, "' does not exist or contains no resources.", TAG);
                }
            }
        }
        return assetManager;
    }

    public Resources createBaseActivityResources(IBinder iBinder, String str, String[] strArr, String[] strArr2, String[] strArr3, int i2, Configuration configuration, CompatibilityInfo compatibilityInfo, ClassLoader classLoader) {
        try {
            Trace.traceBegin(8192L, "ResourcesManager#createBaseActivityResources");
            ResourcesKey resourcesKey = new ResourcesKey(str, strArr, strArr2, strArr3, i2, configuration != null ? new Configuration(configuration) : null, compatibilityInfo);
            ClassLoader systemClassLoader = classLoader != null ? classLoader : ClassLoader.getSystemClassLoader();
            synchronized (this) {
                getOrCreateActivityResourcesStructLocked(iBinder);
            }
            updateResourcesForActivity(iBinder, configuration, i2, false);
            Resources orCreateResources = getOrCreateResources(iBinder, resourcesKey, systemClassLoader);
            Trace.traceEnd(8192L);
            return orCreateResources;
        } catch (Throwable th) {
            Trace.traceEnd(8192L);
            throw th;
        }
    }

    public Configuration getConfiguration() {
        Configuration configuration;
        synchronized (this) {
            configuration = this.mResConfiguration;
        }
        return configuration;
    }

    public DisplayMetrics getDisplayMetrics() {
        return getDisplayMetrics(0, DisplayAdjustments.DEFAULT_DISPLAY_ADJUSTMENTS);
    }

    public Resources getResources(IBinder iBinder, String str, String[] strArr, String[] strArr2, String[] strArr3, int i2, Configuration configuration, CompatibilityInfo compatibilityInfo, ClassLoader classLoader) throws Throwable {
        try {
            Trace.traceBegin(8192L, "ResourcesManager#getResources");
            try {
                Resources orCreateResources = getOrCreateResources(iBinder, new ResourcesKey(str, strArr, strArr2, strArr3, i2, configuration != null ? new Configuration(configuration) : null, compatibilityInfo), classLoader != null ? classLoader : ClassLoader.getSystemClassLoader());
                Trace.traceEnd(8192L);
                return orCreateResources;
            } catch (Throwable th) {
                th = th;
                Trace.traceEnd(8192L);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void invalidatePath(String str) {
        synchronized (this) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < this.mResourceImpls.size()) {
                ResourcesKey resourcesKeyKeyAt = this.mResourceImpls.keyAt(i2);
                if (resourcesKeyKeyAt.isPathReferenced(str)) {
                    cleanupResourceImpl(resourcesKeyKeyAt);
                    i3++;
                } else {
                    i2++;
                }
            }
            Log.i(TAG, "Invalidated " + i3 + " asset managers that referenced " + str);
        }
    }

    public boolean isSameResourcesOverrideConfig(IBinder iBinder, Configuration configuration) {
        ActivityResources activityResources;
        Configuration configuration2;
        synchronized (this) {
            if (iBinder != null) {
                try {
                    activityResources = this.mActivityResourceReferences.get(iBinder);
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                activityResources = null;
            }
            boolean z2 = true;
            if (activityResources == null) {
                if (configuration != null) {
                    z2 = false;
                }
                return z2;
            }
            if (!Objects.equals(activityResources.overrideConfig, configuration) && (configuration == null || (configuration2 = activityResources.overrideConfig) == null || configuration.diffPublicOnly(configuration2) != 0)) {
                z2 = false;
            }
            return z2;
        }
    }

    public void updateResourcesForActivity(IBinder iBinder, Configuration configuration, int i2, boolean z2) {
        Configuration configuration2 = configuration;
        long j2 = 8192;
        try {
            Trace.traceBegin(8192L, "ResourcesManager#updateResourcesForActivity");
            synchronized (this) {
                try {
                    ActivityResources orCreateActivityResourcesStructLocked = getOrCreateActivityResourcesStructLocked(iBinder);
                    if (Objects.equals(orCreateActivityResourcesStructLocked.overrideConfig, configuration2) && !z2) {
                        Trace.traceEnd(8192L);
                        return;
                    }
                    Configuration configuration3 = new Configuration(orCreateActivityResourcesStructLocked.overrideConfig);
                    if (configuration2 != null) {
                        orCreateActivityResourcesStructLocked.overrideConfig.setTo(configuration2);
                    } else {
                        orCreateActivityResourcesStructLocked.overrideConfig.unset();
                    }
                    int i3 = 0;
                    boolean z3 = !orCreateActivityResourcesStructLocked.overrideConfig.equals(Configuration.EMPTY);
                    int size = orCreateActivityResourcesStructLocked.activityResources.size();
                    while (i3 < size) {
                        Resources resources = orCreateActivityResourcesStructLocked.activityResources.get(i3).get();
                        if (resources != null) {
                            ResourcesKey resourcesKeyFindKeyForResourceImplLocked = findKeyForResourceImplLocked(resources.getImpl());
                            if (resourcesKeyFindKeyForResourceImplLocked == null) {
                                Slog.e(TAG, "can't find ResourcesKey for resources impl=" + resources.getImpl());
                            } else {
                                Configuration configuration4 = new Configuration();
                                if (configuration2 != null) {
                                    configuration4.setTo(configuration2);
                                }
                                if (z3 && resourcesKeyFindKeyForResourceImplLocked.hasOverrideConfiguration()) {
                                    configuration4.updateFrom(Configuration.generateDelta(configuration3, resourcesKeyFindKeyForResourceImplLocked.mOverrideConfiguration));
                                }
                                ResourcesKey resourcesKey = new ResourcesKey(resourcesKeyFindKeyForResourceImplLocked.mResDir, resourcesKeyFindKeyForResourceImplLocked.mSplitResDirs, resourcesKeyFindKeyForResourceImplLocked.mOverlayDirs, resourcesKeyFindKeyForResourceImplLocked.mLibDirs, i2, configuration4, resourcesKeyFindKeyForResourceImplLocked.mCompatInfo);
                                ResourcesImpl resourcesImplFindResourcesImplForKeyLocked = findResourcesImplForKeyLocked(resourcesKey);
                                if (resourcesImplFindResourcesImplForKeyLocked == null && (resourcesImplFindResourcesImplForKeyLocked = createResourcesImpl(resourcesKey)) != null) {
                                    this.mResourceImpls.put(resourcesKey, new WeakReference<>(resourcesImplFindResourcesImplForKeyLocked));
                                }
                                if (resourcesImplFindResourcesImplForKeyLocked != null && resourcesImplFindResourcesImplForKeyLocked != resources.getImpl()) {
                                    resources.setImpl(resourcesImplFindResourcesImplForKeyLocked);
                                }
                            }
                        }
                        i3++;
                        configuration2 = configuration;
                    }
                    Trace.traceEnd(8192L);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        th = th2;
                        j2 = 8192;
                        Trace.traceEnd(j2);
                        throw th;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public DisplayMetrics getDisplayMetrics(int i2, DisplayAdjustments displayAdjustments) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display adjustedDisplay = getAdjustedDisplay(i2, displayAdjustments);
        if (adjustedDisplay != null) {
            adjustedDisplay.getMetrics(displayMetrics);
        } else {
            displayMetrics.setToDefaults();
        }
        return displayMetrics;
    }

    public Display getAdjustedDisplay(int i2, Resources resources) {
        synchronized (this) {
            DisplayManagerGlobal displayManagerGlobal = DisplayManagerGlobal.getInstance();
            if (displayManagerGlobal == null) {
                return null;
            }
            return displayManagerGlobal.getCompatibleDisplay(i2, resources);
        }
    }
}
