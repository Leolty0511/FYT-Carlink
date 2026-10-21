package android.content.res;

import android.R;
import android.content.pm.ActivityInfo;
import android.graphics.Movie;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.nfc.cardemulation.CardEmulation;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Trace;
import android.provider.CalendarContract;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.TypedValue;
import i.a;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Objects;
import libcore.icu.NativePluralRules;
import org.xmlpull.v1.XmlPullParserException;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public class Resources {
    private static final boolean DEBUG_ATTRIBUTES_CACHE = false;
    private static final boolean DEBUG_CONFIG = false;
    private static final boolean DEBUG_LOAD = false;
    private static final int ID_OTHER = 16777220;
    public static final String TAG = "Resources";
    private static final boolean TRACE_FOR_MISS_PRELOAD = false;
    private static final boolean TRACE_FOR_PRELOAD = false;
    public static Resources mSystem;
    private static boolean sPreloaded;
    private static int sPreloadedDensity;
    public final Object mAccessLock;
    public final AssetManager mAssets;
    public TypedArray mCachedStyledAttributes;
    private final int[] mCachedXmlBlockIds;
    private final XmlBlock[] mCachedXmlBlocks;
    public final LongSparseArray<WeakReference<Drawable.ConstantState>> mColorDrawableCache;
    public final LongSparseArray<WeakReference<ColorStateList>> mColorStateListCache;
    private CompatibilityInfo mCompatibilityInfo;
    private final Configuration mConfiguration;
    public final LongSparseArray<WeakReference<Drawable.ConstantState>> mDrawableCache;
    private int mLastCachedXmlBlockIndex;
    public RuntimeException mLastRetrievedAttrs;
    public final DisplayMetrics mMetrics;
    private NativePluralRules mPluralRule;
    public boolean mPreloading;
    public final Configuration mTmpConfig;
    public TypedValue mTmpValue;
    private WeakReference<IBinder> mToken;
    private static final Object sSync = new Object();
    private static final LongSparseArray<Drawable.ConstantState> sPreloadedColorDrawables = new LongSparseArray<>();
    private static final LongSparseArray<ColorStateList> sPreloadedColorStateLists = new LongSparseArray<>();
    private static final LongSparseArray<Drawable.ConstantState>[] sPreloadedDrawables = {new LongSparseArray<>(), new LongSparseArray<>()};
    private static final int LAYOUT_DIR_CONFIG = ActivityInfo.activityInfoConfigToNative(8192);

    public static class NotFoundException extends RuntimeException {
        public NotFoundException() {
        }

        public NotFoundException(String str) {
            super(str);
        }
    }

    public Resources(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration) {
        this(assetManager, displayMetrics, configuration, CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO, null);
    }

    private static int attrForQuantityCode(int i2) {
        if (i2 == 0) {
            return 16777221;
        }
        if (i2 == 1) {
            return 16777222;
        }
        if (i2 == 2) {
            return 16777223;
        }
        if (i2 == 3) {
            return 16777224;
        }
        if (i2 != 4) {
            return ID_OTHER;
        }
        return 16777225;
    }

    private void clearDrawableCacheLocked(LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray, int i2) {
        Drawable.ConstantState constantState;
        int size = longSparseArray.size();
        for (int i3 = 0; i3 < size; i3++) {
            WeakReference<Drawable.ConstantState> weakReferenceValueAt = longSparseArray.valueAt(i3);
            if (weakReferenceValueAt != null && (constantState = weakReferenceValueAt.get()) != null && Configuration.needNewResources(i2, constantState.getChangingConfigurations())) {
                longSparseArray.setValueAt(i3, null);
            }
        }
    }

    private ColorStateList getCachedColorStateList(long j2) {
        synchronized (this.mAccessLock) {
            WeakReference<ColorStateList> weakReference = this.mColorStateListCache.get(j2);
            if (weakReference != null) {
                ColorStateList colorStateList = weakReference.get();
                if (colorStateList != null) {
                    return colorStateList;
                }
                this.mColorStateListCache.delete(j2);
            }
            return null;
        }
    }

    private Drawable getCachedDrawable(LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray, long j2) {
        synchronized (this.mAccessLock) {
            WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j2);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(this);
                }
                longSparseArray.delete(j2);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypedArray getCachedStyledAttributes(int i2) {
        synchronized (this.mAccessLock) {
            TypedArray typedArray = this.mCachedStyledAttributes;
            if (typedArray == null) {
                return new TypedArray(this, new int[i2 * 6], new int[i2 + 1], i2);
            }
            this.mCachedStyledAttributes = null;
            typedArray.mLength = i2;
            int i3 = i2 * 6;
            if (typedArray.mData.length >= i3) {
                return typedArray;
            }
            typedArray.mData = new int[i3];
            typedArray.mIndices = new int[i2 + 1];
            return typedArray;
        }
    }

    private NativePluralRules getPluralRule() {
        NativePluralRules nativePluralRules;
        synchronized (sSync) {
            if (this.mPluralRule == null) {
                this.mPluralRule = NativePluralRules.forLocale(this.mConfiguration.locale);
            }
            nativePluralRules = this.mPluralRule;
        }
        return nativePluralRules;
    }

    public static Resources getSystem() {
        Resources resources;
        synchronized (sSync) {
            resources = mSystem;
            if (resources == null) {
                resources = new Resources();
                mSystem = resources;
            }
        }
        return resources;
    }

    public static boolean resourceHasPackage(int i2) {
        return (i2 >>> 24) != 0;
    }

    public static int selectDefaultTheme(int i2, int i3) {
        return selectSystemTheme(i2, i3, R.style.Theme, R.style.Theme_Holo, R.style.Theme_DeviceDefault);
    }

    public static int selectSystemTheme(int i2, int i3, int i4, int i5, int i6) {
        if (i2 != 0) {
            return i2;
        }
        if (i3 < 11) {
            return i4;
        }
        return i3 < 14 ? i5 : i6;
    }

    private static String stringForQuantityCode(int i2) {
        if (i2 == 0) {
            return "zero";
        }
        if (i2 == 1) {
            return "one";
        }
        if (i2 == 2) {
            return "two";
        }
        if (i2 != 3) {
            return i2 != 4 ? CardEmulation.CATEGORY_OTHER : "many";
        }
        return "few";
    }

    public static void updateSystemConfiguration(Configuration configuration, DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo) throws Throwable {
        Resources resources = mSystem;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics, compatibilityInfo);
        }
    }

    private boolean verifyPreloadConfig(int i2, int i3, int i4, String str) {
        String resourceName;
        if ((i2 & (-1073745921) & (~i3)) == 0) {
            return true;
        }
        try {
            resourceName = getResourceName(i4);
        } catch (NotFoundException unused) {
            resourceName = "?";
        }
        Log.w(TAG, "Preloaded " + str + " resource #0x" + Integer.toHexString(i4) + " (" + resourceName + ") that varies with configuration!!");
        return false;
    }

    public final void finishPreloading() {
        if (this.mPreloading) {
            this.mPreloading = false;
            flushLayoutCache();
        }
    }

    public final void flushLayoutCache() {
        synchronized (this.mCachedXmlBlockIds) {
            int length = this.mCachedXmlBlockIds.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.mCachedXmlBlockIds[i2] = 0;
                XmlBlock xmlBlock = this.mCachedXmlBlocks[i2];
                if (xmlBlock != null) {
                    xmlBlock.close();
                }
                this.mCachedXmlBlocks[i2] = null;
            }
        }
    }

    public XmlResourceParser getAnimation(int i2) {
        return loadXmlResourceParser(i2, "anim");
    }

    public final AssetManager getAssets() {
        return this.mAssets;
    }

    public boolean getBoolean(int i2) {
        boolean z2;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            z2 = true;
            getValue(i2, typedValue, true);
            int i3 = typedValue.type;
            if (i3 < 16 || i3 > 31) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            if (typedValue.data == 0) {
                z2 = false;
            }
        }
        return z2;
    }

    public int getColor(int i2) {
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
            }
            getValue(i2, typedValue, true);
            int i3 = typedValue.type;
            if (i3 >= 16 && i3 <= 31) {
                this.mTmpValue = typedValue;
                return typedValue.data;
            }
            if (i3 == 3) {
                this.mTmpValue = null;
                ColorStateList colorStateListLoadColorStateList = loadColorStateList(typedValue, i2);
                synchronized (this.mAccessLock) {
                    if (this.mTmpValue == null) {
                        this.mTmpValue = typedValue;
                    }
                }
                return colorStateListLoadColorStateList.getDefaultColor();
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
        }
    }

    public ColorStateList getColorStateList(int i2) {
        TypedValue typedValue;
        synchronized (this.mAccessLock) {
            typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
            } else {
                this.mTmpValue = null;
            }
            getValue(i2, typedValue, true);
        }
        ColorStateList colorStateListLoadColorStateList = loadColorStateList(typedValue, i2);
        synchronized (this.mAccessLock) {
            if (this.mTmpValue == null) {
                this.mTmpValue = typedValue;
            }
        }
        return colorStateListLoadColorStateList;
    }

    public CompatibilityInfo getCompatibilityInfo() {
        return this.mCompatibilityInfo;
    }

    public Configuration getConfiguration() {
        return this.mConfiguration;
    }

    public float getDimension(int i2) {
        float fComplexToDimension;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            getValue(i2, typedValue, true);
            if (typedValue.type != 5) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            fComplexToDimension = TypedValue.complexToDimension(typedValue.data, this.mMetrics);
        }
        return fComplexToDimension;
    }

    public int getDimensionPixelOffset(int i2) {
        int iComplexToDimensionPixelOffset;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            getValue(i2, typedValue, true);
            if (typedValue.type != 5) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            iComplexToDimensionPixelOffset = TypedValue.complexToDimensionPixelOffset(typedValue.data, this.mMetrics);
        }
        return iComplexToDimensionPixelOffset;
    }

    public int getDimensionPixelSize(int i2) {
        int iComplexToDimensionPixelSize;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            getValue(i2, typedValue, true);
            if (typedValue.type != 5) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            iComplexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValue.data, this.mMetrics);
        }
        return iComplexToDimensionPixelSize;
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.mMetrics;
    }

    public Drawable getDrawable(int i2) {
        TypedValue typedValue;
        synchronized (this.mAccessLock) {
            typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
            } else {
                this.mTmpValue = null;
            }
            getValue(i2, typedValue, true);
        }
        Drawable drawableLoadDrawable = loadDrawable(typedValue, i2);
        synchronized (this.mAccessLock) {
            if (this.mTmpValue == null) {
                this.mTmpValue = typedValue;
            }
        }
        return drawableLoadDrawable;
    }

    public Drawable getDrawableForDensity(int i2, int i3) {
        TypedValue typedValue;
        synchronized (this.mAccessLock) {
            typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
            } else {
                this.mTmpValue = null;
            }
            getValueForDensity(i2, i3, typedValue, true);
            int i4 = typedValue.density;
            if (i4 > 0 && i4 != 65535) {
                if (i4 == i3) {
                    typedValue.density = this.mMetrics.densityDpi;
                } else {
                    typedValue.density = (i4 * this.mMetrics.densityDpi) / i3;
                }
            }
        }
        Drawable drawableLoadDrawable = loadDrawable(typedValue, i2);
        synchronized (this.mAccessLock) {
            if (this.mTmpValue == null) {
                this.mTmpValue = typedValue;
            }
        }
        return drawableLoadDrawable;
    }

    public float getFraction(int i2, int i3, int i4) {
        float fComplexToFraction;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            getValue(i2, typedValue, true);
            if (typedValue.type != 6) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            fComplexToFraction = TypedValue.complexToFraction(typedValue.data, i3, i4);
        }
        return fComplexToFraction;
    }

    public int getIdentifier(String str, String str2, String str3) {
        Objects.requireNonNull(str, "name is null");
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return this.mAssets.getResourceIdentifier(str, str2, str3);
        }
    }

    public int[] getIntArray(int i2) {
        int[] arrayIntResource = this.mAssets.getArrayIntResource(i2);
        if (arrayIntResource != null) {
            return arrayIntResource;
        }
        throw new NotFoundException("Int array resource ID #0x" + Integer.toHexString(i2));
    }

    public int getInteger(int i2) {
        int i3;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            getValue(i2, typedValue, true);
            int i4 = typedValue.type;
            if (i4 < 16 || i4 > 31) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            i3 = typedValue.data;
        }
        return i3;
    }

    public XmlResourceParser getLayout(int i2) {
        return loadXmlResourceParser(i2, "layout");
    }

    public Movie getMovie(int i2) {
        InputStream inputStreamOpenRawResource = openRawResource(i2);
        Movie movieDecodeStream = Movie.decodeStream(inputStreamOpenRawResource);
        try {
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return movieDecodeStream;
    }

    public LongSparseArray<Drawable.ConstantState> getPreloadedDrawables() {
        return sPreloadedDrawables[0];
    }

    public String getQuantityString(int i2, int i3, Object... objArr) {
        return String.format(this.mConfiguration.locale, getQuantityText(i2, i3).toString(), objArr);
    }

    public CharSequence getQuantityText(int i2, int i3) {
        NativePluralRules pluralRule = getPluralRule();
        CharSequence resourceBagText = this.mAssets.getResourceBagText(i2, attrForQuantityCode(pluralRule.quantityForInt(i3)));
        if (resourceBagText != null) {
            return resourceBagText;
        }
        CharSequence resourceBagText2 = this.mAssets.getResourceBagText(i2, ID_OTHER);
        if (resourceBagText2 != null) {
            return resourceBagText2;
        }
        throw new NotFoundException("Plural resource ID #0x" + Integer.toHexString(i2) + " quantity=" + i3 + " item=" + stringForQuantityCode(pluralRule.quantityForInt(i3)));
    }

    public String getResourceEntryName(int i2) {
        String resourceEntryName = this.mAssets.getResourceEntryName(i2);
        if (resourceEntryName != null) {
            return resourceEntryName;
        }
        throw new NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i2));
    }

    public String getResourceName(int i2) {
        String resourceName = this.mAssets.getResourceName(i2);
        if (resourceName != null) {
            return resourceName;
        }
        throw new NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i2));
    }

    public String getResourcePackageName(int i2) {
        String resourcePackageName = this.mAssets.getResourcePackageName(i2);
        if (resourcePackageName != null) {
            return resourcePackageName;
        }
        throw new NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i2));
    }

    public String getResourceTypeName(int i2) {
        String resourceTypeName = this.mAssets.getResourceTypeName(i2);
        if (resourceTypeName != null) {
            return resourceTypeName;
        }
        throw new NotFoundException("Unable to find resource ID #0x" + Integer.toHexString(i2));
    }

    public String getString(int i2) {
        CharSequence text = getText(i2);
        if (text != null) {
            return text.toString();
        }
        throw new NotFoundException("String resource ID #0x" + Integer.toHexString(i2));
    }

    public String[] getStringArray(int i2) {
        String[] resourceStringArray = this.mAssets.getResourceStringArray(i2);
        if (resourceStringArray != null) {
            return resourceStringArray;
        }
        throw new NotFoundException("String array resource ID #0x" + Integer.toHexString(i2));
    }

    public CharSequence getText(int i2) {
        CharSequence resourceText = this.mAssets.getResourceText(i2);
        if (resourceText != null) {
            return resourceText;
        }
        throw new NotFoundException("String resource ID #0x" + Integer.toHexString(i2));
    }

    public CharSequence[] getTextArray(int i2) {
        CharSequence[] resourceTextArray = this.mAssets.getResourceTextArray(i2);
        if (resourceTextArray != null) {
            return resourceTextArray;
        }
        throw new NotFoundException("Text array resource ID #0x" + Integer.toHexString(i2));
    }

    public void getValue(int i2, TypedValue typedValue, boolean z2) {
        if (this.mAssets.getResourceValue(i2, 0, typedValue, z2)) {
            return;
        }
        throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2));
    }

    public void getValueForDensity(int i2, int i3, TypedValue typedValue, boolean z2) {
        if (this.mAssets.getResourceValue(i2, i3, typedValue, z2)) {
            return;
        }
        throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2));
    }

    public XmlResourceParser getXml(int i2) {
        return loadXmlResourceParser(i2, "xml");
    }

    public ColorStateList loadColorStateList(TypedValue typedValue, int i2) {
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        int i3 = typedValue.type;
        if (i3 >= 28 && i3 <= 31) {
            LongSparseArray<ColorStateList> longSparseArray = sPreloadedColorStateLists;
            ColorStateList colorStateList = longSparseArray.get(j2);
            if (colorStateList != null) {
                return colorStateList;
            }
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(typedValue.data);
            if (this.mPreloading && verifyPreloadConfig(typedValue.changingConfigurations, 0, typedValue.resourceId, CalendarContract.ColorsColumns.COLOR)) {
                longSparseArray.put(j2, colorStateListValueOf);
            }
            return colorStateListValueOf;
        }
        ColorStateList cachedColorStateList = getCachedColorStateList(j2);
        if (cachedColorStateList != null) {
            return cachedColorStateList;
        }
        LongSparseArray<ColorStateList> longSparseArray2 = sPreloadedColorStateLists;
        ColorStateList colorStateList2 = longSparseArray2.get(j2);
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new NotFoundException("Resource is not a ColorStateList (color or path): " + typedValue);
        }
        String string = charSequence.toString();
        if (!string.endsWith(".xml")) {
            throw new NotFoundException("File " + string + " from drawable resource ID #0x" + Integer.toHexString(i2) + ": .xml extension required");
        }
        Trace.traceBegin(Trace.TRACE_TAG_RESOURCES, string);
        try {
            XmlResourceParser xmlResourceParserLoadXmlResourceParser = loadXmlResourceParser(string, i2, typedValue.assetCookie, "colorstatelist");
            ColorStateList colorStateListCreateFromXml = ColorStateList.createFromXml(this, xmlResourceParserLoadXmlResourceParser);
            xmlResourceParserLoadXmlResourceParser.close();
            Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
            if (colorStateListCreateFromXml != null) {
                if (!this.mPreloading) {
                    synchronized (this.mAccessLock) {
                        this.mColorStateListCache.put(j2, new WeakReference<>(colorStateListCreateFromXml));
                    }
                } else if (verifyPreloadConfig(typedValue.changingConfigurations, 0, typedValue.resourceId, CalendarContract.ColorsColumns.COLOR)) {
                    longSparseArray2.put(j2, colorStateListCreateFromXml);
                }
            }
            return colorStateListCreateFromXml;
        } catch (Exception e2) {
            Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
            NotFoundException notFoundException = new NotFoundException("File " + string + " from color state list resource ID #0x" + Integer.toHexString(i2));
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    public Drawable loadDrawable(TypedValue typedValue, int i2) {
        Drawable drawableNewDrawable;
        Drawable drawableCreateFromResourceStream;
        int i3 = typedValue.type;
        boolean z2 = i3 >= 28 && i3 <= 31;
        long j2 = z2 ? typedValue.data : (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable cachedDrawable = getCachedDrawable(z2 ? this.mColorDrawableCache : this.mDrawableCache, j2);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        Drawable.ConstantState constantState = z2 ? sPreloadedColorDrawables.get(j2) : sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].get(j2);
        if (constantState != null) {
            drawableNewDrawable = constantState.newDrawable(this);
        } else {
            if (z2) {
                cachedDrawable = new ColorDrawable(typedValue.data);
            }
            if (cachedDrawable == null) {
                CharSequence charSequence = typedValue.string;
                if (charSequence == null) {
                    throw new NotFoundException("Resource is not a Drawable (color or path): " + typedValue);
                }
                String string = charSequence.toString();
                if (string.endsWith(".xml")) {
                    Trace.traceBegin(Trace.TRACE_TAG_RESOURCES, string);
                    try {
                        XmlResourceParser xmlResourceParserLoadXmlResourceParser = loadXmlResourceParser(string, i2, typedValue.assetCookie, "drawable");
                        drawableCreateFromResourceStream = Drawable.createFromXml(this, xmlResourceParserLoadXmlResourceParser);
                        xmlResourceParserLoadXmlResourceParser.close();
                        Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
                    } catch (Exception e2) {
                        Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
                        NotFoundException notFoundException = new NotFoundException("File " + string + " from drawable resource ID #0x" + Integer.toHexString(i2));
                        notFoundException.initCause(e2);
                        throw notFoundException;
                    }
                } else {
                    Trace.traceBegin(Trace.TRACE_TAG_RESOURCES, string);
                    try {
                        InputStream inputStreamOpenNonAsset = this.mAssets.openNonAsset(typedValue.assetCookie, string, 2);
                        drawableCreateFromResourceStream = Drawable.createFromResourceStream(this, typedValue, inputStreamOpenNonAsset, string, null);
                        inputStreamOpenNonAsset.close();
                        Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
                    } catch (Exception e3) {
                        Trace.traceEnd(Trace.TRACE_TAG_RESOURCES);
                        NotFoundException notFoundException2 = new NotFoundException("File " + string + " from drawable resource ID #0x" + Integer.toHexString(i2));
                        notFoundException2.initCause(e3);
                        throw notFoundException2;
                    }
                }
                drawableNewDrawable = drawableCreateFromResourceStream;
            } else {
                drawableNewDrawable = cachedDrawable;
            }
        }
        if (drawableNewDrawable != null) {
            drawableNewDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            Drawable.ConstantState constantState2 = drawableNewDrawable.getConstantState();
            if (constantState2 != null) {
                if (this.mPreloading) {
                    int changingConfigurations = constantState2.getChangingConfigurations();
                    if (!z2) {
                        int i4 = LAYOUT_DIR_CONFIG;
                        if (verifyPreloadConfig(changingConfigurations, i4, typedValue.resourceId, "drawable")) {
                            if ((changingConfigurations & i4) == 0) {
                                LongSparseArray<Drawable.ConstantState>[] longSparseArrayArr = sPreloadedDrawables;
                                longSparseArrayArr[0].put(j2, constantState2);
                                longSparseArrayArr[1].put(j2, constantState2);
                            } else {
                                sPreloadedDrawables[this.mConfiguration.getLayoutDirection()].put(j2, constantState2);
                            }
                        }
                    } else if (verifyPreloadConfig(changingConfigurations, 0, typedValue.resourceId, "drawable")) {
                        sPreloadedColorDrawables.put(j2, constantState2);
                    }
                } else {
                    synchronized (this.mAccessLock) {
                        try {
                            if (z2) {
                                this.mColorDrawableCache.put(j2, new WeakReference<>(constantState2));
                            } else {
                                this.mDrawableCache.put(j2, new WeakReference<>(constantState2));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
        return drawableNewDrawable;
    }

    public XmlResourceParser loadXmlResourceParser(int i2, String str) {
        XmlResourceParser xmlResourceParserLoadXmlResourceParser;
        synchronized (this.mAccessLock) {
            TypedValue typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
                this.mTmpValue = typedValue;
            }
            getValue(i2, typedValue, true);
            if (typedValue.type != 3) {
                throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
            }
            xmlResourceParserLoadXmlResourceParser = loadXmlResourceParser(typedValue.string.toString(), i2, typedValue.assetCookie, str);
        }
        return xmlResourceParserLoadXmlResourceParser;
    }

    public final Theme newTheme() {
        return new Theme();
    }

    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        TypedArray cachedStyledAttributes = getCachedStyledAttributes(iArr.length);
        XmlBlock.Parser parser = (XmlBlock.Parser) attributeSet;
        this.mAssets.retrieveAttributes(parser.mParseState, iArr, cachedStyledAttributes.mData, cachedStyledAttributes.mIndices);
        cachedStyledAttributes.mRsrcs = iArr;
        cachedStyledAttributes.mXml = parser;
        return cachedStyledAttributes;
    }

    public TypedArray obtainTypedArray(int i2) {
        int arraySize = this.mAssets.getArraySize(i2);
        if (arraySize >= 0) {
            TypedArray cachedStyledAttributes = getCachedStyledAttributes(arraySize);
            cachedStyledAttributes.mLength = this.mAssets.retrieveArray(i2, cachedStyledAttributes.mData);
            cachedStyledAttributes.mIndices[0] = 0;
            return cachedStyledAttributes;
        }
        throw new NotFoundException("Array resource ID #0x" + Integer.toHexString(i2));
    }

    public InputStream openRawResource(int i2) {
        TypedValue typedValue;
        synchronized (this.mAccessLock) {
            typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
            } else {
                this.mTmpValue = null;
            }
        }
        InputStream inputStreamOpenRawResource = openRawResource(i2, typedValue);
        synchronized (this.mAccessLock) {
            if (this.mTmpValue == null) {
                this.mTmpValue = typedValue;
            }
        }
        return inputStreamOpenRawResource;
    }

    public AssetFileDescriptor openRawResourceFd(int i2) {
        TypedValue typedValue;
        synchronized (this.mAccessLock) {
            typedValue = this.mTmpValue;
            if (typedValue == null) {
                typedValue = new TypedValue();
            } else {
                this.mTmpValue = null;
            }
            getValue(i2, typedValue, true);
        }
        try {
            try {
                AssetFileDescriptor assetFileDescriptorOpenNonAssetFd = this.mAssets.openNonAssetFd(typedValue.assetCookie, typedValue.string.toString());
                synchronized (this.mAccessLock) {
                    if (this.mTmpValue == null) {
                        this.mTmpValue = typedValue;
                    }
                }
                return assetFileDescriptorOpenNonAssetFd;
            } catch (Exception e2) {
                NotFoundException notFoundException = new NotFoundException("File " + typedValue.string.toString() + " from drawable resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            }
        } catch (Throwable th) {
            synchronized (this.mAccessLock) {
                if (this.mTmpValue == null) {
                    this.mTmpValue = typedValue;
                }
                throw th;
            }
        }
    }

    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = obtainAttributes(attributeSet, a.Extra);
        String string = typedArrayObtainAttributes.getString(0);
        if (string == null) {
            typedArrayObtainAttributes.recycle();
            throw new XmlPullParserException("<" + str + "> requires an android:name attribute at " + attributeSet.getPositionDescription());
        }
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(1);
        if (typedValuePeekValue == null) {
            typedArrayObtainAttributes.recycle();
            throw new XmlPullParserException("<" + str + "> requires an android:value or android:resource attribute at " + attributeSet.getPositionDescription());
        }
        int i2 = typedValuePeekValue.type;
        if (i2 == 3) {
            bundle.putCharSequence(string, typedValuePeekValue.coerceToString());
        } else if (i2 == 18) {
            bundle.putBoolean(string, typedValuePeekValue.data != 0);
        } else if (i2 >= 16 && i2 <= 31) {
            bundle.putInt(string, typedValuePeekValue.data);
        } else {
            if (i2 != 4) {
                typedArrayObtainAttributes.recycle();
                throw new XmlPullParserException("<" + str + "> only supports string, integer, float, color, and boolean at " + attributeSet.getPositionDescription());
            }
            bundle.putFloat(string, typedValuePeekValue.getFloat());
        }
        typedArrayObtainAttributes.recycle();
    }

    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("extra")) {
                    parseBundleExtra("extra", xmlResourceParser, bundle);
                    n.p(xmlResourceParser);
                } else {
                    n.p(xmlResourceParser);
                }
            }
        }
    }

    public void setCompatibilityInfo(CompatibilityInfo compatibilityInfo) throws Throwable {
        if (compatibilityInfo != null) {
            this.mCompatibilityInfo = compatibilityInfo;
            updateConfiguration(this.mConfiguration, this.mMetrics);
        }
    }

    public final void startPreloading() {
        synchronized (sSync) {
            if (sPreloaded) {
                throw new IllegalStateException("Resources already preloaded");
            }
            sPreloaded = true;
            this.mPreloading = true;
            int i2 = DisplayMetrics.DENSITY_DEVICE;
            sPreloadedDensity = i2;
            this.mConfiguration.densityDpi = i2;
            updateConfiguration(null, null);
        }
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) throws Throwable {
        updateConfiguration(configuration, displayMetrics, null);
    }

    public Resources(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration, CompatibilityInfo compatibilityInfo, IBinder iBinder) throws Throwable {
        this.mAccessLock = new Object();
        this.mTmpConfig = new Configuration();
        this.mTmpValue = new TypedValue();
        this.mDrawableCache = new LongSparseArray<>(0);
        this.mColorStateListCache = new LongSparseArray<>(0);
        this.mColorDrawableCache = new LongSparseArray<>(0);
        this.mCachedStyledAttributes = null;
        this.mLastRetrievedAttrs = null;
        this.mLastCachedXmlBlockIndex = -1;
        this.mCachedXmlBlockIds = new int[]{0, 0, 0, 0};
        this.mCachedXmlBlocks = new XmlBlock[4];
        this.mConfiguration = new Configuration();
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        this.mMetrics = displayMetrics2;
        this.mCompatibilityInfo = CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO;
        this.mAssets = assetManager;
        displayMetrics2.setToDefaults();
        if (compatibilityInfo != null) {
            this.mCompatibilityInfo = compatibilityInfo;
        }
        this.mToken = new WeakReference<>(iBinder);
        updateConfiguration(configuration, displayMetrics);
        assetManager.ensureStringBlocks();
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo) throws Throwable {
        int i2;
        int i3;
        synchronized (this.mAccessLock) {
            try {
                if (compatibilityInfo != null) {
                    this.mCompatibilityInfo = compatibilityInfo;
                }
                if (displayMetrics != null) {
                    this.mMetrics.setTo(displayMetrics);
                }
                this.mCompatibilityInfo.applyToDisplayMetrics(this.mMetrics);
                int iActivityInfoConfigToNative = 268435455;
                if (configuration != null) {
                    this.mTmpConfig.setTo(configuration);
                    int i4 = configuration.densityDpi;
                    if (i4 == 0) {
                        i4 = this.mMetrics.noncompatDensityDpi;
                    }
                    this.mCompatibilityInfo.applyToConfiguration(i4, this.mTmpConfig);
                    Configuration configuration2 = this.mTmpConfig;
                    if (configuration2.locale == null) {
                        configuration2.locale = Locale.getDefault();
                        Configuration configuration3 = this.mTmpConfig;
                        configuration3.setLayoutDirection(configuration3.locale);
                    }
                    iActivityInfoConfigToNative = ActivityInfo.activityInfoConfigToNative(this.mConfiguration.updateFrom(this.mTmpConfig));
                }
                Configuration configuration4 = this.mConfiguration;
                if (configuration4.locale == null) {
                    configuration4.locale = Locale.getDefault();
                    Configuration configuration5 = this.mConfiguration;
                    configuration5.setLayoutDirection(configuration5.locale);
                }
                Configuration configuration6 = this.mConfiguration;
                int i5 = configuration6.densityDpi;
                if (i5 != 0) {
                    DisplayMetrics displayMetrics2 = this.mMetrics;
                    displayMetrics2.densityDpi = i5;
                    displayMetrics2.density = i5 * 0.00625f;
                }
                DisplayMetrics displayMetrics3 = this.mMetrics;
                displayMetrics3.scaledDensity = displayMetrics3.density * configuration6.fontScale;
                String language = null;
                Locale locale = configuration6.locale;
                if (locale != null) {
                    language = locale.getLanguage();
                    if (this.mConfiguration.locale.getCountry() != null) {
                        language = language + "-" + this.mConfiguration.locale.getCountry();
                    }
                }
                String str = language;
                DisplayMetrics displayMetrics4 = this.mMetrics;
                int i6 = displayMetrics4.widthPixels;
                int i7 = displayMetrics4.heightPixels;
                if (i6 >= i7) {
                    i3 = i7;
                    i2 = i6;
                } else {
                    i2 = i7;
                    i3 = i6;
                }
                Configuration configuration7 = this.mConfiguration;
                int i8 = configuration7.keyboardHidden;
                if (i8 == 1 && configuration7.hardKeyboardHidden == 2) {
                    i8 = 3;
                }
                int i9 = iActivityInfoConfigToNative;
                try {
                    this.mAssets.setConfiguration(configuration7.mcc, configuration7.mnc, str, configuration7.orientation, configuration7.touchscreen, configuration7.densityDpi, configuration7.keyboard, i8, configuration7.navigation, i2, i3, configuration7.smallestScreenWidthDp, configuration7.screenWidthDp, configuration7.screenHeightDp, configuration7.screenLayout, configuration7.uiMode, Build.VERSION.RESOURCES_SDK_INT);
                    clearDrawableCacheLocked(this.mDrawableCache, i9);
                    clearDrawableCacheLocked(this.mColorDrawableCache, i9);
                    this.mColorStateListCache.clear();
                    flushLayoutCache();
                    synchronized (sSync) {
                        if (this.mPluralRule != null) {
                            this.mPluralRule = NativePluralRules.forLocale(configuration.locale);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public String getQuantityString(int i2, int i3) {
        return getQuantityText(i2, i3).toString();
    }

    public CharSequence getText(int i2, CharSequence charSequence) {
        CharSequence resourceText = i2 != 0 ? this.mAssets.getResourceText(i2) : null;
        return resourceText != null ? resourceText : charSequence;
    }

    public void getValue(String str, TypedValue typedValue, boolean z2) {
        int identifier = getIdentifier(str, "string", null);
        if (identifier != 0) {
            getValue(identifier, typedValue, z2);
            return;
        }
        throw new NotFoundException("String resource name " + str);
    }

    public final class Theme {
        private final AssetManager mAssets;
        private final int mTheme;

        public Theme() {
            AssetManager assetManager = Resources.this.mAssets;
            this.mAssets = assetManager;
            this.mTheme = assetManager.createTheme();
        }

        public void applyStyle(int i2, boolean z2) {
            AssetManager.applyThemeStyle(this.mTheme, i2, z2);
        }

        public void dump(int i2, String str, String str2) {
            AssetManager.dumpTheme(this.mTheme, i2, str, str2);
        }

        public void finalize() throws Throwable {
            super.finalize();
            this.mAssets.releaseTheme(this.mTheme);
        }

        public TypedArray obtainStyledAttributes(int[] iArr) {
            TypedArray cachedStyledAttributes = Resources.this.getCachedStyledAttributes(iArr.length);
            cachedStyledAttributes.mRsrcs = iArr;
            AssetManager.applyStyle(this.mTheme, 0, 0, 0, iArr, cachedStyledAttributes.mData, cachedStyledAttributes.mIndices);
            return cachedStyledAttributes;
        }

        public boolean resolveAttribute(int i2, TypedValue typedValue, boolean z2) {
            return this.mAssets.getThemeValue(this.mTheme, i2, typedValue, z2);
        }

        public void setTo(Theme theme) {
            AssetManager.copyTheme(this.mTheme, theme.mTheme);
        }

        public TypedArray obtainStyledAttributes(int i2, int[] iArr) {
            TypedArray cachedStyledAttributes = Resources.this.getCachedStyledAttributes(iArr.length);
            cachedStyledAttributes.mRsrcs = iArr;
            AssetManager.applyStyle(this.mTheme, 0, i2, 0, iArr, cachedStyledAttributes.mData, cachedStyledAttributes.mIndices);
            return cachedStyledAttributes;
        }

        public TypedArray obtainStyledAttributes(AttributeSet attributeSet, int[] iArr, int i2, int i3) {
            TypedArray cachedStyledAttributes = Resources.this.getCachedStyledAttributes(iArr.length);
            XmlBlock.Parser parser = (XmlBlock.Parser) attributeSet;
            AssetManager.applyStyle(this.mTheme, i2, i3, parser != null ? parser.mParseState : 0, iArr, cachedStyledAttributes.mData, cachedStyledAttributes.mIndices);
            cachedStyledAttributes.mRsrcs = iArr;
            cachedStyledAttributes.mXml = parser;
            return cachedStyledAttributes;
        }
    }

    public String getString(int i2, Object... objArr) {
        return String.format(this.mConfiguration.locale, getString(i2), objArr);
    }

    public XmlResourceParser loadXmlResourceParser(String str, int i2, int i3, String str2) {
        if (i2 != 0) {
            try {
                synchronized (this.mCachedXmlBlockIds) {
                    int length = this.mCachedXmlBlockIds.length;
                    int i4 = 0;
                    for (int i5 = 0; i5 < length; i5++) {
                        if (this.mCachedXmlBlockIds[i5] == i2) {
                            return this.mCachedXmlBlocks[i5].newParser();
                        }
                    }
                    XmlBlock xmlBlockOpenXmlBlockAsset = this.mAssets.openXmlBlockAsset(i3, str);
                    if (xmlBlockOpenXmlBlockAsset != null) {
                        int i6 = this.mLastCachedXmlBlockIndex + 1;
                        if (i6 < length) {
                            i4 = i6;
                        }
                        this.mLastCachedXmlBlockIndex = i4;
                        XmlBlock xmlBlock = this.mCachedXmlBlocks[i4];
                        if (xmlBlock != null) {
                            xmlBlock.close();
                        }
                        this.mCachedXmlBlockIds[i4] = i2;
                        this.mCachedXmlBlocks[i4] = xmlBlockOpenXmlBlockAsset;
                        return xmlBlockOpenXmlBlockAsset.newParser();
                    }
                }
            } catch (Exception e2) {
                NotFoundException notFoundException = new NotFoundException("File " + str + " from xml type " + str2 + " resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            }
        }
        throw new NotFoundException("File " + str + " from xml type " + str2 + " resource ID #0x" + Integer.toHexString(i2));
    }

    public InputStream openRawResource(int i2, TypedValue typedValue) {
        getValue(i2, typedValue, true);
        try {
            return this.mAssets.openNonAsset(typedValue.assetCookie, typedValue.string.toString(), 2);
        } catch (Exception e2) {
            NotFoundException notFoundException = new NotFoundException("File " + typedValue.string.toString() + " from drawable resource ID #0x" + Integer.toHexString(i2));
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    private Resources() throws Throwable {
        this.mAccessLock = new Object();
        this.mTmpConfig = new Configuration();
        this.mTmpValue = new TypedValue();
        this.mDrawableCache = new LongSparseArray<>(0);
        this.mColorStateListCache = new LongSparseArray<>(0);
        this.mColorDrawableCache = new LongSparseArray<>(0);
        this.mCachedStyledAttributes = null;
        this.mLastRetrievedAttrs = null;
        this.mLastCachedXmlBlockIndex = -1;
        this.mCachedXmlBlockIds = new int[]{0, 0, 0, 0};
        this.mCachedXmlBlocks = new XmlBlock[4];
        Configuration configuration = new Configuration();
        this.mConfiguration = configuration;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mMetrics = displayMetrics;
        this.mCompatibilityInfo = CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO;
        AssetManager system = AssetManager.getSystem();
        this.mAssets = system;
        configuration.setToDefaults();
        displayMetrics.setToDefaults();
        updateConfiguration(null, null);
        system.ensureStringBlocks();
    }
}
