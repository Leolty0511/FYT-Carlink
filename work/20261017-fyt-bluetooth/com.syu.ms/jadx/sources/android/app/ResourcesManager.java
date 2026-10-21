package android.app;

import android.content.res.AssetManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.ResourcesKey;
import android.hardware.display.DisplayManagerGlobal;
import android.os.IBinder;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.DisplayAdjustments;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ResourcesManager {
    public static final boolean DEBUG_CACHE = false;
    public static final boolean DEBUG_STATS = true;
    public static final String TAG = "ResourcesManager";
    private static ResourcesManager sResourcesManager;
    public CompatibilityInfo mResCompatibilityInfo;
    public Configuration mResConfiguration;
    public final ArrayMap<ResourcesKey, WeakReference<Resources>> mActiveResources = new ArrayMap<>();
    public final ArrayMap<DisplayAdjustments, DisplayMetrics> mDefaultDisplayMetrics = new ArrayMap<>();
    public final Configuration mTmpConfig = new Configuration();

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

    public boolean applyCompatConfiguration(int i2, Configuration configuration) {
        CompatibilityInfo compatibilityInfo = this.mResCompatibilityInfo;
        if (compatibilityInfo == null || compatibilityInfo.supportsScreen()) {
            return false;
        }
        this.mResCompatibilityInfo.applyToConfiguration(i2, configuration);
        return true;
    }

    public final boolean applyConfigurationToResourcesLocked(Configuration configuration, CompatibilityInfo compatibilityInfo) {
        DisplayMetrics displayMetricsLocked;
        CompatibilityInfo compatibilityInfo2;
        if (this.mResConfiguration == null) {
            this.mResConfiguration = new Configuration();
        }
        if (!this.mResConfiguration.isOtherSeqNewer(configuration) && compatibilityInfo == null) {
            return false;
        }
        int iUpdateFrom = this.mResConfiguration.updateFrom(configuration);
        flushDisplayMetricsLocked();
        DisplayMetrics displayMetricsLocked2 = getDisplayMetricsLocked(0);
        if (compatibilityInfo != null && ((compatibilityInfo2 = this.mResCompatibilityInfo) == null || !compatibilityInfo2.equals(compatibilityInfo))) {
            this.mResCompatibilityInfo = compatibilityInfo;
            iUpdateFrom |= 3328;
        }
        Locale locale = configuration.locale;
        if (locale != null) {
            Locale.setDefault(locale);
        }
        Resources.updateSystemConfiguration(configuration, displayMetricsLocked2, compatibilityInfo);
        ApplicationPackageManager.configurationChanged();
        Configuration configuration2 = null;
        for (int size = this.mActiveResources.size() - 1; size >= 0; size--) {
            ResourcesKey resourcesKeyKeyAt = this.mActiveResources.keyAt(size);
            Resources resources = this.mActiveResources.valueAt(size).get();
            if (resources != null) {
                int i2 = resourcesKeyKeyAt.mDisplayId;
                boolean z2 = i2 == 0;
                boolean zHasOverrideConfiguration = resourcesKeyKeyAt.hasOverrideConfiguration();
                if (!z2 || zHasOverrideConfiguration) {
                    if (configuration2 == null) {
                        configuration2 = new Configuration();
                    }
                    configuration2.setTo(configuration);
                    if (z2) {
                        displayMetricsLocked = displayMetricsLocked2;
                    } else {
                        displayMetricsLocked = getDisplayMetricsLocked(i2);
                        applyNonDefaultDisplayMetricsToConfigurationLocked(displayMetricsLocked, configuration2);
                    }
                    if (zHasOverrideConfiguration) {
                        configuration2.updateFrom(resourcesKeyKeyAt.mOverrideConfiguration);
                    }
                    resources.updateConfiguration(configuration2, displayMetricsLocked, compatibilityInfo);
                } else {
                    resources.updateConfiguration(configuration, displayMetricsLocked2, compatibilityInfo);
                }
            } else {
                this.mActiveResources.removeAt(size);
            }
        }
        return iUpdateFrom != 0;
    }

    public final void applyNonDefaultDisplayMetricsToConfigurationLocked(DisplayMetrics displayMetrics, Configuration configuration) {
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

    public void flushDisplayMetricsLocked() {
        this.mDefaultDisplayMetrics.clear();
    }

    public Configuration getConfiguration() {
        return this.mResConfiguration;
    }

    public DisplayMetrics getDisplayMetricsLocked(int i2) {
        return getDisplayMetricsLocked(i2, DisplayAdjustments.DEFAULT_DISPLAY_ADJUSTMENTS);
    }

    public Resources getTopLevelResources(String str, int i2, Configuration configuration, CompatibilityInfo compatibilityInfo, IBinder iBinder) {
        Configuration configuration2;
        ResourcesKey resourcesKey = new ResourcesKey(str, i2, configuration, compatibilityInfo.applicationScale, iBinder);
        synchronized (this) {
            WeakReference<Resources> weakReference = this.mActiveResources.get(resourcesKey);
            Resources resources = weakReference != null ? weakReference.get() : null;
            if (resources != null && resources.getAssets().isUpToDate()) {
                return resources;
            }
            AssetManager assetManager = new AssetManager();
            if (assetManager.addAssetPath(str) == 0) {
                return null;
            }
            DisplayMetrics displayMetricsLocked = getDisplayMetricsLocked(i2);
            boolean z2 = i2 == 0;
            boolean zHasOverrideConfiguration = resourcesKey.hasOverrideConfiguration();
            if (!z2 || zHasOverrideConfiguration) {
                configuration2 = new Configuration(getConfiguration());
                if (!z2) {
                    applyNonDefaultDisplayMetricsToConfigurationLocked(displayMetricsLocked, configuration2);
                }
                if (zHasOverrideConfiguration) {
                    configuration2.updateFrom(resourcesKey.mOverrideConfiguration);
                }
            } else {
                configuration2 = getConfiguration();
            }
            Resources resources2 = new Resources(assetManager, displayMetricsLocked, configuration2, compatibilityInfo, iBinder);
            synchronized (this) {
                WeakReference<Resources> weakReference2 = this.mActiveResources.get(resourcesKey);
                Resources resources3 = weakReference2 != null ? weakReference2.get() : null;
                if (resources3 == null || !resources3.getAssets().isUpToDate()) {
                    this.mActiveResources.put(resourcesKey, new WeakReference<>(resources2));
                    return resources2;
                }
                resources2.getAssets().close();
                return resources3;
            }
        }
    }

    public DisplayMetrics getDisplayMetricsLocked(int i2, DisplayAdjustments displayAdjustments) {
        boolean z2 = i2 == 0;
        DisplayMetrics displayMetrics = z2 ? this.mDefaultDisplayMetrics.get(displayAdjustments) : null;
        if (displayMetrics != null) {
            return displayMetrics;
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        DisplayManagerGlobal displayManagerGlobal = DisplayManagerGlobal.getInstance();
        if (displayManagerGlobal == null) {
            displayMetrics2.setToDefaults();
            return displayMetrics2;
        }
        if (z2) {
            this.mDefaultDisplayMetrics.put(displayAdjustments, displayMetrics2);
        }
        Display compatibleDisplay = displayManagerGlobal.getCompatibleDisplay(i2, displayAdjustments);
        if (compatibleDisplay != null) {
            compatibleDisplay.getMetrics(displayMetrics2);
        } else {
            displayMetrics2.setToDefaults();
        }
        return displayMetrics2;
    }
}
