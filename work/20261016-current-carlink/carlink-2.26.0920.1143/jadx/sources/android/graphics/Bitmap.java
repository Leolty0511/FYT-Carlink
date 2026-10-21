package android.graphics;

import android.content.res.ResourcesImpl;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.os.Trace;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import libcore.util.NativeAllocationRegistry;

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
    private static final long NATIVE_ALLOCATION_SIZE = 32;
    private static final String TAG = "Bitmap";
    private static final int WORKING_COMPRESS_STORAGE = 4096;
    private static volatile int sDefaultDensity = -1;
    public static volatile int sPreloadTracingNumInstantiatedBitmaps;
    public static volatile long sPreloadTracingTotalBitmapsSize;
    private ColorSpace mColorSpace;
    public int mDensity;
    private int mHeight;
    private final boolean mIsMutable;
    private final long mNativePtr;
    private byte[] mNinePatchChunk;
    private NinePatch.InsetStruct mNinePatchInsets;
    private boolean mRecycled;
    private boolean mRequestPremultiplied;
    private int mWidth;

    /* JADX INFO: renamed from: android.graphics.Bitmap$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

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
                $SwitchMap$android$graphics$Bitmap$Config[Config.RGBA_F16.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ARGB_4444.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum CompressFormat {
        JPEG(0),
        PNG(1),
        WEBP(2);

        final int nativeInt;

        CompressFormat(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum Config {
        ALPHA_8(1),
        RGB_565(3),
        ARGB_4444(4),
        ARGB_8888(5),
        RGBA_F16(6),
        HARDWARE(7);

        final int nativeInt;
        private static Config[] sConfigs = {null, ALPHA_8, null, RGB_565, ARGB_4444, ARGB_8888, RGBA_F16, HARDWARE};

        Config(int i2) {
            this.nativeInt = i2;
        }

        public static Config nativeToConfig(int i2) {
            return sConfigs[i2];
        }
    }

    public Bitmap(long j2, int i2, int i3, int i4, boolean z2, boolean z3, byte[] bArr, NinePatch.InsetStruct insetStruct) {
        this.mDensity = getDefaultDensity();
        if (j2 == 0) {
            throw new RuntimeException("internal error: native bitmap is 0");
        }
        this.mWidth = i2;
        this.mHeight = i3;
        this.mIsMutable = z2;
        this.mRequestPremultiplied = z3;
        this.mNinePatchChunk = bArr;
        this.mNinePatchInsets = insetStruct;
        if (i4 >= 0) {
            this.mDensity = i4;
        }
        this.mNativePtr = j2;
        long allocationByteCount = ((long) getAllocationByteCount()) + 32;
        new NativeAllocationRegistry(Bitmap.class.getClassLoader(), nativeGetNativeFinalizer(), allocationByteCount).registerNativeAllocation(this, j2);
        if (ResourcesImpl.TRACE_FOR_DETAILED_PRELOAD) {
            sPreloadTracingNumInstantiatedBitmaps++;
            sPreloadTracingTotalBitmapsSize += allocationByteCount;
        }
    }

    private void checkHardware(String str) {
        if (getConfig() == Config.HARDWARE) {
            throw new IllegalStateException(str);
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

    public static Bitmap createHardwareBitmap(GraphicBuffer graphicBuffer) {
        return nativeCreateHardwareBitmap(graphicBuffer);
    }

    public static Bitmap createScaledBitmap(Bitmap bitmap, int i2, int i3, boolean z2) {
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width != i2 || height != i3) {
            matrix.setScale(i2 / width, i3 / height);
        }
        return createBitmap(bitmap, 0, 0, width, height, matrix, z2);
    }

    public static int getDefaultDensity() {
        if (sDefaultDensity >= 0) {
            return sDefaultDensity;
        }
        sDefaultDensity = DisplayMetrics.DENSITY_DEVICE;
        return sDefaultDensity;
    }

    private static native boolean nativeCompress(long j2, int i2, int i3, OutputStream outputStream, byte[] bArr);

    private static native int nativeConfig(long j2);

    private static native Bitmap nativeCopy(long j2, int i2, boolean z2);

    private static native Bitmap nativeCopyAshmem(long j2);

    private static native Bitmap nativeCopyAshmemConfig(long j2, int i2);

    private static native void nativeCopyColorSpace(long j2, long j3);

    private static native void nativeCopyPixelsFromBuffer(long j2, Buffer buffer);

    private static native void nativeCopyPixelsToBuffer(long j2, Buffer buffer);

    private static native Bitmap nativeCopyPreserveInternalConfig(long j2);

    private static native Bitmap nativeCreate(int[] iArr, int i2, int i3, int i4, int i5, int i6, boolean z2, float[] fArr, ColorSpace.Rgb.TransferParameters transferParameters);

    /* JADX INFO: Access modifiers changed from: private */
    public static native Bitmap nativeCreateFromParcel(Parcel parcel);

    private static native GraphicBuffer nativeCreateGraphicBufferHandle(long j2);

    private static native Bitmap nativeCreateHardwareBitmap(GraphicBuffer graphicBuffer);

    private static native void nativeErase(long j2, int i2);

    private static native Bitmap nativeExtractAlpha(long j2, long j3, int[] iArr);

    private static native int nativeGenerationId(long j2);

    private static native int nativeGetAllocationByteCount(long j2);

    private static native boolean nativeGetColorSpace(long j2, float[] fArr, float[] fArr2);

    private static native long nativeGetNativeFinalizer();

    private static native int nativeGetPixel(long j2, int i2, int i3);

    private static native void nativeGetPixels(long j2, int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7);

    private static native boolean nativeHasAlpha(long j2);

    private static native boolean nativeHasMipMap(long j2);

    private static native boolean nativeIsPremultiplied(long j2);

    private static native boolean nativeIsSRGB(long j2);

    private static native void nativePrepareToDraw(long j2);

    private static native void nativeReconfigure(long j2, int i2, int i3, int i4, boolean z2);

    private static native boolean nativeRecycle(long j2);

    private static native int nativeRowBytes(long j2);

    private static native boolean nativeSameAs(long j2, long j3);

    private static native void nativeSetHasAlpha(long j2, boolean z2, boolean z3);

    private static native void nativeSetHasMipMap(long j2, boolean z2);

    private static native void nativeSetPixel(long j2, int i2, int i3, int i4);

    private static native void nativeSetPixels(long j2, int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7);

    private static native void nativeSetPremultiplied(long j2, boolean z2);

    private static native boolean nativeWriteToParcel(long j2, boolean z2, int i2, Parcel parcel);

    private void noteHardwareBitmapSlowCall() {
        if (getConfig() == Config.HARDWARE) {
            StrictMode.noteSlowCall("Warning: attempt to read pixels from hardware bitmap, which is very slow operation");
        }
    }

    public static int scaleFromDensity(int i2, int i3, int i4) {
        return (i3 == 0 || i4 == 0 || i3 == i4) ? i2 : ((i2 * i4) + (i3 >> 1)) / i3;
    }

    public static void setDefaultDensity(int i2) {
        sDefaultDensity = i2;
    }

    public boolean compress(CompressFormat compressFormat, int i2, OutputStream outputStream) {
        checkRecycled("Can't compress a recycled bitmap");
        outputStream.getClass();
        if (i2 < 0 || i2 > 100) {
            throw new IllegalArgumentException("quality must be 0..100");
        }
        StrictMode.noteSlowCall("Compression of a bitmap is slow");
        Trace.traceBegin(8192L, "Bitmap.compress");
        boolean zNativeCompress = nativeCompress(this.mNativePtr, compressFormat.nativeInt, i2, outputStream, new byte[4096]);
        Trace.traceEnd(8192L);
        return zNativeCompress;
    }

    public Bitmap copy(Config config, boolean z2) {
        checkRecycled("Can't copy a recycled bitmap");
        if (config == Config.HARDWARE && z2) {
            throw new IllegalArgumentException("Hardware bitmaps are always immutable");
        }
        noteHardwareBitmapSlowCall();
        Bitmap bitmapNativeCopy = nativeCopy(this.mNativePtr, config.nativeInt, z2);
        if (bitmapNativeCopy != null) {
            bitmapNativeCopy.setPremultiplied(this.mRequestPremultiplied);
            bitmapNativeCopy.mDensity = this.mDensity;
        }
        return bitmapNativeCopy;
    }

    public void copyPixelsFromBuffer(Buffer buffer) {
        char c;
        checkRecycled("copyPixelsFromBuffer called on recycled bitmap");
        checkHardware("unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable");
        int iRemaining = buffer.remaining();
        if (buffer instanceof ByteBuffer) {
            c = 0;
        } else if (buffer instanceof ShortBuffer) {
            c = 1;
        } else {
            if (!(buffer instanceof IntBuffer)) {
                throw new RuntimeException("unsupported Buffer subclass");
            }
            c = 2;
        }
        long j2 = ((long) iRemaining) << c;
        long byteCount = getByteCount();
        if (j2 < byteCount) {
            throw new RuntimeException("Buffer not large enough for pixels");
        }
        nativeCopyPixelsFromBuffer(this.mNativePtr, buffer);
        buffer.position((int) (((long) buffer.position()) + (byteCount >> c)));
    }

    public void copyPixelsToBuffer(Buffer buffer) {
        char c;
        checkHardware("unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps");
        int iRemaining = buffer.remaining();
        if (buffer instanceof ByteBuffer) {
            c = 0;
        } else if (buffer instanceof ShortBuffer) {
            c = 1;
        } else {
            if (!(buffer instanceof IntBuffer)) {
                throw new RuntimeException("unsupported Buffer subclass");
            }
            c = 2;
        }
        long j2 = ((long) iRemaining) << c;
        long byteCount = getByteCount();
        if (j2 < byteCount) {
            throw new RuntimeException("Buffer not large enough for pixels");
        }
        nativeCopyPixelsToBuffer(this.mNativePtr, buffer);
        buffer.position((int) (((long) buffer.position()) + (byteCount >> c)));
    }

    public Bitmap createAshmemBitmap() {
        checkRecycled("Can't copy a recycled bitmap");
        noteHardwareBitmapSlowCall();
        Bitmap bitmapNativeCopyAshmem = nativeCopyAshmem(this.mNativePtr);
        if (bitmapNativeCopyAshmem != null) {
            bitmapNativeCopyAshmem.setPremultiplied(this.mRequestPremultiplied);
            bitmapNativeCopyAshmem.mDensity = this.mDensity;
        }
        return bitmapNativeCopyAshmem;
    }

    public GraphicBuffer createGraphicBufferHandle() {
        return nativeCreateGraphicBufferHandle(this.mNativePtr);
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
        nativeErase(this.mNativePtr, i2);
    }

    public Bitmap extractAlpha() {
        return extractAlpha(null, null);
    }

    public final int getAllocationByteCount() {
        if (!this.mRecycled) {
            return nativeGetAllocationByteCount(this.mNativePtr);
        }
        Log.w(TAG, "Called getAllocationByteCount() on a recycle()'d bitmap! This is undefined behavior!");
        return 0;
    }

    public final int getByteCount() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getByteCount() on a recycle()'d bitmap! This is undefined behavior!");
            return 0;
        }
        return getHeight() * getRowBytes();
    }

    public final ColorSpace getColorSpace() {
        Bitmap bitmap;
        if (getConfig() == Config.RGBA_F16) {
            this.mColorSpace = null;
            return ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        }
        if (this.mColorSpace != null) {
            bitmap = this;
        } else {
            if (nativeIsSRGB(this.mNativePtr)) {
                this.mColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            } else {
                float[] fArr = new float[9];
                float[] fArr2 = new float[7];
                if (nativeGetColorSpace(this.mNativePtr, fArr, fArr2)) {
                    ColorSpace.Rgb.TransferParameters transferParameters = new ColorSpace.Rgb.TransferParameters(fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5], fArr2[6]);
                    ColorSpace colorSpaceMatch = ColorSpace.match(fArr, transferParameters);
                    if (colorSpaceMatch != null) {
                        bitmap = this;
                        bitmap.mColorSpace = colorSpaceMatch;
                    } else {
                        bitmap = this;
                        bitmap.mColorSpace = new ColorSpace.Rgb("Unknown", fArr, transferParameters);
                    }
                }
            }
            bitmap = this;
        }
        return bitmap.mColorSpace;
    }

    public final Config getConfig() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getConfig() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return Config.nativeToConfig(nativeConfig(this.mNativePtr));
    }

    public int getDensity() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getDensity() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return this.mDensity;
    }

    public int getGenerationId() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getGenerationId() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return nativeGenerationId(this.mNativePtr);
    }

    public final int getHeight() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getHeight() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return this.mHeight;
    }

    public long getNativeInstance() {
        return this.mNativePtr;
    }

    public byte[] getNinePatchChunk() {
        return this.mNinePatchChunk;
    }

    public NinePatch.InsetStruct getNinePatchInsets() {
        return this.mNinePatchInsets;
    }

    public void getOpticalInsets(Rect rect) {
        NinePatch.InsetStruct insetStruct = this.mNinePatchInsets;
        if (insetStruct == null) {
            rect.setEmpty();
        } else {
            rect.set(insetStruct.opticalRect);
        }
    }

    public int getPixel(int i2, int i3) {
        checkRecycled("Can't call getPixel() on a recycled bitmap");
        checkHardware("unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps");
        checkPixelAccess(i2, i3);
        return nativeGetPixel(this.mNativePtr, i2, i3);
    }

    public void getPixels(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7) {
        checkRecycled("Can't call getPixels() on a recycled bitmap");
        checkHardware("unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps");
        if (i6 == 0 || i7 == 0) {
            return;
        }
        checkPixelsAccess(i4, i5, i6, i7, i2, i3, iArr);
        nativeGetPixels(this.mNativePtr, iArr, i2, i3, i4, i5, i6, i7);
    }

    public final int getRowBytes() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getRowBytes() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return nativeRowBytes(this.mNativePtr);
    }

    public int getScaledHeight(Canvas canvas) {
        return scaleFromDensity(getHeight(), this.mDensity, canvas.mDensity);
    }

    public int getScaledWidth(Canvas canvas) {
        return scaleFromDensity(getWidth(), this.mDensity, canvas.mDensity);
    }

    public final int getWidth() {
        if (this.mRecycled) {
            Log.w(TAG, "Called getWidth() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return this.mWidth;
    }

    public final boolean hasAlpha() {
        if (this.mRecycled) {
            Log.w(TAG, "Called hasAlpha() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return nativeHasAlpha(this.mNativePtr);
    }

    public final boolean hasMipMap() {
        if (this.mRecycled) {
            Log.w(TAG, "Called hasMipMap() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return nativeHasMipMap(this.mNativePtr);
    }

    public final boolean isMutable() {
        return this.mIsMutable;
    }

    public final boolean isPremultiplied() {
        if (this.mRecycled) {
            Log.w(TAG, "Called isPremultiplied() on a recycle()'d bitmap! This is undefined behavior!");
        }
        return nativeIsPremultiplied(this.mNativePtr);
    }

    public final boolean isRecycled() {
        return this.mRecycled;
    }

    public void prepareToDraw() {
        checkRecycled("Can't prepareToDraw on a recycled bitmap!");
        nativePrepareToDraw(this.mNativePtr);
    }

    public void reconfigure(int i2, int i3, Config config) {
        checkRecycled("Can't call reconfigure() on a recycled bitmap");
        if (i2 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("width and height must be > 0");
        }
        if (!isMutable()) {
            throw new IllegalStateException("only mutable bitmaps may be reconfigured");
        }
        nativeReconfigure(this.mNativePtr, i2, i3, config.nativeInt, this.mRequestPremultiplied);
        this.mWidth = i2;
        this.mHeight = i3;
        this.mColorSpace = null;
    }

    public void recycle() {
        if (this.mRecycled) {
            return;
        }
        long j2 = this.mNativePtr;
        if (j2 != 0) {
            if (nativeRecycle(j2)) {
                this.mNinePatchChunk = null;
            }
            this.mRecycled = true;
        }
    }

    public void reinit(int i2, int i3, boolean z2) {
        this.mWidth = i2;
        this.mHeight = i3;
        this.mRequestPremultiplied = z2;
        this.mColorSpace = null;
    }

    public boolean sameAs(Bitmap bitmap) {
        checkRecycled("Can't call sameAs on a recycled bitmap!");
        noteHardwareBitmapSlowCall();
        if (this == bitmap) {
            return true;
        }
        if (bitmap == null) {
            return false;
        }
        bitmap.noteHardwareBitmapSlowCall();
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("Can't compare to a recycled bitmap!");
        }
        return nativeSameAs(this.mNativePtr, bitmap.mNativePtr);
    }

    public void setConfig(Config config) {
        reconfigure(getWidth(), getHeight(), config);
    }

    public void setDensity(int i2) {
        this.mDensity = i2;
    }

    public void setHasAlpha(boolean z2) {
        checkRecycled("setHasAlpha called on a recycled bitmap");
        nativeSetHasAlpha(this.mNativePtr, z2, this.mRequestPremultiplied);
    }

    public final void setHasMipMap(boolean z2) {
        checkRecycled("setHasMipMap called on a recycled bitmap");
        nativeSetHasMipMap(this.mNativePtr, z2);
    }

    public void setHeight(int i2) {
        reconfigure(getWidth(), i2, getConfig());
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
        nativeSetPixel(this.mNativePtr, i2, i3, i4);
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
        nativeSetPixels(this.mNativePtr, iArr, i2, i3, i4, i5, i6, i7);
    }

    public final void setPremultiplied(boolean z2) {
        checkRecycled("setPremultiplied called on a recycled bitmap");
        this.mRequestPremultiplied = z2;
        nativeSetPremultiplied(this.mNativePtr, z2);
    }

    public void setWidth(int i2) {
        reconfigure(i2, getHeight(), getConfig());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        checkRecycled("Can't parcel a recycled bitmap");
        noteHardwareBitmapSlowCall();
        if (!nativeWriteToParcel(this.mNativePtr, this.mIsMutable, this.mDensity, parcel)) {
            throw new RuntimeException("native writeToParcel failed");
        }
    }

    public static Bitmap createBitmap(Bitmap bitmap, int i2, int i3, int i4, int i5) {
        return createBitmap(bitmap, i2, i3, i4, i5, (Matrix) null, false);
    }

    public Bitmap extractAlpha(Paint paint, int[] iArr) {
        checkRecycled("Can't extractAlpha on a recycled bitmap");
        long nativeInstance = paint != null ? paint.getNativeInstance() : 0L;
        noteHardwareBitmapSlowCall();
        Bitmap bitmapNativeExtractAlpha = nativeExtractAlpha(this.mNativePtr, nativeInstance, iArr);
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

    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    public static Bitmap createBitmap(Bitmap bitmap, int i2, int i3, int i4, int i5, Matrix matrix, boolean z2) {
        Config config;
        Bitmap bitmapCreateBitmap;
        Paint paint;
        Bitmap bitmapNativeCopyPreserveInternalConfig = bitmap;
        checkXYSign(i2, i3);
        checkWidthHeight(i4, i5);
        int i6 = i2 + i4;
        if (i6 <= bitmap.getWidth()) {
            int i7 = i3 + i5;
            if (i7 <= bitmap.getHeight()) {
                if (!bitmap.isMutable() && i2 == 0 && i3 == 0 && i4 == bitmap.getWidth() && i5 == bitmap.getHeight() && (matrix == null || matrix.isIdentity())) {
                    return bitmapNativeCopyPreserveInternalConfig;
                }
                Config config2 = bitmap.getConfig();
                Config config3 = Config.HARDWARE;
                boolean z3 = config2 == config3;
                if (z3) {
                    bitmap.noteHardwareBitmapSlowCall();
                    bitmapNativeCopyPreserveInternalConfig = nativeCopyPreserveInternalConfig(bitmapNativeCopyPreserveInternalConfig.mNativePtr);
                }
                Rect rect = new Rect(i2, i3, i6, i7);
                RectF rectF = new RectF(0.0f, 0.0f, i4, i5);
                RectF rectF2 = new RectF();
                Config config4 = Config.ARGB_8888;
                Config config5 = bitmapNativeCopyPreserveInternalConfig.getConfig();
                if (config5 == null) {
                    config = config4;
                } else {
                    int i8 = AnonymousClass2.$SwitchMap$android$graphics$Bitmap$Config[config5.ordinal()];
                    if (i8 == 1) {
                        config = Config.RGB_565;
                    } else if (i8 == 2) {
                        config = Config.ALPHA_8;
                    } else if (i8 != 3) {
                        config = config4;
                    } else {
                        config = Config.RGBA_F16;
                    }
                }
                if (matrix != null && !matrix.isIdentity()) {
                    boolean z4 = !matrix.rectStaysRect();
                    matrix.mapRect(rectF2, rectF);
                    int iRound = Math.round(rectF2.width());
                    int iRound2 = Math.round(rectF2.height());
                    if (!z4 || config == config4 || config == Config.RGBA_F16) {
                        config4 = config;
                    }
                    bitmapCreateBitmap = createBitmap(iRound, iRound2, config4, z4 || bitmapNativeCopyPreserveInternalConfig.hasAlpha());
                    paint = new Paint();
                    paint.setFilterBitmap(z2);
                    if (z4) {
                        paint.setAntiAlias(true);
                    }
                } else {
                    bitmapCreateBitmap = createBitmap(i4, i5, config, bitmapNativeCopyPreserveInternalConfig.hasAlpha());
                    paint = null;
                }
                nativeCopyColorSpace(bitmapNativeCopyPreserveInternalConfig.mNativePtr, bitmapCreateBitmap.mNativePtr);
                bitmapCreateBitmap.mDensity = bitmapNativeCopyPreserveInternalConfig.mDensity;
                bitmapCreateBitmap.setHasAlpha(bitmapNativeCopyPreserveInternalConfig.hasAlpha());
                bitmapCreateBitmap.setPremultiplied(bitmapNativeCopyPreserveInternalConfig.mRequestPremultiplied);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.translate(-rectF2.left, -rectF2.top);
                canvas.concat(matrix);
                canvas.drawBitmap(bitmapNativeCopyPreserveInternalConfig, rect, rectF, paint);
                canvas.setBitmap(null);
                return z3 ? bitmapCreateBitmap.copy(config3, false) : bitmapCreateBitmap;
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

    public Bitmap createAshmemBitmap(Config config) {
        checkRecycled("Can't copy a recycled bitmap");
        noteHardwareBitmapSlowCall();
        Bitmap bitmapNativeCopyAshmemConfig = nativeCopyAshmemConfig(this.mNativePtr, config.nativeInt);
        if (bitmapNativeCopyAshmemConfig != null) {
            bitmapNativeCopyAshmemConfig.setPremultiplied(this.mRequestPremultiplied);
            bitmapNativeCopyAshmemConfig.mDensity = this.mDensity;
        }
        return bitmapNativeCopyAshmemConfig;
    }

    public static Bitmap createBitmap(int i2, int i3, Config config) {
        return createBitmap(i2, i3, config, true);
    }

    public static Bitmap createBitmap(DisplayMetrics displayMetrics, int i2, int i3, Config config) {
        return createBitmap(displayMetrics, i2, i3, config, true);
    }

    public static Bitmap createBitmap(int i2, int i3, Config config, boolean z2) {
        return createBitmap((DisplayMetrics) null, i2, i3, config, z2);
    }

    public static Bitmap createBitmap(int i2, int i3, Config config, boolean z2, ColorSpace colorSpace) {
        return createBitmap((DisplayMetrics) null, i2, i3, config, z2, colorSpace);
    }

    public static Bitmap createBitmap(DisplayMetrics displayMetrics, int i2, int i3, Config config, boolean z2) {
        return createBitmap(displayMetrics, i2, i3, config, z2, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public static Bitmap createBitmap(DisplayMetrics displayMetrics, int i2, int i3, Config config, boolean z2, ColorSpace colorSpace) {
        Bitmap bitmapNativeCreate;
        if (i2 > 0 && i3 > 0) {
            if (config == Config.HARDWARE) {
                throw new IllegalArgumentException("can't create mutable bitmap with Config.HARDWARE");
            }
            if (colorSpace != null) {
                Config config2 = Config.ARGB_8888;
                if (config == config2 && colorSpace != ColorSpace.get(ColorSpace.Named.SRGB)) {
                    if (colorSpace instanceof ColorSpace.Rgb) {
                        ColorSpace.Rgb rgb = (ColorSpace.Rgb) colorSpace;
                        ColorSpace.Rgb.TransferParameters transferParameters = rgb.getTransferParameters();
                        if (transferParameters != null) {
                            bitmapNativeCreate = nativeCreate(null, 0, i2, i2, i3, config.nativeInt, true, ((ColorSpace.Rgb) ColorSpace.adapt(rgb, ColorSpace.ILLUMINANT_D50)).getTransform(), transferParameters);
                        } else {
                            throw new IllegalArgumentException("colorSpace must use an ICC parametric transfer function");
                        }
                    } else {
                        throw new IllegalArgumentException("colorSpace must be an RGB color space");
                    }
                } else {
                    bitmapNativeCreate = nativeCreate(null, 0, i2, i2, i3, config.nativeInt, true, null, null);
                }
                if (displayMetrics != null) {
                    bitmapNativeCreate.mDensity = displayMetrics.densityDpi;
                }
                bitmapNativeCreate.setHasAlpha(z2);
                if ((config == config2 || config == Config.RGBA_F16) && !z2) {
                    nativeErase(bitmapNativeCreate.mNativePtr, -16777216);
                }
                return bitmapNativeCreate;
            }
            throw new IllegalArgumentException("can't create bitmap without a color space");
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
                Bitmap bitmapNativeCreate = nativeCreate(iArr, i2, i3, i4, i5, config.nativeInt, false, null, null);
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
