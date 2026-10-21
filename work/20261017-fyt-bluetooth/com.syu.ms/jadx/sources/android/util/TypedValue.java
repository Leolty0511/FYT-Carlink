package android.util;

import android.app.backup.FullBackup;

/* JADX INFO: loaded from: classes.dex */
public class TypedValue {
    public static final int COMPLEX_MANTISSA_MASK = 16777215;
    public static final int COMPLEX_MANTISSA_SHIFT = 8;
    public static final int COMPLEX_RADIX_0p23 = 3;
    public static final int COMPLEX_RADIX_16p7 = 1;
    public static final int COMPLEX_RADIX_23p0 = 0;
    public static final int COMPLEX_RADIX_8p15 = 2;
    public static final int COMPLEX_RADIX_MASK = 3;
    public static final int COMPLEX_RADIX_SHIFT = 4;
    public static final int COMPLEX_UNIT_DIP = 1;
    public static final int COMPLEX_UNIT_FRACTION = 0;
    public static final int COMPLEX_UNIT_FRACTION_PARENT = 1;
    public static final int COMPLEX_UNIT_IN = 4;
    public static final int COMPLEX_UNIT_MASK = 15;
    public static final int COMPLEX_UNIT_MM = 5;
    public static final int COMPLEX_UNIT_PT = 3;
    public static final int COMPLEX_UNIT_PX = 0;
    public static final int COMPLEX_UNIT_SHIFT = 0;
    public static final int COMPLEX_UNIT_SP = 2;
    public static final int DENSITY_DEFAULT = 0;
    public static final int DENSITY_NONE = 65535;
    public static final int TYPE_ATTRIBUTE = 2;
    public static final int TYPE_DIMENSION = 5;
    public static final int TYPE_FIRST_COLOR_INT = 28;
    public static final int TYPE_FIRST_INT = 16;
    public static final int TYPE_FLOAT = 4;
    public static final int TYPE_FRACTION = 6;
    public static final int TYPE_INT_BOOLEAN = 18;
    public static final int TYPE_INT_COLOR_ARGB4 = 30;
    public static final int TYPE_INT_COLOR_ARGB8 = 28;
    public static final int TYPE_INT_COLOR_RGB4 = 31;
    public static final int TYPE_INT_COLOR_RGB8 = 29;
    public static final int TYPE_INT_DEC = 16;
    public static final int TYPE_INT_HEX = 17;
    public static final int TYPE_LAST_COLOR_INT = 31;
    public static final int TYPE_LAST_INT = 31;
    public static final int TYPE_NULL = 0;
    public static final int TYPE_REFERENCE = 1;
    public static final int TYPE_STRING = 3;
    public int assetCookie;
    public int changingConfigurations = -1;
    public int data;
    public int density;
    public int resourceId;
    public CharSequence string;
    public int type;
    private static final float MANTISSA_MULT = 0.00390625f;
    private static final float[] RADIX_MULTS = {MANTISSA_MULT, 3.0517578E-5f, 1.1920929E-7f, 4.656613E-10f};
    private static final String[] DIMENSION_UNIT_STRS = {"px", "dip", FullBackup.SHAREDPREFS_TREE_TOKEN, "pt", "in", "mm"};
    private static final String[] FRACTION_UNIT_STRS = {"%", "%p"};

    public static float applyDimension(int i2, float f2, DisplayMetrics displayMetrics) {
        float f3;
        if (i2 == 0) {
            return f2;
        }
        if (i2 == 1) {
            f3 = displayMetrics.density;
        } else if (i2 == 2) {
            f3 = displayMetrics.scaledDensity;
        } else if (i2 == 3) {
            f2 *= displayMetrics.xdpi;
            f3 = 0.013888889f;
        } else if (i2 == 4) {
            f3 = displayMetrics.xdpi;
        } else {
            if (i2 != 5) {
                return 0.0f;
            }
            f2 *= displayMetrics.xdpi;
            f3 = 0.03937008f;
        }
        return f2 * f3;
    }

    public static float complexToDimension(int i2, DisplayMetrics displayMetrics) {
        return applyDimension((i2 >> 0) & 15, complexToFloat(i2), displayMetrics);
    }

