package android.emoji;

import android.graphics.Bitmap;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class EmojiFactory {
    private String mName;
    private int mNativeEmojiFactory;
    private int sCacheSize = 100;
    private Map<Integer, WeakReference<Bitmap>> mCache = new CustomLinkedHashMap();

    public class CustomLinkedHashMap<K, V> extends LinkedHashMap<K, V> {
        public CustomLinkedHashMap() {
            super(16, 0.75f, true);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<K, V> entry) {
            return size() > EmojiFactory.this.sCacheSize;
        }
    }

    private EmojiFactory(int i2, String str) {
        this.mNativeEmojiFactory = i2;
        this.mName = str;
    }

    private native void nativeDestructor(int i2);

    private native int nativeGetAndroidPuaFromVendorSpecificPua(int i2, int i3);

    private native int nativeGetAndroidPuaFromVendorSpecificSjis(int i2, char c2);

    private native Bitmap nativeGetBitmapFromAndroidPua(int i2, int i3);

    private native int nativeGetMaximumAndroidPua(int i2);

    private native int nativeGetMaximumVendorSpecificPua(int i2);

    private native int nativeGetMinimumAndroidPua(int i2);

    private native int nativeGetMinimumVendorSpecificPua(int i2);

    private native int nativeGetVendorSpecificPuaFromAndroidPua(int i2, int i3);

    private native int nativeGetVendorSpecificSjisFromAndroidPua(int i2, int i3);

    public static native EmojiFactory newAvailableInstance();

    public static native EmojiFactory newInstance(String str);

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativeEmojiFactory);
        } finally {
            super.finalize();
        }
    }

    public int getAndroidPuaFromVendorSpecificPua(int i2) {
        return nativeGetAndroidPuaFromVendorSpecificPua(this.mNativeEmojiFactory, i2);
    }

    public int getAndroidPuaFromVendorSpecificSjis(char c2) {
        return nativeGetAndroidPuaFromVendorSpecificSjis(this.mNativeEmojiFactory, c2);
    }

    public synchronized Bitmap getBitmapFromAndroidPua(int i2) {
        WeakReference<Bitmap> weakReference = this.mCache.get(Integer.valueOf(i2));
        if (weakReference == null) {
            Bitmap bitmapNativeGetBitmapFromAndroidPua = nativeGetBitmapFromAndroidPua(this.mNativeEmojiFactory, i2);
            if (bitmapNativeGetBitmapFromAndroidPua != null) {
                this.mCache.put(Integer.valueOf(i2), new WeakReference<>(bitmapNativeGetBitmapFromAndroidPua));
            }
            return bitmapNativeGetBitmapFromAndroidPua;
        }
        Bitmap bitmap = weakReference.get();
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmapNativeGetBitmapFromAndroidPua2 = nativeGetBitmapFromAndroidPua(this.mNativeEmojiFactory, i2);
        this.mCache.put(Integer.valueOf(i2), new WeakReference<>(bitmapNativeGetBitmapFromAndroidPua2));
        return bitmapNativeGetBitmapFromAndroidPua2;
    }

    public synchronized Bitmap getBitmapFromVendorSpecificPua(int i2) {
        return getBitmapFromAndroidPua(getAndroidPuaFromVendorSpecificPua(i2));
    }

    public synchronized Bitmap getBitmapFromVendorSpecificSjis(char c2) {
        return getBitmapFromAndroidPua(getAndroidPuaFromVendorSpecificSjis(c2));
    }

    public int getMaximumAndroidPua() {
        return nativeGetMaximumAndroidPua(this.mNativeEmojiFactory);
    }

    public int getMinimumAndroidPua() {
        return nativeGetMinimumAndroidPua(this.mNativeEmojiFactory);
    }

    public int getVendorSpecificPuaFromAndroidPua(int i2) {
        return nativeGetVendorSpecificPuaFromAndroidPua(this.mNativeEmojiFactory, i2);
    }

    public int getVendorSpecificSjisFromAndroidPua(int i2) {
        return nativeGetVendorSpecificSjisFromAndroidPua(this.mNativeEmojiFactory, i2);
    }

    public String name() {
        return this.mName;
    }

    public String getAndroidPuaFromVendorSpecificPua(String str) {
        int androidPuaFromVendorSpecificPua;
        if (str == null) {
            return null;
        }
        int iNativeGetMinimumVendorSpecificPua = nativeGetMinimumVendorSpecificPua(this.mNativeEmojiFactory);
        int iNativeGetMaximumVendorSpecificPua = nativeGetMaximumVendorSpecificPua(this.mNativeEmojiFactory);
        int length = str.length();
        int[] iArr = new int[str.codePointCount(0, length)];
        int iOffsetByCodePoints = 0;
        int i2 = 0;
        while (iOffsetByCodePoints < length) {
            int iCodePointAt = str.codePointAt(iOffsetByCodePoints);
            if (iNativeGetMinimumVendorSpecificPua > iCodePointAt || iCodePointAt > iNativeGetMaximumVendorSpecificPua || (androidPuaFromVendorSpecificPua = getAndroidPuaFromVendorSpecificPua(iCodePointAt)) <= 0) {
                iArr[i2] = iCodePointAt;
            } else {
                iArr[i2] = androidPuaFromVendorSpecificPua;
            }
            iOffsetByCodePoints = str.offsetByCodePoints(iOffsetByCodePoints, 1);
            i2++;
        }
        return new String(iArr, 0, i2);
    }

    public String getVendorSpecificPuaFromAndroidPua(String str) {
        int vendorSpecificPuaFromAndroidPua;
        if (str == null) {
            return null;
        }
        int iNativeGetMinimumAndroidPua = nativeGetMinimumAndroidPua(this.mNativeEmojiFactory);
        int iNativeGetMaximumAndroidPua = nativeGetMaximumAndroidPua(this.mNativeEmojiFactory);
        int length = str.length();
        int[] iArr = new int[str.codePointCount(0, length)];
        int iOffsetByCodePoints = 0;
        int i2 = 0;
        while (iOffsetByCodePoints < length) {
            int iCodePointAt = str.codePointAt(iOffsetByCodePoints);
            if (iNativeGetMinimumAndroidPua > iCodePointAt || iCodePointAt > iNativeGetMaximumAndroidPua || (vendorSpecificPuaFromAndroidPua = getVendorSpecificPuaFromAndroidPua(iCodePointAt)) <= 0) {
                iArr[i2] = iCodePointAt;
            } else {
                iArr[i2] = vendorSpecificPuaFromAndroidPua;
            }
            iOffsetByCodePoints = str.offsetByCodePoints(iOffsetByCodePoints, 1);
            i2++;
        }
        return new String(iArr, 0, i2);
    }
}
