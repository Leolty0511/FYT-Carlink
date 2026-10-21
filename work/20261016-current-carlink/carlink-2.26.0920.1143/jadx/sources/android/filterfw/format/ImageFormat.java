package android.filterfw.format;

import android.accessibilityservice.c;
import android.filterfw.core.MutableFrameFormat;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class ImageFormat {
    public static final int COLORSPACE_GRAY = 1;
    public static final String COLORSPACE_KEY = "colorspace";
    public static final int COLORSPACE_RGB = 2;
    public static final int COLORSPACE_RGBA = 3;
    public static final int COLORSPACE_YUV = 4;

    public static int bytesPerSampleForColorspace(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 == 3) {
            return 4;
        }
        if (i2 == 4) {
            return 3;
        }
        throw new RuntimeException(c.e("Unknown colorspace id ", i2, "!"));
    }

    public static MutableFrameFormat create(int i2, int i3, int i4, int i5, int i6) {
        MutableFrameFormat mutableFrameFormat = new MutableFrameFormat(2, i6);
        mutableFrameFormat.setDimensions(i2, i3);
        mutableFrameFormat.setBytesPerSample(i5);
        mutableFrameFormat.setMetaValue(COLORSPACE_KEY, Integer.valueOf(i4));
        if (i6 == 1) {
            mutableFrameFormat.setObjectClass(Bitmap.class);
        }
        return mutableFrameFormat;
    }

    public static MutableFrameFormat create(int i2, int i3, int i4, int i5) {
        return create(i2, i3, i4, bytesPerSampleForColorspace(i4), i5);
    }

    public static MutableFrameFormat create(int i2, int i3) {
        return create(0, 0, i2, bytesPerSampleForColorspace(i2), i3);
    }

    public static MutableFrameFormat create(int i2) {
        return create(0, 0, i2, bytesPerSampleForColorspace(i2), 0);
    }
}
