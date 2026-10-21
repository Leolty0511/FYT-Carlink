package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public final class LargeBitmap {
    private int mNativeLargeBitmap;
    private boolean mRecycled = false;

    private LargeBitmap(int i2) {
        this.mNativeLargeBitmap = i2;
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

    public Bitmap decodeRegion(Rect rect, BitmapFactory.Options options) {
        checkRecycled("decodeRegion called on recycled large bitmap");
        if (rect.left < 0 || rect.top < 0 || rect.right > getWidth() || rect.bottom > getHeight()) {
            throw new IllegalArgumentException("rectangle is not inside the image");
        }
        int i2 = this.mNativeLargeBitmap;
        int i3 = rect.left;
        int i4 = rect.top;
        return nativeDecodeRegion(i2, i3, i4, rect.right - i3, rect.bottom - i4, options);
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
