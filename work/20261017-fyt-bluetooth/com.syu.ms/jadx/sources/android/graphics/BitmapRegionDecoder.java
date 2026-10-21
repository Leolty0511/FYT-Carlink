package android.graphics;

import android.content.res.AssetManager;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class BitmapRegionDecoder {
    private int mNativeBitmapRegionDecoder;
    private final Object mNativeLock = new Object();
    private boolean mRecycled = false;

    private BitmapRegionDecoder(int i2) {
        this.mNativeBitmapRegionDecoder = i2;
    }

    private void checkRecycled(String str) {
        if (this.mRecycled) {
            throw new IllegalStateException(str);
        }
    }

    private static native void nativeClean(int i2);

    private static native Bitmap nativeDecodeRegion(int i2, int i3, int i4, int i5, int i6, BitmapFactory.Options options);

    private static native int nativeGetHeight(int i2);

    private static native int nativeGetWidth(int i2);

    private static native BitmapRegionDecoder nativeNewInstance(int i2, boolean z2);

    private static native BitmapRegionDecoder nativeNewInstance(FileDescriptor fileDescriptor, boolean z2);

    private static native BitmapRegionDecoder nativeNewInstance(InputStream inputStream, byte[] bArr, boolean z2);

    private static native BitmapRegionDecoder nativeNewInstance(byte[] bArr, int i2, int i3, boolean z2);

    public static BitmapRegionDecoder newInstance(byte[] bArr, int i2, int i3, boolean z2) {
        if ((i2 | i3) < 0 || bArr.length < i2 + i3) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return nativeNewInstance(bArr, i2, i3, z2);
    }

    public Bitmap decodeRegion(Rect rect, BitmapFactory.Options options) {
        Bitmap bitmapNativeDecodeRegion;
        synchronized (this.mNativeLock) {
            checkRecycled("decodeRegion called on recycled region decoder");
            if (rect.right <= 0 || rect.bottom <= 0 || rect.left >= getWidth() || rect.top >= getHeight()) {
                throw new IllegalArgumentException("rectangle is outside the image");
            }
            int i2 = this.mNativeBitmapRegionDecoder;
            int i3 = rect.left;
            int i4 = rect.top;
            bitmapNativeDecodeRegion = nativeDecodeRegion(i2, i3, i4, rect.right - i3, rect.bottom - i4, options);
        }
        return bitmapNativeDecodeRegion;
    }

    public void finalize() throws Throwable {
        try {
            recycle();
        } finally {
            super.finalize();
        }
    }

    public int getHeight() {
        int iNativeGetHeight;
        synchronized (this.mNativeLock) {
            checkRecycled("getHeight called on recycled region decoder");
            iNativeGetHeight = nativeGetHeight(this.mNativeBitmapRegionDecoder);
        }
        return iNativeGetHeight;
    }

    public int getWidth() {
        int iNativeGetWidth;
        synchronized (this.mNativeLock) {
            checkRecycled("getWidth called on recycled region decoder");
            iNativeGetWidth = nativeGetWidth(this.mNativeBitmapRegionDecoder);
        }
        return iNativeGetWidth;
    }

    public final boolean isRecycled() {
        return this.mRecycled;
    }

    public void recycle() {
        synchronized (this.mNativeLock) {
            if (!this.mRecycled) {
                nativeClean(this.mNativeBitmapRegionDecoder);
                this.mRecycled = true;
            }
        }
    }

    public static BitmapRegionDecoder newInstance(FileDescriptor fileDescriptor, boolean z2) {
        return nativeNewInstance(fileDescriptor, z2);
    }

    public static BitmapRegionDecoder newInstance(InputStream inputStream, boolean z2) {
        if (inputStream instanceof AssetManager.AssetInputStream) {
            return nativeNewInstance(((AssetManager.AssetInputStream) inputStream).getAssetInt(), z2);
        }
        return nativeNewInstance(inputStream, new byte[16384], z2);
    }

    public static BitmapRegionDecoder newInstance(String str, boolean z2) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                BitmapRegionDecoder bitmapRegionDecoderNewInstance = newInstance(fileInputStream2, z2);
                try {
                    fileInputStream2.close();
                } catch (IOException unused) {
                }
                return bitmapRegionDecoderNewInstance;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
