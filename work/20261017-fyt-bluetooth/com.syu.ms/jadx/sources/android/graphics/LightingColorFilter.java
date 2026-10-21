package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class LightingColorFilter extends ColorFilter {
    public LightingColorFilter(int i2, int i3) {
        int iNative_CreateLightingFilter = native_CreateLightingFilter(i2, i3);
        this.native_instance = iNative_CreateLightingFilter;
        this.nativeColorFilter = nCreateLightingFilter(iNative_CreateLightingFilter, i2, i3);
    }

    private static native int nCreateLightingFilter(int i2, int i3, int i4);

    private static native int native_CreateLightingFilter(int i2, int i3);
}
