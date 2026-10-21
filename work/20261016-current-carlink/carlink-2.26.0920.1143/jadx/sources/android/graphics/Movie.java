package android.graphics;

import android.content.res.AssetManager;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class Movie {
    private long mNativeMovie;

    private Movie(long j2) {
        if (j2 == 0) {
            throw new RuntimeException("native movie creation failed");
        }
        this.mNativeMovie = j2;
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
        return inputStream instanceof AssetManager.AssetInputStream ? nativeDecodeAsset(((AssetManager.AssetInputStream) inputStream).getNativeAsset()) : nativeDecodeStream(inputStream);
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

    private native void nDraw(long j2, float f2, float f3, long j3);

    private static native Movie nativeDecodeAsset(long j2);

    private static native Movie nativeDecodeStream(InputStream inputStream);

    private static native void nativeDestructor(long j2);

    public void draw(Canvas canvas, float f2, float f3, Paint paint) {
        nDraw(canvas.getNativeCanvasWrapper(), f2, f3, paint != null ? paint.getNativeInstance() : 0L);
    }

    public native int duration();

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativeMovie);
            this.mNativeMovie = 0L;
        } finally {
            super.finalize();
        }
    }

    public native int height();

    public native boolean isOpaque();

    public native boolean setTime(int i2);

    public native int width();

    public void draw(Canvas canvas, float f2, float f3) {
        nDraw(canvas.getNativeCanvasWrapper(), f2, f3, 0L);
    }
}
