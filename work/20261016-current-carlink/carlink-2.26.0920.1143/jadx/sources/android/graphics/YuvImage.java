package android.graphics;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class YuvImage {
    private static final int WORKING_COMPRESS_STORAGE = 4096;
    private byte[] mData;
    private int mFormat;
    private int mHeight;
    private int[] mStrides;
    private int mWidth;

    public YuvImage(byte[] bArr, int i2, int i3, int i4, int[] iArr) {
        if (i2 != 17 && i2 != 20) {
            throw new IllegalArgumentException("only support ImageFormat.NV21 and ImageFormat.YUY2 for now");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new IllegalArgumentException("width and height must large than 0");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("yuv cannot be null");
        }
        if (iArr == null) {
            this.mStrides = calculateStrides(i3, i2);
        } else {
            this.mStrides = iArr;
        }
        this.mData = bArr;
        this.mFormat = i2;
        this.mWidth = i3;
        this.mHeight = i4;
    }

    private void adjustRectangle(Rect rect) {
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i2 = this.mFormat;
        if (i2 == 17) {
            iWidth &= -2;
            int i3 = rect.left & (-2);
            rect.left = i3;
            int i4 = rect.top & (-2);
            rect.top = i4;
            rect.right = i3 + iWidth;
            rect.bottom = i4 + (iHeight & (-2));
        }
        if (i2 == 20) {
            int i5 = rect.left & (-2);
            rect.left = i5;
            rect.right = i5 + (iWidth & (-2));
        }
    }

    private int[] calculateStrides(int i2, int i3) {
        if (i3 == 17) {
            return new int[]{i2, i2};
        }
        if (i3 == 20) {
            return new int[]{i2 * 2};
        }
        return null;
    }

    private static native boolean nativeCompressToJpeg(byte[] bArr, int i2, int i3, int i4, int[] iArr, int[] iArr2, int i5, OutputStream outputStream, byte[] bArr2);

    public int[] calculateOffsets(int i2, int i3) {
        int i4 = this.mFormat;
        if (i4 == 17) {
            int[] iArr = this.mStrides;
            return new int[]{(iArr[0] * i3) + i2, ((i2 / 2) * 2) + ((i3 / 2) * iArr[1]) + (this.mHeight * iArr[0])};
        }
        if (i4 == 20) {
            return new int[]{((i2 / 2) * 4) + (i3 * this.mStrides[0])};
        }
        return null;
    }

    public boolean compressToJpeg(Rect rect, int i2, OutputStream outputStream) {
        if (!new Rect(0, 0, this.mWidth, this.mHeight).contains(rect)) {
            throw new IllegalArgumentException("rectangle is not inside the image");
        }
        if (i2 < 0 || i2 > 100) {
            throw new IllegalArgumentException("quality must be 0..100");
        }
        if (outputStream == null) {
            throw new IllegalArgumentException("stream cannot be null");
        }
        adjustRectangle(rect);
        return nativeCompressToJpeg(this.mData, this.mFormat, rect.width(), rect.height(), calculateOffsets(rect.left, rect.top), this.mStrides, i2, outputStream, new byte[4096]);
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int[] getStrides() {
        return this.mStrides;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public byte[] getYuvData() {
        return this.mData;
    }

    public int getYuvFormat() {
        return this.mFormat;
    }
}
