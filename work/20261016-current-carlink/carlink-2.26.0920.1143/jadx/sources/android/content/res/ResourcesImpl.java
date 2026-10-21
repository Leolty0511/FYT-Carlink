package android.content.res;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.StateListAnimator;
import android.app.m;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.icu.text.PluralRules;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.LocaleList;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.DisplayAdjustments;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.internal.util.GrowingArrayUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ResourcesImpl {
    private static final boolean DEBUG_CONFIG = false;
    private static final boolean DEBUG_LOAD = false;
    private static final int ID_OTHER = 16777220;
    static final String TAG = "Resources";
    static final String TAG_PRELOAD = "Resources.preload";
    private static final boolean TRACE_FOR_MISS_PRELOAD = false;
    private static final boolean TRACE_FOR_PRELOAD = false;
    private static final int XML_BLOCK_CACHE_SIZE = 4;
    private static int sPreloadTracingNumLoadedDrawables;
    private static boolean sPreloaded;
    final AssetManager mAssets;
    private final Configuration mConfiguration;
    private final DisplayAdjustments mDisplayAdjustments;
    private final DisplayMetrics mMetrics;
    private PluralRules mPluralRule;
    private long mPreloadTracingPreloadStartTime;
    private long mPreloadTracingStartBitmapCount;
    private long mPreloadTracingStartBitmapSize;
    private boolean mPreloading;
    public static final boolean TRACE_FOR_DETAILED_PRELOAD = SystemProperties.getBoolean("debug.trace_resource_preload", false);
    private static final Object sSync = new Object();
    private static final LongSparseArray<Drawable.ConstantState> sPreloadedColorDrawables = new LongSparseArray<>();
    private static final LongSparseArray<ConstantState<ComplexColor>> sPreloadedComplexColors = new LongSparseArray<>();
    private static final LongSparseArray<Drawable.ConstantState>[] sPreloadedDrawables = {new LongSparseArray<>(), new LongSparseArray<>()};
    private final Object mAccessLock = new Object();
    private final Configuration mTmpConfig = new Configuration();
    private final DrawableCache mDrawableCache = new DrawableCache();
    private final DrawableCache mColorDrawableCache = new DrawableCache();
    private final ConfigurationBoundResourceCache<ComplexColor> mComplexColorCache = new ConfigurationBoundResourceCache<>();
    private final ConfigurationBoundResourceCache<Animator> mAnimatorCache = new ConfigurationBoundResourceCache<>();
    private final ConfigurationBoundResourceCache<StateListAnimator> mStateListAnimatorCache = new ConfigurationBoundResourceCache<>();
    private final ThreadLocal<LookupStack> mLookupStack = ThreadLocal.withInitial(new a(0));
    private int mLastCachedXmlBlockIndex = -1;
    private final int[] mCachedXmlBlockCookies = new int[4];
    private final String[] mCachedXmlBlockFiles = new String[4];
    private final XmlBlock[] mCachedXmlBlocks = new XmlBlock[4];

    public static class LookupStack {
        private int[] mIds;
        private int mSize;

        private LookupStack() {
            this.mIds = new int[4];
            this.mSize = 0;
        }

        public boolean contains(int i2) {
            for (int i3 = 0; i3 < this.mSize; i3++) {
                if (this.mIds[i3] == i2) {
                    return true;
                }
            }
            return false;
        }

        public void pop() {
            this.mSize--;
        }

        public void push(int i2) {
            this.mIds = GrowingArrayUtils.append(this.mIds, this.mSize, i2);
            this.mSize++;
        }
    }

    public class ThemeImpl {
        private final AssetManager mAssets;
        private final long mTheme;
        private final Resources.ThemeKey mKey = new Resources.ThemeKey();
        private int mThemeResId = 0;

        public ThemeImpl() {
            AssetManager assetManager = ResourcesImpl.this.mAssets;
            this.mAssets = assetManager;
            this.mTheme = assetManager.createTheme();
        }

        public void applyStyle(int i2, boolean z2) {
            synchronized (this.mKey) {
                AssetManager.applyThemeStyle(this.mTheme, i2, z2);
                this.mThemeResId = i2;
                this.mKey.append(i2, z2);
            }
        }

        public void dump(int i2, String str, String str2) {
            synchronized (this.mKey) {
                AssetManager.dumpTheme(this.mTheme, i2, str, str2);
            }
        }

        public void finalize() throws Throwable {
            super.finalize();
            this.mAssets.releaseTheme(this.mTheme);
        }

        public int[] getAllAttributes() {
            return this.mAssets.getStyleAttributes(getAppliedStyleResId());
        }

        public int getAppliedStyleResId() {
            return this.mThemeResId;
        }

        public int getChangingConfigurations() {
            int iActivityInfoConfigNativeToJava;
            synchronized (this.mKey) {
                iActivityInfoConfigNativeToJava = ActivityInfo.activityInfoConfigNativeToJava(AssetManager.getThemeChangingConfigurations(this.mTheme));
            }
            return iActivityInfoConfigNativeToJava;
        }

        public Resources.ThemeKey getKey() {
            return this.mKey;
        }

        public long getNativeTheme() {
            return this.mTheme;
        }

        public String[] getTheme() {
            String[] strArr;
            synchronized (this.mKey) {
                int i2 = this.mKey.mCount;
                int i3 = i2 * 2;
                strArr = new String[i3];
                int i4 = i2 - 1;
                int i5 = 0;
                while (i5 < i3) {
                    Resources.ThemeKey themeKey = this.mKey;
                    int i6 = themeKey.mResId[i4];
                    boolean z2 = themeKey.mForce[i4];
                    try {
                        strArr[i5] = ResourcesImpl.this.getResourceName(i6);
                    } catch (Resources.NotFoundException unused) {
                        strArr[i5] = Integer.toHexString(i5);
                    }
                    strArr[i5 + 1] = z2 ? "forced" : "not forced";
                    i5 += 2;
                    i4--;
                }
            }
            return strArr;
        }

        public TypedArray obtainStyledAttributes(Resources.Theme theme, AttributeSet attributeSet, int[] iArr, int i2, int i3) {
            TypedArray typedArrayObtain;
            synchronized (this.mKey) {
                typedArrayObtain = TypedArray.obtain(theme.getResources(), iArr.length);
                XmlBlock.Parser parser = (XmlBlock.Parser) attributeSet;
                AssetManager.applyStyle(this.mTheme, i2, i3, parser != null ? parser.mParseState : 0L, iArr, iArr.length, typedArrayObtain.mDataAddress, typedArrayObtain.mIndicesAddress);
                typedArrayObtain.mTheme = theme;
                typedArrayObtain.mXml = parser;
            }
            return typedArrayObtain;
        }

        public void rebase() {
            synchronized (this.mKey) {
                AssetManager.clearTheme(this.mTheme);
                int i2 = 0;
                while (true) {
                    Resources.ThemeKey themeKey = this.mKey;
                    if (i2 < themeKey.mCount) {
                        AssetManager.applyThemeStyle(this.mTheme, themeKey.mResId[i2], themeKey.mForce[i2]);
                        i2++;
                    }
                }
            }
        }

        public boolean resolveAttribute(int i2, TypedValue typedValue, boolean z2) {
            boolean themeValue;
            synchronized (this.mKey) {
                themeValue = this.mAssets.getThemeValue(this.mTheme, i2, typedValue, z2);
            }
            return themeValue;
        }

        public TypedArray resolveAttributes(Resources.Theme theme, int[] iArr, int[] iArr2) {
            TypedArray typedArrayObtain;
            synchronized (this.mKey) {
                int length = iArr2.length;
                if (iArr == null || length != iArr.length) {
                    throw new IllegalArgumentException("Base attribute values must the same length as attrs");
                }
                typedArrayObtain = TypedArray.obtain(theme.getResources(), length);
                AssetManager.resolveAttrs(this.mTheme, 0, 0, iArr, iArr2, typedArrayObtain.mData, typedArrayObtain.mIndices);
                typedArrayObtain.mTheme = theme;
                typedArrayObtain.mXml = null;
            }
            return typedArrayObtain;
        }

        public void setTo(ThemeImpl themeImpl) {
            synchronized (this.mKey) {
                synchronized (themeImpl.mKey) {
                    AssetManager.copyTheme(this.mTheme, themeImpl.mTheme);
                    this.mThemeResId = themeImpl.mThemeResId;
                    this.mKey.setTo(themeImpl.getKey());
                }
            }
        }
    }

    public ResourcesImpl(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration, DisplayAdjustments displayAdjustments) {
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        this.mMetrics = displayMetrics2;
        Configuration configuration2 = new Configuration();
        this.mConfiguration = configuration2;
        this.mAssets = assetManager;
        displayMetrics2.setToDefaults();
        this.mDisplayAdjustments = displayAdjustments;
        configuration2.setToDefaults();
        updateConfiguration(configuration, displayMetrics, displayAdjustments.getCompatibilityInfo());
        assetManager.ensureStringBlocks();
    }

    private static String adjustLanguageTag(String str) {
        String strSubstring;
        int iIndexOf = str.indexOf(45);
        if (iIndexOf == -1) {
            strSubstring = "";
        } else {
            String strSubstring2 = str.substring(0, iIndexOf);
            strSubstring = str.substring(iIndexOf);
            str = strSubstring2;
        }
        return c.n(new StringBuilder(), Locale.adjustLanguageCode(str), strSubstring);
    }

    private static int attrForQuantityCode(String str) {
        str.getClass();
        switch (str) {
            case "few":
                return 16777224;
            case "one":
                return 16777222;
            case "two":
                return 16777223;
            case "many":
                return 16777225;
            case "zero":
                return 16777221;
            default:
                return ID_OTHER;
        }
    }

    private void cacheDrawable(TypedValue typedValue, boolean z2, DrawableCache drawableCache, Resources.Theme theme, boolean z3, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return;
        }
        if (!this.mPreloading) {
            synchronized (this.mAccessLock) {
                drawableCache.put(j2, theme, constantState, z3);
            }
            return;
        }
        int changingConfigurations = constantState.getChangingConfigurations();
        if (z2) {
            if (verifyPreloadConfig(changingConfigurations, 0, typedValue.resourceId, "drawable")) {
                sPreloadedColorDrawables.put(j2, constantState);
            }
        } else if (verifyPreloadConfig(changingConfigurations, 8192, typedValue.resourceId, "drawable")) {
            if ((changingConfigurations & 8192) != 0) {
                sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].put(j2, constantState);
                return;
            }
            LongSparseArray<Drawable.ConstantState>[] longSparseArrayArr = sPreloadedDrawables;
            longSparseArrayArr[0].put(j2, constantState);
            longSparseArrayArr[1].put(j2, constantState);
        }
    }

    private ColorStateList getColorStateListFromInt(TypedValue typedValue, long j2) {
        LongSparseArray<ConstantState<ComplexColor>> longSparseArray = sPreloadedComplexColors;
        ConstantState<ComplexColor> constantState = longSparseArray.get(j2);
        if (constantState != null) {
            return (ColorStateList) constantState.newInstance2();
        }
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(typedValue.data);
        if (this.mPreloading && verifyPreloadConfig(typedValue.changingConfigurations, 0, typedValue.resourceId, "color")) {
            longSparseArray.put(j2, colorStateListValueOf.getConstantState());
        }
        return colorStateListValueOf;
    }

    private PluralRules getPluralRule() {
        PluralRules pluralRules;
        synchronized (sSync) {
            if (this.mPluralRule == null) {
                this.mPluralRule = PluralRules.forLocale(this.mConfiguration.getLocales().get(0));
            }
            pluralRules = this.mPluralRule;
        }
        return pluralRules;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LookupStack lambda$new$0() {
        return new LookupStack();
    }

    private ComplexColor loadComplexColorForCookie(Resources resources, TypedValue typedValue, int i2, Resources.Theme theme) {
        int next;
        ComplexColor complexColorCreateFromXmlInner;
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new UnsupportedOperationException("Can't convert to ComplexColor: type=0x" + typedValue.type);
        }
        String string = charSequence.toString();
        Trace.traceBegin(8192L, string);
        if (!string.endsWith(".xml")) {
            Trace.traceEnd(8192L);
            StringBuilder sbV = c.v("File ", string, " from drawable resource ID #0x");
            sbV.append(Integer.toHexString(i2));
            sbV.append(": .xml extension required");
            throw new Resources.NotFoundException(sbV.toString());
        }
        try {
            XmlResourceParser xmlResourceParserLoadXmlResourceParser = loadXmlResourceParser(string, i2, typedValue.assetCookie, "ComplexColor");
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlResourceParser);
            do {
                next = xmlResourceParserLoadXmlResourceParser.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            String name = xmlResourceParserLoadXmlResourceParser.getName();
            if (name.equals("gradient")) {
                complexColorCreateFromXmlInner = GradientColor.createFromXmlInner(resources, xmlResourceParserLoadXmlResourceParser, attributeSetAsAttributeSet, theme);
            } else {
                complexColorCreateFromXmlInner = name.equals("selector") ? ColorStateList.createFromXmlInner(resources, xmlResourceParserLoadXmlResourceParser, attributeSetAsAttributeSet, theme) : null;
            }
            xmlResourceParserLoadXmlResourceParser.close();
            Trace.traceEnd(8192L);
            return complexColorCreateFromXmlInner;
        } catch (Exception e2) {
            Trace.traceEnd(8192L);
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(m.d(i2, c.v("File ", string, " from ComplexColor resource ID #0x")));
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    private ComplexColor loadComplexColorFromName(Resources resources, Resources.Theme theme, TypedValue typedValue, int i2) {
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        ConfigurationBoundResourceCache<ComplexColor> configurationBoundResourceCache = this.mComplexColorCache;
        ComplexColor configurationBoundResourceCache2 = configurationBoundResourceCache.getInstance(j2, resources, theme);
        if (configurationBoundResourceCache2 != null) {
            return configurationBoundResourceCache2;
        }
        LongSparseArray<ConstantState<ComplexColor>> longSparseArray = sPreloadedComplexColors;
        ConstantState<ComplexColor> constantState = longSparseArray.get(j2);
        if (constantState != null) {
            configurationBoundResourceCache2 = constantState.newInstance2(resources, theme);
        }
        if (configurationBoundResourceCache2 == null) {
            configurationBoundResourceCache2 = loadComplexColorForCookie(resources, typedValue, i2, theme);
        }
        if (configurationBoundResourceCache2 != null) {
            configurationBoundResourceCache2.setBaseChangingConfigurations(typedValue.changingConfigurations);
            if (!this.mPreloading) {
                configurationBoundResourceCache.put(j2, theme, configurationBoundResourceCache2.getConstantState());
            } else if (verifyPreloadConfig(configurationBoundResourceCache2.getChangingConfigurations(), 0, typedValue.resourceId, "color")) {
                longSparseArray.put(j2, configurationBoundResourceCache2.getConstantState());
            }
        }
        return configurationBoundResourceCache2;
    }

    private Drawable loadDrawableForCookie(Resources resources, TypedValue typedValue, int i2, int i3, Resources.Theme theme) {
        long jNanoTime;
        int i4;
        int i5;
        long j2;
        Drawable drawableCreateFromResourceStream;
        String resourceName;
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + getResourceName(i2) + "\" (" + Integer.toHexString(i2) + ") is not a Drawable (color or path): " + typedValue);
        }
        String string = charSequence.toString();
        boolean z2 = TRACE_FOR_DETAILED_PRELOAD;
        if (z2) {
            jNanoTime = System.nanoTime();
            i4 = Bitmap.sPreloadTracingNumInstantiatedBitmaps;
            j2 = Bitmap.sPreloadTracingTotalBitmapsSize;
            i5 = sPreloadTracingNumLoadedDrawables;
        } else {
            jNanoTime = 0;
            i4 = 0;
            i5 = 0;
            j2 = 0;
        }
        long j3 = 8192;
        Trace.traceBegin(8192L, string);
        LookupStack lookupStack = this.mLookupStack.get();
        try {
            try {
                if (lookupStack.contains(i2)) {
                    throw new Exception("Recursive reference in drawable");
                }
                lookupStack.push(i2);
                try {
                    if (string.endsWith(".xml")) {
                        XmlResourceParser xmlResourceParserLoadXmlResourceParser = loadXmlResourceParser(string, i2, typedValue.assetCookie, "drawable");
                        drawableCreateFromResourceStream = Drawable.createFromXmlForDensity(resources, xmlResourceParserLoadXmlResourceParser, i3, theme);
                        xmlResourceParserLoadXmlResourceParser.close();
                    } else {
                        InputStream inputStreamOpenNonAsset = this.mAssets.openNonAsset(typedValue.assetCookie, string, 2);
                        drawableCreateFromResourceStream = Drawable.createFromResourceStream(resources, typedValue, inputStreamOpenNonAsset, string, null);
                        inputStreamOpenNonAsset.close();
                    }
                    lookupStack.pop();
                    Trace.traceEnd(8192L);
                    if (z2) {
                        if ((i2 >>> 24) == 1 && (resourceName = getResourceName(i2)) != null) {
                            long jNanoTime2 = System.nanoTime() - jNanoTime;
                            int i6 = Bitmap.sPreloadTracingNumInstantiatedBitmaps - i4;
                            long j4 = Bitmap.sPreloadTracingTotalBitmapsSize - j2;
                            int i7 = sPreloadTracingNumLoadedDrawables;
                            int i8 = i7 - i5;
                            sPreloadTracingNumLoadedDrawables = i7 + 1;
                            boolean z3 = Process.myUid() == 0;
                            StringBuilder sb = new StringBuilder();
                            sb.append(z3 ? "Preloaded FW drawable #" : "Loaded non-preloaded FW drawable #");
                            sb.append(Integer.toHexString(i2));
                            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                            sb.append(resourceName);
                            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                            sb.append(string);
                            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                            sb.append(drawableCreateFromResourceStream.getClass().getCanonicalName());
                            sb.append(" #nested_drawables= ");
                            m.u(sb, i8, " #bitmaps= ", i6, " total_bitmap_size= ");
                            sb.append(j4);
                            sb.append(" in[us] ");
                            sb.append(jNanoTime2 / 1000);
                            Log.d(TAG_PRELOAD, sb.toString());
                        }
                    }
                    return drawableCreateFromResourceStream;
                } catch (Throwable th) {
                    lookupStack.pop();
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                j3 = 8192;
                Trace.traceEnd(j3);
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(m.d(i2, c.v("File ", string, " from drawable resource ID #0x")));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    private boolean verifyPreloadConfig(int i2, int i3, int i4, String str) {
        String resourceName;
        if ((i2 & (-1073745921) & (~i3)) == 0) {
            return true;
        }
        try {
            resourceName = getResourceName(i4);
        } catch (Resources.NotFoundException unused) {
            resourceName = "?";
        }
        StringBuilder sbV = c.v("Preloaded ", str, " resource #0x");
        sbV.append(Integer.toHexString(i4));
        sbV.append(" (");
        sbV.append(resourceName);
        sbV.append(") that varies with configuration!!");
        Log.w(TAG, sbV.toString());
        return false;
    }

    public int calcConfigChanges(Configuration configuration) {
        if (configuration == null) {
            return -1;
        }
        this.mTmpConfig.setTo(configuration);
        int i2 = configuration.densityDpi;
        if (i2 == 0) {
            i2 = this.mMetrics.noncompatDensityDpi;
        }
        this.mDisplayAdjustments.getCompatibilityInfo().applyToConfiguration(i2, this.mTmpConfig);
        if (this.mTmpConfig.getLocales().isEmpty()) {
            this.mTmpConfig.setLocales(LocaleList.getDefault());
        }
        return this.mConfiguration.updateFrom(this.mTmpConfig);
    }

    public void finishPreloading() {
        if (this.mPreloading) {
            if (TRACE_FOR_DETAILED_PRELOAD) {
                long jUptimeMillis = SystemClock.uptimeMillis() - this.mPreloadTracingPreloadStartTime;
                long j2 = Bitmap.sPreloadTracingTotalBitmapsSize - this.mPreloadTracingStartBitmapSize;
                StringBuilder sbL = m.l("Preload finished, ", ((long) Bitmap.sPreloadTracingNumInstantiatedBitmaps) - this.mPreloadTracingStartBitmapCount, " bitmaps of ");
                sbL.append(j2);
                sbL.append(" bytes in ");
                sbL.append(jUptimeMillis);
                sbL.append(" ms");
                Log.d(TAG_PRELOAD, sbL.toString());
            }
            this.mPreloading = false;
            flushLayoutCache();
        }
    }

    public void flushLayoutCache() {
        synchronized (this.mCachedXmlBlocks) {
            Arrays.fill(this.mCachedXmlBlockCookies, 0);
            Arrays.fill(this.mCachedXmlBlockFiles, (Object) null);
            XmlBlock[] xmlBlockArr = this.mCachedXmlBlocks;
            for (int i2 = 0; i2 < 4; i2++) {
                XmlBlock xmlBlock = xmlBlockArr[i2];
                if (xmlBlock != null) {
                    xmlBlock.close();
                }
            }
            Arrays.fill(xmlBlockArr, (Object) null);
        }
    }

    public ConfigurationBoundResourceCache<Animator> getAnimatorCache() {
        return this.mAnimatorCache;
    }

    public AssetManager getAssets() {
        return this.mAssets;
    }

    public CompatibilityInfo getCompatibilityInfo() {
        return this.mDisplayAdjustments.getCompatibilityInfo();
    }

    public Configuration getConfiguration() {
        return this.mConfiguration;
    }

    public DisplayAdjustments getDisplayAdjustments() {
        return this.mDisplayAdjustments;
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.mMetrics;
    }

    public int getIdentifier(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return this.mAssets.getResourceIdentifier(str, str2, str3);
        }
    }

    public LongSparseArray<Drawable.ConstantState> getPreloadedDrawables() {
        return sPreloadedDrawables[0];
    }

    public CharSequence getQuantityText(int i2, int i3) {
        PluralRules pluralRule = getPluralRule();
        double d2 = i3;
        CharSequence resourceBagText = this.mAssets.getResourceBagText(i2, attrForQuantityCode(pluralRule.select(d2)));
        if (resourceBagText != null) {
            return resourceBagText;
        }
        CharSequence resourceBagText2 = this.mAssets.getResourceBagText(i2, ID_OTHER);
        if (resourceBagText2 != null) {
            return resourceBagText2;
        }
        throw new Resources.NotFoundException("Plural resource ID #0x" + Integer.toHexString(i2) + " quantity=" + i3 + " item=" + pluralRule.select(d2));
    }

    public String getResourceEntryName(int i2) {
        String resourceEntryName = this.mAssets.getResourceEntryName(i2);
        if (resourceEntryName != null) {
            return resourceEntryName;
        }
        throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Unable to find resource ID #0x")));
    }

    public String getResourceName(int i2) {
        String resourceName = this.mAssets.getResourceName(i2);
        if (resourceName != null) {
            return resourceName;
        }
        throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Unable to find resource ID #0x")));
    }

    public String getResourcePackageName(int i2) {
        String resourcePackageName = this.mAssets.getResourcePackageName(i2);
        if (resourcePackageName != null) {
            return resourcePackageName;
        }
        throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Unable to find resource ID #0x")));
    }

    public String getResourceTypeName(int i2) {
        String resourceTypeName = this.mAssets.getResourceTypeName(i2);
        if (resourceTypeName != null) {
            return resourceTypeName;
        }
        throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Unable to find resource ID #0x")));
    }

    public Configuration[] getSizeConfigurations() {
        return this.mAssets.getSizeConfigurations();
    }

    public ConfigurationBoundResourceCache<StateListAnimator> getStateListAnimatorCache() {
        return this.mStateListAnimatorCache;
    }

    public void getValue(int i2, TypedValue typedValue, boolean z2) {
        if (!this.mAssets.getResourceValue(i2, 0, typedValue, z2)) {
            throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Resource ID #0x")));
        }
    }

    public void getValueForDensity(int i2, int i3, TypedValue typedValue, boolean z2) {
        if (!this.mAssets.getResourceValue(i2, i3, typedValue, z2)) {
            throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Resource ID #0x")));
        }
    }

    public ColorStateList loadColorStateList(Resources resources, TypedValue typedValue, int i2, Resources.Theme theme) {
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        int i3 = typedValue.type;
        if (i3 >= 28 && i3 <= 31) {
            return getColorStateListFromInt(typedValue, j2);
        }
        ComplexColor complexColorLoadComplexColorFromName = loadComplexColorFromName(resources, theme, typedValue, i2);
        if (complexColorLoadComplexColorFromName == null || !(complexColorLoadComplexColorFromName instanceof ColorStateList)) {
            throw new Resources.NotFoundException(m.d(i2, new StringBuilder("Can't find ColorStateList from drawable resource ID #0x")));
        }
        return (ColorStateList) complexColorLoadComplexColorFromName;
    }

    public ComplexColor loadComplexColor(Resources resources, TypedValue typedValue, int i2, Resources.Theme theme) {
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        int i3 = typedValue.type;
        if (i3 >= 28 && i3 <= 31) {
            return getColorStateListFromInt(typedValue, j2);
        }
        String string = typedValue.string.toString();
        if (!string.endsWith(".xml")) {
            StringBuilder sbV = c.v("File ", string, " from drawable resource ID #0x");
            sbV.append(Integer.toHexString(i2));
            sbV.append(": .xml extension required");
            throw new Resources.NotFoundException(sbV.toString());
        }
        try {
            return loadComplexColorFromName(resources, theme, typedValue, i2);
        } catch (Exception e2) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(m.d(i2, c.v("File ", string, " from complex color resource ID #0x")));
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fd A[Catch: Exception -> 0x0123, TryCatch #1 {Exception -> 0x0123, blocks: (B:17:0x0039, B:21:0x0043, B:23:0x005b, B:26:0x0061, B:28:0x0067, B:31:0x006f, B:34:0x008a, B:36:0x008e, B:38:0x0093, B:40:0x0099, B:42:0x009f, B:43:0x00bc, B:48:0x00de, B:50:0x00e2, B:56:0x00f0, B:59:0x00fd, B:61:0x0104, B:63:0x0115, B:65:0x011b, B:45:0x00c3, B:47:0x00cd, B:32:0x0078, B:22:0x004c), top: B:78:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0104 A[Catch: Exception -> 0x0123, TryCatch #1 {Exception -> 0x0123, blocks: (B:17:0x0039, B:21:0x0043, B:23:0x005b, B:26:0x0061, B:28:0x0067, B:31:0x006f, B:34:0x008a, B:36:0x008e, B:38:0x0093, B:40:0x0099, B:42:0x009f, B:43:0x00bc, B:48:0x00de, B:50:0x00e2, B:56:0x00f0, B:59:0x00fd, B:61:0x0104, B:63:0x0115, B:65:0x011b, B:45:0x00c3, B:47:0x00cd, B:32:0x0078, B:22:0x004c), top: B:78:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0120  */
    public Drawable loadDrawable(Resources resources, TypedValue typedValue, int i2, int i3, Resources.Theme theme) {
        String resourceName;
        DrawableCache drawableCache;
        long j2;
        boolean z2;
        Drawable drawableLoadDrawableForCookie;
        boolean z3;
        boolean z4;
        Drawable drawable;
        Drawable drawable2;
        Drawable.ConstantState constantState;
        String resourceName2;
        Drawable drawableCache2;
        int i4;
        boolean z5 = i3 == 0 || typedValue.density == this.mMetrics.densityDpi;
        if (i3 > 0 && (i4 = typedValue.density) > 0 && i4 != 65535) {
            if (i4 == i3) {
                typedValue.density = this.mMetrics.densityDpi;
            } else {
                typedValue.density = (i4 * this.mMetrics.densityDpi) / i3;
            }
        }
        try {
            int i5 = typedValue.type;
            if (i5 < 28 || i5 > 31) {
                drawableCache = this.mDrawableCache;
                j2 = ((long) typedValue.data) | (((long) typedValue.assetCookie) << 32);
                z2 = false;
            } else {
                drawableCache = this.mColorDrawableCache;
                j2 = typedValue.data;
                z2 = true;
            }
            if (!this.mPreloading && z5 && (drawableCache2 = drawableCache.getInstance(j2, resources, theme)) != null) {
                drawableCache2.setChangingConfigurations(typedValue.changingConfigurations);
                return drawableCache2;
            }
            Drawable.ConstantState constantState2 = z2 ? sPreloadedColorDrawables.get(j2) : sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].get(j2);
            if (constantState2 == null) {
                if (z2) {
                    drawableLoadDrawableForCookie = new ColorDrawable(typedValue.data);
                } else {
                    drawableLoadDrawableForCookie = loadDrawableForCookie(resources, typedValue, i2, i3, null);
                }
                z3 = drawableLoadDrawableForCookie instanceof DrawableContainer;
                if (drawableLoadDrawableForCookie == null && drawableLoadDrawableForCookie.canApplyTheme()) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4 && theme != null) {
                    drawableLoadDrawableForCookie = drawableLoadDrawableForCookie.mutate();
                    drawableLoadDrawableForCookie.applyTheme(theme);
                    drawableLoadDrawableForCookie.clearMutated();
                }
                drawable = drawableLoadDrawableForCookie;
                if (drawable != null) {
                    drawable.setChangingConfigurations(typedValue.changingConfigurations);
                    if (z5) {
                        drawable2 = drawable;
                        cacheDrawable(typedValue, z2, drawableCache, theme, z4, j2, drawable2);
                        if (z3 && (constantState = drawable2.getConstantState()) != null) {
                            return constantState.newDrawable(resources);
                        }
                    } else {
                        drawable2 = drawable;
                    }
                } else {
                    drawable2 = drawable;
                }
                return drawable2;
            }
            if (TRACE_FOR_DETAILED_PRELOAD && (i2 >>> 24) == 1 && Process.myUid() != 0 && (resourceName2 = getResourceName(i2)) != null) {
                Log.d(TAG_PRELOAD, "Hit preloaded FW drawable #" + Integer.toHexString(i2) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + resourceName2);
            }
            drawableLoadDrawableForCookie = constantState2.newDrawable(resources);
            z3 = drawableLoadDrawableForCookie instanceof DrawableContainer;
            if (drawableLoadDrawableForCookie == null) {
                z4 = false;
            } else {
                z4 = false;
            }
            if (z4) {
                drawableLoadDrawableForCookie = drawableLoadDrawableForCookie.mutate();
                drawableLoadDrawableForCookie.applyTheme(theme);
                drawableLoadDrawableForCookie.clearMutated();
            }
            drawable = drawableLoadDrawableForCookie;
            if (drawable != null) {
                drawable.setChangingConfigurations(typedValue.changingConfigurations);
                if (z5) {
                    drawable2 = drawable;
                    cacheDrawable(typedValue, z2, drawableCache, theme, z4, j2, drawable2);
                    if (z3) {
                        return constantState.newDrawable(resources);
                    }
                } else {
                    drawable2 = drawable;
                }
            } else {
                drawable2 = drawable;
            }
            return drawable2;
        } catch (Exception e2) {
            try {
                resourceName = getResourceName(i2);
            } catch (Resources.NotFoundException unused) {
                resourceName = "(missing name)";
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(m.d(i2, c.v("Drawable ", resourceName, " with resource ID #0x")), e2);
            notFoundException.setStackTrace(new StackTraceElement[0]);
            throw notFoundException;
        }
    }

    public Typeface loadFont(Resources resources, TypedValue typedValue, int i2) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + getResourceName(i2) + "\" (" + Integer.toHexString(i2) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        if (!string.startsWith("res/")) {
            return null;
        }
        Typeface typefaceFindFromCache = Typeface.findFromCache(this.mAssets, string);
        if (typefaceFindFromCache != null) {
            return typefaceFindFromCache;
        }
        Trace.traceBegin(8192L, string);
        try {
            if (!string.endsWith("xml")) {
                return Typeface.createFromResources(this.mAssets, string, typedValue.assetCookie);
            }
            FontResourcesParser.FamilyResourceEntry familyResourceEntry = FontResourcesParser.parse(loadXmlResourceParser(string, i2, typedValue.assetCookie, "font"), resources);
            if (familyResourceEntry == null) {
                return null;
            }
            return Typeface.createFromResources(familyResourceEntry, this.mAssets, string);
        } catch (IOException e2) {
            Log.e(TAG, "Failed to read xml resource ".concat(string), e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e(TAG, "Failed to parse xml resource ".concat(string), e3);
            return null;
        } finally {
            Trace.traceEnd(8192L);
        }
    }

    public XmlResourceParser loadXmlResourceParser(String str, int i2, int i3, String str2) {
        String str3;
        if (i2 != 0) {
            try {
                synchronized (this.mCachedXmlBlocks) {
                    int[] iArr = this.mCachedXmlBlockCookies;
                    String[] strArr = this.mCachedXmlBlockFiles;
                    XmlBlock[] xmlBlockArr = this.mCachedXmlBlocks;
                    int length = strArr.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        if (iArr[i4] == i3 && (str3 = strArr[i4]) != null && str3.equals(str)) {
                            return xmlBlockArr[i4].newParser();
                        }
                    }
                    XmlBlock xmlBlockOpenXmlBlockAsset = this.mAssets.openXmlBlockAsset(i3, str);
                    if (xmlBlockOpenXmlBlockAsset != null) {
                        int i5 = (this.mLastCachedXmlBlockIndex + 1) % length;
                        this.mLastCachedXmlBlockIndex = i5;
                        XmlBlock xmlBlock = xmlBlockArr[i5];
                        if (xmlBlock != null) {
                            xmlBlock.close();
                        }
                        iArr[i5] = i3;
                        strArr[i5] = str;
                        xmlBlockArr[i5] = xmlBlockOpenXmlBlockAsset;
                        return xmlBlockOpenXmlBlockAsset.newParser();
                    }
                }
            } catch (Exception e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(m.d(i2, c.w("File ", str, " from xml type ", str2, " resource ID #0x")));
                notFoundException.initCause(e2);
                throw notFoundException;
            }
        }
        throw new Resources.NotFoundException(m.d(i2, c.w("File ", str, " from xml type ", str2, " resource ID #0x")));
    }

    public ThemeImpl newThemeImpl() {
        return new ThemeImpl();
    }

    public InputStream openRawResource(int i2, TypedValue typedValue) {
        getValue(i2, typedValue, true);
        try {
            return this.mAssets.openNonAsset(typedValue.assetCookie, typedValue.string.toString(), 2);
        } catch (Exception e2) {
            StringBuilder sb = new StringBuilder("File ");
            CharSequence charSequence = typedValue.string;
            sb.append(charSequence == null ? "(null)" : charSequence.toString());
            sb.append(" from drawable resource ID #0x");
            sb.append(Integer.toHexString(i2));
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    public AssetFileDescriptor openRawResourceFd(int i2, TypedValue typedValue) {
        getValue(i2, typedValue, true);
        try {
            return this.mAssets.openNonAssetFd(typedValue.assetCookie, typedValue.string.toString());
        } catch (Exception e2) {
            throw new Resources.NotFoundException("File " + typedValue.string.toString() + " from drawable resource ID #0x" + Integer.toHexString(i2), e2);
        }
    }

    public final void startPreloading() {
        synchronized (sSync) {
            if (sPreloaded) {
                throw new IllegalStateException("Resources already preloaded");
            }
            sPreloaded = true;
            this.mPreloading = true;
            this.mConfiguration.densityDpi = DisplayMetrics.DENSITY_DEVICE;
            updateConfiguration(null, null, null);
            if (TRACE_FOR_DETAILED_PRELOAD) {
                this.mPreloadTracingPreloadStartTime = SystemClock.uptimeMillis();
                this.mPreloadTracingStartBitmapSize = Bitmap.sPreloadTracingTotalBitmapsSize;
                this.mPreloadTracingStartBitmapCount = Bitmap.sPreloadTracingNumInstantiatedBitmaps;
                Log.d(TAG_PRELOAD, "Preload starting");
            }
        }
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo) {
        long j2;
        int i2;
        int i3;
        Locale firstMatchWithEnglishSupported;
        Trace.traceBegin(8192L, "ResourcesImpl#updateConfiguration");
        try {
            synchronized (this.mAccessLock) {
                try {
                    try {
                        if (compatibilityInfo != null) {
                            this.mDisplayAdjustments.setCompatibilityInfo(compatibilityInfo);
                        }
                        if (displayMetrics != null) {
                            this.mMetrics.setTo(displayMetrics);
                        }
                        this.mDisplayAdjustments.getCompatibilityInfo().applyToDisplayMetrics(this.mMetrics);
                        int iCalcConfigChanges = calcConfigChanges(configuration);
                        LocaleList locales = this.mConfiguration.getLocales();
                        if (locales.isEmpty()) {
                            locales = LocaleList.getDefault();
                            this.mConfiguration.setLocales(locales);
                        }
                        if ((iCalcConfigChanges & 4) != 0 && locales.size() > 1) {
                            String[] nonSystemLocales = this.mAssets.getNonSystemLocales();
                            if (LocaleList.isPseudoLocalesOnly(nonSystemLocales)) {
                                nonSystemLocales = this.mAssets.getLocales();
                                if (LocaleList.isPseudoLocalesOnly(nonSystemLocales)) {
                                    nonSystemLocales = null;
                                }
                            }
                            if (nonSystemLocales != null && (firstMatchWithEnglishSupported = locales.getFirstMatchWithEnglishSupported(nonSystemLocales)) != null && firstMatchWithEnglishSupported != locales.get(0)) {
                                this.mConfiguration.setLocales(new LocaleList(firstMatchWithEnglishSupported, locales));
                            }
                        }
                        Configuration configuration2 = this.mConfiguration;
                        int i4 = configuration2.densityDpi;
                        if (i4 != 0) {
                            DisplayMetrics displayMetrics2 = this.mMetrics;
                            displayMetrics2.densityDpi = i4;
                            displayMetrics2.density = i4 * 0.00625f;
                        }
                        DisplayMetrics displayMetrics3 = this.mMetrics;
                        float f2 = displayMetrics3.density;
                        float f3 = configuration2.fontScale;
                        if (f3 == 0.0f) {
                            f3 = 1.0f;
                        }
                        displayMetrics3.scaledDensity = f2 * f3;
                        int i5 = displayMetrics3.widthPixels;
                        int i6 = displayMetrics3.heightPixels;
                        if (i5 >= i6) {
                            i3 = i6;
                            i2 = i5;
                        } else {
                            i2 = i6;
                            i3 = i5;
                        }
                        int i7 = configuration2.keyboardHidden;
                        if (i7 == 1 && configuration2.hardKeyboardHidden == 2) {
                            i7 = 3;
                        }
                        int i8 = i7;
                        AssetManager assetManager = this.mAssets;
                        int i9 = configuration2.mcc;
                        int i10 = configuration2.mnc;
                        String strAdjustLanguageTag = adjustLanguageTag(configuration2.getLocales().get(0).toLanguageTag());
                        Configuration configuration3 = this.mConfiguration;
                        try {
                            assetManager.setConfiguration(i9, i10, strAdjustLanguageTag, configuration3.orientation, configuration3.touchscreen, configuration3.densityDpi, configuration3.keyboard, i8, configuration3.navigation, i2, i3, configuration3.smallestScreenWidthDp, configuration3.screenWidthDp, configuration3.screenHeightDp, configuration3.screenLayout, configuration3.uiMode, configuration3.colorMode, Build.VERSION.RESOURCES_SDK_INT);
                            this.mDrawableCache.onConfigurationChange(iCalcConfigChanges);
                            this.mColorDrawableCache.onConfigurationChange(iCalcConfigChanges);
                            this.mComplexColorCache.onConfigurationChange(iCalcConfigChanges);
                            this.mAnimatorCache.onConfigurationChange(iCalcConfigChanges);
                            this.mStateListAnimatorCache.onConfigurationChange(iCalcConfigChanges);
                            flushLayoutCache();
                            synchronized (sSync) {
                                if (this.mPluralRule != null) {
                                    this.mPluralRule = PluralRules.forLocale(this.mConfiguration.getLocales().get(0));
                                }
                            }
                            Trace.traceEnd(8192L);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    j2 = 8192;
                    Trace.traceEnd(j2);
                    throw th;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            j2 = 8192;
        }
    }

    public ThemeImpl newThemeImpl(Resources.ThemeKey themeKey) {
        ThemeImpl themeImpl = new ThemeImpl();
        themeImpl.mKey.setTo(themeKey);
        themeImpl.rebase();
        return themeImpl;
    }

    public void getValue(String str, TypedValue typedValue, boolean z2) {
        int identifier = getIdentifier(str, TypedValues.Custom.S_STRING, null);
        if (identifier != 0) {
            getValue(identifier, typedValue, z2);
            return;
        }
        throw new Resources.NotFoundException(c.j("String resource name ", str));
    }
}
