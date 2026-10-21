package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class ImageFormat {
    public static final int BAYER_RGGB = 512;
    public static final int JPEG = 256;
    public static final int NV16 = 16;
    public static final int NV21 = 17;
    public static final int RAW_SENSOR = 32;
    public static final int RGB_565 = 4;
    public static final int UNKNOWN = 0;
    public static final int Y16 = 540422489;
    public static final int Y8 = 538982489;
    public static final int YUV_420_888 = 35;
    public static final int YUY2 = 20;
    public static final int YV12 = 842094169;

    public static int getBitsPerPixel(int i2) {
        if (i2 == 4 || i2 == 20 || i2 == 32) {
            return 16;
        }
        if (i2 == 35) {
            return 12;
        }
        if (i2 == 512) {
            return 16;
        }
        if (i2 == 538982489) {
            return 8;
        }
        if (i2 == 540422489) {
            return 16;
        }
        if (i2 == 842094169) {
            return 12;
        }
        if (i2 != 16) {
            return i2 != 17 ? -1 : 12;
        }
        return 16;
    }
}
