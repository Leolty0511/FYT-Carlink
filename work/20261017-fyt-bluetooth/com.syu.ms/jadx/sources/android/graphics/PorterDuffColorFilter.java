package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PorterDuffColorFilter extends ColorFilter {
    public PorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        int iNative_CreatePorterDuffFilter = native_CreatePorterDuffFilter(i2, mode.nativeInt);
        this.native_instance = iNative_CreatePorterDuffFilter;
        this.nativeColorFilter = nCreatePorterDuffFilter(iNative_CreatePorterDuffFilter, i2, mode.nativeInt);
    }

    private static native int nCreatePorterDuffFilter(int i2, int i3, int i4);

    private static native int native_CreatePorterDuffFilter(int i2, int i3);
}
