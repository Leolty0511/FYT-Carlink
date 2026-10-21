package android.graphics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Bitmap implements Parcelable {
    public static final Parcelable.Creator<Bitmap> CREATOR = new Parcelable.Creator<Bitmap>() { // from class: android.graphics.Bitmap.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Bitmap createFromParcel(Parcel parcel) {
            Bitmap bitmapNativeCreateFromParcel = Bitmap.nativeCreateFromParcel(parcel);
            if (bitmapNativeCreateFromParcel != null) {
                return bitmapNativeCreateFromParcel;
            }
            throw new RuntimeException("Failed to unparcel Bitmap");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Bitmap[] newArray(int i2) {
            return new Bitmap[i2];
        }
    };
    public static final int DENSITY_NONE = 0;
    private static final int WORKING_COMPRESS_STORAGE = 4096;
    private static volatile int sDefaultDensity = -1;
    private static volatile Matrix sScaleMatrix;
    public byte[] mBuffer;
    public int mDensity;
    private final BitmapFinalizer mFinalizer;
    private int mHeight;
    private final boolean mIsMutable;
    private boolean mIsPremultiplied;
    private int[] mLayoutBounds;
    public final int mNativeBitmap;
    private byte[] mNinePatchChunk;
    private boolean mRecycled;
    private int mWidth;

    /* JADX INFO: renamed from: android.graphics.Bitmap$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Config.RGB_565.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class BitmapFinalizer {
        private final int mNativeBitmap;

        public BitmapFinalizer(int i2) {
            this.mNativeBitmap = i2;
        }

        public void finalize() {
            try {
                super.finalize();
            } catch (Throwable unused) {
            }
            Bitmap.nativeDestructor(this.mNativeBitmap);
        }
    }

    public enum CompressFormat {
        JPEG(0),
        PNG(1),
        WEBP(2);

        public final int nativeInt;

        CompressFormat(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum Config {
        ALPHA_8(1),
        RGB_565(3),
        ARGB_4444(4),
        ARGB_8888(5);

        public final int nativeInt;
        private static Config[] sConfigs = {null, ALPHA_8, null, RGB_565, ARGB_4444, ARGB_8888};

        Config(int i2) {
            this.nativeInt = i2;
        }

        public static Config nativeToConfig(int i2) {
            return sConfigs[i2];
        }
    }

    public Bitmap(int i2, byte[] bArr, int i3, int i4, int i5, boolean z2, boolean z3, byte[] bArr2, int[] iArr) {
        this.mDensity = getDefaultDensity();
        if (i2 == 0) {
            throw new RuntimeException("internal error: native bitmap is 0");
        }
        this.mWidth = i3;
        this.mHeight = i4;
        this.mIsMutable = z2;
        this.mIsPremultiplied = z3;
        this.mBuffer = bArr;
        this.mNativeBitmap = i2;
        this.mFinalizer = new BitmapFinalizer(i2);
        this.mNinePatchChunk = bArr2;
        this.mLayoutBounds = iArr;
        if (i5 >= 0) {
            this.mDensity = i5;
        }
    }

    private void checkPixelAccess(int i2, int i3) {
        checkXYSign(i2, i3);
        if (i2 >= getWidth()) {
            throw new IllegalArgumentException("x must be < bitmap.width()");
        }
        if (i3 >= getHeight()) {
            throw new IllegalArgumentException("y must be < bitmap.height()");
        }
    }

    private void checkPixelsAccess(int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        checkXYSign(i2, i3);
        if (i4 < 0) {
            throw new IllegalArgumentException("width must be >= 0");
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("height must be >= 0");
        }
        if (i2 + i4 > getWidth()) {
            throw new IllegalArgumentException("x + width must be <= bitmap.width()");
        }
        if (i3 + i5 > getHeight()) {
            throw new IllegalArgumentException("y + height must be <= bitmap.height()");
        }
        if (Math.abs(i7) < i4) {
            throw new IllegalArgumentException("abs(stride) must be >= width");
        }
        int i8 = ((i5 - 1) * i7) + i6;
        int length = iArr.length;
        if (i6 < 0 || i6 + i4 > length || i8 < 0 || i8 + i4 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    private void checkRecycled(String str) {
        if (this.mRecycled) {
            throw new IllegalStateException(str);
        }
    }

    private static void checkWidthHeight(int i2, int i3) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException("height must be > 0");
        }
    }

    private static void checkXYSign(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("x must be >= 0");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("y must be >= 0");
        }
    }

    public static Bitmap createBitmap(Bitmap bitmap) {
        return createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight());
    }

    public static Bitmap createScaledBitmap(Bitmap bitmap, int i2, int i3, boolean z2) {
        Matrix matrix;
        synchronized (Bitmap.class) {
            matrix = sScaleMatrix;
            sScaleMatrix = null;
        }
        if (matrix == null) {
            matrix = new Matrix();
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        matrix.setScale(i2 / width, i3 / height);
        Bitmap bitmapCreateBitmap = createBitmap(bitmap, 0, 0, width, height, matrix, z2);
        synchronized (Bitmap.class) {
            if (sScaleMatrix == null) {
                sScaleMatrix = matrix;
            }
        }
        return bitmapCreateBitmap;
    }

    public static int getDefaultDensity() {
        if (sDefaultDensity >= 0) {
            return sDefaultDensity;
        }
        sDefaultDensity = DisplayMetrics.DENSITY_DEVICE;
        return sDefaultDensity;
    }

    private static native boolean nativeCompress(int i2, int i3, int i4, OutputStream outputStream, byte[] bArr);

    private static native int nativeConfig(int i2);

    private static native Bitmap nativeCopy(int i2, int i3, boolean z2);

    private static native void nativeCopyPixelsFromBuffer(int i2, Buffer buffer);

    private static native void nativeCopyPixelsToBuffer(int i2, Buffer buffer);

    private static native Bitmap nativeCreate(int[] iArr, int i2, int i3, int i4, int i5, int i6, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native Bitmap nativeCreateFromParcel(Parcel parcel);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeDestructor(int i2);

    private static native void nativeErase(int i2, int i3);

    private static native Bitmap nativeExtractAlpha(int i2, int i3, int[] iArr);

    private static native int nativeGenerationId(int i2);

    private static native int nativeGetPixel(int i2, int i3, int i4, boolean z2);

    private static native void nativeGetPixels(int i2, int[] iArr, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2);

    private static native boolean nativeHasAlpha(int i2);

    private static native boolean nativeHasMipMap(int i2);

    private static native void nativePrepareToDraw(int i2);

    private static native void nativeReconfigure(int i2, int i3, int i4, int i5, int i6);

    private static native boolean nativeRecycle(int i2);

    private static native int nativeRowBytes(int i2);

    private static native boolean nativeSameAs(int i2, int i3);

    private static native void nativeSetAlphaAndPremultiplied(int i2, boolean z2, boolean z3);

    private static native void nativeSetHasMipMap(int i2, boolean z2);

    private static native void nativeSetPixel(int i2, int i3, int i4, int i5, boolean z2);

    private static native void nativeSetPixels(int i2, int[] iArr, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2);

    private static native boolean nativeWriteToParcel(int i2, boolean z2, int i3, Parcel parcel);

    public static int scaleFromDensity(int i2, int i3, int i4) {
        return (i3 == 0 || i4 == 0 || i3 == i4) ? i2 : ((i2 * i4) + (i3 >> 1)) / i3;
    }

    private final void setAlphaAndPremultiplied(boolean z2, boolean z3) {
        this.mIsPremultiplied = z3;
        nativeSetAlphaAndPremultiplied(this.mNativeBitmap, z2, z3);
    }

    public static void setDefaultDensity(int i2) {
        sDefaultDensity = i2;
    }

    public boolean compress(CompressFormat compressFormat, int i2, OutputStream outputStream) {
        checkRecycled("Can't compress a recycled bitmap");
        Objects.requireNonNull(outputStream);
        if (i2 < 0 || i2 > 100) {
            throw new IllegalArgumentException("quality must be 0..100");
        }
        return nativeCompress(this.mNativeBitmap, compressFormat.nativeInt, i2, outputStream, new byte[4096]);
    }

    public Bitmap copy(Config config, boolean z2) {
        checkRecycled("Can't copy a recycled bitmap");
        Bitmap bitmapNativeCopy = nativeCopy(this.mNativeBitmap, config.nativeInt, z2);
        if (bitmapNativeCopy != null) {
            bitmapNativeCopy.setAlphaAndPremultiplied(hasAlpha(), this.mIsPremultiplied);
            bitmapNativeCopy.mDensity = this.mDensity;
        }
        return bitmapNativeCopy;
    }

    public void copyPixelsFromBuffer(Buffer buffer) {
        char c2;
        checkRecycled("copyPixelsFromBuffer called on recycled bitmap");
        int iRemaining = buffer.remaining();
        if (buffer instanceof ByteBuffer) {
            c2 = 0;
        } else if (buffer instanceof ShortBuffer) {
            c2 = 1;
        } else {
            if (!(buffer instanceof IntBuffer)) {
                throw new RuntimeException("unsupported Buffer subclass");
            }
            c2 = 2;
        }
        long j2 = ((long) iRemaining) << c2;
        long byteCount = getByteCount();
        if (j2 < byteCount) {
            throw new RuntimeException("Buffer not large enough for pixels");
        }
        nativeCopyPixelsFromBuffer(this.mNativeBitmap, buffer);
        buffer.position((int) (((long) buffer.position()) + (byteCount >> c2)));
    }

    public void copyPixelsToBuffer(Buffer buffer) {
        char c2;
        int iRemaining = buffer.remaining();
        if (buffer instanceof ByteBuffer) {
            c2 = 0;
        } else if (buffer instanceof ShortBuffer) {
            c2 = 1;
        } else {
            if (!(buffer instanceof IntBuffer)) {
                throw new RuntimeException("unsupported Buffer subclass");
            }
            c2 = 2;
        }
        long j2 = ((long) iRemaining) << c2;
        long byteCount = getByteCount();
        if (j2 < byteCount) {
            throw new RuntimeException("Buffer not large enough for pixels");
        }
        nativeCopyPixelsToBuffer(this.mNativeBitmap, buffer);
        buffer.position((int) (((long) buffer.position()) + (byteCount >> c2)));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void eraseColor(int i2) {
        checkRecycled("Can't erase a recycled bitmap");
        if (!isMutable()) {
            throw new IllegalStateException("cannot erase immutable bitmaps");
        }
        nativeErase(this.mNativeBitmap, i2);
    }

    public Bitmap extractAlpha() {
        return extractAlpha(null, null);
    }

    public final int getAllocationByteCount() {
        byte[] bArr = this.mBuffer;
        return bArr == null ? getByteCount() : bArr.length;
    }

    public final int getByteCount() {
        return getRowBytes() * getHeight();
    }

    public final Config getConfig() {
        return Config.nativeToConfig(nativeConfig(this.mNativeBitmap));
    }

    public int getDensity() {
        return this.mDensity;
    }

    public int getGenerationId() {
        return nativeGenerationId(this.mNativeBitmap);
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public int[] getLayoutBounds() {
        return this.mLayoutBounds;
    }

    public byte[] getNinePatchChunk() {
        return this.mNinePatchChunk;
    }

    public int getPixel(int i2, int i3) {
        checkRecycled("Can't call getPixel() on a recycled bitmap");
        checkPixelAccess(i2, i3);
        return nativeGetPixel(this.mNativeBitmap, i2, i3, this.mIsPremultiplied);
    }

    public void getPixels(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7) {
        checkRecycled("Can't call getPixels() on a recycled bitmap");
        if (i6 == 0 || i7 == 0) {
            return;
        }
        checkPixelsAccess(i4, i5, i6, i7, i2, i3, iArr);
        nativeGetPixels(this.mNativeBitmap, iArr, i2, i3, i4, i5, i6, i7, this.mIsPremultiplied);
    }

    public final int getRowBytes() {
        return nativeRowBytes(this.mNativeBitmap);
    }

    public int getScaledHeight(Canvas canvas) {
        return scaleFromDensity(getHeight(), this.mDensity, canvas.mDensity);
    }

    public int getScaledWidth(Canvas canvas) {
        return scaleFromDensity(getWidth(), this.mDensity, canvas.mDensity);
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public final boolean hasAlpha() {
        return nativeHasAlpha(this.mNativeBitmap);
    }

    public final boolean hasMipMap() {
        return nativeHasMipMap(this.mNativeBitmap);
    }

    public final boolean isMutable() {
        return this.mIsMutable;
    }

    public final boolean isPremultiplied() {
        return this.mIsPremultiplied && getConfig() != Config.RGB_565 && hasAlpha();
    }

    public final boolean isRecycled() {
        return this.mRecycled;
    }

    public final int ni() {
        return this.mNativeBitmap;
    }

    public void prepareToDraw() {
        nativePrepareToDraw(this.mNativeBitmap);
    }

    public void reconfigure(int i2, int i3, Config config) {
        checkRecycled("Can't call reconfigure() on a recycled bitmap");
        if (i2 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("width and height must be > 0");
        }
        if (!isMutable()) {
            throw new IllegalStateException("only mutable bitmaps may be reconfigured");
        }
        byte[] bArr = this.mBuffer;
        if (bArr == null) {
            throw new IllegalStateException("native-backed bitmaps may not be reconfigured");
        }
        nativeReconfigure(this.mNativeBitmap, i2, i3, config.nativeInt, bArr.length);
        this.mWidth = i2;
        this.mHeight = i3;
    }

    public void recycle() {
        if (this.mRecycled) {
            return;
        }
        if (nativeRecycle(this.mNativeBitmap)) {
            this.mBuffer = null;
            this.mNinePatchChunk = null;
        }
        this.mRecycled = true;
    }

    public void reinit(int i2, int i3, boolean z2) {
        this.mWidth = i2;
        this.mHeight = i3;
        this.mIsPremultiplied = z2;
    }

    public boolean sameAs(Bitmap bitmap) {
        return this == bitmap || (bitmap != null && nativeSameAs(this.mNativeBitmap, bitmap.mNativeBitmap));
    }

    public void setConfig(Config config) {
        reconfigure(getWidth(), getHeight(), config);
    }

    public void setDensity(int i2) {
        this.mDensity = i2;
    }

    public void setHasAlpha(boolean z2) {
        nativeSetAlphaAndPremultiplied(this.mNativeBitmap, z2, this.mIsPremultiplied);
    }

    public final void setHasMipMap(boolean z2) {
        nativeSetHasMipMap(this.mNativeBitmap, z2);
    }

    public void setHeight(int i2) {
        reconfigure(getWidth(), i2, getConfig());
    }

    public void setLayoutBounds(int[] iArr) {
        this.mLayoutBounds = iArr;
    }

    public void setNinePatchChunk(byte[] bArr) {
        this.mNinePatchChunk = bArr;
    }

    public void setPixel(int i2, int i3, int i4) {
        checkRecycled("Can't call setPixel() on a recycled bitmap");
        if (!isMutable()) {
            throw new IllegalStateException();
        }
        checkPixelAccess(i2, i3);
        nativeSetPixel(this.mNativeBitmap, i2, i3, i4, this.mIsPremultiplied);
    }

    public void setPixels(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7) {
        checkRecycled("Can't call setPixels() on a recycled bitmap");
        if (!isMutable()) {
            throw new IllegalStateException();
        }
        if (i6 == 0 || i7 == 0) {
            return;
        }
        checkPixelsAccess(i4, i5, i6, i7, i2, i3, iArr);
        nativeSetPixels(this.mNativeBitmap, iArr, i2, i3, i4, i5, i6, i7, this.mIsPremultiplied);
    }

    public final void setPremultiplied(boolean z2) {
        this.mIsPremultiplied = z2;
        nativeSetAlphaAndPremultiplied(this.mNativeBitmap, hasAlpha(), z2);
    }

    public void setWidth(int i2) {
        reconfigure(i2, getHeight(), getConfig());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        checkRecycled("Can't parcel a recycled bitmap");
        if (!nativeWriteToParcel(this.mNativeBitmap, this.mIsMutable, this.mDensity, parcel)) {
            throw new RuntimeException("native writeToParcel failed");
        }
    }

    public static Bitmap createBitmap(Bitmap bitmap, int i2, int i3, int i4, int i5) {
        return createBitmap(bitmap, i2, i3, i4, i5, (Matrix) null, false);
    }

    public Bitmap extractAlpha(Paint paint, int[] iArr) {
        checkRecycled("Can't extractAlpha on a recycled bitmap");
        Bitmap bitmapNativeExtractAlpha = nativeExtractAlpha(this.mNativeBitmap, paint != null ? paint.mNativePaint : 0, iArr);
        if (bitmapNativeExtractAlpha == null) {
            throw new RuntimeException("Failed to extractAlpha on Bitmap");
        }
        bitmapNativeExtractAlpha.mDensity = this.mDensity;
        return bitmapNativeExtractAlpha;
    }

    public int getScaledHeight(DisplayMetrics displayMetrics) {
        return scaleFromDensity(getHeight(), this.mDensity, displayMetrics.densityDpi);
    }

    public int getScaledWidth(DisplayMetrics displayMetrics) {
        return scaleFromDensity(getWidth(), this.mDensity, displayMetrics.densityDpi);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    public static Bitmap createBitmap(Bitmap bitmap, int i2, int i3, int i4, int i5, Matrix matrix, boolean z2) {
        Config config;
        Bitmap bitmapCreateBitmap;
        Paint paint;
        checkXYSign(i2, i3);
        checkWidthHeight(i4, i5);
        int i6 = i2 + i4;
        if (i6 <= bitmap.getWidth()) {
            int i7 = i3 + i5;
            if (i7 <= bitmap.getHeight()) {
                if (!bitmap.isMutable() && i2 == 0 && i3 == 0 && i4 == bitmap.getWidth() && i5 == bitmap.getHeight() && (matrix == null || matrix.isIdentity())) {
                    return bitmap;
                }
                Canvas canvas = new Canvas();
                Rect rect = new Rect(i2, i3, i6, i7);
                RectF rectF = new RectF(0.0f, 0.0f, i4, i5);
                Config config2 = Config.ARGB_8888;
                Config config3 = bitmap.getConfig();
                if (config3 == null) {
                    config = config2;
                } else {
                    int i8 = AnonymousClass2.$SwitchMap$android$graphics$Bitmap$Config[config3.ordinal()];
                    if (i8 == 1) {
                        config = Config.RGB_565;
                    } else if (i8 != 2) {
                        config = config2;
                    } else {
                        config = Config.ALPHA_8;
                    }
                }
                if (matrix != null && !matrix.isIdentity()) {
                    boolean z3 = !matrix.rectStaysRect();
                    RectF rectF2 = new RectF();
                    matrix.mapRect(rectF2, rectF);
                    int iRound = Math.round(rectF2.width());
                    int iRound2 = Math.round(rectF2.height());
                    if (!z3) {
                        config2 = config;
                    }
                    bitmapCreateBitmap = createBitmap(iRound, iRound2, config2, z3 || bitmap.hasAlpha());
                    canvas.translate(-rectF2.left, -rectF2.top);
                    canvas.concat(matrix);
                    paint = new Paint();
                    paint.setFilterBitmap(z2);
                    if (z3) {
                        paint.setAntiAlias(true);
                    }
                } else {
                    bitmapCreateBitmap = createBitmap(i4, i5, config, bitmap.hasAlpha());
                    paint = null;
                }
                bitmapCreateBitmap.mDensity = bitmap.mDensity;
                bitmapCreateBitmap.setAlphaAndPremultiplied(bitmap.hasAlpha(), bitmap.mIsPremultiplied);
                canvas.setBitmap(bitmapCreateBitmap);
                canvas.drawBitmap(bitmap, rect, rectF, paint);
                canvas.setBitmap(null);
                return bitmapCreateBitmap;
            }
            throw new IllegalArgumentException("y + height must be <= bitmap.height()");
        }
        throw new IllegalArgumentException("x + width must be <= bitmap.width()");
    }

    public int getScaledHeight(int i2) {
        return scaleFromDensity(getHeight(), this.mDensity, i2);
    }

    public int getScaledWidth(int i2) {
        return scaleFromDensity(getWidth(), this.mDensity, i2);
    }

    public static Bitmap createBitmap(int i2, int i3, Config config) {
        return createBitmap(i2, i3, config, true);
    }

    public static Bitmap createBitmap(DisplayMetrics displayMetrics, int i2, int i3, Config config) {
        return createBitmap(displayMetrics, i2, i3, config, true);
    }

    private static Bitmap createBitmap(int i2, int i3, Config config, boolean z2) {
        return createBitmap((DisplayMetrics) null, i2, i3, config, z2);
    }

    private static Bitmap createBitmap(DisplayMetrics displayMetrics, int i2, int i3, Config config, boolean z2) {
        if (i2 > 0 && i3 > 0) {
            Bitmap bitmapNativeCreate = nativeCreate(null, 0, i2, i2, i3, config.nativeInt, true);
            if (displayMetrics != null) {
                bitmapNativeCreate.mDensity = displayMetrics.densityDpi;
            }
            bitmapNativeCreate.setHasAlpha(z2);
            if (config == Config.ARGB_8888 && !z2) {
                nativeErase(bitmapNativeCreate.mNativeBitmap, -16777216);
            }
            return bitmapNativeCreate;
        }
        throw new IllegalArgumentException("width and height must be > 0");
    }

    public static Bitmap createBitmap(int[] iArr, int i2, int i3, int i4, int i5, Config config) {
        return createBitmap((DisplayMetrics) null, iArr, i2, i3, i4, i5, config);
    }

    public static Bitmap createBitmap(DisplayMetrics displayMetrics, int[] iArr, int i2, int i3, int i4, int i5, Config config) {
        checkWidthHeight(i4, i5);
        if (Math.abs(i3) >= i4) {
            int i6 = ((i5 - 1) * i3) + i2;
            int length = iArr.length;
            if (i2 < 0 || i2 + i4 > length || i6 < 0 || i6 + i4 > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (i4 > 0 && i5 > 0) {
                Bitmap bitmapNativeCreate = nativeCreate(iArr, i2, i3, i4, i5, config.nativeInt, false);
                if (displayMetrics != null) {
                    bitmapNativeCreate.mDensity = displayMetrics.densityDpi;
                }
                return bitmapNativeCreate;
            }
            throw new IllegalArgumentException("width and height must be > 0");
        }
        throw new IllegalArgumentException("abs(stride) must be >= width");
    }

    public static Bitmap createBitmap(int[] iArr, int i2, int i3, Config config) {
        return createBitmap((DisplayMetrics) null, iArr, 0, i2, i2, i3, config);
    }

    public static Bitmap createBitmap(DisplayMetrics displayMetrics, int[] iArr, int i2, int i3, Config config) {
        return createBitmap(displayMetrics, iArr, 0, i2, i2, i3, config);
    }
}
