package android.graphics;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class PixelFormat {

    @Deprecated
    public static final int A_8 = 8;

    @Deprecated
    public static final int JPEG = 256;

    @Deprecated
    public static final int LA_88 = 10;

    @Deprecated
    public static final int L_8 = 9;
    public static final int OPAQUE = -1;
    public static final int RGBA_1010102 = 43;

    @Deprecated
    public static final int RGBA_4444 = 7;

    @Deprecated
    public static final int RGBA_5551 = 6;
    public static final int RGBA_8888 = 1;
    public static final int RGBA_F16 = 22;
    public static final int RGBX_8888 = 2;

    @Deprecated
    public static final int RGB_332 = 11;
    public static final int RGB_565 = 4;
    public static final int RGB_888 = 3;
    public static final int TRANSLUCENT = -3;
    public static final int TRANSPARENT = -2;
    public static final int UNKNOWN = 0;

    @Deprecated
    public static final int YCbCr_420_SP = 17;

    @Deprecated
    public static final int YCbCr_422_I = 20;

    @Deprecated
    public static final int YCbCr_422_SP = 16;
    public int bitsPerPixel;
    public int bytesPerPixel;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Format {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Opacity {
    }

    public static boolean formatHasAlpha(int i2) {
        return i2 == -3 || i2 == -2 || i2 == 1 || i2 == 10 || i2 == 22 || i2 == 43 || i2 == 6 || i2 == 7 || i2 == 8;
    }

    public static void getPixelFormatInfo(int i2, PixelFormat pixelFormat) {
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                pixelFormat.bitsPerPixel = 24;
                pixelFormat.bytesPerPixel = 3;
                return;
            }
            if (i2 != 4) {
                if (i2 != 16) {
                    if (i2 == 17) {
                        pixelFormat.bitsPerPixel = 12;
                        pixelFormat.bytesPerPixel = 1;
                        return;
                    }
                    if (i2 != 20) {
                        if (i2 == 22) {
                            pixelFormat.bitsPerPixel = 64;
                            pixelFormat.bytesPerPixel = 8;
                            return;
                        } else if (i2 != 43) {
                            switch (i2) {
                                case 6:
                                case 7:
                                case 10:
                                    break;
                                case 8:
                                case 9:
                                case 11:
                                    pixelFormat.bitsPerPixel = 8;
                                    pixelFormat.bytesPerPixel = 1;
                                    return;
                                default:
                                    throw new IllegalArgumentException(android.accessibilityservice.c.d("unknown pixel format ", i2));
                            }
                        }
                    }
                }
                pixelFormat.bitsPerPixel = 16;
                pixelFormat.bytesPerPixel = 1;
                return;
            }
            pixelFormat.bitsPerPixel = 16;
            pixelFormat.bytesPerPixel = 2;
            return;
        }
        pixelFormat.bitsPerPixel = 32;
        pixelFormat.bytesPerPixel = 4;
    }

    public static boolean isPublicFormat(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 22 || i2 == 43;
    }
}
