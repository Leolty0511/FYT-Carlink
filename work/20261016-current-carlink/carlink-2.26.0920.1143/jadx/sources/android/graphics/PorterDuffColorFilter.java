package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PorterDuffColorFilter extends ColorFilter {
    private int mColor;
    private PorterDuff.Mode mMode;

    public PorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        this.mColor = i2;
        this.mMode = mode;
    }

    private static native long native_CreatePorterDuffFilter(int i2, int i3);

    @Override // android.graphics.ColorFilter
    public long createNativeInstance() {
        return native_CreatePorterDuffFilter(this.mColor, this.mMode.nativeInt);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PorterDuffColorFilter porterDuffColorFilter = (PorterDuffColorFilter) obj;
        return this.mColor == porterDuffColorFilter.mColor && this.mMode.nativeInt == porterDuffColorFilter.mMode.nativeInt;
    }

    public int getColor() {
        return this.mColor;
    }

    public PorterDuff.Mode getMode() {
        return this.mMode;
    }

    public int hashCode() {
        return (this.mMode.hashCode() * 31) + this.mColor;
    }

    public void setColor(int i2) {
        if (this.mColor != i2) {
            this.mColor = i2;
            discardNativeInstance();
        }
    }

    public void setMode(PorterDuff.Mode mode) {
        if (mode == null) {
            throw new IllegalArgumentException("mode must be non-null");
        }
        this.mMode = mode;
        discardNativeInstance();
    }
}
