package android.util;

import android.accessibilityservice.c;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class SizeF {
    private final float mHeight;
    private final float mWidth;

    public SizeF(float f2, float f3) {
        this.mWidth = Preconditions.checkArgumentFinite(f2, "width");
        this.mHeight = Preconditions.checkArgumentFinite(f3, "height");
    }

    private static NumberFormatException invalidSizeF(String str) {
        throw new NumberFormatException(c.k("Invalid SizeF: \"", str, "\""));
    }

    public static SizeF parseSizeF(String str) {
        Preconditions.checkNotNull(str, "string must not be null");
        int iIndexOf = str.indexOf(42);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(120);
        }
        if (iIndexOf < 0) {
            throw invalidSizeF(str);
        }
        try {
            return new SizeF(Float.parseFloat(str.substring(0, iIndexOf)), Float.parseFloat(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException unused) {
            throw invalidSizeF(str);
        } catch (IllegalArgumentException unused2) {
            throw invalidSizeF(str);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeF)) {
            return false;
        }
        SizeF sizeF = (SizeF) obj;
        return this.mWidth == sizeF.mWidth && this.mHeight == sizeF.mHeight;
    }

    public float getHeight() {
        return this.mHeight;
    }

    public float getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.mWidth) ^ Float.floatToIntBits(this.mHeight);
    }

    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }
}
