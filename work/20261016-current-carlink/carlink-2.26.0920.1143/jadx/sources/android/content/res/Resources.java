package android.content.res;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.StateListAnimator;
import android.app.m;
import android.graphics.Movie;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableInflater;
import android.media.TtmlUtils;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pools;
import android.util.TypedValue;
import android.view.DisplayAdjustments;
import android.view.ViewDebug;
import android.view.ViewHierarchyEncoder;
import com.android.internal.R;
import com.android.internal.util.GrowingArrayUtils;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class Resources {
    static final String TAG = "Resources";
    static Resources mSystem;
    private static final Object sSync = new Object();
    final ClassLoader mClassLoader;
    private DrawableInflater mDrawableInflater;
    private ResourcesImpl mResourcesImpl;
    private final ArrayList<WeakReference<Theme>> mThemeRefs;
    private TypedValue mTmpValue;
    private final Object mTmpValueLock;
    final Pools.SynchronizedPool<TypedArray> mTypedArrayPool;

    public static class NotFoundException extends RuntimeException {
        public NotFoundException() {
        }

        public NotFoundException(String str) {
            super(str);
        }

        public NotFoundException(String str, Exception exc) {
            super(str, exc);
        }
    }

    public final class Theme {
        private ResourcesImpl.ThemeImpl mThemeImpl;

        private String getResourceNameFromHexString(String str) {
            return Resources.this.getResourceName(Integer.parseInt(str, 16));
        }

        public void applyStyle(int i2, boolean z2) {
            this.mThemeImpl.applyStyle(i2, z2);
        }

        public void dump(int i2, String str, String str2) {
            this.mThemeImpl.dump(i2, str, str2);
        }

        public void encode(ViewHierarchyEncoder viewHierarchyEncoder) {
            viewHierarchyEncoder.beginObject(this);
            String[] theme = getTheme();
            for (int i2 = 0; i2 < theme.length; i2 += 2) {
                viewHierarchyEncoder.addProperty(theme[i2], theme[i2 + 1]);
            }
            viewHierarchyEncoder.endObject();
        }

        public int[] getAllAttributes() {
            return this.mThemeImpl.getAllAttributes();
        }

        public int getAppliedStyleResId() {
            return this.mThemeImpl.getAppliedStyleResId();
        }

        public int getChangingConfigurations() {
            return this.mThemeImpl.getChangingConfigurations();
        }

        public Drawable getDrawable(int i2) {
            return Resources.this.getDrawable(i2, this);
        }

        public ThemeKey getKey() {
            return this.mThemeImpl.getKey();
        }

        public long getNativeTheme() {
            return this.mThemeImpl.getNativeTheme();
        }

        public Resources getResources() {
            return Resources.this;
        }

        @ViewDebug.ExportedProperty(category = "theme", hasAdjacentMapping = true)
        public String[] getTheme() {
            return this.mThemeImpl.getTheme();
        }

        public TypedArray obtainStyledAttributes(int[] iArr) {
            return this.mThemeImpl.obtainStyledAttributes(this, null, iArr, 0, 0);
        }

        public void rebase() {
            this.mThemeImpl.rebase();
        }

        public boolean resolveAttribute(int i2, TypedValue typedValue, boolean z2) {
            return this.mThemeImpl.resolveAttribute(i2, typedValue, z2);
        }

        public TypedArray resolveAttributes(int[] iArr, int[] iArr2) {
            return this.mThemeImpl.resolveAttributes(this, iArr, iArr2);
        }

        public void setImpl(ResourcesImpl.ThemeImpl themeImpl) {
            this.mThemeImpl = themeImpl;
        }

        public void setTo(Theme theme) {
            this.mThemeImpl.setTo(theme.mThemeImpl);
        }

        private Theme() {
        }

        public TypedArray obtainStyledAttributes(int i2, int[] iArr) {
            return this.mThemeImpl.obtainStyledAttributes(this, null, iArr, 0, i2);
        }

        public TypedArray obtainStyledAttributes(AttributeSet attributeSet, int[] iArr, int i2, int i3) {
            return this.mThemeImpl.obtainStyledAttributes(this, attributeSet, iArr, i2, i3);
        }
    }

    public static class ThemeKey implements Cloneable {
        int mCount;
        boolean[] mForce;
        private int mHashCode = 0;
        int[] mResId;

        public void append(int i2, boolean z2) {
            if (this.mResId == null) {
                this.mResId = new int[4];
            }
            if (this.mForce == null) {
                this.mForce = new boolean[4];
            }
            this.mResId = GrowingArrayUtils.append(this.mResId, this.mCount, i2);
            this.mForce = GrowingArrayUtils.append(this.mForce, this.mCount, z2);
            this.mCount++;
            this.mHashCode = (((this.mHashCode * 31) + i2) * 31) + (z2 ? 1 : 0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || hashCode() != obj.hashCode()) {
                return false;
            }
            ThemeKey themeKey = (ThemeKey) obj;
            int i2 = this.mCount;
            if (i2 != themeKey.mCount) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                if (this.mResId[i3] != themeKey.mResId[i3] || this.mForce[i3] != themeKey.mForce[i3]) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.mHashCode;
        }

        public void setTo(ThemeKey themeKey) {
            int[] iArr = themeKey.mResId;
            this.mResId = iArr == null ? null : (int[]) iArr.clone();
            boolean[] zArr = themeKey.mForce;
            this.mForce = zArr != null ? (boolean[]) zArr.clone() : null;
            this.mCount = themeKey.mCount;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public ThemeKey m19clone() {
            ThemeKey themeKey = new ThemeKey();
            themeKey.mResId = this.mResId;
            themeKey.mForce = this.mForce;
            themeKey.mCount = this.mCount;
            themeKey.mHashCode = this.mHashCode;
            return themeKey;
        }
    }

    @Deprecated
    public Resources(AssetManager assetManager, DisplayMetrics displayMetrics, Configuration configuration) {
        this(null);
        this.mResourcesImpl = new ResourcesImpl(assetManager, displayMetrics, configuration, new DisplayAdjustments());
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

    private TypedValue obtainTempTypedValue() {
        TypedValue typedValue;
        synchronized (this.mTmpValueLock) {
            typedValue = this.mTmpValue;
            if (typedValue != null) {
                this.mTmpValue = null;
            } else {
                typedValue = null;
            }
        }
        return typedValue == null ? new TypedValue() : typedValue;
    }

    private void releaseTempTypedValue(TypedValue typedValue) {
        synchronized (this.mTmpValueLock) {
            if (this.mTmpValue == null) {
                this.mTmpValue = typedValue;
            }
        }
    }

    public static boolean resourceHasPackage(int i2) {
        return (i2 >>> 24) != 0;
    }

    public static int selectDefaultTheme(int i2, int i3) {
        return selectSystemTheme(i2, i3, 16973829, 16973931, 16974120, 16974143);
    }

    public static int selectSystemTheme(int i2, int i3, int i4, int i5, int i6, int i7) {
        if (i2 != 0) {
            return i2;
        }
        if (i3 < 11) {
            return i4;
        }
        if (i3 < 14) {
            return i5;
        }
        return i3 < 24 ? i6 : i7;
    }

    public static void updateSystemConfiguration(Configuration configuration, DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo) {
        Resources resources = mSystem;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics, compatibilityInfo);
        }
    }

    public int calcConfigChanges(Configuration configuration) {
        return this.mResourcesImpl.calcConfigChanges(configuration);
    }

    public final void finishPreloading() {
        this.mResourcesImpl.finishPreloading();
    }

    public final void flushLayoutCache() {
        this.mResourcesImpl.flushLayoutCache();
    }

    public XmlResourceParser getAnimation(int i2) {
        return loadXmlResourceParser(i2, "anim");
    }

    public ConfigurationBoundResourceCache<Animator> getAnimatorCache() {
        return this.mResourcesImpl.getAnimatorCache();
    }

    public final AssetManager getAssets() {
        return this.mResourcesImpl.getAssets();
    }

    public boolean getBoolean(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            this.mResourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            int i3 = typedValueObtainTempTypedValue.type;
            if (i3 >= 16 && i3 <= 31) {
                boolean z2 = typedValueObtainTempTypedValue.data != 0;
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return z2;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public ClassLoader getClassLoader() {
        return this.mClassLoader;
    }

    @Deprecated
    public int getColor(int i2) {
        return getColor(i2, null);
    }

    @Deprecated
    public ColorStateList getColorStateList(int i2) {
        ColorStateList colorStateList = getColorStateList(i2, null);
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            Log.w(TAG, "ColorStateList " + getResourceName(i2) + " has unresolved theme attributes! Consider using Resources.getColorStateList(int, Theme) or Context.getColorStateList(int).", new RuntimeException());
        }
        return colorStateList;
    }

    public CompatibilityInfo getCompatibilityInfo() {
        return this.mResourcesImpl.getCompatibilityInfo();
    }

    public Configuration getConfiguration() {
        return this.mResourcesImpl.getConfiguration();
    }

    public float getDimension(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            if (typedValueObtainTempTypedValue.type == 5) {
                float fComplexToDimension = TypedValue.complexToDimension(typedValueObtainTempTypedValue.data, resourcesImpl.getDisplayMetrics());
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return fComplexToDimension;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public int getDimensionPixelOffset(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            if (typedValueObtainTempTypedValue.type == 5) {
                int iComplexToDimensionPixelOffset = TypedValue.complexToDimensionPixelOffset(typedValueObtainTempTypedValue.data, resourcesImpl.getDisplayMetrics());
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return iComplexToDimensionPixelOffset;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public int getDimensionPixelSize(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            if (typedValueObtainTempTypedValue.type == 5) {
                int iComplexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValueObtainTempTypedValue.data, resourcesImpl.getDisplayMetrics());
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return iComplexToDimensionPixelSize;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public DisplayAdjustments getDisplayAdjustments() {
        return this.mResourcesImpl.getDisplayAdjustments();
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.mResourcesImpl.getDisplayMetrics();
    }

    @Deprecated
    public Drawable getDrawable(int i2) {
        Drawable drawable = getDrawable(i2, null);
        if (drawable != null && drawable.canApplyTheme()) {
            Log.w(TAG, "Drawable " + getResourceName(i2) + " has unresolved theme attributes! Consider using Resources.getDrawable(int, Theme) or Context.getDrawable(int).", new RuntimeException());
        }
        return drawable;
    }

    @Deprecated
    public Drawable getDrawableForDensity(int i2, int i3) {
        return getDrawableForDensity(i2, i3, null);
    }

    public final DrawableInflater getDrawableInflater() {
        if (this.mDrawableInflater == null) {
            this.mDrawableInflater = new DrawableInflater(this, this.mClassLoader);
        }
        return this.mDrawableInflater;
    }

    public float getFloat(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            this.mResourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            if (typedValueObtainTempTypedValue.type == 4) {
                float f2 = typedValueObtainTempTypedValue.getFloat();
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return f2;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public Typeface getFont(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            Typeface typefaceLoadFont = resourcesImpl.loadFont(this, typedValueObtainTempTypedValue, i2);
            if (typefaceLoadFont != null) {
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return typefaceLoadFont;
            }
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw new NotFoundException(m.d(i2, new StringBuilder("Font resource ID #0x")));
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public float getFraction(int i2, int i3, int i4) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            this.mResourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            if (typedValueObtainTempTypedValue.type == 6) {
                float fComplexToFraction = TypedValue.complexToFraction(typedValueObtainTempTypedValue.data, i3, i4);
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return fComplexToFraction;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public int getIdentifier(String str, String str2, String str3) {
        return this.mResourcesImpl.getIdentifier(str, str2, str3);
    }

    public ResourcesImpl getImpl() {
        return this.mResourcesImpl;
    }

    public int[] getIntArray(int i2) {
        int[] arrayIntResource = this.mResourcesImpl.getAssets().getArrayIntResource(i2);
        if (arrayIntResource != null) {
            return arrayIntResource;
        }
        throw new NotFoundException(m.d(i2, new StringBuilder("Int array resource ID #0x")));
    }

    public int getInteger(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            this.mResourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            int i3 = typedValueObtainTempTypedValue.type;
            if (i3 >= 16 && i3 <= 31) {
                int i4 = typedValueObtainTempTypedValue.data;
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return i4;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public XmlResourceParser getLayout(int i2) {
        return loadXmlResourceParser(i2, TtmlUtils.TAG_LAYOUT);
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
        return this.mResourcesImpl.getPreloadedDrawables();
    }

    public String getQuantityString(int i2, int i3, Object... objArr) {
        return String.format(this.mResourcesImpl.getConfiguration().getLocales().get(0), getQuantityText(i2, i3).toString(), objArr);
    }

    public CharSequence getQuantityText(int i2, int i3) {
        return this.mResourcesImpl.getQuantityText(i2, i3);
    }

    public String getResourceEntryName(int i2) {
        return this.mResourcesImpl.getResourceEntryName(i2);
    }

    public String getResourceName(int i2) {
        return this.mResourcesImpl.getResourceName(i2);
    }

    public String getResourcePackageName(int i2) {
        return this.mResourcesImpl.getResourcePackageName(i2);
    }

    public String getResourceTypeName(int i2) {
        return this.mResourcesImpl.getResourceTypeName(i2);
    }

    public Configuration[] getSizeConfigurations() {
        return this.mResourcesImpl.getSizeConfigurations();
    }

    public ConfigurationBoundResourceCache<StateListAnimator> getStateListAnimatorCache() {
        return this.mResourcesImpl.getStateListAnimatorCache();
    }

    public String getString(int i2) {
        return getText(i2).toString();
    }

    public String[] getStringArray(int i2) {
        String[] resourceStringArray = this.mResourcesImpl.getAssets().getResourceStringArray(i2);
        if (resourceStringArray != null) {
            return resourceStringArray;
        }
        throw new NotFoundException(m.d(i2, new StringBuilder("String array resource ID #0x")));
    }

    public CharSequence getText(int i2) {
        CharSequence resourceText = this.mResourcesImpl.getAssets().getResourceText(i2);
        if (resourceText != null) {
            return resourceText;
        }
        throw new NotFoundException(m.d(i2, new StringBuilder("String resource ID #0x")));
    }

    public CharSequence[] getTextArray(int i2) {
        CharSequence[] resourceTextArray = this.mResourcesImpl.getAssets().getResourceTextArray(i2);
        if (resourceTextArray != null) {
            return resourceTextArray;
        }
        throw new NotFoundException(m.d(i2, new StringBuilder("Text array resource ID #0x")));
    }

    public void getValue(int i2, TypedValue typedValue, boolean z2) {
        this.mResourcesImpl.getValue(i2, typedValue, z2);
    }

    public void getValueForDensity(int i2, int i3, TypedValue typedValue, boolean z2) {
        this.mResourcesImpl.getValueForDensity(i2, i3, typedValue, z2);
    }

    public XmlResourceParser getXml(int i2) {
        return loadXmlResourceParser(i2, "xml");
    }

    public ColorStateList loadColorStateList(TypedValue typedValue, int i2, Theme theme) {
        return this.mResourcesImpl.loadColorStateList(this, typedValue, i2, theme);
    }

    public ComplexColor loadComplexColor(TypedValue typedValue, int i2, Theme theme) {
        return this.mResourcesImpl.loadComplexColor(this, typedValue, i2, theme);
    }

    public Drawable loadDrawable(TypedValue typedValue, int i2, int i3, Theme theme) {
        return this.mResourcesImpl.loadDrawable(this, typedValue, i2, i3, theme);
    }

    public XmlResourceParser loadXmlResourceParser(int i2, String str) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            if (typedValueObtainTempTypedValue.type == 3) {
                XmlResourceParser xmlResourceParserLoadXmlResourceParser = resourcesImpl.loadXmlResourceParser(typedValueObtainTempTypedValue.string.toString(), i2, typedValueObtainTempTypedValue.assetCookie, str);
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return xmlResourceParserLoadXmlResourceParser;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public final Theme newTheme() {
        Theme theme = new Theme();
        theme.setImpl(this.mResourcesImpl.newThemeImpl());
        synchronized (this.mThemeRefs) {
            this.mThemeRefs.add(new WeakReference<>(theme));
        }
        return theme;
    }

    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        TypedArray typedArrayObtain = TypedArray.obtain(this, iArr.length);
        XmlBlock.Parser parser = (XmlBlock.Parser) attributeSet;
        this.mResourcesImpl.getAssets().retrieveAttributes(parser.mParseState, iArr, typedArrayObtain.mData, typedArrayObtain.mIndices);
        typedArrayObtain.mXml = parser;
        return typedArrayObtain;
    }

    public TypedArray obtainTypedArray(int i2) {
        ResourcesImpl resourcesImpl = this.mResourcesImpl;
        int arraySize = resourcesImpl.getAssets().getArraySize(i2);
        if (arraySize < 0) {
            throw new NotFoundException(m.d(i2, new StringBuilder("Array resource ID #0x")));
        }
        TypedArray typedArrayObtain = TypedArray.obtain(this, arraySize);
        typedArrayObtain.mLength = resourcesImpl.getAssets().retrieveArray(i2, typedArrayObtain.mData);
        typedArrayObtain.mIndices[0] = 0;
        return typedArrayObtain;
    }

    public InputStream openRawResource(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            return openRawResource(i2, typedValueObtainTempTypedValue);
        } finally {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
        }
    }

    public AssetFileDescriptor openRawResourceFd(int i2) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            return this.mResourcesImpl.openRawResourceFd(i2, typedValueObtainTempTypedValue);
        } finally {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
        }
    }

    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = obtainAttributes(attributeSet, R.styleable.Extra);
        String string = typedArrayObtainAttributes.getString(0);
        if (string == null) {
            typedArrayObtainAttributes.recycle();
            StringBuilder sbV = c.v("<", str, "> requires an android:name attribute at ");
            sbV.append(attributeSet.getPositionDescription());
            throw new XmlPullParserException(sbV.toString());
        }
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(1);
        if (typedValuePeekValue == null) {
            typedArrayObtainAttributes.recycle();
            StringBuilder sbV2 = c.v("<", str, "> requires an android:value or android:resource attribute at ");
            sbV2.append(attributeSet.getPositionDescription());
            throw new XmlPullParserException(sbV2.toString());
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
                StringBuilder sbV3 = c.v("<", str, "> only supports string, integer, float, color, and boolean at ");
                sbV3.append(attributeSet.getPositionDescription());
                throw new XmlPullParserException(sbV3.toString());
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
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else {
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
    }

    public void preloadFonts(int i2) {
        TypedArray typedArrayObtainTypedArray = obtainTypedArray(i2);
        try {
            int length = typedArrayObtainTypedArray.length();
            for (int i3 = 0; i3 < length; i3++) {
                typedArrayObtainTypedArray.getFont(i3);
            }
            typedArrayObtainTypedArray.recycle();
        } catch (Throwable th) {
            typedArrayObtainTypedArray.recycle();
            throw th;
        }
    }

    public void setCompatibilityInfo(CompatibilityInfo compatibilityInfo) {
        if (compatibilityInfo != null) {
            this.mResourcesImpl.updateConfiguration(null, null, compatibilityInfo);
        }
    }

    public void setImpl(ResourcesImpl resourcesImpl) {
        if (resourcesImpl == this.mResourcesImpl) {
            return;
        }
        this.mResourcesImpl = resourcesImpl;
        synchronized (this.mThemeRefs) {
            int size = this.mThemeRefs.size();
            for (int i2 = 0; i2 < size; i2++) {
                WeakReference<Theme> weakReference = this.mThemeRefs.get(i2);
                Theme theme = weakReference != null ? weakReference.get() : null;
                if (theme != null) {
                    theme.setImpl(this.mResourcesImpl.newThemeImpl(theme.getKey()));
                }
            }
        }
    }

    public final void startPreloading() {
        this.mResourcesImpl.startPreloading();
    }

    @Deprecated
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        updateConfiguration(configuration, displayMetrics, null);
    }

    public int getColor(int i2, Theme theme) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            int i3 = typedValueObtainTempTypedValue.type;
            if (i3 >= 16 && i3 <= 31) {
                int i4 = typedValueObtainTempTypedValue.data;
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return i4;
            }
            if (i3 == 3) {
                int defaultColor = resourcesImpl.loadColorStateList(this, typedValueObtainTempTypedValue, i2, theme).getDefaultColor();
                releaseTempTypedValue(typedValueObtainTempTypedValue);
                return defaultColor;
            }
            throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " type #0x" + Integer.toHexString(typedValueObtainTempTypedValue.type) + " is not valid");
        } catch (Throwable th) {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
            throw th;
        }
    }

    public Drawable getDrawableForDensity(int i2, int i3, Theme theme) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValueForDensity(i2, i3, typedValueObtainTempTypedValue, true);
            return resourcesImpl.loadDrawable(this, typedValueObtainTempTypedValue, i2, i3, theme);
        } finally {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
        }
    }

    public String getString(int i2, Object... objArr) {
        return String.format(this.mResourcesImpl.getConfiguration().getLocales().get(0), getString(i2), objArr);
    }

    public void getValue(String str, TypedValue typedValue, boolean z2) {
        this.mResourcesImpl.getValue(str, typedValue, z2);
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics, CompatibilityInfo compatibilityInfo) {
        this.mResourcesImpl.updateConfiguration(configuration, displayMetrics, compatibilityInfo);
    }

    public Resources(ClassLoader classLoader) {
        this.mTypedArrayPool = new Pools.SynchronizedPool<>(5);
        this.mTmpValueLock = new Object();
        this.mTmpValue = new TypedValue();
        this.mThemeRefs = new ArrayList<>();
        this.mClassLoader = classLoader == null ? ClassLoader.getSystemClassLoader() : classLoader;
    }

    public String getQuantityString(int i2, int i3) {
        return getQuantityText(i2, i3).toString();
    }

    public ColorStateList getColorStateList(int i2, Theme theme) {
        TypedValue typedValueObtainTempTypedValue = obtainTempTypedValue();
        try {
            ResourcesImpl resourcesImpl = this.mResourcesImpl;
            resourcesImpl.getValue(i2, typedValueObtainTempTypedValue, true);
            return resourcesImpl.loadColorStateList(this, typedValueObtainTempTypedValue, i2, theme);
        } finally {
            releaseTempTypedValue(typedValueObtainTempTypedValue);
        }
    }

    public Drawable getDrawable(int i2, Theme theme) {
        return getDrawableForDensity(i2, 0, theme);
    }

    public InputStream openRawResource(int i2, TypedValue typedValue) {
        return this.mResourcesImpl.openRawResource(i2, typedValue);
    }

    public static TypedArray obtainAttributes(Resources resources, Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public CharSequence getText(int i2, CharSequence charSequence) {
        CharSequence resourceText = i2 != 0 ? this.mResourcesImpl.getAssets().getResourceText(i2) : null;
        return resourceText != null ? resourceText : charSequence;
    }

    private Resources() {
        this(null);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.setToDefaults();
        Configuration configuration = new Configuration();
        configuration.setToDefaults();
        this.mResourcesImpl = new ResourcesImpl(AssetManager.getSystem(), displayMetrics, configuration, new DisplayAdjustments());
    }

    public XmlResourceParser loadXmlResourceParser(String str, int i2, int i3, String str2) {
        return this.mResourcesImpl.loadXmlResourceParser(str, i2, i3, str2);
    }

    public Typeface getFont(TypedValue typedValue, int i2) {
        return this.mResourcesImpl.loadFont(this, typedValue, i2);
    }
}
