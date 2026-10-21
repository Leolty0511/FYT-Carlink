package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class LightingColorFilter extends ColorFilter {
    private int mAdd;
    private int mMul;

    public LightingColorFilter(int i2, int i3) {
        this.mMul = i2;
        this.mAdd = i3;
    }

    private static native long native_CreateLightingFilter(int i2, int i3);

    @Override // android.graphics.ColorFilter
    public long createNativeInstance() {
        return native_CreateLightingFilter(this.mMul, this.mAdd);
    }

    public int getColorAdd() {
        return this.mAdd;
    }

    public int getColorMultiply() {
        return this.mMul;
    }

    public void setColorAdd(int i2) {
        if (this.mAdd != i2) {
            this.mAdd = i2;
            discardNativeInstance();
        }
    }

    public void setColorMultiply(int i2) {
        if (this.mMul != i2) {
            this.mMul = i2;
            discardNativeInstance();
        }
    }
}