    public static float complexToDimensionNoisy(int i2, DisplayMetrics displayMetrics) {
        float fComplexToDimension = complexToDimension(i2, displayMetrics);
        System.out.println("Dimension (0x" + ((i2 >> 8) & 16777215) + "*" + (RADIX_MULTS[(i2 >> 4) & 3] / MANTISSA_MULT) + ")" + DIMENSION_UNIT_STRS[(i2 >> 0) & 15] + " = " + fComplexToDimension);
        return fComplexToDimension;
    }

    public static int complexToDimensionPixelOffset(int i2, DisplayMetrics displayMetrics) {
        return (int) applyDimension((i2 >> 0) & 15, complexToFloat(i2), displayMetrics);
    }

    public static int complexToDimensionPixelSize(int i2, DisplayMetrics displayMetrics) {
        float fComplexToFloat = complexToFloat(i2);
        int iApplyDimension = (int) (applyDimension((i2 >> 0) & 15, fComplexToFloat, displayMetrics) + 0.5f);
        if (iApplyDimension != 0) {
            return iApplyDimension;
        }
        if (fComplexToFloat == 0.0f) {
            return 0;
        }
        return fComplexToFloat > 0.0f ? 1 : -1;
    }

    public static float complexToFloat(int i2) {
        return (i2 & (-256)) * RADIX_MULTS[(i2 >> 4) & 3];
    }

    public static float complexToFraction(int i2, float f2, float f3) {
        int i3 = (i2 >> 0) & 15;
        if (i3 == 0) {
            return complexToFloat(i2) * f2;
        }
        if (i3 != 1) {
            return 0.0f;
        }
        return complexToFloat(i2) * f3;
    }

    public final CharSequence coerceToString() {
        int i2 = this.type;
        return i2 == 3 ? this.string : coerceToString(i2, this.data);
    }

    public float getDimension(DisplayMetrics displayMetrics) {
        return complexToDimension(this.data, displayMetrics);
    }

    public final float getFloat() {
        return Float.intBitsToFloat(this.data);
    }

    public float getFraction(float f2, float f3) {
        return complexToFraction(this.data, f2, f3);
    }

    public void setTo(TypedValue typedValue) {
        this.type = typedValue.type;
        this.string = typedValue.string;
        this.data = typedValue.data;
        this.assetCookie = typedValue.assetCookie;
        this.resourceId = typedValue.resourceId;
        this.density = typedValue.density;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TypedValue{t=0x");
        sb.append(Integer.toHexString(this.type));
        sb.append("/d=0x");
        sb.append(Integer.toHexString(this.data));
        if (this.type == 3) {
            sb.append(" \"");
            CharSequence charSequence = this.string;
            if (charSequence == null) {
                charSequence = "<null>";
            }
            sb.append(charSequence);
            sb.append("\"");
        }
        if (this.assetCookie != 0) {
            sb.append(" a=");
            sb.append(this.assetCookie);
        }
        if (this.resourceId != 0) {
            sb.append(" r=0x");
            sb.append(Integer.toHexString(this.resourceId));
        }
        sb.append("}");
        return sb.toString();
    }

    public static final String coerceToString(int i2, int i3) {
        if (i2 == 0) {
            return null;
        }
        if (i2 == 1) {
            return "@" + i3;
        }
        if (i2 == 2) {
            return "?" + i3;
        }
        if (i2 == 4) {
            return Float.toString(Float.intBitsToFloat(i3));
        }
        if (i2 == 5) {
            return Float.toString(complexToFloat(i3)) + DIMENSION_UNIT_STRS[(i3 >> 0) & 15];
        }
        if (i2 == 6) {
            return Float.toString(complexToFloat(i3) * 100.0f) + FRACTION_UNIT_STRS[(i3 >> 0) & 15];
        }
        if (i2 == 17) {
            return "0x" + Integer.toHexString(i3);
        }
        if (i2 == 18) {
            return i3 != 0 ? "true" : "false";
        }
        if (i2 < 28 || i2 > 31) {
            if (i2 < 16 || i2 > 31) {
                return null;
            }
            return Integer.toString(i3);
        }
        return "#" + Integer.toHexString(i3);
    }
}
