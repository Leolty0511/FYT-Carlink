package com.android.internal.util;

import android.app.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.VectorDrawable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.Pair;
import com.android.internal.R;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class NotificationColorUtil {
    private static final boolean DEBUG = false;
    private static final String TAG = "NotificationColorUtil";
    private static NotificationColorUtil sInstance;
    private static final Object sLock = new Object();
    private final int mGrayscaleIconMaxSize;
    private final ImageUtils mImageUtils = new ImageUtils();
    private final WeakHashMap<Bitmap, Pair<Boolean, Integer>> mGrayscaleBitmapCache = new WeakHashMap<>();

    public static class ColorUtilsFromCompat {
        private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
        private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
        private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
        private static final double XYZ_EPSILON = 0.008856d;
        private static final double XYZ_KAPPA = 903.3d;
        private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
        private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
        private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

        private ColorUtilsFromCompat() {
        }

        public static int HSLToColor(float[] fArr) {
            int iA;
            int iA2;
            int iRound;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float fAbs = (1.0f - Math.abs((f4 * 2.0f) - 1.0f)) * f3;
            float f5 = f4 - (0.5f * fAbs);
            float fAbs2 = (1.0f - Math.abs(((f2 / 60.0f) % 2.0f) - 1.0f)) * fAbs;
            switch (((int) f2) / 60) {
                case 0:
                    iA = android.renderscript.a.a(fAbs, f5, 255.0f);
                    iA2 = android.renderscript.a.a(fAbs2, f5, 255.0f);
                    iRound = Math.round(f5 * 255.0f);
                    break;
                case 1:
                    iA = android.renderscript.a.a(fAbs2, f5, 255.0f);
                    iA2 = android.renderscript.a.a(fAbs, f5, 255.0f);
                    iRound = Math.round(f5 * 255.0f);
                    break;
                case 2:
                    iA = Math.round(f5 * 255.0f);
                    iA2 = android.renderscript.a.a(fAbs, f5, 255.0f);
                    iRound = android.renderscript.a.a(fAbs2, f5, 255.0f);
                    break;
                case 3:
                    iA = Math.round(f5 * 255.0f);
                    iA2 = android.renderscript.a.a(fAbs2, f5, 255.0f);
                    iRound = android.renderscript.a.a(fAbs, f5, 255.0f);
                    break;
                case 4:
                    iA = android.renderscript.a.a(fAbs2, f5, 255.0f);
                    iA2 = Math.round(f5 * 255.0f);
                    iRound = android.renderscript.a.a(fAbs, f5, 255.0f);
                    break;
                case 5:
                case 6:
                    iA = android.renderscript.a.a(fAbs, f5, 255.0f);
                    iA2 = Math.round(f5 * 255.0f);
                    iRound = android.renderscript.a.a(fAbs2, f5, 255.0f);
                    break;
                default:
                    iRound = 0;
                    iA = 0;
                    iA2 = 0;
                    break;
            }
            return Color.rgb(constrain(iA, 0, 255), constrain(iA2, 0, 255), constrain(iRound, 0, 255));
        }

        public static int LABToColor(double d2, double d3, double d4) {
            double[] tempDouble3Array = getTempDouble3Array();
            LABToXYZ(d2, d3, d4, tempDouble3Array);
            return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
        }

        public static void LABToXYZ(double d2, double d3, double d4, double[] dArr) {
            double d5 = (d2 + 16.0d) / 116.0d;
            double d6 = (d3 / 500.0d) + d5;
            double d7 = d5 - (d4 / 200.0d);
            double dPow = Math.pow(d6, 3.0d);
            if (dPow <= XYZ_EPSILON) {
                dPow = ((d6 * 116.0d) - 16.0d) / XYZ_KAPPA;
            }
            double dPow2 = d2 > 7.9996247999999985d ? Math.pow(d5, 3.0d) : d2 / XYZ_KAPPA;
            double dPow3 = Math.pow(d7, 3.0d);
            if (dPow3 <= XYZ_EPSILON) {
                dPow3 = ((d7 * 116.0d) - 16.0d) / XYZ_KAPPA;
            }
            dArr[0] = dPow * XYZ_WHITE_REFERENCE_X;
            dArr[1] = dPow2 * XYZ_WHITE_REFERENCE_Y;
            dArr[2] = dPow3 * XYZ_WHITE_REFERENCE_Z;
        }

        public static void RGBToHSL(int i2, int i3, int i4, float[] fArr) {
            float f2;
            float fAbs;
            float f3 = i2 / 255.0f;
            float f4 = i3 / 255.0f;
            float f5 = i4 / 255.0f;
            float fMax = Math.max(f3, Math.max(f4, f5));
            float fMin = Math.min(f3, Math.min(f4, f5));
            float f6 = fMax - fMin;
            float f7 = (fMax + fMin) / 2.0f;
            if (fMax == fMin) {
                f2 = 0.0f;
                fAbs = 0.0f;
            } else {
                if (fMax == f3) {
                    f2 = ((f4 - f5) / f6) % 6.0f;
                } else {
                    f2 = fMax == f4 ? ((f5 - f3) / f6) + 2.0f : 4.0f + ((f3 - f4) / f6);
                }
                fAbs = f6 / (1.0f - Math.abs((2.0f * f7) - 1.0f));
            }
            float f8 = (f2 * 60.0f) % 360.0f;
            if (f8 < 0.0f) {
                f8 += 360.0f;
            }
            fArr[0] = constrain(f8, 0.0f, 360.0f);
            fArr[1] = constrain(fAbs, 0.0f, 1.0f);
            fArr[2] = constrain(f7, 0.0f, 1.0f);
        }

        public static void RGBToLAB(int i2, int i3, int i4, double[] dArr) {
            RGBToXYZ(i2, i3, i4, dArr);
            XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
        }

        public static void RGBToXYZ(int i2, int i3, int i4, double[] dArr) {
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
            double d2 = ((double) i2) / 255.0d;
            double dPow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = ((double) i3) / 255.0d;
            double dPow2 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
            double d4 = ((double) i4) / 255.0d;
            double dPow3 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * XYZ_WHITE_REFERENCE_Y;
            dArr[1] = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * XYZ_WHITE_REFERENCE_Y;
            dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * XYZ_WHITE_REFERENCE_Y;
        }

        public static int XYZToColor(double d2, double d3, double d4) {
            double d5 = (((-0.4986d) * d4) + (((-1.5372d) * d3) + (3.2406d * d2))) / XYZ_WHITE_REFERENCE_Y;
            double d6 = ((0.0415d * d4) + ((1.8758d * d3) + ((-0.9689d) * d2))) / XYZ_WHITE_REFERENCE_Y;
            double d7 = ((1.057d * d4) + (((-0.204d) * d3) + (0.0557d * d2))) / XYZ_WHITE_REFERENCE_Y;
            return Color.rgb(constrain((int) Math.round((d5 > 0.0031308d ? (Math.pow(d5, 0.4166666666666667d) * 1.055d) - 0.055d : d5 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : d6 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d7 > 0.0031308d ? (Math.pow(d7, 0.4166666666666667d) * 1.055d) - 0.055d : d7 * 12.92d) * 255.0d), 0, 255));
        }

        public static void XYZToLAB(double d2, double d3, double d4, double[] dArr) {
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outLab must have a length of 3.");
            }
            double dPivotXyzComponent = pivotXyzComponent(d2 / XYZ_WHITE_REFERENCE_X);
            double dPivotXyzComponent2 = pivotXyzComponent(d3 / XYZ_WHITE_REFERENCE_Y);
            double dPivotXyzComponent3 = pivotXyzComponent(d4 / XYZ_WHITE_REFERENCE_Z);
            dArr[0] = Math.max(0.0d, (116.0d * dPivotXyzComponent2) - 16.0d);
            dArr[1] = (dPivotXyzComponent - dPivotXyzComponent2) * 500.0d;
            dArr[2] = (dPivotXyzComponent2 - dPivotXyzComponent3) * 200.0d;
        }

        public static double calculateContrast(int i2, int i3) {
            if (Color.alpha(i3) != 255) {
                Log.wtf(NotificationColorUtil.TAG, "background can not be translucent: #" + Integer.toHexString(i3));
            }
            if (Color.alpha(i2) < 255) {
                i2 = compositeColors(i2, i3);
            }
            double dCalculateLuminance = calculateLuminance(i2) + 0.05d;
            double dCalculateLuminance2 = calculateLuminance(i3) + 0.05d;
            return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
        }

        public static double calculateLuminance(int i2) {
            double[] tempDouble3Array = getTempDouble3Array();
            colorToXYZ(i2, tempDouble3Array);
            return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
        }

        public static void colorToHSL(int i2, float[] fArr) {
            RGBToHSL(Color.red(i2), Color.green(i2), Color.blue(i2), fArr);
        }

        public static void colorToLAB(int i2, double[] dArr) {
            RGBToLAB(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
        }

        public static void colorToXYZ(int i2, double[] dArr) {
            RGBToXYZ(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
        }

        private static int compositeAlpha(int i2, int i3) {
            return 255 - (((255 - i2) * (255 - i3)) / 255);
        }

        public static int compositeColors(int i2, int i3) {
            int iAlpha = Color.alpha(i3);
            int iAlpha2 = Color.alpha(i2);
            int iCompositeAlpha = compositeAlpha(iAlpha2, iAlpha);
            return Color.argb(iCompositeAlpha, compositeComponent(Color.red(i2), iAlpha2, Color.red(i3), iAlpha, iCompositeAlpha), compositeComponent(Color.green(i2), iAlpha2, Color.green(i3), iAlpha, iCompositeAlpha), compositeComponent(Color.blue(i2), iAlpha2, Color.blue(i3), iAlpha, iCompositeAlpha));
        }

        private static int compositeComponent(int i2, int i3, int i4, int i5, int i6) {
            if (i6 == 0) {
                return 0;
            }
            return (((255 - i3) * (i4 * i5)) + ((i2 * 255) * i3)) / (i6 * 255);
        }

        private static float constrain(float f2, float f3, float f4) {
            if (f2 < f3) {
                return f3;
            }
            return f2 > f4 ? f4 : f2;
        }

        public static double[] getTempDouble3Array() {
            ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
            double[] dArr = threadLocal.get();
            if (dArr != null) {
                return dArr;
            }
            double[] dArr2 = new double[3];
            threadLocal.set(dArr2);
            return dArr2;
        }

        private static double pivotXyzComponent(double d2) {
            return d2 > XYZ_EPSILON ? Math.pow(d2, 0.3333333333333333d) : ((d2 * XYZ_KAPPA) + 16.0d) / 116.0d;
        }

        private static int constrain(int i2, int i3, int i4) {
            if (i2 < i3) {
                return i3;
            }
            return i2 > i4 ? i4 : i2;
        }
    }

    private NotificationColorUtil(Context context) {
        this.mGrayscaleIconMaxSize = context.getResources().getDimensionPixelSize(17104901);
    }

    public static double calculateContrast(int i2, int i3) {
        return ColorUtilsFromCompat.calculateContrast(i2, i3);
    }

    public static double calculateLuminance(int i2) {
        return ColorUtilsFromCompat.calculateLuminance(i2);
    }

    public static int changeColorLightness(int i2, int i3) {
        double[] tempDouble3Array = ColorUtilsFromCompat.getTempDouble3Array();
        ColorUtilsFromCompat.colorToLAB(i2, tempDouble3Array);
        double dMax = Math.max(Math.min(100.0d, tempDouble3Array[0] + ((double) i3)), 0.0d);
        tempDouble3Array[0] = dMax;
        return ColorUtilsFromCompat.LABToColor(dMax, tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static CharSequence clearColorSpans(CharSequence charSequence) {
        if (!(charSequence instanceof Spanned)) {
            return charSequence;
        }
        Spanned spanned = (Spanned) charSequence;
        Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spanned.toString());
        for (Object obj : spans) {
            Object underlying = obj instanceof CharacterStyle ? ((CharacterStyle) obj).getUnderlying() : obj;
            if (underlying instanceof TextAppearanceSpan) {
                TextAppearanceSpan textAppearanceSpan = (TextAppearanceSpan) underlying;
                if (textAppearanceSpan.getTextColor() != null) {
                    underlying = new TextAppearanceSpan(textAppearanceSpan.getFamily(), textAppearanceSpan.getTextStyle(), textAppearanceSpan.getTextSize(), null, textAppearanceSpan.getLinkTextColor());
                }
            } else {
                if (!(underlying instanceof ForegroundColorSpan) && !(underlying instanceof BackgroundColorSpan)) {
                    underlying = obj;
                }
            }
            spannableStringBuilder.setSpan(underlying, spanned.getSpanStart(obj), spanned.getSpanEnd(obj), spanned.getSpanFlags(obj));
        }
        return spannableStringBuilder;
    }

    public static int compositeColors(int i2, int i3) {
        return ColorUtilsFromCompat.compositeColors(i2, i3);
    }

    private static String contrastChange(int i2, int i3, int i4) {
        return String.format("from %.2f:1 to %.2f:1", Double.valueOf(ColorUtilsFromCompat.calculateContrast(i2, i4)), Double.valueOf(ColorUtilsFromCompat.calculateContrast(i3, i4)));
    }

    public static int ensureLargeTextContrast(int i2, int i3, boolean z2) {
        return z2 ? findContrastColorAgainstDark(i2, i3, true, 3.0d) : findContrastColor(i2, i3, true, 3.0d);
    }

    public static int ensureTextBackgroundColor(int i2, int i3, int i4) {
        return findContrastColor(findContrastColor(i2, i4, false, 3.0d), i3, false, 4.5d);
    }

    private static int ensureTextContrast(int i2, int i3, boolean z2) {
        return z2 ? findContrastColorAgainstDark(i2, i3, true, 4.5d) : findContrastColor(i2, i3, true, 4.5d);
    }

    public static int ensureTextContrastOnBlack(int i2) {
        return findContrastColorAgainstDark(i2, -16777216, true, 12.0d);
    }

    public static int findAlphaToMeetContrast(int i2, int i3, double d2) {
        if (ColorUtilsFromCompat.calculateContrast(i2, i3) >= d2) {
            return i2;
        }
        int iAlpha = Color.alpha(i2);
        int iRed = Color.red(i2);
        int iGreen = Color.green(i2);
        int iBlue = Color.blue(i2);
        int i4 = 255;
        for (int i5 = 0; i5 < 15 && i4 - iAlpha > 0; i5++) {
            int i6 = (iAlpha + i4) / 2;
            if (ColorUtilsFromCompat.calculateContrast(Color.argb(i6, iRed, iGreen, iBlue), i3) > d2) {
                i4 = i6;
            } else {
                iAlpha = i6;
            }
        }
        return Color.argb(i4, iRed, iGreen, iBlue);
    }

    public static int findContrastColor(int i2, int i3, boolean z2, double d2) {
        int iLABToColor = z2 ? i2 : i3;
        int iLABToColor2 = z2 ? i3 : i2;
        if (ColorUtilsFromCompat.calculateContrast(iLABToColor, iLABToColor2) >= d2) {
            return i2;
        }
        double[] dArr = new double[3];
        ColorUtilsFromCompat.colorToLAB(z2 ? iLABToColor : iLABToColor2, dArr);
        double d3 = dArr[0];
        double d4 = dArr[1];
        double d5 = dArr[2];
        double d6 = 0.0d;
        for (int i4 = 0; i4 < 15 && d3 - d6 > 1.0E-5d; i4++) {
            double d7 = (d6 + d3) / 2.0d;
            if (z2) {
                iLABToColor = ColorUtilsFromCompat.LABToColor(d7, d4, d5);
            } else {
                iLABToColor2 = ColorUtilsFromCompat.LABToColor(d7, d4, d5);
            }
            if (ColorUtilsFromCompat.calculateContrast(iLABToColor, iLABToColor2) > d2) {
                d6 = d7;
            } else {
                d3 = d7;
            }
        }
        return ColorUtilsFromCompat.LABToColor(d6, d4, d5);
    }

    public static int findContrastColorAgainstDark(int i2, int i3, boolean z2, double d2) {
        int iHSLToColor = z2 ? i2 : i3;
        if (!z2) {
            i3 = i2;
        }
        if (ColorUtilsFromCompat.calculateContrast(iHSLToColor, i3) >= d2) {
            return i2;
        }
        float[] fArr = new float[3];
        ColorUtilsFromCompat.colorToHSL(z2 ? iHSLToColor : i3, fArr);
        float f2 = fArr[2];
        float f3 = 1.0f;
        for (int i4 = 0; i4 < 15 && f3 - f2 > 1.0E-5d; i4++) {
            float f4 = (f2 + f3) / 2.0f;
            fArr[2] = f4;
            if (z2) {
                iHSLToColor = ColorUtilsFromCompat.HSLToColor(fArr);
            } else {
                i3 = ColorUtilsFromCompat.HSLToColor(fArr);
            }
            if (ColorUtilsFromCompat.calculateContrast(iHSLToColor, i3) > d2) {
                f3 = f4;
            } else {
                f2 = f4;
            }
        }
        return z2 ? iHSLToColor : i3;
    }

    public static NotificationColorUtil getInstance(Context context) {
        NotificationColorUtil notificationColorUtil;
        synchronized (sLock) {
            if (sInstance == null) {
                sInstance = new NotificationColorUtil(context);
            }
            notificationColorUtil = sInstance;
        }
        return notificationColorUtil;
    }

    public static int getShiftedColor(int i2, int i3) {
        double[] tempDouble3Array = ColorUtilsFromCompat.getTempDouble3Array();
        ColorUtilsFromCompat.colorToLAB(i2, tempDouble3Array);
        double d2 = tempDouble3Array[0];
        if (d2 >= 4.0d) {
            tempDouble3Array[0] = Math.max(0.0d, d2 - ((double) i3));
        } else {
            tempDouble3Array[0] = Math.min(100.0d, d2 + ((double) i3));
        }
        return ColorUtilsFromCompat.LABToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static boolean isColorLight(int i2) {
        return calculateLuminance(i2) > 0.5d;
    }

    private int processColor(int i2) {
        return Color.argb(Color.alpha(i2), 255 - Color.red(i2), 255 - Color.green(i2), 255 - Color.blue(i2));
    }

    private TextAppearanceSpan processTextAppearanceSpan(TextAppearanceSpan textAppearanceSpan) {
        ColorStateList textColor = textAppearanceSpan.getTextColor();
        if (textColor != null) {
            int[] colors = textColor.getColors();
            boolean z2 = false;
            for (int i2 = 0; i2 < colors.length; i2++) {
                if (ImageUtils.isGrayscale(colors[i2])) {
                    if (!z2) {
                        colors = Arrays.copyOf(colors, colors.length);
                    }
                    colors[i2] = processColor(colors[i2]);
                    z2 = true;
                }
            }
            if (z2) {
                return new TextAppearanceSpan(textAppearanceSpan.getFamily(), textAppearanceSpan.getTextStyle(), textAppearanceSpan.getTextSize(), new ColorStateList(textColor.getStates(), colors), textAppearanceSpan.getLinkTextColor());
            }
        }
        return textAppearanceSpan;
    }

    public static int resolveActionBarColor(Context context, int i2) {
        return i2 == 0 ? context.getColor(R.color.notification_action_list) : getShiftedColor(i2, 7);
    }

    public static int resolveAmbientColor(Context context, int i2) {
        return ensureTextContrastOnBlack(resolveColor(context, i2));
    }

    public static int resolveColor(Context context, int i2) {
        return i2 == 0 ? context.getColor(R.color.notification_icon_default_color) : i2;
    }

    public static int resolveContrastColor(Context context, int i2, int i3) {
        return resolveContrastColor(context, i2, i3, false);
    }

    public static int resolvePrimaryColor(Context context, int i2) {
        return shouldUseDark(i2) ? context.getColor(R.color.notification_primary_text_color_light) : context.getColor(R.color.notification_primary_text_color_dark);
    }

    public static int resolveSecondaryColor(Context context, int i2) {
        return shouldUseDark(i2) ? context.getColor(R.color.notification_secondary_text_color_light) : context.getColor(R.color.notification_secondary_text_color_dark);
    }

    public static boolean satisfiesTextContrast(int i2, int i3) {
        return calculateContrast(i3, i2) >= 4.5d;
    }

    private static boolean shouldUseDark(int i2) {
        boolean z2 = i2 == 0;
        if (z2) {
            return z2;
        }
        return ColorUtilsFromCompat.calculateLuminance(i2) > 0.5d;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    public CharSequence invertCharSequenceColors(CharSequence charSequence) {
        Object foregroundColorSpan;
        if (!(charSequence instanceof Spanned)) {
            return charSequence;
        }
        Spanned spanned = (Spanned) charSequence;
        Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spanned.toString());
        for (Object obj : spans) {
            Object underlying = obj instanceof CharacterStyle ? ((CharacterStyle) obj).getUnderlying() : obj;
            if (underlying instanceof TextAppearanceSpan) {
                foregroundColorSpan = processTextAppearanceSpan((TextAppearanceSpan) obj);
                if (foregroundColorSpan == underlying) {
                    foregroundColorSpan = obj;
                }
            } else if (underlying instanceof ForegroundColorSpan) {
                foregroundColorSpan = new ForegroundColorSpan(processColor(((ForegroundColorSpan) underlying).getForegroundColor()));
            } else {
                foregroundColorSpan = obj;
            }
            spannableStringBuilder.setSpan(foregroundColorSpan, spanned.getSpanStart(obj), spanned.getSpanEnd(obj), spanned.getSpanFlags(obj));
        }
        return spannableStringBuilder;
    }

    public boolean isGrayscaleIcon(Bitmap bitmap) {
        boolean zIsGrayscale;
        int generationId;
        if (bitmap.getWidth() > this.mGrayscaleIconMaxSize || bitmap.getHeight() > this.mGrayscaleIconMaxSize) {
            return false;
        }
        Object obj = sLock;
        synchronized (obj) {
            Pair<Boolean, Integer> pair = this.mGrayscaleBitmapCache.get(bitmap);
            if (pair != null && pair.second.intValue() == bitmap.getGenerationId()) {
                return pair.first.booleanValue();
            }
            synchronized (this.mImageUtils) {
                zIsGrayscale = this.mImageUtils.isGrayscale(bitmap);
                generationId = bitmap.getGenerationId();
            }
            synchronized (obj) {
                this.mGrayscaleBitmapCache.put(bitmap, Pair.create(Boolean.valueOf(zIsGrayscale), Integer.valueOf(generationId)));
            }
            return zIsGrayscale;
        }
    }

    public static int resolveContrastColor(Context context, int i2, int i3, boolean z2) {
        return ensureTextContrast(ensureLargeTextContrast(resolveColor(context, i2), context.getColor(R.color.notification_action_list), z2), i3, z2);
    }

    public boolean isGrayscaleIcon(Drawable drawable) {
        if (drawable == null) {
            return false;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            return bitmapDrawable.getBitmap() != null && isGrayscaleIcon(bitmapDrawable.getBitmap());
        }
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable instanceof VectorDrawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        return animationDrawable.getNumberOfFrames() > 0 && isGrayscaleIcon(animationDrawable.getFrame(0));
    }

    public boolean isGrayscaleIcon(Context context, Icon icon) {
        if (icon == null) {
            return false;
        }
        int type = icon.getType();
        if (type == 1) {
            return isGrayscaleIcon(icon.getBitmap());
        }
        if (type != 2) {
            return false;
        }
        return isGrayscaleIcon(context, icon.getResId());
    }

    public boolean isGrayscaleIcon(Context context, int i2) {
        if (i2 != 0) {
            try {
                return isGrayscaleIcon(context.getDrawable(i2));
            } catch (Resources.NotFoundException unused) {
                m.p("Drawable not found: ", i2, TAG);
            }
        }
        return false;
    }
}
