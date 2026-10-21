package android.graphics;

import android.app.m;
import android.content.res.AssetManager;
import android.graphics.fonts.FontVariationAxis;
import dalvik.annotation.optimization.CriticalNative;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public class FontFamily {
    private static String TAG = "FontFamily";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f70a = 0;
    private long mBuilderPtr;
    public long mNativePtr;

    public FontFamily() {
        this.mBuilderPtr = nInitBuilder(null, 0);
    }

    @CriticalNative
    private static native void nAbort(long j2);

    @CriticalNative
    private static native void nAddAxisValue(long j2, int i2, float f2);

    private static boolean nAddFont(long j2, ByteBuffer byteBuffer, int i2) {
        return nAddFont(j2, byteBuffer, i2, -1, -1);
    }

    private static native boolean nAddFont(long j2, ByteBuffer byteBuffer, int i2, int i3, int i4);

    private static native boolean nAddFontFromAssetManager(long j2, AssetManager assetManager, String str, int i2, boolean z2, int i3, int i4, int i5);

    private static native boolean nAddFontWeightStyle(long j2, ByteBuffer byteBuffer, int i2, int i3, int i4);

    @CriticalNative
    private static native void nAllowUnsupportedFont(long j2);

    @CriticalNative
    private static native long nCreateFamily(long j2);

    private static native long nInitBuilder(String str, int i2);

    @CriticalNative
    private static native void nUnrefFamily(long j2);

    public void abortCreation() {
        long j2 = this.mBuilderPtr;
        if (j2 == 0) {
            throw new IllegalStateException("This FontFamily is already frozen or abandoned");
        }
        nAbort(j2);
        this.mBuilderPtr = 0L;
    }

    public boolean addFont(String str, int i2, FontVariationAxis[] fontVariationAxisArr, int i3, int i4) {
        if (this.mBuilderPtr == 0) {
            throw new IllegalStateException("Unable to call addFont after freezing.");
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                if (fontVariationAxisArr != null) {
                    for (FontVariationAxis fontVariationAxis : fontVariationAxisArr) {
                        nAddAxisValue(this.mBuilderPtr, fontVariationAxis.getOpenTypeTagValue(), fontVariationAxis.getStyleValue());
                    }
                }
                boolean zNAddFont = nAddFont(this.mBuilderPtr, map, i2, i3, i4);
                fileInputStream.close();
                return zNAddFont;
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
            m.r("Error mapping font file ", str, TAG);
            return false;
        }
    }

    public boolean addFontFromAssetManager(AssetManager assetManager, String str, int i2, boolean z2, int i3, int i4, int i5, FontVariationAxis[] fontVariationAxisArr) {
        if (this.mBuilderPtr == 0) {
            throw new IllegalStateException("Unable to call addFontFromAsset after freezing.");
        }
        if (fontVariationAxisArr != null) {
            for (FontVariationAxis fontVariationAxis : fontVariationAxisArr) {
                nAddAxisValue(this.mBuilderPtr, fontVariationAxis.getOpenTypeTagValue(), fontVariationAxis.getStyleValue());
            }
        }
        return nAddFontFromAssetManager(this.mBuilderPtr, assetManager, str, i2, z2, i3, i4, i5);
    }

    public boolean addFontFromBuffer(ByteBuffer byteBuffer, int i2, FontVariationAxis[] fontVariationAxisArr, int i3, int i4) {
        if (this.mBuilderPtr == 0) {
            throw new IllegalStateException("Unable to call addFontWeightStyle after freezing.");
        }
        if (fontVariationAxisArr != null) {
            for (FontVariationAxis fontVariationAxis : fontVariationAxisArr) {
                nAddAxisValue(this.mBuilderPtr, fontVariationAxis.getOpenTypeTagValue(), fontVariationAxis.getStyleValue());
            }
        }
        return nAddFontWeightStyle(this.mBuilderPtr, byteBuffer, i2, i3, i4);
    }

    public void allowUnsupportedFont() {
        long j2 = this.mBuilderPtr;
        if (j2 == 0) {
            throw new IllegalStateException("Unable to allow unsupported font.");
        }
        nAllowUnsupportedFont(j2);
    }

    public void finalize() throws Throwable {
        try {
            long j2 = this.mNativePtr;
            if (j2 != 0) {
                nUnrefFamily(j2);
            }
            long j3 = this.mBuilderPtr;
            if (j3 != 0) {
                nAbort(j3);
            }
        } finally {
            super.finalize();
        }
    }

    public boolean freeze() {
        long j2 = this.mBuilderPtr;
        if (j2 == 0) {
            throw new IllegalStateException("This FontFamily is already frozen");
        }
        long jNCreateFamily = nCreateFamily(j2);
        this.mNativePtr = jNCreateFamily;
        this.mBuilderPtr = 0L;
        return jNCreateFamily != 0;
    }

    public FontFamily(String str, int i2) {
        this.mBuilderPtr = nInitBuilder(str, i2);
    }
}
