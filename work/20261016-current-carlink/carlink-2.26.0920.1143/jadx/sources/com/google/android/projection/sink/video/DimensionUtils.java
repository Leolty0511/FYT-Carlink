package com.google.android.projection.sink.video;

import android.accessibilityservice.c;
import android.graphics.Rect;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.util.Size;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class DimensionUtils {
    private static HashMap<Size, Integer> mRecommended;

    public static class ScreenSettings {
        private final float mAdvertisedDpi;
        private final int mHeight;
        private final float mPhysicalDpi;
        private final boolean mScale;
        private final int mWidth;

        public ScreenSettings(int i2, int i3, float f2, float f3, boolean z2) {
            this.mWidth = i2;
            this.mHeight = i3;
            this.mAdvertisedDpi = f2;
            this.mPhysicalDpi = f3;
            this.mScale = z2;
        }

        public final float getEmulatedDpi() {
            return this.mAdvertisedDpi;
        }

        public final int getHeight() {
            return this.mHeight;
        }

        public final float getPhysicalDpi() {
            return this.mPhysicalDpi;
        }

        public final int getWidth() {
            return this.mWidth;
        }

        public final boolean isNativeSize() {
            return this.mWidth == 0 || this.mHeight == 0;
        }

        public final boolean isScaled() {
            return this.mScale;
        }
    }

    static {
        HashMap<Size, Integer> map = new HashMap<>();
        mRecommended = map;
        map.put(new Size(1360, 800), -10);
    }

    private DimensionUtils() {
    }

    public static Rect makeRequestedVideoSize(int i2, int i3, ScreenSettings screenSettings) {
        return screenSettings.isNativeSize() ? new Rect(0, 0, i2, i3) : new Rect(0, 0, screenSettings.getWidth(), screenSettings.getHeight());
    }

    public static Rect makeViewport(int i2, int i3, Rect rect) {
        float f2 = rect.right;
        float f3 = rect.bottom;
        StringBuilder sbT = c.t("previewWidth = ", i2, "  previewHeight = ", i3, "  videoSize = ");
        sbT.append(rect);
        Log.e("AHU.Video", sbT.toString());
        int i4 = (int) f2;
        int i5 = (int) f3;
        StringBuilder sbT2 = c.t("newWidth = ", i4, "  newHeight = ", i5, "  extraWidth = ");
        sbT2.append(i2 - i4);
        sbT2.append(" extraHeight = ");
        sbT2.append(i3 - i5);
        Log.e("AHU.Video", sbT2.toString());
        return new Rect(0, 0, i4, i5);
    }

    public static Rect makeViewport(int i2, int i3, Rect rect, ScreenSettings screenSettings) {
        float f2 = rect.right;
        float f3 = rect.bottom;
        StringBuilder sbT = c.t("surfaceWidth = ", i2, "  surfaceHeight = ", i3, "  videoSize = ");
        sbT.append(rect);
        Log.e("AHU.Video", sbT.toString());
        if (rect.right <= i2 && rect.bottom <= i3) {
            float f4 = i2;
            boolean z2 = f4 > f2 || ((float) i3) > f3;
            int i4 = (int) f2;
            int i5 = (int) f3;
            if (z2) {
                float f5 = i4;
                float f6 = i5;
                float fMax = Math.max(f4 / f5, i3 / f6);
                i4 = (int) (f5 * fMax);
                i5 = (int) (f6 * fMax);
            }
            int i6 = i2 - i4;
            int i7 = i3 - i5;
            float f7 = i6 >= 0 ? 0.5f : -0.5f;
            int i8 = (int) ((i6 / 2.0f) + f7);
            int i9 = (int) ((i7 / 2.0f) + f7);
            Integer num = mRecommended.get(new Size(i2, i3));
            if (num == null) {
                num = 0;
            }
            StringBuilder sbT2 = c.t("newWidth = ", i4, "  newHeight = ", i5, "  extraWidth = ");
            sbT2.append(i6);
            sbT2.append(" extraHeight = ");
            sbT2.append(i7);
            Log.e("AHU.Video", sbT2.toString());
            return new Rect(i8 - num.intValue(), i9, (i4 + i8) - num.intValue(), i5 + i9);
        }
        float fMax2 = Math.max(i2 / screenSettings.getWidth(), i3 / screenSettings.getHeight());
        int iRound = Math.round(rect.right * fMax2);
        int iRound2 = Math.round(rect.bottom * fMax2);
        int iMin = Math.min(0, (i2 - iRound) / 2);
        int iMin2 = Math.min(0, (i3 - iRound2) / 2);
        Log.e("AHU.Video", "oversized canvas: content " + screenSettings.getWidth() + "x" + screenSettings.getHeight() + " scale=" + fMax2 + " viewport=" + iMin + "," + iMin2 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + iRound + "x" + iRound2);
        return new Rect(iMin, iMin2, iRound + iMin, iRound2 + iMin2);
    }
}
