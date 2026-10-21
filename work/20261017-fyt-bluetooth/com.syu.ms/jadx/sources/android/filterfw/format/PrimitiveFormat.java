package android.filterfw.format;

import android.filterfw.core.MutableFrameFormat;

/* JADX INFO: loaded from: classes.dex */
public class PrimitiveFormat {
    public static MutableFrameFormat createByteFormat(int i2, int i3) {
        return createFormat(2, i2, i3);
    }

    public static MutableFrameFormat createDoubleFormat(int i2, int i3) {
        return createFormat(6, i2, i3);
    }

    public static MutableFrameFormat createFloatFormat(int i2, int i3) {
        return createFormat(5, i2, i3);
    }

    private static MutableFrameFormat createFormat(int i2, int i3, int i4) {
        MutableFrameFormat mutableFrameFormat = new MutableFrameFormat(i2, i4);
        mutableFrameFormat.setDimensions(i3);
        return mutableFrameFormat;
    }

    public static MutableFrameFormat createInt16Format(int i2, int i3) {
        return createFormat(3, i2, i3);
    }

    public static MutableFrameFormat createInt32Format(int i2, int i3) {
        return createFormat(4, i2, i3);
    }

    public static MutableFrameFormat createByteFormat(int i2) {
        return createFormat(2, i2);
    }

    public static MutableFrameFormat createDoubleFormat(int i2) {
        return createFormat(6, i2);
    }

    public static MutableFrameFormat createFloatFormat(int i2) {
        return createFormat(5, i2);
    }

    public static MutableFrameFormat createInt16Format(int i2) {
        return createFormat(3, i2);
    }

    public static MutableFrameFormat createInt32Format(int i2) {
        return createFormat(4, i2);
    }

    private static MutableFrameFormat createFormat(int i2, int i3) {
        MutableFrameFormat mutableFrameFormat = new MutableFrameFormat(i2, i3);
        mutableFrameFormat.setDimensionCount(1);
        return mutableFrameFormat;
    }
}
