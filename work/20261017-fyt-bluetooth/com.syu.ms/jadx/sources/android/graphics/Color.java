package android.graphics;

import android.util.MathUtils;
import java.util.HashMap;
import java.util.Locale;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public class Color {
    public static final int BLACK = -16777216;
    public static final int BLUE = -16776961;
    public static final int CYAN = -16711681;
    public static final int DKGRAY = -12303292;
    public static final int GRAY = -7829368;
    public static final int GREEN = -16711936;
    public static final int LTGRAY = -3355444;
    public static final int MAGENTA = -65281;
    public static final int RED = -65536;
    public static final int TRANSPARENT = 0;
    public static final int WHITE = -1;
    public static final int YELLOW = -256;
    private static final HashMap<String, Integer> sColorNameMap;

    static {
        HashMap<String, Integer> map = new HashMap<>();
        sColorNameMap = map;
        map.put("black", -16777216);
        Integer numValueOf = Integer.valueOf(DKGRAY);
        map.put("darkgray", numValueOf);
        Integer numValueOf2 = Integer.valueOf(GRAY);
        map.put("gray", numValueOf2);
        Integer numValueOf3 = Integer.valueOf(LTGRAY);
        map.put("lightgray", numValueOf3);
        map.put("white", -1);
        map.put("red", -65536);
        Integer numValueOf4 = Integer.valueOf(GREEN);
        map.put("green", numValueOf4);
        map.put("blue", Integer.valueOf(BLUE));
        map.put("yellow", -256);
        Integer numValueOf5 = Integer.valueOf(CYAN);
        map.put("cyan", numValueOf5);
        Integer numValueOf6 = Integer.valueOf(MAGENTA);
        map.put("magenta", numValueOf6);
        map.put(android.hardware.Camera.Parameters.EFFECT_AQUA, numValueOf5);
        map.put("fuchsia", numValueOf6);
        map.put("darkgrey", numValueOf);
        map.put("grey", numValueOf2);
        map.put("lightgrey", numValueOf3);
        map.put("lime", numValueOf4);
        map.put("maroon", -8388608);
        map.put("navy", -16777088);
        map.put("olive", -8355840);
        map.put("purple", -8388480);
        map.put("silver", -4144960);
        map.put("teal", -16744320);
    }

    public static int HSBtoColor(float[] fArr) {
        return HSBtoColor(fArr[0], fArr[1], fArr[2]);
    }

    public static int HSVToColor(float[] fArr) {
        return HSVToColor(255, fArr);
    }

    public static void RGBToHSV(int i2, int i3, int i4, float[] fArr) {
        if (fArr.length < 3) {
            throw new RuntimeException("3 components required for hsv");
        }
        nativeRGBToHSV(i2, i3, i4, fArr);
    }

    public static int alpha(int i2) {
        return i2 >>> 24;
    }

    public static int argb(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public static int blue(int i2) {
        return i2 & 255;
    }

    public static float brightness(int i2) {
        return Math.max(i2 & 255, Math.max((i2 >> 16) & 255, (i2 >> 8) & 255)) / 255.0f;
    }

    public static void colorToHSV(int i2, float[] fArr) {
        RGBToHSV((i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, fArr);
    }

    public static int getHtmlColor(String str) {
        Integer num = sColorNameMap.get(str.toLowerCase(Locale.ROOT));
        if (num != null) {
            return num.intValue();
        }
        try {
            return n.c(str, -1);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int green(int i2) {
        return (i2 >> 8) & 255;
    }

    public static float hue(int i2) {
        float f2;
        int i3 = (i2 >> 16) & 255;
        int i4 = (i2 >> 8) & 255;
        int i5 = i2 & 255;
        int iMax = Math.max(i5, Math.max(i3, i4));
        int iMin = Math.min(i5, Math.min(i3, i4));
        if (iMax == iMin) {
            return 0.0f;
        }
        float f3 = iMax - iMin;
        float f4 = (iMax - i3) / f3;
        float f5 = (iMax - i4) / f3;
        float f6 = (iMax - i5) / f3;
        if (i3 == iMax) {
            f2 = f6 - f5;
        } else {
            f2 = i4 == iMax ? (f4 + 2.0f) - f6 : (f5 + 4.0f) - f4;
        }
        float f7 = f2 / 6.0f;
        return f7 < 0.0f ? f7 + 1.0f : f7;
    }

    private static native int nativeHSVToColor(int i2, float[] fArr);

    private static native void nativeRGBToHSV(int i2, int i3, int i4, float[] fArr);

    public static int parseColor(String str) {
        if (str.charAt(0) != '#') {
            Integer num = sColorNameMap.get(str.toLowerCase(Locale.ROOT));
            if (num != null) {
                return num.intValue();
            }
            throw new IllegalArgumentException("Unknown color");
        }
        long j2 = Long.parseLong(str.substring(1), 16);
        if (str.length() == 7) {
            j2 |= -16777216;
        } else if (str.length() != 9) {
            throw new IllegalArgumentException("Unknown color");
        }
        return (int) j2;
    }

    public static int red(int i2) {
        return (i2 >> 16) & 255;
    }

    public static int rgb(int i2, int i3, int i4) {
        return (i2 << 16) | (-16777216) | (i3 << 8) | i4;
    }

    public static float saturation(int i2) {
        int i3 = (i2 >> 16) & 255;
        int i4 = (i2 >> 8) & 255;
        int i5 = i2 & 255;
        int iMax = Math.max(i5, Math.max(i3, i4));
        int iMin = Math.min(i5, Math.min(i3, i4));
        if (iMax == iMin) {
            return 0.0f;
        }
        return (iMax - iMin) / iMax;
    }

    public static int HSBtoColor(float f2, float f3, float f4) {
        float f5 = 0.0f;
        float fConstrain = MathUtils.constrain(f2, 0.0f, 1.0f);
        float fConstrain2 = MathUtils.constrain(f3, 0.0f, 1.0f);
        float fConstrain3 = MathUtils.constrain(f4, 0.0f, 1.0f);
        float f6 = (fConstrain - ((int) fConstrain)) * 6.0f;
        int i2 = (int) f6;
        float f7 = f6 - i2;
        float f8 = (1.0f - fConstrain2) * fConstrain3;
        float f9 = (1.0f - (fConstrain2 * f7)) * fConstrain3;
        float f10 = (1.0f - (fConstrain2 * (1.0f - f7))) * fConstrain3;
        if (i2 == 0) {
            f5 = fConstrain3;
            fConstrain3 = f10;
        } else if (i2 == 1) {
            f5 = f9;
        } else if (i2 == 2) {
            f5 = f8;
            f8 = f10;
        } else if (i2 == 3) {
            f5 = f8;
            f8 = fConstrain3;
            fConstrain3 = f9;
        } else if (i2 == 4) {
            f5 = f10;
            f8 = fConstrain3;
            fConstrain3 = f8;
        } else if (i2 != 5) {
            fConstrain3 = 0.0f;
            f8 = 0.0f;
        } else {
            f5 = fConstrain3;
            fConstrain3 = f8;
            f8 = f9;
        }
        return (-16777216) | (((int) (f5 * 255.0f)) << 16) | (((int) (fConstrain3 * 255.0f)) << 8) | ((int) (f8 * 255.0f));
    }

    public static int HSVToColor(int i2, float[] fArr) {
        if (fArr.length >= 3) {
            return nativeHSVToColor(i2, fArr);
        }
        throw new RuntimeException("3 components required for hsv");
    }
}
