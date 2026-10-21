package android.graphics;

import android.content.res.AssetManager;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class Movie {
    private final int mNativeMovie;

    private Movie(int i2) {
        if (i2 == 0) {
            throw new RuntimeException("native movie creation failed");
        }
        this.mNativeMovie = i2;
    }

    public static native Movie decodeByteArray(byte[] bArr, int i2, int i3);

    public static Movie decodeFile(String str) {
        try {
            return decodeTempStream(new FileInputStream(str));
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public static Movie decodeStream(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        return inputStream instanceof AssetManager.AssetInputStream ? nativeDecodeAsset(((AssetManager.AssetInputStream) inputStream).getAssetInt()) : nativeDecodeStream(inputStream);
    }

    private static Movie decodeTempStream(InputStream inputStream) {
        try {
            Movie movieDecodeStream = decodeStream(inputStream);
            try {
                inputStream.close();
                return movieDecodeStream;
            } catch (IOException unused) {
                return movieDecodeStream;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    private static native Movie nativeDecodeAsset(int i2);

    private static native Movie nativeDecodeStream(InputStream inputStream);

    private static native void nativeDestructor(int i2);

    public void draw(Canvas canvas, float f2, float f3) {
        draw(canvas, f2, f3, null);
    }

    public native void draw(Canvas canvas, float f2, float f3, Paint paint);

    public native int duration();

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativeMovie);
        } finally {
            super.finalize();
        }
    }

    public native int height();

    public native boolean isOpaque();

    public native boolean setTime(int i2);

    public native int width();
}
