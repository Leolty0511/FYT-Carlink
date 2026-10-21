package android.opengl;

import android.app.m;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public final class GLUtils {
    private GLUtils() {
    }

    public static String getEGLErrorString(int i2) {
        switch (i2) {
            case 12288:
                return "EGL_SUCCESS";
            case 12289:
                return "EGL_NOT_INITIALIZED";
            case 12290:
                return "EGL_BAD_ACCESS";
            case 12291:
                return "EGL_BAD_ALLOC";
            case 12292:
                return "EGL_BAD_ATTRIBUTE";
            case 12293:
                return "EGL_BAD_CONFIG";
            case 12294:
                return "EGL_BAD_CONTEXT";
            case 12295:
                return "EGL_BAD_CURRENT_SURFACE";
            case 12296:
                return "EGL_BAD_DISPLAY";
            case 12297:
                return "EGL_BAD_MATCH";
            case 12298:
                return "EGL_BAD_NATIVE_PIXMAP";
            case 12299:
                return "EGL_BAD_NATIVE_WINDOW";
            case 12300:
                return "EGL_BAD_PARAMETER";
            case EGL14.EGL_BAD_SURFACE /* 12301 */:
                return "EGL_BAD_SURFACE";
            case EGL14.EGL_CONTEXT_LOST /* 12302 */:
                return "EGL_CONTEXT_LOST";
            default:
                return m.d(i2, new StringBuilder("0x"));
        }
    }

    public static int getInternalFormat(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("getInternalFormat can't be used with a null Bitmap");
        }
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("bitmap is recycled");
        }
        int iNative_getInternalFormat = native_getInternalFormat(bitmap);
        if (iNative_getInternalFormat >= 0) {
            return iNative_getInternalFormat;
        }
        throw new IllegalArgumentException("Unknown internalformat");
    }

    public static int getType(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("getType can't be used with a null Bitmap");
        }
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("bitmap is recycled");
        }
        int iNative_getType = native_getType(bitmap);
        if (iNative_getType >= 0) {
            return iNative_getType;
        }
        throw new IllegalArgumentException("Unknown type");
    }

    private static native int native_getInternalFormat(Bitmap bitmap);

    private static native int native_getType(Bitmap bitmap);

    private static native int native_texImage2D(int i2, int i3, int i4, Bitmap bitmap, int i5, int i6);

    private static native int native_texSubImage2D(int i2, int i3, int i4, int i5, Bitmap bitmap, int i6, int i7);

    public static void texImage2D(int i2, int i3, int i4, Bitmap bitmap, int i5) {
        if (bitmap == null) {
            throw new NullPointerException("texImage2D can't be used with a null Bitmap");
        }
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("bitmap is recycled");
        }
        if (native_texImage2D(i2, i3, i4, bitmap, -1, i5) != 0) {
            throw new IllegalArgumentException("invalid Bitmap format");
        }
    }

    public static void texSubImage2D(int i2, int i3, int i4, int i5, Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("texSubImage2D can't be used with a null Bitmap");
        }
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("bitmap is recycled");
        }
        if (native_texSubImage2D(i2, i3, i4, i5, bitmap, -1, getType(bitmap)) != 0) {
            throw new IllegalArgumentException("invalid Bitmap format");
        }
    }

    public static void texImage2D(int i2, int i3, int i4, Bitmap bitmap, int i5, int i6) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                if (native_texImage2D(i2, i3, i4, bitmap, i5, i6) != 0) {
                    throw new IllegalArgumentException("invalid Bitmap format");
                }
                return;
            }
            throw new IllegalArgumentException("bitmap is recycled");
        }
        throw new NullPointerException("texImage2D can't be used with a null Bitmap");
    }

    public static void texSubImage2D(int i2, int i3, int i4, int i5, Bitmap bitmap, int i6, int i7) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                if (native_texSubImage2D(i2, i3, i4, i5, bitmap, i6, i7) != 0) {
                    throw new IllegalArgumentException("invalid Bitmap format");
                }
                return;
            }
            throw new IllegalArgumentException("bitmap is recycled");
        }
        throw new NullPointerException("texSubImage2D can't be used with a null Bitmap");
    }

    public static void texImage2D(int i2, int i3, Bitmap bitmap, int i4) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                if (native_texImage2D(i2, i3, -1, bitmap, -1, i4) != 0) {
                    throw new IllegalArgumentException("invalid Bitmap format");
                }
                return;
            }
            throw new IllegalArgumentException("bitmap is recycled");
        }
        throw new NullPointerException("texImage2D can't be used with a null Bitmap");
    }
}
