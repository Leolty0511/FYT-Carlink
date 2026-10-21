package android.graphics;

import android.util.Half;
import com.android.internal.util.XmlUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.function.DoubleUnaryOperator;

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
    private final ColorSpace mColorSpace;
    private final float[] mComponents;

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

    public Color() {
        this.mComponents = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
        this.mColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
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

    public static float alpha(long j2) {
        float f2;
        float f3;
        if ((63 & j2) == 0) {
            f2 = (j2 >> 56) & 255;
            f3 = 255.0f;
        } else {
            f2 = (j2 >> 6) & 1023;
            f3 = 1023.0f;
        }
        return f2 / f3;
    }

    public static int argb(float f2, float f3, float f4, float f5) {
        return (((int) ((f2 * 255.0f) + 0.5f)) << 24) | (((int) ((f3 * 255.0f) + 0.5f)) << 16) | (((int) ((f4 * 255.0f) + 0.5f)) << 8) | ((int) ((f5 * 255.0f) + 0.5f));
    }

    public static int blue(int i2) {
        return i2 & 255;
    }

    public static ColorSpace colorSpace(long j2) {
        return ColorSpace.get((int) (j2 & 63));
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
            return XmlUtils.convertValueToInt(str, -1);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int green(int i2) {
        return (i2 >> 8) & 255;
    }

    public static boolean isInColorSpace(long j2, ColorSpace colorSpace) {
        return ((int) (j2 & 63)) == colorSpace.getId();
    }

    private static native int nativeHSVToColor(int i2, float[] fArr);

    private static native void nativeRGBToHSV(int i2, int i3, int i4, float[] fArr);

    public static long pack(int i2) {
        return (((long) i2) & 4294967295L) << 32;
    }

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

    public static int rgb(float f2, float f3, float f4) {
        return (((int) ((f2 * 255.0f) + 0.5f)) << 16) | (-16777216) | (((int) ((f3 * 255.0f) + 0.5f)) << 8) | ((int) ((f4 * 255.0f) + 0.5f));
    }

    private static float saturate(float f2) {
        float f3 = 0.0f;
        if (f2 > 0.0f) {
            f3 = 1.0f;
            if (f2 < 1.0f) {
                return f2;
            }
        }
        return f3;
    }

    public static Color valueOf(int i2) {
        return new Color(((i2 >> 16) & 255) / 255.0f, ((i2 >> 8) & 255) / 255.0f, (i2 & 255) / 255.0f, ((i2 >> 24) & 255) / 255.0f, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public Color convert(ColorSpace colorSpace) {
        ColorSpace.Connector connectorConnect = ColorSpace.connect(this.mColorSpace, colorSpace);
        float[] fArr = this.mComponents;
        float[] fArr2 = {fArr[0], fArr[1], fArr[2], fArr[3]};
        connectorConnect.transform(fArr2);
        return new Color(fArr2, colorSpace);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Color color = (Color) obj;
        if (Arrays.equals(this.mComponents, color.mComponents)) {
            return this.mColorSpace.equals(color.mColorSpace);
        }
        return false;
    }

    public ColorSpace getColorSpace() {
        return this.mColorSpace;
    }

    public float getComponent(int i2) {
        return this.mComponents[i2];
    }

    public int getComponentCount() {
        return this.mColorSpace.getComponentCount() + 1;
    }

    public float[] getComponents() {
        float[] fArr = this.mComponents;
        return Arrays.copyOf(fArr, fArr.length);
    }

    public ColorSpace.Model getModel() {
        return this.mColorSpace.getModel();
    }

    public int hashCode() {
        return this.mColorSpace.hashCode() + (Arrays.hashCode(this.mComponents) * 31);
    }

    public boolean isSrgb() {
        return getColorSpace().isSrgb();
    }

    public boolean isWideGamut() {
        return getColorSpace().isWideGamut();
    }

    public float luminance() {
        if (this.mColorSpace.getModel() != ColorSpace.Model.RGB) {
            throw new IllegalArgumentException("The specified color must be encoded in an RGB color space. The supplied color space is " + this.mColorSpace.getModel());
        }
        DoubleUnaryOperator eotf = ((ColorSpace.Rgb) this.mColorSpace).getEotf();
        double dApplyAsDouble = eotf.applyAsDouble(this.mComponents[0]);
        return saturate((float) ((eotf.applyAsDouble(this.mComponents[2]) * 0.0722d) + (eotf.applyAsDouble(this.mComponents[1]) * 0.7152d) + (dApplyAsDouble * 0.2126d)));
    }

    public int toArgb() {
        int i2;
        float f2;
        if (this.mColorSpace.isSrgb()) {
            float[] fArr = this.mComponents;
            i2 = (((int) ((fArr[3] * 255.0f) + 0.5f)) << 24) | (((int) ((fArr[0] * 255.0f) + 0.5f)) << 16) | (((int) ((fArr[1] * 255.0f) + 0.5f)) << 8);
            f2 = fArr[2];
        } else {
            float[] fArr2 = this.mComponents;
            float[] fArr3 = {fArr2[0], fArr2[1], fArr2[2], fArr2[3]};
            ColorSpace.connect(this.mColorSpace).transform(fArr3);
            i2 = (((int) ((fArr3[3] * 255.0f) + 0.5f)) << 24) | (((int) ((fArr3[0] * 255.0f) + 0.5f)) << 16) | (((int) ((fArr3[1] * 255.0f) + 0.5f)) << 8);
            f2 = fArr3[2];
        }
        return ((int) ((f2 * 255.0f) + 0.5f)) | i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Color(");
        for (float f2 : this.mComponents) {
            sb.append(f2);
            sb.append(", ");
        }
        sb.append(this.mColorSpace.getName());
        sb.append(')');
        return sb.toString();
    }

    public static int HSVToColor(int i2, float[] fArr) {
        if (fArr.length >= 3) {
            return nativeHSVToColor(i2, fArr);
        }
        throw new RuntimeException("3 components required for hsv");
    }

    public static int alpha(int i2) {
        return i2 >>> 24;
    }

    public static int argb(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public static boolean isSrgb(long j2) {
        return colorSpace(j2).isSrgb();
    }

    public static boolean isWideGamut(long j2) {
        return colorSpace(j2).isWideGamut();
    }

    public static int rgb(int i2, int i3, int i4) {
        return (i2 << 16) | (-16777216) | (i3 << 8) | i4;
    }

    public static Color valueOf(long j2) {
        return new Color(red(j2), green(j2), blue(j2), alpha(j2), colorSpace(j2));
    }

    public float blue() {
        return this.mComponents[2];
    }

    public float[] getComponents(float[] fArr) {
        if (fArr == null) {
            float[] fArr2 = this.mComponents;
            return Arrays.copyOf(fArr2, fArr2.length);
        }
        int length = fArr.length;
        float[] fArr3 = this.mComponents;
        if (length >= fArr3.length) {
            System.arraycopy(fArr3, 0, fArr, 0, fArr3.length);
            return fArr;
        }
        throw new IllegalArgumentException("The specified array's length must be at least " + this.mComponents.length);
    }

    public float green() {
        return this.mComponents[1];
    }

    public long pack() {
        float[] fArr = this.mComponents;
        return pack(fArr[0], fArr[1], fArr[2], fArr[3], this.mColorSpace);
    }

    public float red() {
        return this.mComponents[0];
    }

    public static float blue(long j2) {
        return (63 & j2) == 0 ? ((j2 >> 32) & 255) / 255.0f : Half.toFloat((short) ((j2 >> 16) & 65535));
    }

    public static float green(long j2) {
        return (63 & j2) == 0 ? ((j2 >> 40) & 255) / 255.0f : Half.toFloat((short) ((j2 >> 32) & 65535));
    }

    public static long pack(float f2, float f3, float f4) {
        return pack(f2, f3, f4, 1.0f, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public static float red(long j2) {
        return (63 & j2) == 0 ? ((j2 >> 48) & 255) / 255.0f : Half.toFloat((short) ((j2 >> 48) & 65535));
    }

    public static Color valueOf(float f2, float f3, float f4) {
        return new Color(f2, f3, f4, 1.0f);
    }

    public float alpha() {
        float[] fArr = this.mComponents;
        return fArr[fArr.length - 1];
    }

    private Color(float f2, float f3, float f4, float f5) {
        this(f2, f3, f4, f5, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public static long pack(float f2, float f3, float f4, float f5) {
        return pack(f2, f3, f4, f5, ColorSpace.get(ColorSpace.Named.SRGB));
    }

    public static Color valueOf(float f2, float f3, float f4, float f5) {
        return new Color(saturate(f2), saturate(f3), saturate(f4), saturate(f5));
    }

    private Color(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        this.mComponents = new float[]{f2, f3, f4, f5};
        this.mColorSpace = colorSpace;
    }

    public static long convert(int i2, ColorSpace colorSpace) {
        return convert(((i2 >> 16) & 255) / 255.0f, ((i2 >> 8) & 255) / 255.0f, (i2 & 255) / 255.0f, ((i2 >> 24) & 255) / 255.0f, ColorSpace.get(ColorSpace.Named.SRGB), colorSpace);
    }

    public static long pack(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        if (colorSpace.isSrgb()) {
            return (((long) ((((((int) ((f2 * 255.0f) + 0.5f)) << 16) | (((int) ((f5 * 255.0f) + 0.5f)) << 24)) | (((int) ((f3 * 255.0f) + 0.5f)) << 8)) | ((int) ((f4 * 255.0f) + 0.5f)))) & 4294967295L) << 32;
        }
        int id = colorSpace.getId();
        if (id != -1) {
            if (colorSpace.getComponentCount() <= 3) {
                short half = Half.toHalf(f2);
                return ((((long) Half.toHalf(f3)) & 65535) << 32) | ((((long) half) & 65535) << 48) | ((((long) Half.toHalf(f4)) & 65535) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) id) & 63);
            }
            throw new IllegalArgumentException("The color space must use a color model with at most 3 components");
        }
        throw new IllegalArgumentException("Unknown color space, please use a color space returned by ColorSpace.get()");
    }

    public static int toArgb(long j2) {
        if ((63 & j2) == 0) {
            return (int) (j2 >> 32);
        }
        float fRed = red(j2);
        float fGreen = green(j2);
        float fBlue = blue(j2);
        float fAlpha = alpha(j2);
        float[] fArrTransform = ColorSpace.connect(colorSpace(j2)).transform(fRed, fGreen, fBlue);
        return ((int) ((fArrTransform[2] * 255.0f) + 0.5f)) | (((int) ((fAlpha * 255.0f) + 0.5f)) << 24) | (((int) ((fArrTransform[0] * 255.0f) + 0.5f)) << 16) | (((int) ((fArrTransform[1] * 255.0f) + 0.5f)) << 8);
    }

    public static Color valueOf(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        if (colorSpace.getComponentCount() <= 3) {
            return new Color(f2, f3, f4, f5, colorSpace);
        }
        throw new IllegalArgumentException("The specified color space must use a color model with at most 3 color components");
    }

    public static long convert(long j2, ColorSpace colorSpace) {
        return convert(red(j2), green(j2), blue(j2), alpha(j2), colorSpace(j2), colorSpace);
    }

    private Color(float[] fArr, ColorSpace colorSpace) {
        this.mComponents = fArr;
        this.mColorSpace = colorSpace;
    }

    public static Color valueOf(float[] fArr, ColorSpace colorSpace) {
        if (fArr.length >= colorSpace.getComponentCount() + 1) {
            return new Color(Arrays.copyOf(fArr, colorSpace.getComponentCount() + 1), colorSpace);
        }
        throw new IllegalArgumentException("Received a component array of length " + fArr.length + " but the color model requires " + (colorSpace.getComponentCount() + 1) + " (including alpha)");
    }

    public static float luminance(long j2) {
        ColorSpace colorSpace = colorSpace(j2);
        if (colorSpace.getModel() == ColorSpace.Model.RGB) {
            DoubleUnaryOperator eotf = ((ColorSpace.Rgb) colorSpace).getEotf();
            double dApplyAsDouble = eotf.applyAsDouble(red(j2));
            return saturate((float) ((eotf.applyAsDouble(blue(j2)) * 0.0722d) + (eotf.applyAsDouble(green(j2)) * 0.7152d) + (dApplyAsDouble * 0.2126d)));
        }
        throw new IllegalArgumentException("The specified color must be encoded in an RGB color space. The supplied color space is " + colorSpace.getModel());
    }

    public static long convert(float f2, float f3, float f4, float f5, ColorSpace colorSpace, ColorSpace colorSpace2) {
        float[] fArrTransform = ColorSpace.connect(colorSpace, colorSpace2).transform(f2, f3, f4);
        return pack(fArrTransform[0], fArrTransform[1], fArrTransform[2], f5, colorSpace2);
    }

    public static long convert(long j2, ColorSpace.Connector connector) {
        return convert(red(j2), green(j2), blue(j2), alpha(j2), connector);
    }

    public static float luminance(int i2) {
        DoubleUnaryOperator eotf = ((ColorSpace.Rgb) ColorSpace.get(ColorSpace.Named.SRGB)).getEotf();
        double dApplyAsDouble = eotf.applyAsDouble(((double) red(i2)) / 255.0d);
        double dApplyAsDouble2 = eotf.applyAsDouble(((double) green(i2)) / 255.0d) * 0.7152d;
        return (float) ((eotf.applyAsDouble(((double) blue(i2)) / 255.0d) * 0.0722d) + dApplyAsDouble2 + (dApplyAsDouble * 0.2126d));
    }

    public static long convert(float f2, float f3, float f4, float f5, ColorSpace.Connector connector) {
        float[] fArrTransform = connector.transform(f2, f3, f4);
        return pack(fArrTransform[0], fArrTransform[1], fArrTransform[2], f5, connector.getDestination());
    }
}
