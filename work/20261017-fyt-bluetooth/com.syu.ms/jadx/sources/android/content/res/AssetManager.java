package android.content.res;

import android.os.ParcelFileDescriptor;
import android.util.TypedValue;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class AssetManager {
    public static final int ACCESS_BUFFER = 3;
    public static final int ACCESS_RANDOM = 1;
    public static final int ACCESS_STREAMING = 2;
    public static final int ACCESS_UNKNOWN = 0;
    private static final boolean DEBUG_REFS = false;
    public static final int STYLE_ASSET_COOKIE = 2;
    public static final int STYLE_CHANGING_CONFIGURATIONS = 4;
    public static final int STYLE_DATA = 1;
    public static final int STYLE_DENSITY = 5;
    public static final int STYLE_NUM_ENTRIES = 6;
    public static final int STYLE_RESOURCE_ID = 3;
    public static final int STYLE_TYPE = 0;
    private static final String TAG = "AssetManager";
    private static final boolean localLOGV = false;
    private static final Object sSync = new Object();
    public static AssetManager sSystem;
    private int mNObject;
    private int mNumRefs;
    private int mObject;
    private final long[] mOffsets;
    private boolean mOpen;
    private HashMap<Integer, RuntimeException> mRefStacks;
    private StringBlock[] mStringBlocks;
    private final TypedValue mValue;

    public final class AssetInputStream extends InputStream {
        private int mAsset;
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
                int i2 = this.mAsset;
                if (i2 != 0) {
                    AssetManager.this.destroyAsset(i2);
                    this.mAsset = 0;
                    AssetManager.this.decRefsLocked(hashCode());
                }
            }
        }

        public void finalize() {
            close();
        }

        public final int getAssetInt() {
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

        private AssetInputStream(int i2) {
            this.mAsset = i2;
            this.mLength = AssetManager.this.getAssetLength(i2);
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
            init();
            ensureSystemAssets();
        }
    }

    private final native int addAssetPathNative(String str);

    public static final native boolean applyStyle(int i2, int i3, int i4, int i5, int[] iArr, int[] iArr2, int[] iArr3);

    public static final native void applyThemeStyle(int i2, int i3, boolean z2);

    public static final native void copyTheme(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public final void decRefsLocked(int i2) {
        int i3 = this.mNumRefs - 1;
        this.mNumRefs = i3;
        if (i3 == 0) {
            destroy();
        }
    }

    private final native void deleteTheme(int i2);

    private final native void destroy();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void destroyAsset(int i2);

    public static final native void dumpTheme(int i2, int i3, String str, String str2);

    private static void ensureSystemAssets() {
        synchronized (sSync) {
            if (sSystem == null) {
                AssetManager assetManager = new AssetManager(true);
                assetManager.makeStringBlocks(false);
                sSystem = assetManager;
            }
        }
    }

    private final native int[] getArrayStringInfo(int i2);

    private final native String[] getArrayStringResource(int i2);

    public static final native String getAssetAllocations();

    /* JADX INFO: Access modifiers changed from: private */
    public final native long getAssetLength(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native long getAssetRemainingLength(int i2);

    public static final native int getGlobalAssetCount();

    public static final native int getGlobalAssetManagerCount();

    private final native int getNativeStringBlock(int i2);

    private final native int getStringBlockCount();

    public static AssetManager getSystem() {
        ensureSystemAssets();
        return sSystem;
    }

    private final void incRefsLocked(int i2) {
        this.mNumRefs++;
    }

    private final native void init();

    private final native int loadResourceBagValue(int i2, int i3, TypedValue typedValue, boolean z2);

    private final native int loadResourceValue(int i2, short s2, TypedValue typedValue, boolean z2);

    public static final native int loadThemeAttributeValue(int i2, int i3, TypedValue typedValue, boolean z2);

    private final native int newTheme();

    private final native int openAsset(String str, int i2);

    private final native ParcelFileDescriptor openAssetFd(String str, long[] jArr);

    private native ParcelFileDescriptor openNonAssetFdNative(int i2, String str, long[] jArr);

    private final native int openNonAssetNative(int i2, String str, int i3);

    private final native int openXmlAssetNative(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native int readAsset(int i2, byte[] bArr, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public final native int readAssetChar(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native long seekAsset(int i2, long j2, int i3);

    public final int addAssetPath(String str) {
        return addAssetPathNative(str);
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

    public void close() {
        synchronized (this) {
            if (this.mOpen) {
                this.mOpen = false;
                decRefsLocked(hashCode());
            }
        }
    }

    public final int createTheme() {
        int iNewTheme;
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            iNewTheme = newTheme();
            incRefsLocked(iNewTheme);
        }
        return iNewTheme;
    }

    public final void ensureStringBlocks() {
        if (this.mStringBlocks == null) {
            synchronized (this) {
                if (this.mStringBlocks == null) {
                    makeStringBlocks(true);
                }
            }
        }
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

    public final native String getCookieName(int i2);

    public final native String[] getLocales();

    public final CharSequence getPooledString(int i2, int i3) {
        return this.mStringBlocks[i2 - 1].get(i3);
    }

    public final CharSequence getResourceBagText(int i2, int i3) {
        synchronized (this) {
            TypedValue typedValue = this.mValue;
            int iLoadResourceBagValue = loadResourceBagValue(i2, i3, typedValue, true);
            if (iLoadResourceBagValue < 0) {
                return null;
            }
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
            int iLoadResourceValue = loadResourceValue(i2, (short) 0, typedValue, true);
            if (iLoadResourceValue < 0) {
                return null;
            }
            if (typedValue.type == 3) {
                return this.mStringBlocks[iLoadResourceValue].get(typedValue.data);
            }
            return typedValue.coerceToString();
        }
    }

    public final CharSequence[] getResourceTextArray(int i2) {
        int[] arrayStringInfo = getArrayStringInfo(i2);
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

    public final native String getResourceTypeName(int i2);

    public final boolean getResourceValue(int i2, int i3, TypedValue typedValue, boolean z2) {
        int iLoadResourceValue = loadResourceValue(i2, (short) i3, typedValue, z2);
        if (iLoadResourceValue < 0) {
            return false;
        }
        if (typedValue.type != 3) {
            return true;
        }
        typedValue.string = this.mStringBlocks[iLoadResourceValue].get(typedValue.data);
        return true;
    }

    public final boolean getThemeValue(int i2, int i3, TypedValue typedValue, boolean z2) {
        int iLoadThemeAttributeValue = loadThemeAttributeValue(i2, i3, typedValue, z2);
        if (iLoadThemeAttributeValue < 0) {
            return false;
        }
        if (typedValue.type != 3) {
            return true;
        }
        StringBlock[] stringBlockArr = this.mStringBlocks;
        if (stringBlockArr == null) {
            ensureStringBlocks();
            stringBlockArr = this.mStringBlocks;
        }
        typedValue.string = stringBlockArr[iLoadThemeAttributeValue].get(typedValue.data);
        return true;
    }

    public final native boolean isUpToDate();

    public final native String[] list(String str);

    public final void makeStringBlocks(boolean z2) {
        int length = z2 ? sSystem.mStringBlocks.length : 0;
        int stringBlockCount = getStringBlockCount();
        this.mStringBlocks = new StringBlock[stringBlockCount];
        for (int i2 = 0; i2 < stringBlockCount; i2++) {
            if (i2 < length) {
                this.mStringBlocks[i2] = sSystem.mStringBlocks[i2];
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
            if (parcelFileDescriptorOpenAssetFd != null) {
                long[] jArr = this.mOffsets;
                return new AssetFileDescriptor(parcelFileDescriptorOpenAssetFd, jArr[0], jArr[1]);
            }
            throw new FileNotFoundException("Asset file: " + str);
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

    public final void releaseTheme(int i2) {
        synchronized (this) {
            deleteTheme(i2);
            decRefsLocked(i2);
        }
    }

    public final native int retrieveArray(int i2, int[] iArr);

    public final native boolean retrieveAttributes(int i2, int[] iArr, int[] iArr2, int[] iArr3);

    public final native void setConfiguration(int i2, int i3, String str, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);

    public final native void setLocale(String str);

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
            int iOpenAsset = openAsset(str, i2);
            if (iOpenAsset != 0) {
                AssetInputStream assetInputStream = new AssetInputStream(iOpenAsset);
                incRefsLocked(assetInputStream.hashCode());
                return assetInputStream;
            }
            throw new FileNotFoundException("Asset file: " + str);
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
            if (parcelFileDescriptorOpenNonAssetFdNative != null) {
                long[] jArr = this.mOffsets;
                return new AssetFileDescriptor(parcelFileDescriptorOpenNonAssetFdNative, jArr[0], jArr[1]);
            }
            throw new FileNotFoundException("Asset absolute file: " + str);
        }
    }

    public final XmlBlock openXmlBlockAsset(int i2, String str) throws FileNotFoundException {
        synchronized (this) {
            if (!this.mOpen) {
                throw new RuntimeException("Assetmanager has been closed");
            }
            int iOpenXmlAssetNative = openXmlAssetNative(i2, str);
            if (iOpenXmlAssetNative != 0) {
                XmlBlock xmlBlock = new XmlBlock(this, iOpenXmlAssetNative);
                incRefsLocked(xmlBlock.hashCode());
                return xmlBlock;
            }
            throw new FileNotFoundException("Asset XML file: " + str);
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

    public final InputStream openNonAsset(int i2, String str, int i3) {
        synchronized (this) {
            if (this.mOpen) {
                int iOpenNonAssetNative = openNonAssetNative(i2, str, i3);
                if (iOpenNonAssetNative != 0) {
                    AssetInputStream assetInputStream = new AssetInputStream(iOpenNonAssetNative);
                    incRefsLocked(assetInputStream.hashCode());
                    return assetInputStream;
                }
                throw new FileNotFoundException("Asset absolute file: " + str);
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
        init();
    }
}
