package com.android.internal.colorextraction.types;

import android.accessibilityservice.c;
import android.app.WallpaperColors;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.util.MathUtils;
import android.util.Range;
import com.android.internal.R;
import com.android.internal.colorextraction.ColorExtractor;
import com.android.internal.graphics.ColorUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class Tonal implements ExtractionType {
    private static final boolean DEBUG = true;
    private static final float FIT_WEIGHT_H = 1.0f;
    private static final float FIT_WEIGHT_L = 10.0f;
    private static final float FIT_WEIGHT_S = 1.0f;
    public static final int MAIN_COLOR_DARK = -14606047;
    public static final int MAIN_COLOR_LIGHT = -2039584;
    public static final int SECONDARY_COLOR_DARK = -16777216;
    public static final int SECONDARY_COLOR_LIGHT = -6381922;
    private static final String TAG = "Tonal";
    private final ArrayList<ColorRange> mBlacklistedColors;
    private final TonalPalette mGreyPalette;
    private float[] mTmpHSL = new float[3];
    private final ArrayList<TonalPalette> mTonalPalettes;

    public static class ColorRange {
        private Range<Float> mHue;
        private Range<Float> mLightness;
        private Range<Float> mSaturation;

        public ColorRange(Range<Float> range, Range<Float> range2, Range<Float> range3) {
            this.mHue = range;
            this.mSaturation = range2;
            this.mLightness = range3;
        }

        public boolean containsColor(float f2, float f3, float f4) {
            return this.mHue.contains(Float.valueOf(f2)) && this.mSaturation.contains(Float.valueOf(f3)) && this.mLightness.contains(Float.valueOf(f4));
        }

        public float[] getCenter() {
            return new float[]{((((Float) this.mHue.getUpper()).floatValue() - ((Float) this.mHue.getLower()).floatValue()) / 2.0f) + ((Float) this.mHue.getLower()).floatValue(), ((((Float) this.mSaturation.getUpper()).floatValue() - ((Float) this.mSaturation.getLower()).floatValue()) / 2.0f) + ((Float) this.mSaturation.getLower()).floatValue(), ((((Float) this.mLightness.getUpper()).floatValue() - ((Float) this.mLightness.getLower()).floatValue()) / 2.0f) + ((Float) this.mLightness.getLower()).floatValue()};
        }

        public String toString() {
            return String.format("H: %s, S: %s, L %s", this.mHue, this.mSaturation, this.mLightness);
        }
    }

    public static class ConfigParser {
        private final ArrayList<TonalPalette> mTonalPalettes = new ArrayList<>();
        private final ArrayList<ColorRange> mBlacklistedColors = new ArrayList<>();

        public ConfigParser(Context context) {
            try {
                XmlResourceParser xml = context.getResources().getXml(R.xml.color_extraction);
                for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                    if (eventType != 0 && eventType != 3) {
                        if (eventType != 2) {
                            throw new XmlPullParserException("Invalid XML event " + eventType + " - " + xml.getName(), xml, null);
                        }
                        String name = xml.getName();
                        if (name.equals("palettes")) {
                            parsePalettes(xml);
                        } else if (name.equals("blacklist")) {
                            parseBlacklist(xml);
                        }
                    }
                }
            } catch (IOException | XmlPullParserException e2) {
                throw new RuntimeException(e2);
            }
        }

        private void parseBlacklist(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "blacklist");
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    String name = xmlPullParser.getName();
                    if (!name.equals("range")) {
                        throw new XmlPullParserException("Invalid tag: ".concat(name), xmlPullParser, null);
                    }
                    this.mBlacklistedColors.add(readRange(xmlPullParser));
                    xmlPullParser.next();
                }
            }
        }

        private void parsePalettes(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "palettes");
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    String name = xmlPullParser.getName();
                    if (!name.equals("palette")) {
                        throw new XmlPullParserException("Invalid tag: ".concat(name));
                    }
                    this.mTonalPalettes.add(readPalette(xmlPullParser));
                    xmlPullParser.next();
                }
            }
        }

        private float[] readFloatArray(String str) {
            String[] strArrSplit = str.replaceAll(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER, "").replaceAll("\n", "").split(",");
            float[] fArr = new float[strArrSplit.length];
            for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                fArr[i2] = Float.parseFloat(strArrSplit[i2]);
            }
            return fArr;
        }

        private TonalPalette readPalette(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "palette");
            float[] floatArray = readFloatArray(xmlPullParser.getAttributeValue(null, "h"));
            float[] floatArray2 = readFloatArray(xmlPullParser.getAttributeValue(null, "s"));
            float[] floatArray3 = readFloatArray(xmlPullParser.getAttributeValue(null, "l"));
            if (floatArray == null || floatArray2 == null || floatArray3 == null) {
                throw new XmlPullParserException("Incomplete range tag.", xmlPullParser, null);
            }
            return new TonalPalette(floatArray, floatArray2, floatArray3);
        }

        private ColorRange readRange(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            xmlPullParser.require(2, null, "range");
            float[] floatArray = readFloatArray(xmlPullParser.getAttributeValue(null, "h"));
            float[] floatArray2 = readFloatArray(xmlPullParser.getAttributeValue(null, "s"));
            float[] floatArray3 = readFloatArray(xmlPullParser.getAttributeValue(null, "l"));
            if (floatArray == null || floatArray2 == null || floatArray3 == null) {
                throw new XmlPullParserException("Incomplete range tag.", xmlPullParser, null);
            }
            return new ColorRange(new Range(Float.valueOf(floatArray[0]), Float.valueOf(floatArray[1])), new Range(Float.valueOf(floatArray2[0]), Float.valueOf(floatArray2[1])), new Range(Float.valueOf(floatArray3[0]), Float.valueOf(floatArray3[1])));
        }

        public ArrayList<ColorRange> getBlacklistedColors() {
            return this.mBlacklistedColors;
        }

        public ArrayList<TonalPalette> getTonalPalettes() {
            return this.mTonalPalettes;
        }
    }

    public static class TonalPalette {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final float[] f367h;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final float[] f368l;
        final float maxHue;
        final float minHue;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final float[] f369s;

        public TonalPalette(float[] fArr, float[] fArr2, float[] fArr3) {
            if (fArr.length != fArr2.length || fArr2.length != fArr3.length) {
                throw new IllegalArgumentException("All arrays should have the same size. h: " + Arrays.toString(fArr) + " s: " + Arrays.toString(fArr2) + " l: " + Arrays.toString(fArr3));
            }
            this.f367h = fArr;
            this.f369s = fArr2;
            this.f368l = fArr3;
            float fMin = Float.POSITIVE_INFINITY;
            float fMax = Float.NEGATIVE_INFINITY;
            for (float f2 : fArr) {
                fMin = Math.min(f2, fMin);
                fMax = Math.max(f2, fMax);
            }
            this.minHue = fMin;
            this.maxHue = fMax;
        }
    }

    public Tonal(Context context) {
        ConfigParser configParser = new ConfigParser(context);
        ArrayList<TonalPalette> tonalPalettes = configParser.getTonalPalettes();
        this.mTonalPalettes = tonalPalettes;
        this.mBlacklistedColors = configParser.getBlacklistedColors();
        this.mGreyPalette = tonalPalettes.get(0);
        tonalPalettes.remove(0);
    }

    private void applyFallback(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors, ColorExtractor.GradientColors gradientColors2, ColorExtractor.GradientColors gradientColors3) {
        applyFallback(wallpaperColors, gradientColors);
        applyFallback(wallpaperColors, gradientColors2);
        applyFallback(wallpaperColors, gradientColors3);
    }

    private static int bestFit(TonalPalette tonalPalette, float f2, float f3, float f4) {
        int i2 = -1;
        float f5 = Float.POSITIVE_INFINITY;
        int i3 = 0;
        while (true) {
            float[] fArr = tonalPalette.f367h;
            if (i3 >= fArr.length) {
                return i2;
            }
            float fAbs = (Math.abs(f4 - tonalPalette.f368l[i3]) * FIT_WEIGHT_L) + (Math.abs(f3 - tonalPalette.f369s[i3]) * 1.0f) + (Math.abs(f2 - fArr[i3]) * 1.0f);
            if (fAbs < f5) {
                i2 = i3;
                f5 = fAbs;
            }
            i3++;
        }
    }

    private TonalPalette findTonalPalette(float f2, float f3) {
        float fFract;
        if (f3 < 0.05f) {
            return this.mGreyPalette;
        }
        int size = this.mTonalPalettes.size();
        TonalPalette tonalPalette = null;
        float f4 = Float.POSITIVE_INFINITY;
        for (int i2 = 0; i2 < size; i2++) {
            TonalPalette tonalPalette2 = this.mTonalPalettes.get(i2);
            if (f2 < tonalPalette2.minHue || f2 > tonalPalette2.maxHue) {
                float f5 = tonalPalette2.maxHue;
                if (f5 <= 1.0f || f2 < 0.0f || f2 > fract(f5)) {
                    float f6 = tonalPalette2.minHue;
                    if (f6 >= 0.0f || f2 < fract(f6) || f2 > 1.0f) {
                        float f7 = tonalPalette2.minHue;
                        if (f2 > f7 || f7 - f2 >= f4) {
                            float f8 = tonalPalette2.maxHue;
                            if (f2 >= f8 && f2 - f8 < f4) {
                                fFract = f2 - f8;
                            } else if (f8 <= 1.0f || f2 < fract(f8) || f2 - fract(tonalPalette2.maxHue) >= f4) {
                                float f9 = tonalPalette2.minHue;
                                if (f9 < 0.0f && f2 <= fract(f9) && fract(tonalPalette2.minHue) - f2 < f4) {
                                    fFract = fract(tonalPalette2.minHue) - f2;
                                }
                            } else {
                                fFract = f2 - fract(tonalPalette2.maxHue);
                            }
                            f4 = fFract;
                            tonalPalette = tonalPalette2;
                        } else {
                            tonalPalette = tonalPalette2;
                            f4 = f7 - f2;
                        }
                    }
                }
            }
            return tonalPalette2;
        }
        return tonalPalette;
    }

    private static float[] fit(float[] fArr, float f2, int i2, float f3, float f4) {
        float[] fArr2 = new float[fArr.length];
        float f5 = f2 - fArr[i2];
        for (int i3 = 0; i3 < fArr.length; i3++) {
            fArr2[i3] = MathUtils.constrain(fArr[i3] + f5, f3, f4);
        }
        return fArr2;
    }

    private static float fract(float f2) {
        return f2 - ((float) Math.floor(f2));
    }

    private int getColorInt(int i2, float[] fArr, float[] fArr2, float[] fArr3) {
        this.mTmpHSL[0] = fract(fArr[i2]) * 360.0f;
        float[] fArr4 = this.mTmpHSL;
        fArr4[1] = fArr2[i2];
        fArr4[2] = fArr3[i2];
        return ColorUtils.HSLToColor(fArr4);
    }

    private boolean isBlacklisted(float[] fArr) {
        for (int size = this.mBlacklistedColors.size() - 1; size >= 0; size--) {
            if (this.mBlacklistedColors.get(size).containsColor(fArr[0], fArr[1], fArr[2])) {
                return true;
            }
        }
        return false;
    }

    private boolean runTonalExtraction(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors, ColorExtractor.GradientColors gradientColors2, ColorExtractor.GradientColors gradientColors3) {
        Color color;
        if (wallpaperColors == null) {
            return false;
        }
        List<Color> mainColors = wallpaperColors.getMainColors();
        int size = mainColors.size();
        int colorHints = wallpaperColors.getColorHints();
        boolean z2 = (colorHints & 1) != 0;
        boolean z3 = (colorHints & 4) != 0;
        if (size == 0) {
            return false;
        }
        float[] fArr = new float[3];
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                color = null;
                break;
            }
            color = mainColors.get(i2);
            int argb = color.toArgb();
            ColorUtils.RGBToHSL(Color.red(argb), Color.green(argb), Color.blue(argb), fArr);
            if (!z3 || !isBlacklisted(fArr)) {
                break;
            }
            i2++;
        }
        if (color == null) {
            return false;
        }
        int argb2 = color.toArgb();
        ColorUtils.RGBToHSL(Color.red(argb2), Color.green(argb2), Color.blue(argb2), fArr);
        float f2 = fArr[0] / 360.0f;
        fArr[0] = f2;
        TonalPalette tonalPaletteFindTonalPalette = findTonalPalette(f2, fArr[1]);
        if (tonalPaletteFindTonalPalette == null) {
            Log.w(TAG, "Could not find a tonal palette!");
            return false;
        }
        int iBestFit = bestFit(tonalPaletteFindTonalPalette, fArr[0], fArr[1], fArr[2]);
        if (iBestFit == -1) {
            Log.w(TAG, "Could not find best fit!");
            return false;
        }
        float[] fArrFit = fit(tonalPaletteFindTonalPalette.f367h, fArr[0], iBestFit, Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY);
        float[] fArrFit2 = fit(tonalPaletteFindTonalPalette.f369s, fArr[1], iBestFit, 0.0f, 1.0f);
        float[] fArrFit3 = fit(tonalPaletteFindTonalPalette.f368l, fArr[2], iBestFit, 0.0f, 1.0f);
        StringBuilder sbS = c.s("Tonal Palette - index: ", iBestFit, ". Main color: ");
        sbS.append(Integer.toHexString(getColorInt(iBestFit, fArrFit, fArrFit2, fArrFit3)));
        sbS.append("\nColors: ");
        StringBuilder sb = new StringBuilder(sbS.toString());
        for (int i3 = 0; i3 < fArrFit.length; i3++) {
            sb.append(Integer.toHexString(getColorInt(i3, fArrFit, fArrFit2, fArrFit3)));
            if (i3 < fArrFit.length - 1) {
                sb.append(", ");
            }
        }
        Log.d(TAG, sb.toString());
        int colorInt = getColorInt(iBestFit, fArrFit, fArrFit2, fArrFit3);
        ColorUtils.colorToHSL(colorInt, this.mTmpHSL);
        float[] fArr2 = this.mTmpHSL;
        float f3 = fArr2[2];
        ColorUtils.colorToHSL(MAIN_COLOR_LIGHT, fArr2);
        float[] fArr3 = this.mTmpHSL;
        if (f3 > fArr3[2]) {
            return false;
        }
        int length = 0;
        ColorUtils.colorToHSL(MAIN_COLOR_DARK, fArr3);
        if (f3 < this.mTmpHSL[2]) {
            return false;
        }
        gradientColors.setMainColor(colorInt);
        gradientColors.setSecondaryColor(getColorInt((iBestFit >= 2 ? -2 : 2) + iBestFit, fArrFit, fArrFit2, fArrFit3));
        int length2 = z2 ? fArrFit.length - 1 : iBestFit < 2 ? 0 : Math.min(iBestFit, 3);
        int i4 = (length2 >= 2 ? -2 : 2) + length2;
        gradientColors2.setMainColor(getColorInt(length2, fArrFit, fArrFit2, fArrFit3));
        gradientColors2.setSecondaryColor(getColorInt(i4, fArrFit, fArrFit2, fArrFit3));
        if (z2) {
            length = fArrFit.length - 1;
        } else if (iBestFit >= 2) {
            length = 2;
        }
        int i5 = length >= 2 ? -2 : 2;
        gradientColors3.setMainColor(getColorInt(length, fArrFit, fArrFit2, fArrFit3));
        gradientColors3.setSecondaryColor(getColorInt(i5 + length, fArrFit, fArrFit2, fArrFit3));
        gradientColors.setSupportsDarkText(z2);
        gradientColors2.setSupportsDarkText(z2);
        gradientColors3.setSupportsDarkText(z2);
        Log.d(TAG, "Gradients: \n\tNormal " + gradientColors + "\n\tDark " + gradientColors2 + "\n\tExtra dark: " + gradientColors3);
        return true;
    }

    @Override // com.android.internal.colorextraction.types.ExtractionType
    public void extractInto(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors, ColorExtractor.GradientColors gradientColors2, ColorExtractor.GradientColors gradientColors3) {
        if (runTonalExtraction(wallpaperColors, gradientColors, gradientColors2, gradientColors3)) {
            return;
        }
        applyFallback(wallpaperColors, gradientColors, gradientColors2, gradientColors3);
    }

    public List<ColorRange> getBlacklistedColors() {
        return this.mBlacklistedColors;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000b  */
    public static void applyFallback(WallpaperColors wallpaperColors, ColorExtractor.GradientColors gradientColors) {
        boolean z2;
        if (wallpaperColors != null) {
            z2 = (wallpaperColors.getColorHints() & 1) != 0;
        }
        int i2 = z2 ? MAIN_COLOR_LIGHT : MAIN_COLOR_DARK;
        int i3 = z2 ? SECONDARY_COLOR_LIGHT : -16777216;
        gradientColors.setMainColor(i2);
        gradientColors.setSecondaryColor(i3);
        gradientColors.setSupportsDarkText(z2);
    }
}
