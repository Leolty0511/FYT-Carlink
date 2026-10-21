package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public final class LargeBitmap {
    private long mNativeLargeBitmap;
    private boolean mRecycled = false;

    private LargeBitmap(long j2) {
        this.mNativeLargeBitmap = j2;
    }

    private void checkRecycled(String str) {
        if (this.mRecycled) {
            throw new IllegalStateException(str);
        }
    }

    private static native void nativeClean(long j2);

    private static native Bitmap nativeDecodeRegion(long j2, int i2, int i3, int i4, int i5, BitmapFactory.Options options);

    private static native int nativeGetHeight(long j2);

    private static native int nativeGetWidth(long j2);

    public Bitmap decodeRegion(Rect rect, BitmapFactory.Options options) {
        checkRecycled("decodeRegion called on recycled large bitmap");
        if (rect.left < 0 || rect.top < 0 || rect.right > getWidth() || rect.bottom > getHeight()) {
            throw new IllegalArgumentException("rectangle is not inside the image");
        }
        long j2 = this.mNativeLargeBitmap;
        int i2 = rect.left;
        int i3 = rect.top;
        return nativeDecodeRegion(j2, i2, i3, rect.right - i2, rect.bottom - i3, options);
    }

    public void finalize() {
        recycle();
    }

    public int getHeight() {
        checkRecycled("getHeight called on recycled large bitmap");
        return nativeGetHeight(this.mNativeLargeBitmap);
    }

    public int getWidth() {
        checkRecycled("getWidth called on recycled large bitmap");
        return nativeGetWidth(this.mNativeLargeBitmap);
    }

    public final boolean isRecycled() {
        return this.mRecycled;
    }

    public void recycle() {
        if (this.mRecycled) {
            return;
        }
        nativeClean(this.mNativeLargeBitmap);
        this.mRecycled = true;
    }
}
