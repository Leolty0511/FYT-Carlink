package android.content.res;

import android.accessibilityservice.c;
import android.content.pm.ActivityInfo;
import android.os.ParcelFileDescriptor;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class AssetManager implements AutoCloseable {
    public static final int ACCESS_BUFFER = 3;
    public static final int ACCESS_RANDOM = 1;
    public static final int ACCESS_STREAMING = 2;
    public static final int ACCESS_UNKNOWN = 0;
    private static final boolean DEBUG_REFS = false;
    static final int STYLE_ASSET_COOKIE = 2;
    static final int STYLE_CHANGING_CONFIGURATIONS = 4;
    static final int STYLE_DATA = 1;
    static final int STYLE_DENSITY = 5;
    static final int STYLE_NUM_ENTRIES = 6;
    static final int STYLE_RESOURCE_ID = 3;
    static final int STYLE_TYPE = 0;
    private static final String TAG = "AssetManager";
    private static final boolean localLOGV = false;
    private static final Object sSync = new Object();
    static AssetManager sSystem;
    private int mNumRefs;
    private long mObject;
    private final long[] mOffsets;
    private boolean mOpen;
    private HashMap<Long, RuntimeException> mRefStacks;
    private StringBlock[] mStringBlocks;
    private final TypedValue mValue;

    public final class AssetInputStream extends InputStream {
        private long mAsset;
        private long mLength;
        private long mMarkPos;

        @Override // java.io.InputStream
        public final int available() {
            long assetRemainingLength = AssetManager.this.getAssetRemainingLength(this.mAsset);
            if (assetRemainingLength > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) assetRemainingLength;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (AssetManager.this) {
                long j2 = this.mAsset;
                if (j2 != 0) {
                    AssetManager.this.destroyAsset(j2);
                    this.mAsset = 0L;
                    AssetManager.this.decRefsLocked(hashCode());
                }
            }
        }

        public void finalize() {
            close();
        }

        public final int getAssetInt() {
            throw new UnsupportedOperationException();
        }

        public final long getNativeAsset() {
            return this.mAsset;
        }

        @Override // java.io.InputStream
        public final void mark(int i2) {
            this.mMarkPos = AssetManager.this.seekAsset(this.mAsset, 0L, 0);
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            return AssetManager.this.readAssetChar(this.mAsset);
        }

        @Override // java.io.InputStream
        public final void reset() {
            AssetManager.this.seekAsset(this.mAsset, this.mMarkPos, -1);
        }

        @Override // java.io.InputStream
        public final long skip(long j2) {
            long jSeekAsset = AssetManager.this.seekAsset(this.mAsset, 0L, 0);
            long j3 = jSeekAsset + j2;
            long j4 = this.mLength;
            if (j3 > j4) {
                j2 = j4 - jSeekAsset;
            }
            if (j2 > 0) {
                AssetManager.this.seekAsset(this.mAsset, j2, 0);
            }
            return j2;
        }

        private AssetInputStream(long j2) {
            this.mAsset = j2;
            this.mLength = AssetManager.this.getAssetLength(j2);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr) {
            return AssetManager.this.readAsset(this.mAsset, bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i2, int i3) {
            return AssetManager.this.readAsset(this.mAsset, bArr, i2, i3);
        }
    }

    public AssetManager() {
        this.mValue = new TypedValue();
        this.mOffsets = new long[2];
        this.mStringBlocks = null;
        this.mNumRefs = 1;
        this.mOpen = true;
        synchronized (this) {
            init(false);
            ensureSystemAssets();
        }
    }

    private final int addAssetPathInternal(String str, boolean z2) {
        int iAddAssetPathNative;
        synchronized (this) {
            iAddAssetPathNative = addAssetPathNative(str, z2);
            makeStringBlocks(this.mStringBlocks);
        }
        return iAddAssetPathNative;
    }

    private final native int addAssetPathNative(String str, boolean z2);

    public static final native void applyStyle(long j2, int i2, int i3, long j3, int[] iArr, int i4, long j4, long j5);

    public static final native void applyThemeStyle(long j2, int i2, boolean z2);

    public static final native void clearTheme(long j2);

    public static final native void copyTheme(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public final void decRefsLocked(long j2) {
        int i2 = this.mNumRefs - 1;
        this.mNumRefs = i2;
        if (i2 == 0) {
            destroy();
        }
    }

    private final native void deleteTheme(long j2);

    private final native void destroy();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void destroyAsset(long j2);

    public static final native void dumpTheme(long j2, int i2, String str, String str2);

    private static void ensureSystemAssets() {
        synchronized (sSync) {
            if (sSystem == null) {
                AssetManager assetManager = new AssetManager(true);
                assetManager.makeStringBlocks(null);
                sSystem = assetManager;
            }
        }
    }

    private final native int[] getArrayStringInfo(int i2);

    private final native String[] getArrayStringResource(int i2);

    public static final native String getAssetAllocations();

    /* JADX INFO: Access modifiers changed from: private */
    public final native long getAssetLength(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native long getAssetRemainingLength(long j2);

    public static final native int getGlobalAssetCount();

    public static final native int getGlobalAssetManagerCount();

    private final native long getNativeStringBlock(int i2);

    private final native int getStringBlockCount();

    public static AssetManager getSystem() {
        ensureSystemAssets();
        return sSystem;
    }

    public static final native int getThemeChangingConfigurations(long j2);

    private final void incRefsLocked(long j2) {
        this.mNumRefs++;
    }

    private final native void init(boolean z2);

    private final native int loadResourceBagValue(int i2, int i3, TypedValue typedValue, boolean z2);

    private final native int loadResourceValue(int i2, short s2, TypedValue typedValue, boolean z2);

    public static final native int loadThemeAttributeValue(long j2, int i2, TypedValue typedValue, boolean z2);

    private final native long newTheme();

    private final native long openAsset(String str, int i2);

    private final native ParcelFileDescriptor openAssetFd(String str, long[] jArr);

    private native ParcelFileDescriptor openNonAssetFdNative(int i2, String str, long[] jArr);

    private final native long openNonAssetNative(int i2, String str, int i3);

    private final native long openXmlAssetNative(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native int readAsset(long j2, byte[] bArr, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public final native int readAssetChar(long j2);

    public static final native boolean resolveAttrs(long j2, int i2, int i3, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4);

    /* JADX INFO: Access modifiers changed from: private */
    public final native long seekAsset(long j2, long j3, int i2);

    public final int addAssetPath(String str) {
        return addAssetPathInternal(str, false);
    }

    public final int addAssetPathAsSharedLibrary(String str) {
        return addAssetPathInternal(str, true);
    }

    public final int[] addAssetPaths(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        int[] iArr = new int[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            iArr[i2] = addAssetPath(strArr[i2]);
        }
        return iArr;
    }

    public final int addOverlayPath(String str) {
        int iAddOverlayPathNative;
        synchronized (this) {
            iAddOverlayPathNative = addOverlayPathNative(str);
            makeStringBlocks(this.mStringBlocks);
        }
        return iAddOverlayPathNative;
    }

    public final native int addOverlayPathNative(String str);

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.mOpen) {
                this.mOpen = false;
                decRefsLocked(hashCode());
            }
        }
    }

    public final long createTheme() {
        long jNewTheme;
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            jNewTheme = newTheme();
            incRefsLocked(jNewTheme);
        }
        return jNewTheme;
    }

    public final StringBlock[] ensureStringBlocks() {
        StringBlock[] stringBlockArr;
        synchronized (this) {
            if (this.mStringBlocks == null) {
                makeStringBlocks(sSystem.mStringBlocks);
            }
            stringBlockArr = this.mStringBlocks;
        }
        return stringBlockArr;
    }

    public void finalize() throws Throwable {
        try {
            destroy();
        } finally {
            super.finalize();
        }
    }

    public final native int[] getArrayIntResource(int i2);

    public final native int getArraySize(int i2);

    public final native SparseArray<String> getAssignedPackageIdentifiers();

    public final native String getCookieName(int i2);

    public final native String[] getLocales();

    public final native String[] getNonSystemLocales();

    public final CharSequence getPooledStringForCookie(int i2, int i3) {
        CharSequence charSequence;
        synchronized (this) {
            charSequence = this.mStringBlocks[i2 - 1].get(i3);
        }
        return charSequence;
    }

    public final CharSequence getResourceBagText(int i2, int i3) {
        synchronized (this) {
            TypedValue typedValue = this.mValue;
            int iLoadResourceBagValue = loadResourceBagValue(i2, i3, typedValue, true);
            if (iLoadResourceBagValue < 0) {
                return null;
            }
            typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(typedValue.changingConfigurations);
            if (typedValue.type == 3) {
                return this.mStringBlocks[iLoadResourceBagValue].get(typedValue.data);
            }
            return typedValue.coerceToString();
        }
    }

    public final native String getResourceEntryName(int i2);

    public final native int getResourceIdentifier(String str, String str2, String str3);

    public final native String getResourceName(int i2);

    public final native String getResourcePackageName(int i2);

    public final String[] getResourceStringArray(int i2) {
        return getArrayStringResource(i2);
    }

    public final CharSequence getResourceText(int i2) {
        synchronized (this) {
            TypedValue typedValue = this.mValue;
            if (!getResourceValue(i2, 0, typedValue, true)) {
                return null;
            }
            return typedValue.coerceToString();
        }
    }

    public final CharSequence[] getResourceTextArray(int i2) {
        synchronized (this) {
            int[] arrayStringInfo = getArrayStringInfo(i2);
            if (arrayStringInfo == null) {
                return null;
            }
            int length = arrayStringInfo.length;
            CharSequence[] charSequenceArr = new CharSequence[length / 2];
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                int i5 = arrayStringInfo[i3];
                int i6 = arrayStringInfo[i3 + 1];
                charSequenceArr[i4] = i6 >= 0 ? this.mStringBlocks[i5].get(i6) : null;
                i3 += 2;
                i4++;
            }
            return charSequenceArr;
        }
    }

    public final native String getResourceTypeName(int i2);

    public final boolean getResourceValue(int i2, int i3, TypedValue typedValue, boolean z2) {
        synchronized (this) {
            int iLoadResourceValue = loadResourceValue(i2, (short) i3, typedValue, z2);
            if (iLoadResourceValue < 0) {
                return false;
            }
            typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(typedValue.changingConfigurations);
            if (typedValue.type == 3) {
                typedValue.string = this.mStringBlocks[iLoadResourceValue].get(typedValue.data);
            }
            return true;
        }
    }

    public final native Configuration[] getSizeConfigurations();

    public final native int[] getStyleAttributes(int i2);

    public final boolean getThemeValue(long j2, int i2, TypedValue typedValue, boolean z2) {
        int iLoadThemeAttributeValue = loadThemeAttributeValue(j2, i2, typedValue, z2);
        if (iLoadThemeAttributeValue < 0) {
            return false;
        }
        typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(typedValue.changingConfigurations);
        if (typedValue.type != 3) {
            return true;
        }
        typedValue.string = ensureStringBlocks()[iLoadThemeAttributeValue].get(typedValue.data);
        return true;
    }

    public final native boolean isUpToDate();

    public final native String[] list(String str);

    public final void makeStringBlocks(StringBlock[] stringBlockArr) {
        int length = stringBlockArr != null ? stringBlockArr.length : 0;
        int stringBlockCount = getStringBlockCount();
        this.mStringBlocks = new StringBlock[stringBlockCount];
        for (int i2 = 0; i2 < stringBlockCount; i2++) {
            if (i2 < length) {
                this.mStringBlocks[i2] = stringBlockArr[i2];
            } else {
                this.mStringBlocks[i2] = new StringBlock(getNativeStringBlock(i2), true);
            }
        }
    }

    public final InputStream open(String str) {
        return open(str, 2);
    }

    public final AssetFileDescriptor openFd(String str) throws FileNotFoundException {
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            ParcelFileDescriptor parcelFileDescriptorOpenAssetFd = openAssetFd(str, this.mOffsets);
            if (parcelFileDescriptorOpenAssetFd == null) {
                throw new FileNotFoundException(c.j("Asset file: ", str));
            }
            long[] jArr = this.mOffsets;
            return new AssetFileDescriptor(parcelFileDescriptorOpenAssetFd, jArr[0], jArr[1]);
        }
    }

    public final InputStream openNonAsset(String str) {
        return openNonAsset(0, str, 2);
    }

    public final AssetFileDescriptor openNonAssetFd(String str) {
        return openNonAssetFd(0, str);
    }

    public final XmlBlock openXmlBlockAsset(String str) {
        return openXmlBlockAsset(0, str);
    }

    public final XmlResourceParser openXmlResourceParser(String str) {
        return openXmlResourceParser(0, str);
    }

    public final void releaseTheme(long j2) {
        synchronized (this) {
            deleteTheme(j2);
            decRefsLocked(j2);
        }
    }

    public final native int retrieveArray(int i2, int[] iArr);

    public final native boolean retrieveAttributes(long j2, int[] iArr, int[] iArr2, int[] iArr3);

    public final native void setConfiguration(int i2, int i3, String str, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18);

    public void xmlBlockGone(int i2) {
        synchronized (this) {
            decRefsLocked(i2);
        }
    }

    public final InputStream open(String str, int i2) throws FileNotFoundException {
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            long jOpenAsset = openAsset(str, i2);
            if (jOpenAsset == 0) {
                throw new FileNotFoundException(c.j("Asset file: ", str));
            }
            AssetInputStream assetInputStream = new AssetInputStream(jOpenAsset);
            incRefsLocked(assetInputStream.hashCode());
            return assetInputStream;
        }
    }

    public final InputStream openNonAsset(String str, int i2) {
        return openNonAsset(0, str, i2);
    }

    public final AssetFileDescriptor openNonAssetFd(int i2, String str) throws FileNotFoundException {
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            ParcelFileDescriptor parcelFileDescriptorOpenNonAssetFdNative = openNonAssetFdNative(i2, str, this.mOffsets);
            if (parcelFileDescriptorOpenNonAssetFdNative == null) {
                throw new FileNotFoundException(c.j("Asset absolute file: ", str));
            }
            long[] jArr = this.mOffsets;
            return new AssetFileDescriptor(parcelFileDescriptorOpenNonAssetFdNative, jArr[0], jArr[1]);
        }
    }

    public final XmlBlock openXmlBlockAsset(int i2, String str) throws FileNotFoundException {
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            long jOpenXmlAssetNative = openXmlAssetNative(i2, str);
            if (jOpenXmlAssetNative == 0) {
                throw new FileNotFoundException(c.j("Asset XML file: ", str));
            }
            XmlBlock xmlBlock = new XmlBlock(this, jOpenXmlAssetNative);
            incRefsLocked(xmlBlock.hashCode());
            return xmlBlock;
        }
    }

    public final XmlResourceParser openXmlResourceParser(int i2, String str) throws FileNotFoundException {
        XmlBlock xmlBlockOpenXmlBlockAsset = openXmlBlockAsset(i2, str);
        XmlResourceParser xmlResourceParserNewParser = xmlBlockOpenXmlBlockAsset.newParser();
        xmlBlockOpenXmlBlockAsset.close();
        return xmlResourceParserNewParser;
    }

    public final InputStream openNonAsset(int i2, String str) {
        return openNonAsset(i2, str, 2);
    }

    public final InputStream openNonAsset(int i2, String str, int i3) throws FileNotFoundException {
        synchronized (this) {
            if (this.mOpen) {
                long jOpenNonAssetNative = openNonAssetNative(i2, str, i3);
                if (jOpenNonAssetNative != 0) {
                    AssetInputStream assetInputStream = new AssetInputStream(jOpenNonAssetNative);
                    incRefsLocked(assetInputStream.hashCode());
                    return assetInputStream;
                }
                throw new FileNotFoundException(c.j("Asset absolute file: ", str));
            }
            throw new RuntimeException("Assetmanager has been closed");
        }
    }

    private AssetManager(boolean z2) {
        this.mValue = new TypedValue();
        this.mOffsets = new long[2];
        this.mStringBlocks = null;
        this.mNumRefs = 1;
        this.mOpen = true;
        init(true);
    }
}
