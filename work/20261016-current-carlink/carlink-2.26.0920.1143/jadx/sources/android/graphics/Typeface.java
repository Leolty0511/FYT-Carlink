package android.graphics;

import android.app.m;
import android.content.res.AssetManager;
import android.content.res.FontResourcesParser;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.provider.FontRequest;
import android.provider.FontsContract;
import android.provider.SettingsStringUtil;
import android.text.FontConfig;
import android.util.Base64;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.LruCache;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class Typeface {
    public static final int BOLD = 1;
    public static final int BOLD_ITALIC = 3;
    public static final Typeface DEFAULT;
    public static final Typeface DEFAULT_BOLD;
    static final String FONTS_CONFIG = "fonts.xml";
    public static final int ITALIC = 2;
    public static final Typeface MONOSPACE;
    public static final int NORMAL = 0;
    public static final int RESOLVE_BY_FONT_TABLE = -1;
    public static final Typeface SANS_SERIF;
    public static final Typeface SERIF;
    private static final int STYLE_ITALIC = 1;
    private static final int STYLE_NORMAL = 0;
    private static String TAG = "Typeface";
    static Typeface sDefaultTypeface;
    static Typeface[] sDefaults;
    static FontFamily[] sFallbackFonts;
    static Map<String, Typeface> sSystemFontMap;
    private int mStyle;
    private int[] mSupportedAxes;
    private int mWeight;
    public long native_instance;
    private static final LongSparseArray<SparseArray<Typeface>> sTypefaceCache = new LongSparseArray<>(3);

    @GuardedBy("sLock")
    private static final LruCache<String, Typeface> sDynamicTypefaceCache = new LruCache<>(16);
    private static final Object sLock = new Object();
    private static final int[] EMPTY_AXES = new int[0];

    static {
        init();
        Typeface typefaceCreate = create((String) null, 0);
        DEFAULT = typefaceCreate;
        Typeface typefaceCreate2 = create((String) null, 1);
        DEFAULT_BOLD = typefaceCreate2;
        SANS_SERIF = create("sans-serif", 0);
        SERIF = create("serif", 0);
        MONOSPACE = create("monospace", 0);
        sDefaults = new Typeface[]{typefaceCreate, typefaceCreate2, create((String) null, 2), create((String) null, 3)};
    }

    public static Typeface create(String str, int i2) {
        Map<String, Typeface> map = sSystemFontMap;
        if (map != null) {
            return create(map.get(str), i2);
        }
        return null;
    }

    public static Typeface createFromAsset(AssetManager assetManager, String str) {
        str.getClass();
        if (sFallbackFonts != null) {
            synchronized (sLock) {
                Typeface typefaceBuild = new Builder(assetManager, str).build();
                if (typefaceBuild != null) {
                    return typefaceBuild;
                }
                String strCreateAssetUid = Builder.createAssetUid(assetManager, str, 0, null, -1, -1);
                LruCache<String, Typeface> lruCache = sDynamicTypefaceCache;
                Typeface typeface = lruCache.get(strCreateAssetUid);
                if (typeface != null) {
                    return typeface;
                }
                FontFamily fontFamily = new FontFamily();
                if (fontFamily.addFontFromAssetManager(assetManager, str, 0, true, 0, -1, -1, null)) {
                    fontFamily.allowUnsupportedFont();
                    fontFamily.freeze();
                    Typeface typefaceCreateFromFamiliesWithDefault = createFromFamiliesWithDefault(new FontFamily[]{fontFamily}, -1, -1);
                    lruCache.put(strCreateAssetUid, typefaceCreateFromFamiliesWithDefault);
                    return typefaceCreateFromFamiliesWithDefault;
                }
                fontFamily.abortCreation();
            }
        }
        throw new RuntimeException("Font asset not found ".concat(str));
    }

    private static Typeface createFromFamilies(FontFamily[] fontFamilyArr) {
        long[] jArr = new long[fontFamilyArr.length];
        for (int i2 = 0; i2 < fontFamilyArr.length; i2++) {
            jArr[i2] = fontFamilyArr[i2].mNativePtr;
        }
        return new Typeface(nativeCreateFromArray(jArr, -1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Typeface createFromFamiliesWithDefault(FontFamily[] fontFamilyArr, int i2, int i3) {
        long[] jArr = new long[fontFamilyArr.length + sFallbackFonts.length];
        int i4 = 0;
        for (int i5 = 0; i5 < fontFamilyArr.length; i5++) {
            jArr[i5] = fontFamilyArr[i5].mNativePtr;
        }
        while (true) {
            FontFamily[] fontFamilyArr2 = sFallbackFonts;
            if (i4 >= fontFamilyArr2.length) {
                return new Typeface(nativeCreateFromArray(jArr, i2, i3));
            }
            jArr[fontFamilyArr.length + i4] = fontFamilyArr2[i4].mNativePtr;
            i4++;
        }
    }

    public static Typeface createFromFile(File file) {
        return createFromFile(file.getAbsolutePath());
    }

    public static Typeface createFromResources(AssetManager assetManager, String str, int i2) {
        if (sFallbackFonts != null) {
            LruCache<String, Typeface> lruCache = sDynamicTypefaceCache;
            synchronized (lruCache) {
                String strCreateAssetUid = Builder.createAssetUid(assetManager, str, 0, null, -1, -1);
                Typeface typeface = lruCache.get(strCreateAssetUid);
                if (typeface != null) {
                    return typeface;
                }
                FontFamily fontFamily = new FontFamily();
                if (fontFamily.addFontFromAssetManager(assetManager, str, i2, false, 0, -1, -1, null)) {
                    if (!fontFamily.freeze()) {
                        return null;
                    }
                    Typeface typefaceCreateFromFamiliesWithDefault = createFromFamiliesWithDefault(new FontFamily[]{fontFamily}, -1, -1);
                    lruCache.put(strCreateAssetUid, typefaceCreateFromFamiliesWithDefault);
                    return typefaceCreateFromFamiliesWithDefault;
                }
            }
        }
        return null;
    }

    public static Typeface createFromTypefaceWithVariation(Typeface typeface, List<FontVariationAxis> list) {
        return new Typeface(nativeCreateFromTypefaceWithVariation(typeface == null ? 0L : typeface.native_instance, list));
    }

    private static String createProviderUid(String str, String str2) {
        return android.accessibilityservice.c.l("provider:", str, NativeLibraryHelper.CLEAR_ABI_OVERRIDE, str2);
    }

    public static Typeface defaultFromStyle(int i2) {
        return sDefaults[i2];
    }

    public static Typeface findFromCache(AssetManager assetManager, String str) {
        LruCache<String, Typeface> lruCache = sDynamicTypefaceCache;
        synchronized (lruCache) {
            Typeface typeface = lruCache.get(Builder.createAssetUid(assetManager, str, 0, null, -1, -1));
            if (typeface != null) {
                return typeface;
            }
            return null;
        }
    }

    private static File getSystemFontConfigLocation() {
        return new File("/system/etc/");
    }

    private static void init() {
        Typeface typefaceCreateFromFamiliesWithDefault;
        FontFamily fontFamilyMakeFamilyFromParsed;
        File file = new File(getSystemFontConfigLocation(), FONTS_CONFIG);
        try {
            FontConfig fontConfig = FontListParser.parse(new FileInputStream(file));
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < fontConfig.getFamilies().length; i2++) {
                FontConfig.Family family = fontConfig.getFamilies()[i2];
                if ((i2 == 0 || family.getName() == null) && (fontFamilyMakeFamilyFromParsed = makeFamilyFromParsed(family, map)) != null) {
                    arrayList.add(fontFamilyMakeFamilyFromParsed);
                }
            }
            FontFamily[] fontFamilyArr = (FontFamily[]) arrayList.toArray(new FontFamily[arrayList.size()]);
            sFallbackFonts = fontFamilyArr;
            setDefault(createFromFamilies(fontFamilyArr));
            HashMap map2 = new HashMap();
            for (int i3 = 0; i3 < fontConfig.getFamilies().length; i3++) {
                FontConfig.Family family2 = fontConfig.getFamilies()[i3];
                if (family2.getName() != null) {
                    if (i3 == 0) {
                        typefaceCreateFromFamiliesWithDefault = sDefaultTypeface;
                    } else {
                        FontFamily fontFamilyMakeFamilyFromParsed2 = makeFamilyFromParsed(family2, map);
                        if (fontFamilyMakeFamilyFromParsed2 != null) {
                            typefaceCreateFromFamiliesWithDefault = createFromFamiliesWithDefault(new FontFamily[]{fontFamilyMakeFamilyFromParsed2}, -1, -1);
                        }
                    }
                    map2.put(family2.getName(), typefaceCreateFromFamiliesWithDefault);
                }
            }
            for (FontConfig.Alias alias : fontConfig.getAliases()) {
                Typeface typeface = (Typeface) map2.get(alias.getToName());
                int weight = alias.getWeight();
                if (weight != 400) {
                    typeface = new Typeface(nativeCreateWeightAlias(typeface.native_instance, weight));
                }
                map2.put(alias.getName(), typeface);
            }
            sSystemFontMap = map2;
        } catch (FileNotFoundException e2) {
            Log.e(TAG, "Error opening " + file, e2);
        } catch (IOException e3) {
            Log.e(TAG, "Error reading " + file, e3);
        } catch (RuntimeException e4) {
            Log.w(TAG, "Didn't create default family (most likely, non-Minikin build)", e4);
        } catch (XmlPullParserException e5) {
            Log.e(TAG, "XML parse exception for " + file, e5);
        }
    }

    private static FontFamily makeFamilyFromParsed(FontConfig.Family family, Map<String, ByteBuffer> map) {
        ByteBuffer map2;
        FontFamily fontFamily = new FontFamily(family.getLanguage(), family.getVariant());
        for (FontConfig.Font font : family.getFonts()) {
            String str = "/system/fonts/" + font.getFontName();
            ByteBuffer byteBuffer = map.get(str);
            if (byteBuffer == null) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    try {
                        FileChannel channel = fileInputStream.getChannel();
                        map2 = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                        map.put(str, map2);
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                    m.r("Error mapping font file ", str, TAG);
                }
            } else {
                map2 = byteBuffer;
            }
            if (!fontFamily.addFontFromBuffer(map2, font.getTtcIndex(), font.getAxes(), font.getWeight(), font.isItalic() ? 1 : 0)) {
                String str2 = TAG;
                StringBuilder sbV = android.accessibilityservice.c.v("Error creating font ", str, "#");
                sbV.append(font.getTtcIndex());
                Log.e(str2, sbV.toString());
            }
        }
        if (fontFamily.freeze()) {
            return fontFamily;
        }
        Log.e(TAG, "Unable to load Family: " + family.getName() + SettingsStringUtil.DELIMITER + family.getLanguage());
        return null;
    }

    private static native long nativeCreateFromArray(long[] jArr, int i2, int i3);

    private static native long nativeCreateFromTypeface(long j2, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeCreateFromTypefaceWithExactStyle(long j2, int i2, boolean z2);

    private static native long nativeCreateFromTypefaceWithVariation(long j2, List<FontVariationAxis> list);

    private static native long nativeCreateWeightAlias(long j2, int i2);

    private static native int nativeGetStyle(long j2);

    private static native int[] nativeGetSupportedAxes(long j2);

    private static native int nativeGetWeight(long j2);

    private static native void nativeSetDefault(long j2);

    private static native void nativeUnref(long j2);

    private static void setDefault(Typeface typeface) {
        sDefaultTypeface = typeface;
        nativeSetDefault(typeface.native_instance);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Typeface typeface = (Typeface) obj;
        return this.mStyle == typeface.mStyle && this.native_instance == typeface.native_instance;
    }

    public void finalize() throws Throwable {
        try {
            nativeUnref(this.native_instance);
            this.native_instance = 0L;
        } finally {
            super.finalize();
        }
    }

    public int getStyle() {
        return this.mStyle;
    }

    public int hashCode() {
        long j2 = this.native_instance;
        return ((MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.mStyle;
    }

    public final boolean isBold() {
        return (this.mStyle & 1) != 0;
    }

    public final boolean isItalic() {
        return (this.mStyle & 2) != 0;
    }

    public boolean isSupportedAxes(int i2) {
        if (this.mSupportedAxes == null) {
            synchronized (this) {
                if (this.mSupportedAxes == null) {
                    int[] iArrNativeGetSupportedAxes = nativeGetSupportedAxes(this.native_instance);
                    this.mSupportedAxes = iArrNativeGetSupportedAxes;
                    if (iArrNativeGetSupportedAxes == null) {
                        this.mSupportedAxes = EMPTY_AXES;
                    }
                }
            }
        }
        return Arrays.binarySearch(this.mSupportedAxes, i2) >= 0;
    }

    private Typeface(long j2) {
        this.mStyle = 0;
        this.mWeight = 0;
        if (j2 == 0) {
            throw new RuntimeException("native typeface cannot be made");
        }
        this.native_instance = j2;
        this.mStyle = nativeGetStyle(j2);
        this.mWeight = nativeGetWeight(j2);
    }

    public static Typeface createFromFile(String str) {
        if (sFallbackFonts != null) {
            FontFamily fontFamily = new FontFamily();
            if (fontFamily.addFont(str, 0, null, -1, -1)) {
                fontFamily.allowUnsupportedFont();
                fontFamily.freeze();
                return createFromFamiliesWithDefault(new FontFamily[]{fontFamily}, -1, -1);
            }
            fontFamily.abortCreation();
        }
        throw new RuntimeException(android.accessibilityservice.c.j("Font not found ", str));
    }

    public static Typeface create(Typeface typeface, int i2) {
        long j2;
        Typeface typeface2;
        if (i2 < 0 || i2 > 3) {
            i2 = 0;
        }
        if (typeface == null) {
            j2 = 0;
        } else {
            if (typeface.mStyle == i2) {
                return typeface;
            }
            j2 = typeface.native_instance;
        }
        LongSparseArray<SparseArray<Typeface>> longSparseArray = sTypefaceCache;
        SparseArray<Typeface> sparseArray = longSparseArray.get(j2);
        if (sparseArray != null && (typeface2 = sparseArray.get(i2)) != null) {
            return typeface2;
        }
        Typeface typeface3 = new Typeface(nativeCreateFromTypeface(j2, i2));
        if (sparseArray == null) {
            sparseArray = new SparseArray<>(4);
            longSparseArray.put(j2, sparseArray);
        }
        sparseArray.put(i2, typeface3);
        return typeface3;
    }

    public static final class Builder {
        public static final int BOLD_WEIGHT = 700;
        public static final int NORMAL_WEIGHT = 400;
        private static final Object sLock = new Object();

        @GuardedBy("sLock")
        private static final LongSparseArray<SparseArray<Typeface>> sTypefaceCache = new LongSparseArray<>(3);
        private AssetManager mAssetManager;
        private FontVariationAxis[] mAxes;
        private String mFallbackFamilyName;
        private FileDescriptor mFd;
        private Map<Uri, ByteBuffer> mFontBuffers;
        private FontsContract.FontInfo[] mFonts;
        private String mPath;
        private int mTtcIndex;
        private int mWeight = -1;
        private int mItalic = -1;

        public Builder(File file) {
            this.mPath = file.getAbsolutePath();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String createAssetUid(AssetManager assetManager, String str, int i2, FontVariationAxis[] fontVariationAxisArr, int i3, int i4) {
            SparseArray<String> assignedPackageIdentifiers = assetManager.getAssignedPackageIdentifiers();
            StringBuilder sb = new StringBuilder();
            int size = assignedPackageIdentifiers.size();
            for (int i5 = 0; i5 < size; i5++) {
                sb.append(assignedPackageIdentifiers.valueAt(i5));
                sb.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            }
            sb.append(str);
            sb.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            sb.append(Integer.toString(i2));
            sb.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            sb.append(Integer.toString(i3));
            sb.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            sb.append(Integer.toString(i4));
            sb.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            if (fontVariationAxisArr != null) {
                for (FontVariationAxis fontVariationAxis : fontVariationAxisArr) {
                    sb.append(fontVariationAxis.getTag());
                    sb.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                    sb.append(Float.toString(fontVariationAxis.getStyleValue()));
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Typeface resolveFallbackTypeface() {
            Typeface typeface;
            String str = this.mFallbackFamilyName;
            if (str == null) {
                return null;
            }
            Typeface typeface2 = Typeface.sSystemFontMap.get(str);
            if (typeface2 == null) {
                typeface2 = Typeface.sDefaultTypeface;
            }
            int i2 = this.mWeight;
            if (i2 == -1 && this.mItalic == -1) {
                return typeface2;
            }
            if (i2 == -1) {
                i2 = typeface2.mWeight;
            }
            int i3 = this.mItalic;
            boolean z2 = 0;
            z2 = 0;
            if (i3 != -1 ? i3 == 1 : (typeface2.mStyle & 2) != 0) {
                z2 = 1;
            }
            boolean z3 = (i2 << 1) | z2;
            synchronized (sLock) {
                LongSparseArray<SparseArray<Typeface>> longSparseArray = sTypefaceCache;
                SparseArray<Typeface> sparseArray = longSparseArray.get(typeface2.native_instance);
                if (sparseArray != null && (typeface = sparseArray.get(z3 ? 1 : 0)) != null) {
                    return typeface;
                }
                Typeface typeface3 = new Typeface(Typeface.nativeCreateFromTypefaceWithExactStyle(typeface2.native_instance, i2, z2));
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>(4);
                    longSparseArray.put(typeface2.native_instance, sparseArray);
                }
                sparseArray.put(z3 ? 1 : 0, typeface3);
                return typeface3;
            }
        }

        public Typeface build() {
            if (this.mFd != null) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(this.mFd);
                    try {
                        FileChannel channel = fileInputStream.getChannel();
                        MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                        FontFamily fontFamily = new FontFamily();
                        if (!fontFamily.addFontFromBuffer(map, this.mTtcIndex, this.mAxes, this.mWeight, this.mItalic)) {
                            fontFamily.abortCreation();
                            Typeface typefaceResolveFallbackTypeface = resolveFallbackTypeface();
                            fileInputStream.close();
                            return typefaceResolveFallbackTypeface;
                        }
                        if (fontFamily.freeze()) {
                            Typeface typefaceCreateFromFamiliesWithDefault = Typeface.createFromFamiliesWithDefault(new FontFamily[]{fontFamily}, this.mWeight, this.mItalic);
                            fileInputStream.close();
                            return typefaceCreateFromFamiliesWithDefault;
                        }
                        Typeface typefaceResolveFallbackTypeface2 = resolveFallbackTypeface();
                        fileInputStream.close();
                        return typefaceResolveFallbackTypeface2;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                fileInputStream.close();
                                throw th2;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                                throw th2;
                            }
                        }
                    }
                } catch (IOException unused) {
                    return resolveFallbackTypeface();
                }
            }
            AssetManager assetManager = this.mAssetManager;
            if (assetManager != null) {
                String strCreateAssetUid = createAssetUid(assetManager, this.mPath, this.mTtcIndex, this.mAxes, this.mWeight, this.mItalic);
                synchronized (sLock) {
                    Typeface typeface = (Typeface) Typeface.sDynamicTypefaceCache.get(strCreateAssetUid);
                    if (typeface != null) {
                        return typeface;
                    }
                    FontFamily fontFamily2 = new FontFamily();
                    AssetManager assetManager2 = this.mAssetManager;
                    String str = this.mPath;
                    int i2 = this.mTtcIndex;
                    if (!fontFamily2.addFontFromAssetManager(assetManager2, str, i2, true, i2, this.mWeight, this.mItalic, this.mAxes)) {
                        fontFamily2.abortCreation();
                        return resolveFallbackTypeface();
                    }
                    if (!fontFamily2.freeze()) {
                        return resolveFallbackTypeface();
                    }
                    Typeface typefaceCreateFromFamiliesWithDefault2 = Typeface.createFromFamiliesWithDefault(new FontFamily[]{fontFamily2}, this.mWeight, this.mItalic);
                    Typeface.sDynamicTypefaceCache.put(strCreateAssetUid, typefaceCreateFromFamiliesWithDefault2);
                    return typefaceCreateFromFamiliesWithDefault2;
                }
            }
            if (this.mPath != null) {
                FontFamily fontFamily3 = new FontFamily();
                if (fontFamily3.addFont(this.mPath, this.mTtcIndex, this.mAxes, this.mWeight, this.mItalic)) {
                    return !fontFamily3.freeze() ? resolveFallbackTypeface() : Typeface.createFromFamiliesWithDefault(new FontFamily[]{fontFamily3}, this.mWeight, this.mItalic);
                }
                fontFamily3.abortCreation();
                return resolveFallbackTypeface();
            }
            if (this.mFonts == null) {
                throw new IllegalArgumentException("No source was set.");
            }
            FontFamily fontFamily4 = new FontFamily();
            FontsContract.FontInfo[] fontInfoArr = this.mFonts;
            int length = fontInfoArr.length;
            boolean z2 = false;
            int i3 = 0;
            while (i3 < length) {
                FontsContract.FontInfo fontInfo = fontInfoArr[i3];
                ByteBuffer byteBuffer = this.mFontBuffers.get(fontInfo.getUri());
                if (byteBuffer != null) {
                    if (!fontFamily4.addFontFromBuffer(byteBuffer, fontInfo.getTtcIndex(), fontInfo.getAxes(), fontInfo.getWeight(), fontInfo.isItalic() ? 1 : 0)) {
                        fontFamily4.abortCreation();
                        return null;
                    }
                    z2 = true;
                }
                i3++;
                z2 = z2;
            }
            if (z2) {
                fontFamily4.freeze();
                return Typeface.createFromFamiliesWithDefault(new FontFamily[]{fontFamily4}, this.mWeight, this.mItalic);
            }
            fontFamily4.abortCreation();
            return null;
        }

        public Builder setFallback(String str) {
            this.mFallbackFamilyName = str;
            return this;
        }

        public Builder setFontVariationSettings(String str) {
            if (this.mFonts != null) {
                throw new IllegalArgumentException("Font variation settings can not be specified for FontResult source.");
            }
            if (this.mAxes != null) {
                throw new IllegalStateException("Font variation settings are already set.");
            }
            this.mAxes = FontVariationAxis.fromFontVariationSettings(str);
            return this;
        }

        public Builder setItalic(boolean z2) {
            this.mItalic = z2 ? 1 : 0;
            return this;
        }

        public Builder setTtcIndex(int i2) {
            if (this.mFonts != null) {
                throw new IllegalArgumentException("TTC index can not be specified for FontResult source.");
            }
            this.mTtcIndex = i2;
            return this;
        }

        public Builder setWeight(int i2) {
            this.mWeight = i2;
            return this;
        }

        public Builder(FileDescriptor fileDescriptor) {
            this.mFd = fileDescriptor;
        }

        public Builder setFontVariationSettings(FontVariationAxis[] fontVariationAxisArr) {
            if (this.mFonts == null) {
                if (this.mAxes == null) {
                    this.mAxes = fontVariationAxisArr;
                    return this;
                }
                throw new IllegalStateException("Font variation settings are already set.");
            }
            throw new IllegalArgumentException("Font variation settings can not be specified for FontResult source.");
        }

        public Builder(String str) {
            this.mPath = str;
        }

        public Builder(AssetManager assetManager, String str) {
            this.mAssetManager = (AssetManager) Preconditions.checkNotNull(assetManager);
            this.mPath = (String) Preconditions.checkStringNotEmpty(str);
        }

        public Builder(FontsContract.FontInfo[] fontInfoArr, Map<Uri, ByteBuffer> map) {
            this.mFonts = fontInfoArr;
            this.mFontBuffers = map;
        }
    }

    public static Typeface createFromResources(FontResourcesParser.FamilyResourceEntry familyResourceEntry, AssetManager assetManager, String str) {
        if (sFallbackFonts == null) {
            return null;
        }
        if (familyResourceEntry instanceof FontResourcesParser.ProviderResourceEntry) {
            FontResourcesParser.ProviderResourceEntry providerResourceEntry = (FontResourcesParser.ProviderResourceEntry) familyResourceEntry;
            List<List<String>> certs = providerResourceEntry.getCerts();
            ArrayList arrayList = new ArrayList();
            if (certs != null) {
                for (int i2 = 0; i2 < certs.size(); i2++) {
                    List<String> list = certs.get(i2);
                    ArrayList arrayList2 = new ArrayList();
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        arrayList2.add(Base64.decode(list.get(i3), 0));
                    }
                    arrayList.add(arrayList2);
                }
            }
            Typeface fontSync = FontsContract.getFontSync(new FontRequest(providerResourceEntry.getAuthority(), providerResourceEntry.getPackage(), providerResourceEntry.getQuery(), arrayList));
            return fontSync == null ? DEFAULT : fontSync;
        }
        Typeface typefaceFindFromCache = findFromCache(assetManager, str);
        if (typefaceFindFromCache != null) {
            return typefaceFindFromCache;
        }
        FontFamily fontFamily = new FontFamily();
        for (FontResourcesParser.FontFileResourceEntry fontFileResourceEntry : ((FontResourcesParser.FontFamilyFilesResourceEntry) familyResourceEntry).getEntries()) {
            if (!fontFamily.addFontFromAssetManager(assetManager, fontFileResourceEntry.getFileName(), 0, false, 0, fontFileResourceEntry.getWeight(), fontFileResourceEntry.getItalic(), null)) {
                return null;
            }
        }
        if (!fontFamily.freeze()) {
            return null;
        }
        Typeface typefaceCreateFromFamiliesWithDefault = createFromFamiliesWithDefault(new FontFamily[]{fontFamily}, -1, -1);
        LruCache<String, Typeface> lruCache = sDynamicTypefaceCache;
        synchronized (lruCache) {
            lruCache.put(Builder.createAssetUid(assetManager, str, 0, null, -1, -1), typefaceCreateFromFamiliesWithDefault);
        }
        return typefaceCreateFromFamiliesWithDefault;
    }
}
