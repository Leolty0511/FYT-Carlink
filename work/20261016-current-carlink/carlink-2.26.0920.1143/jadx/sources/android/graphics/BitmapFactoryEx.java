package android.graphics;

import android.drm.DecryptHandle;
import android.drm.DrmManagerClientEx;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class BitmapFactoryEx {
    private static final String TAG = "BitmapFactoryEx";

    public static Bitmap decodeDrmStream(DrmManagerClientEx drmManagerClientEx, DecryptHandle decryptHandle, BitmapFactory.Options options) {
        int i2 = 0;
        if (options != null) {
            try {
                if (!options.inScaled || options.inBitmap != null) {
                    return nativeDecodeDrmStream(drmManagerClientEx, decryptHandle, options, false, 0.0f);
                }
            } catch (Exception e2) {
                Log.e(TAG, "decodeDrmStream: failed!", e2);
                return null;
            }
        }
        float f2 = 1.0f;
        if (options != null) {
            int i3 = options.inDensity;
            int i4 = options.inTargetDensity;
            if (i3 != 0 && i4 != 0) {
                f2 = i4 / i3;
            }
            i2 = i4;
        }
        Bitmap bitmapNativeDecodeDrmStream = nativeDecodeDrmStream(drmManagerClientEx, decryptHandle, options, true, f2);
        if (bitmapNativeDecodeDrmStream != null && i2 != 0) {
            bitmapNativeDecodeDrmStream.setDensity(i2);
        }
        return bitmapNativeDecodeDrmStream;
    }

    private static native Bitmap nativeDecodeDrmStream(DrmManagerClientEx drmManagerClientEx, DecryptHandle decryptHandle, BitmapFactory.Options options, boolean z2, float f2);
}
