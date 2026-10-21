package android.graphics;

import android.util.Pair;
import com.android.internal.logging.nano.MetricsProto;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: loaded from: classes.dex */
public abstract class ColorSpace {
    public static final float[] ILLUMINANT_C;
    public static final float[] ILLUMINANT_D50;
    public static final float[] ILLUMINANT_D60;
    public static final float[] ILLUMINANT_D65;
    public static final int MAX_ID = 63;
    public static final int MIN_ID = -1;
    private static final float[] NTSC_1953_PRIMARIES;
    private static final float[] SRGB_PRIMARIES;
    private static final ColorSpace[] sNamedColorSpaces;
    private final int mId;
    private final Model mModel;
    private final String mName;
    public static final float[] ILLUMINANT_A = {0.44757f, 0.40745f};
    public static final float[] ILLUMINANT_B = {0.34842f, 0.35161f};
    public static final float[] ILLUMINANT_D55 = {0.33242f, 0.34743f};
    public static final float[] ILLUMINANT_D75 = {0.29902f, 0.31485f};
    public static final float[] ILLUMINANT_E = {0.33333f, 0.33333f};
    private static final float[] ILLUMINANT_D50_XYZ = {0.964212f, 1.0f, 0.825188f};

    public enum Adaptation {
        BRADFORD(new float[]{0.8951f, -0.7502f, 0.0389f, 0.2664f, 1.7135f, -0.0685f, -0.1614f, 0.0367f, 1.0296f}),
        VON_KRIES(new float[]{0.40024f, -0.2263f, 0.0f, 0.7076f, 1.16532f, 0.0f, -0.08081f, 0.0457f, 0.91822f}),
        CIECAT02(new float[]{0.7328f, -0.7036f, 0.003f, 0.4296f, 1.6975f, 0.0136f, -0.1624f, 0.0061f, 0.9834f});

        final float[] mTransform;

        Adaptation(float[] fArr) {
            this.mTransform = fArr;
        }
    }

    public static class Connector {
        private final ColorSpace mDestination;
        private final RenderIntent mIntent;
        private final ColorSpace mSource;
        private final float[] mTransform;
        private final ColorSpace mTransformDestination;
        private final ColorSpace mTransformSource;

        public static class Rgb extends Connector {
            private final Rgb mDestination;
            private final Rgb mSource;
            private final float[] mTransform;

            public Rgb(Rgb rgb, Rgb rgb2, RenderIntent renderIntent) {
                super(rgb2, rgb, rgb2, renderIntent, null);
                this.mSource = rgb;
                this.mDestination = rgb2;
                this.mTransform = computeTransform(rgb, rgb2, renderIntent);
            }

            private static float[] computeTransform(Rgb rgb, Rgb rgb2, RenderIntent renderIntent) {
                if (ColorSpace.compare(rgb.mWhitePoint, rgb2.mWhitePoint)) {
                    return ColorSpace.mul3x3(rgb2.mInverseTransform, rgb.mTransform);
                }
                float[] fArrMul3x3Diag = rgb.mTransform;
                float[] fArrInverse3x3 = rgb2.mInverseTransform;
                float[] fArrXyYToXyz = ColorSpace.xyYToXyz(rgb.mWhitePoint);
                float[] fArrXyYToXyz2 = ColorSpace.xyYToXyz(rgb2.mWhitePoint);
                float[] fArr = rgb.mWhitePoint;
                float[] fArr2 = ColorSpace.ILLUMINANT_D50;
                if (!ColorSpace.compare(fArr, fArr2)) {
                    fArrMul3x3Diag = ColorSpace.mul3x3(ColorSpace.chromaticAdaptation(Adaptation.BRADFORD.mTransform, fArrXyYToXyz, Arrays.copyOf(ColorSpace.ILLUMINANT_D50_XYZ, 3)), rgb.mTransform);
                }
                if (!ColorSpace.compare(rgb2.mWhitePoint, fArr2)) {
                    fArrInverse3x3 = ColorSpace.inverse3x3(ColorSpace.mul3x3(ColorSpace.chromaticAdaptation(Adaptation.BRADFORD.mTransform, fArrXyYToXyz2, Arrays.copyOf(ColorSpace.ILLUMINANT_D50_XYZ, 3)), rgb2.mTransform));
                }
                if (renderIntent == RenderIntent.ABSOLUTE) {
                    fArrMul3x3Diag = ColorSpace.mul3x3Diag(new float[]{fArrXyYToXyz[0] / fArrXyYToXyz2[0], fArrXyYToXyz[1] / fArrXyYToXyz2[1], fArrXyYToXyz[2] / fArrXyYToXyz2[2]}, fArrMul3x3Diag);
                }
                return ColorSpace.mul3x3(fArrInverse3x3, fArrMul3x3Diag);
            }

            @Override // android.graphics.ColorSpace.Connector
            public float[] transform(float[] fArr) {
                fArr[0] = (float) this.mSource.mClampedEotf.applyAsDouble(fArr[0]);
                fArr[1] = (float) this.mSource.mClampedEotf.applyAsDouble(fArr[1]);
                fArr[2] = (float) this.mSource.mClampedEotf.applyAsDouble(fArr[2]);
                ColorSpace.mul3x3Float3(this.mTransform, fArr);
                fArr[0] = (float) this.mDestination.mClampedOetf.applyAsDouble(fArr[0]);
                fArr[1] = (float) this.mDestination.mClampedOetf.applyAsDouble(fArr[1]);
                fArr[2] = (float) this.mDestination.mClampedOetf.applyAsDouble(fArr[2]);
                return fArr;
            }
        }

        private static float[] computeTransform(ColorSpace colorSpace, ColorSpace colorSpace2, RenderIntent renderIntent) {
            if (renderIntent != RenderIntent.ABSOLUTE) {
                return null;
            }
            Model model = colorSpace.getModel();
            Model model2 = Model.RGB;
            boolean z2 = model == model2;
            boolean z3 = colorSpace2.getModel() == model2;
            if (z2 && z3) {
                return null;
            }
            if (!z2 && !z3) {
                return null;
            }
            if (!z2) {
                colorSpace = colorSpace2;
            }
            Rgb rgb = (Rgb) colorSpace;
            float[] fArrXyYToXyz = z2 ? ColorSpace.xyYToXyz(rgb.mWhitePoint) : ColorSpace.ILLUMINANT_D50_XYZ;
            float[] fArrXyYToXyz2 = z3 ? ColorSpace.xyYToXyz(rgb.mWhitePoint) : ColorSpace.ILLUMINANT_D50_XYZ;
            return new float[]{fArrXyYToXyz[0] / fArrXyYToXyz2[0], fArrXyYToXyz[1] / fArrXyYToXyz2[1], fArrXyYToXyz[2] / fArrXyYToXyz2[2]};
        }

        public static Connector identity(ColorSpace colorSpace) {
            return new Connector(colorSpace, colorSpace, RenderIntent.RELATIVE) { // from class: android.graphics.ColorSpace.Connector.1
                @Override // android.graphics.ColorSpace.Connector
                public float[] transform(float[] fArr) {
                    return fArr;
                }
            };
        }

        public ColorSpace getDestination() {
            return this.mDestination;
        }

        public RenderIntent getRenderIntent() {
            return this.mIntent;
        }

        public ColorSpace getSource() {
            return this.mSource;
        }

        public float[] transform(float f2, float f3, float f4) {
            return transform(new float[]{f2, f3, f4});
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, RenderIntent renderIntent) {
            Model model = colorSpace.getModel();
            Model model2 = Model.RGB;
            this(colorSpace, colorSpace2, model == model2 ? ColorSpace.adapt(colorSpace, ColorSpace.ILLUMINANT_D50_XYZ) : colorSpace, colorSpace2.getModel() == model2 ? ColorSpace.adapt(colorSpace2, ColorSpace.ILLUMINANT_D50_XYZ) : colorSpace2, renderIntent, computeTransform(colorSpace, colorSpace2, renderIntent));
        }

        public float[] transform(float[] fArr) {
            float[] xyz = this.mTransformSource.toXyz(fArr);
            float[] fArr2 = this.mTransform;
            if (fArr2 != null) {
                xyz[0] = xyz[0] * fArr2[0];
                xyz[1] = xyz[1] * fArr2[1];
                xyz[2] = xyz[2] * fArr2[2];
            }
            return this.mTransformDestination.fromXyz(xyz);
        }

        private Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, RenderIntent renderIntent, float[] fArr) {
            this.mSource = colorSpace;
            this.mDestination = colorSpace2;
            this.mTransformSource = colorSpace3;
            this.mTransformDestination = colorSpace4;
            this.mIntent = renderIntent;
            this.mTransform = fArr;
        }
    }

    public static final class Lab extends ColorSpace {
        private static final float A = 0.008856452f;
        private static final float B = 7.787037f;
        private static final float C = 0.13793103f;
        private static final float D = 0.20689656f;

        private static float clamp(float f2, float f3, float f4) {
            if (f2 < f3) {
                return f3;
            }
            return f2 > f4 ? f4 : f2;
        }

        @Override // android.graphics.ColorSpace
        public float[] fromXyz(float[] fArr) {
            float f2 = fArr[0] / ColorSpace.ILLUMINANT_D50_XYZ[0];
            float f3 = fArr[1] / ColorSpace.ILLUMINANT_D50_XYZ[1];
            float f4 = fArr[2] / ColorSpace.ILLUMINANT_D50_XYZ[2];
            float fPow = f2 > A ? (float) Math.pow(f2, 0.3333333333333333d) : (f2 * B) + C;
            float fPow2 = f3 > A ? (float) Math.pow(f3, 0.3333333333333333d) : (f3 * B) + C;
            float f5 = (116.0f * fPow2) - 16.0f;
            float f6 = (fPow - fPow2) * 500.0f;
            float fPow3 = (fPow2 - (f4 > A ? (float) Math.pow(f4, 0.3333333333333333d) : (f4 * B) + C)) * 200.0f;
            fArr[0] = clamp(f5, 0.0f, 100.0f);
            fArr[1] = clamp(f6, -128.0f, 128.0f);
            fArr[2] = clamp(fPow3, -128.0f, 128.0f);
            return fArr;
        }

        @Override // android.graphics.ColorSpace
        public float getMaxValue(int i2) {
            return i2 == 0 ? 100.0f : 128.0f;
        }

        @Override // android.graphics.ColorSpace
        public float getMinValue(int i2) {
            return i2 == 0 ? 0.0f : -128.0f;
        }

        @Override // android.graphics.ColorSpace
        public boolean isWideGamut() {
            return true;
        }

        @Override // android.graphics.ColorSpace
        public float[] toXyz(float[] fArr) {
            fArr[0] = clamp(fArr[0], 0.0f, 100.0f);
            fArr[1] = clamp(fArr[1], -128.0f, 128.0f);
            float fClamp = clamp(fArr[2], -128.0f, 128.0f);
            fArr[2] = fClamp;
            float f2 = (fArr[0] + 16.0f) / 116.0f;
            float f3 = (fArr[1] * 0.002f) + f2;
            float f4 = f2 - (fClamp * 0.005f);
            float f5 = f3 > D ? f3 * f3 * f3 : (f3 - C) * 0.12841855f;
            float f6 = f2 > D ? f2 * f2 * f2 : (f2 - C) * 0.12841855f;
            float f7 = f4 > D ? f4 * f4 * f4 : (f4 - C) * 0.12841855f;
            fArr[0] = f5 * ColorSpace.ILLUMINANT_D50_XYZ[0];
            fArr[1] = f6 * ColorSpace.ILLUMINANT_D50_XYZ[1];
            fArr[2] = f7 * ColorSpace.ILLUMINANT_D50_XYZ[2];
            return fArr;
        }

        private Lab(String str, int i2) {
            super(str, Model.LAB, i2);
        }
    }

    public enum Model {
        RGB(3),
        XYZ(3),
        LAB(3),
        CMYK(4);

        private final int mComponentCount;

        Model(int i2) {
            this.mComponentCount = i2;
        }

        public int getComponentCount() {
            return this.mComponentCount;
        }
    }

    public enum Named {
        SRGB,
        LINEAR_SRGB,
        EXTENDED_SRGB,
        LINEAR_EXTENDED_SRGB,
        BT709,
        BT2020,
        DCI_P3,
        DISPLAY_P3,
        NTSC_1953,
        SMPTE_C,
        ADOBE_RGB,
        PRO_PHOTO_RGB,
        ACES,
        ACESCG,
        CIE_XYZ,
        CIE_LAB
    }

    public enum RenderIntent {
        PERCEPTUAL,
        RELATIVE,
        SATURATION,
        ABSOLUTE
    }

    public static class Renderer {
        private static final int CHROMATICITY_RESOLUTION = 32;
        private static final int NATIVE_SIZE = 1440;
        private static final double ONE_THIRD = 0.3333333333333333d;
        private static final float[] SPECTRUM_LOCUS_X = {0.175596f, 0.172787f, 0.170806f, 0.170085f, 0.160343f, 0.146958f, 0.139149f, 0.133536f, 0.126688f, 0.11583f, 0.109616f, 0.099146f, 0.09131f, 0.07813f, 0.068717f, 0.054675f, 0.040763f, 0.027497f, 0.01627f, 0.008169f, 0.004876f, 0.003983f, 0.003859f, 0.004646f, 0.007988f, 0.01387f, 0.022244f, 0.027273f, 0.03282f, 0.038851f, 0.045327f, 0.052175f, 0.059323f, 0.066713f, 0.074299f, 0.089937f, 0.114155f, 0.138695f, 0.154714f, 0.192865f, 0.229607f, 0.26576f, 0.301588f, 0.337346f, 0.373083f, 0.408717f, 0.444043f, 0.478755f, 0.512467f, 0.544767f, 0.575132f, 0.602914f, 0.627018f, 0.648215f, 0.665746f, 0.680061f, 0.691487f, 0.700589f, 0.707901f, 0.714015f, 0.719017f, 0.723016f, 0.734674f, 0.717203f, 0.699732f, 0.68226f, 0.664789f, 0.647318f, 0.629847f, 0.612376f, 0.594905f, 0.577433f, 0.559962f, 0.542491f, 0.52502f, 0.507549f, 0.490077f, 0.472606f, 0.455135f, 0.437664f, 0.420193f, 0.402721f, 0.38525f, 0.367779f, 0.350308f, 0.332837f, 0.315366f, 0.297894f, 0.280423f, 0.262952f, 0.245481f, 0.22801f, 0.210538f, 0.193067f, 0.175596f};
        private static final float[] SPECTRUM_LOCUS_Y = {0.005295f, 0.0048f, 0.005472f, 0.005976f, 0.014496f, 0.026643f, 0.035211f, 0.042704f, 0.053441f, 0.073601f, 0.086866f, 0.112037f, 0.132737f, 0.170464f, 0.200773f, 0.254155f, 0.317049f, 0.387997f, 0.463035f, 0.538504f, 0.587196f, 0.610526f, 0.654897f, 0.67597f, 0.715407f, 0.750246f, 0.779682f, 0.792153f, 0.802971f, 0.812059f, 0.81943f, 0.8252f, 0.82946f, 0.832306f, 0.833833f, 0.833316f, 0.826231f, 0.814796f, 0.805884f, 0.781648f, 0.754347f, 0.724342f, 0.692326f, 0.658867f, 0.62447f, 0.589626f, 0.554734f, 0.520222f, 0.486611f, 0.454454f, 0.424252f, 0.396516f, 0.37251f, 0.351413f, 0.334028f, 0.319765f, 0.308359f, 0.299317f, 0.292044f, 0.285945f, 0.280951f, 0.276964f, 0.265326f, 0.2572f, 0.249074f, 0.240948f, 0.232822f, 0.224696f, 0.21657f, 0.208444f, 0.200318f, 0.192192f, 0.184066f, 0.17594f, 0.167814f, 0.159688f, 0.151562f, 0.143436f, 0.135311f, 0.127185f, 0.119059f, 0.110933f, 0.102807f, 0.094681f, 0.086555f, 0.078429f, 0.070303f, 0.062177f, 0.054051f, 0.045925f, 0.037799f, 0.029673f, 0.021547f, 0.013421f, 0.005295f};
        private static final float UCS_SCALE = 1.5f;
        private boolean mClip;
        private final List<Pair<ColorSpace, Integer>> mColorSpaces;
        private final List<Point> mPoints;
        private boolean mShowWhitePoint;
        private int mSize;
        private boolean mUcs;

        public static class Point {
            final int mColor;
            final ColorSpace mColorSpace;
            final float[] mRgb;

            public Point(ColorSpace colorSpace, float[] fArr, int i2) {
                this.mColorSpace = colorSpace;
                this.mRgb = fArr;
                this.mColor = i2;
            }
        }

        private static void computeChromaticityMesh(float[] fArr, int[] iArr) {
            ColorSpace colorSpace = ColorSpace.get(Named.SRGB);
            float[] fArr2 = new float[3];
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                float[] fArr3 = SPECTRUM_LOCUS_X;
                if (i2 >= fArr3.length) {
                    return;
                }
                int length = (i2 % (fArr3.length - 1)) + 1;
                float[] fArr4 = SPECTRUM_LOCUS_Y;
                float fAtan2 = (float) Math.atan2(((double) fArr4[i2]) - ONE_THIRD, ((double) fArr3[i2]) - ONE_THIRD);
                float fAtan3 = (float) Math.atan2(((double) fArr4[length]) - ONE_THIRD, ((double) fArr3[length]) - ONE_THIRD);
                int i5 = i3;
                float fPow = (float) Math.pow(sqr(((double) fArr3[i2]) - ONE_THIRD) + sqr(((double) fArr4[i2]) - ONE_THIRD), 0.5d);
                float fPow2 = (float) Math.pow(sqr(((double) fArr3[length]) - ONE_THIRD) + sqr(((double) fArr4[length]) - ONE_THIRD), 0.5d);
                i4 = i4;
                int i6 = 1;
                while (i6 <= 32) {
                    double d2 = fPow;
                    double d3 = fAtan2;
                    double dCos = Math.cos(d3) * d2;
                    double dSin = Math.sin(d3) * d2;
                    double d4 = fPow2;
                    float f2 = fPow;
                    double d5 = fAtan3;
                    double dCos2 = Math.cos(d5) * d4;
                    double dSin2 = Math.sin(d5) * d4;
                    double d6 = i6 / 32.0f;
                    int i7 = i2;
                    float f3 = fPow2;
                    float f4 = (float) ((dCos * d6) + ONE_THIRD);
                    float f5 = (float) ((dSin * d6) + ONE_THIRD);
                    float f6 = (1.0f - f4) - f5;
                    int i8 = i4;
                    double d7 = (i6 - 1) / 32.0f;
                    ColorSpace colorSpace2 = colorSpace;
                    float[] fArr5 = fArr2;
                    float f7 = (float) ((dCos * d7) + ONE_THIRD);
                    float f8 = (float) ((dSin * d7) + ONE_THIRD);
                    float f9 = (float) ((dCos2 * d7) + ONE_THIRD);
                    float f10 = (float) ((d7 * dSin2) + ONE_THIRD);
                    float f11 = (float) ((dCos2 * d6) + ONE_THIRD);
                    float f12 = (float) ((dSin2 * d6) + ONE_THIRD);
                    iArr[i8] = computeColor(fArr5, f4, f5, f6, colorSpace2);
                    iArr[i8 + 1] = computeColor(fArr5, f7, f8, (1.0f - f7) - f8, colorSpace2);
                    int i9 = i8 + 2;
                    iArr[i9] = computeColor(fArr5, f9, f10, (1.0f - f9) - f10, colorSpace2);
                    iArr[i8 + 3] = iArr[i8];
                    iArr[i8 + 4] = iArr[i9];
                    iArr[i8 + 5] = computeColor(fArr5, f11, f12, (1.0f - f11) - f12, colorSpace2);
                    int i10 = i5 + 1;
                    fArr[i5] = f4;
                    int i11 = i10 + 1;
                    fArr[i10] = f5;
                    int i12 = i11 + 1;
                    fArr[i11] = f7;
                    int i13 = i12 + 1;
                    fArr[i12] = f8;
                    int i14 = i13 + 1;
                    fArr[i13] = f9;
                    int i15 = i14 + 1;
                    fArr[i14] = f10;
                    int i16 = i15 + 1;
                    fArr[i15] = f4;
                    int i17 = i16 + 1;
                    fArr[i16] = f5;
                    int i18 = i17 + 1;
                    fArr[i17] = f9;
                    int i19 = i18 + 1;
                    fArr[i18] = f10;
                    int i20 = i19 + 1;
                    fArr[i19] = f11;
                    i5 = i20 + 1;
                    fArr[i20] = f12;
                    i6++;
                    i4 = i8 + 6;
                    fArr2 = fArr5;
                    colorSpace = colorSpace2;
                    fAtan2 = fAtan2;
                    fPow = f2;
                    fPow2 = f3;
                    i2 = i7;
                }
                i2++;
                i3 = i5;
            }
        }

        private static int computeColor(float[] fArr, float f2, float f3, float f4, ColorSpace colorSpace) {
            fArr[0] = f2;
            fArr[1] = f3;
            fArr[2] = f4;
            colorSpace.fromXyz(fArr);
            return (((int) (fArr[2] * 255.0f)) & 255) | ((((int) (fArr[1] * 255.0f)) & 255) << 8) | ((((int) (fArr[0] * 255.0f)) & 255) << 16) | (-16777216);
        }

        private void drawBox(Canvas canvas, int i2, int i3, Paint paint, Path path) {
            int i4;
            float f2;
            int i5;
            if (this.mUcs) {
                i4 = 7;
                f2 = UCS_SCALE;
            } else {
                i4 = 10;
                f2 = 1.0f;
            }
            int i6 = i4;
            float f3 = f2;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(2.0f);
            paint.setColor(-4144960);
            int i7 = 1;
            int i8 = 1;
            while (true) {
                i5 = i6 - 1;
                if (i8 >= i5) {
                    break;
                }
                float f4 = i8 / 10.0f;
                float f5 = i2;
                float f6 = f5 * f4 * f3;
                float f7 = i3;
                float f8 = f7 - ((f4 * f7) * f3);
                canvas.drawLine(0.0f, f8, f5 * 0.9f, f8, paint);
                canvas.drawLine(f6, f7, f6, f7 * 0.1f, paint);
                i8++;
            }
            paint.setStrokeWidth(4.0f);
            paint.setColor(-16777216);
            while (i7 < i5) {
                float f9 = i7 / 10.0f;
                float f10 = i2;
                float f11 = f10 * f9 * f3;
                float f12 = i3;
                float f13 = f12 - ((f9 * f12) * f3);
                canvas.drawLine(0.0f, f13, f10 / 100.0f, f13, paint);
                canvas.drawLine(f11, f12, f11, f12 - (f12 / 100.0f), paint);
                i7++;
                i5 = i5;
            }
            int i9 = i5;
            paint.setStyle(Paint.Style.FILL);
            paint.setTextSize(36.0f);
            int i10 = 0;
            paint.setTypeface(Typeface.create("sans-serif-light", 0));
            Rect rect = new Rect();
            int i11 = 1;
            while (i11 < i9) {
                String strD = android.accessibilityservice.c.d("0.", i11);
                paint.getTextBounds(strD, i10, strD.length(), rect);
                float f14 = i11 / 10.0f;
                float f15 = i2;
                float f16 = i3;
                canvas.drawText(strD, (f15 * (-0.05f)) + 10.0f, (rect.height() / 2.0f) + (f16 - ((f14 * f16) * f3)), paint);
                canvas.drawText(strD, ((f15 * f14) * f3) - (rect.width() / 2.0f), rect.height() + i3 + 16, paint);
                i11++;
                i10 = 0;
            }
            paint.setStyle(Paint.Style.STROKE);
            float f17 = i3;
            path.moveTo(0.0f, f17);
            float f18 = i2 * 0.9f;
            path.lineTo(f18, f17);
            float f19 = f17 * 0.1f;
            path.lineTo(f18, f19);
            path.lineTo(0.0f, f19);
            path.close();
            canvas.drawPath(path, paint);
        }

        private void drawGamuts(Canvas canvas, int i2, int i3, Paint paint, Path path, float[] fArr, float[] fArr2) {
            float f2 = 4.0f / (this.mUcs ? UCS_SCALE : 1.0f);
            for (Pair<ColorSpace, Integer> pair : this.mColorSpaces) {
                ColorSpace colorSpace = pair.first;
                int iIntValue = pair.second.intValue();
                if (colorSpace.getModel() == Model.RGB) {
                    Rgb rgb = (Rgb) colorSpace;
                    getPrimaries(rgb, fArr, this.mUcs);
                    path.rewind();
                    float f3 = i2;
                    float f4 = i3;
                    path.moveTo(fArr[0] * f3, f4 - (fArr[1] * f4));
                    path.lineTo(fArr[2] * f3, f4 - (fArr[3] * f4));
                    path.lineTo(fArr[4] * f3, f4 - (fArr[5] * f4));
                    path.close();
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setColor(iIntValue);
                    canvas.drawPath(path, paint);
                    if (this.mShowWhitePoint) {
                        rgb.getWhitePoint(fArr2);
                        if (this.mUcs) {
                            ColorSpace.xyYToUv(fArr2);
                        }
                        paint.setStyle(Paint.Style.FILL);
                        paint.setColor(iIntValue);
                        canvas.drawCircle(f3 * fArr2[0], f4 - (fArr2[1] * f4), f2, paint);
                    }
                }
            }
        }

        private void drawLocus(Canvas canvas, int i2, int i3, Paint paint, Path path, float[] fArr) {
            float[] fArr2;
            Path path2;
            int length = SPECTRUM_LOCUS_X.length * 32 * 6 * 2;
            float[] fArr3 = new float[length];
            int[] iArr = new int[length];
            computeChromaticityMesh(fArr3, iArr);
            if (this.mUcs) {
                ColorSpace.xyYToUv(fArr3);
            }
            for (int i4 = 0; i4 < length; i4 += 2) {
                fArr3[i4] = fArr3[i4] * i2;
                int i5 = i4 + 1;
                float f2 = i3;
                fArr3[i5] = f2 - (fArr3[i5] * f2);
            }
            if (!this.mClip || this.mColorSpaces.size() <= 0) {
                fArr2 = fArr3;
                path2 = path;
                canvas.drawVertices(Canvas.VertexMode.TRIANGLES, length, fArr2, 0, null, 0, iArr, 0, null, 0, 0, paint);
            } else {
                Iterator<Pair<ColorSpace, Integer>> it = this.mColorSpaces.iterator();
                while (it.hasNext()) {
                    ColorSpace colorSpace = it.next().first;
                    if (colorSpace.getModel() == Model.RGB) {
                        getPrimaries((Rgb) colorSpace, fArr, this.mUcs);
                        break;
                    }
                }
                path.rewind();
                float f3 = i2;
                float f4 = i3;
                path.moveTo(fArr[0] * f3, f4 - (fArr[1] * f4));
                path.lineTo(fArr[2] * f3, f4 - (fArr[3] * f4));
                path.lineTo(f3 * fArr[4], f4 - (fArr[5] * f4));
                path.close();
                int[] iArr2 = new int[length];
                Arrays.fill(iArr2, -9671572);
                Canvas.VertexMode vertexMode = Canvas.VertexMode.TRIANGLES;
                fArr2 = fArr3;
                path2 = path;
                canvas.drawVertices(vertexMode, length, fArr3, 0, null, 0, iArr2, 0, null, 0, 0, paint);
                canvas.save();
                canvas.clipPath(path2);
                canvas.drawVertices(vertexMode, length, fArr2, 0, null, 0, iArr, 0, null, 0, 0, paint);
                canvas.restore();
            }
            path.reset();
            int i6 = MetricsProto.MetricsEvent.ACTION_SETTINGS_CONDITION_DISMISS;
            path2.moveTo(fArr2[372], fArr2[373]);
            for (int i7 = 2; i7 < SPECTRUM_LOCUS_X.length; i7++) {
                i6 += MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION;
                path2.lineTo(fArr2[i6], fArr2[i6 + 1]);
            }
            path.close();
            paint.setStrokeWidth(4.0f / (this.mUcs ? UCS_SCALE : 1.0f));
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(-16777216);
            canvas.drawPath(path2, paint);
        }

        private void drawPoints(Canvas canvas, int i2, int i3, Paint paint) {
            paint.setStyle(Paint.Style.FILL);
            float f2 = 4.0f / (this.mUcs ? UCS_SCALE : 1.0f);
            float[] fArr = new float[3];
            float[] fArr2 = new float[2];
            for (Point point : this.mPoints) {
                float[] fArr3 = point.mRgb;
                fArr[0] = fArr3[0];
                fArr[1] = fArr3[1];
                fArr[2] = fArr3[2];
                point.mColorSpace.toXyz(fArr);
                paint.setColor(point.mColor);
                float f3 = fArr[0];
                float f4 = fArr[1];
                float f5 = f3 + f4 + fArr[2];
                fArr2[0] = f3 / f5;
                fArr2[1] = f4 / f5;
                if (this.mUcs) {
                    ColorSpace.xyYToUv(fArr2);
                }
                float f6 = i3;
                canvas.drawCircle(i2 * fArr2[0], f6 - (fArr2[1] * f6), f2, paint);
            }
        }

        private static void getPrimaries(Rgb rgb, float[] fArr, boolean z2) {
            if (rgb.equals(ColorSpace.get(Named.EXTENDED_SRGB)) || rgb.equals(ColorSpace.get(Named.LINEAR_EXTENDED_SRGB))) {
                fArr[0] = 1.41f;
                fArr[1] = 0.33f;
                fArr[2] = 0.27f;
                fArr[3] = 1.24f;
                fArr[4] = -0.23f;
                fArr[5] = -0.57f;
            } else {
                rgb.getPrimaries(fArr);
            }
            if (z2) {
                ColorSpace.xyYToUv(fArr);
            }
        }

        private void setTransform(Canvas canvas, int i2, int i3, float[] fArr) {
            RectF rectF = new RectF();
            Iterator<Pair<ColorSpace, Integer>> it = this.mColorSpaces.iterator();
            while (it.hasNext()) {
                ColorSpace colorSpace = it.next().first;
                if (colorSpace.getModel() == Model.RGB) {
                    getPrimaries((Rgb) colorSpace, fArr, this.mUcs);
                    rectF.left = Math.min(rectF.left, fArr[4]);
                    rectF.top = Math.min(rectF.top, fArr[5]);
                    rectF.right = Math.max(rectF.right, fArr[0]);
                    rectF.bottom = Math.max(rectF.bottom, fArr[3]);
                }
            }
            float f2 = this.mUcs ? 0.6f : 0.9f;
            rectF.left = Math.min(0.0f, rectF.left);
            rectF.top = Math.min(0.0f, rectF.top);
            rectF.right = Math.max(f2, rectF.right);
            rectF.bottom = Math.max(f2, rectF.bottom);
            float fMin = Math.min(f2 / rectF.width(), f2 / rectF.height());
            int i4 = this.mSize;
            canvas.scale(i4 / 1440.0f, i4 / 1440.0f);
            canvas.scale(fMin, fMin);
            float f3 = i2;
            float f4 = i3;
            canvas.translate(((rectF.width() - f2) * f3) / 2.0f, ((rectF.height() - f2) * f4) / 2.0f);
            canvas.translate(f3 * 0.05f, f4 * (-0.05f));
        }

        private void setUcsTransform(Canvas canvas, int i2) {
            if (this.mUcs) {
                float f2 = i2;
                canvas.translate(0.0f, f2 - (f2 * UCS_SCALE));
                canvas.scale(UCS_SCALE, UCS_SCALE);
            }
        }

        private static double sqr(double d2) {
            return d2 * d2;
        }

        public Renderer add(ColorSpace colorSpace, int i2) {
            this.mColorSpaces.add(new Pair<>(colorSpace, Integer.valueOf(i2)));
            return this;
        }

        public Renderer clip(boolean z2) {
            this.mClip = z2;
            return this;
        }

        public Bitmap render() {
            Paint paint = new Paint(1);
            int i2 = this.mSize;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            float[] fArr = new float[6];
            Path path = new Path();
            setTransform(canvas, NATIVE_SIZE, NATIVE_SIZE, fArr);
            drawBox(canvas, NATIVE_SIZE, NATIVE_SIZE, paint, path);
            setUcsTransform(canvas, NATIVE_SIZE);
            drawLocus(canvas, NATIVE_SIZE, NATIVE_SIZE, paint, path, fArr);
            drawGamuts(canvas, NATIVE_SIZE, NATIVE_SIZE, paint, path, fArr, new float[2]);
            drawPoints(canvas, NATIVE_SIZE, NATIVE_SIZE, paint);
            return bitmapCreateBitmap;
        }

        public Renderer showWhitePoint(boolean z2) {
            this.mShowWhitePoint = z2;
            return this;
        }

        public Renderer size(int i2) {
            this.mSize = Math.max(128, i2);
            return this;
        }

        public Renderer uniformChromaticityScale(boolean z2) {
            this.mUcs = z2;
            return this;
        }

        private Renderer() {
            this.mSize = 1024;
            this.mShowWhitePoint = true;
            this.mClip = false;
            this.mUcs = false;
            this.mColorSpaces = new ArrayList(2);
            this.mPoints = new ArrayList(0);
        }

        public Renderer add(ColorSpace colorSpace, float f2, float f3, float f4, int i2) {
            this.mPoints.add(new Point(colorSpace, new float[]{f2, f3, f4}, i2));
            return this;
        }
    }

    public static class Rgb extends ColorSpace {
        private final DoubleUnaryOperator mClampedEotf;
        private final DoubleUnaryOperator mClampedOetf;
        private final DoubleUnaryOperator mEotf;
        private final float[] mInverseTransform;
        private final boolean mIsSrgb;
        private final boolean mIsWideGamut;
        private final float mMax;
        private final float mMin;
        private final DoubleUnaryOperator mOetf;
        private final float[] mPrimaries;
        private TransferParameters mTransferParameters;
        private final float[] mTransform;
        private final float[] mWhitePoint;

        public static class TransferParameters {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final double f64a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final double f65b;
            public final double c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final double f66d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final double f67e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final double f68f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public final double f69g;

            public TransferParameters(double d2, double d3, double d4, double d5, double d6) {
                this(d2, d3, d4, d5, 0.0d, 0.0d, d6);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                TransferParameters transferParameters = (TransferParameters) obj;
                return Double.compare(transferParameters.f64a, this.f64a) == 0 && Double.compare(transferParameters.f65b, this.f65b) == 0 && Double.compare(transferParameters.c, this.c) == 0 && Double.compare(transferParameters.f66d, this.f66d) == 0 && Double.compare(transferParameters.f67e, this.f67e) == 0 && Double.compare(transferParameters.f68f, this.f68f) == 0 && Double.compare(transferParameters.f69g, this.f69g) == 0;
            }

            public int hashCode() {
                long jDoubleToLongBits = Double.doubleToLongBits(this.f64a);
                long jDoubleToLongBits2 = Double.doubleToLongBits(this.f65b);
                int i2 = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
                long jDoubleToLongBits3 = Double.doubleToLongBits(this.c);
                int i3 = (i2 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
                long jDoubleToLongBits4 = Double.doubleToLongBits(this.f66d);
                int i4 = (i3 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
                long jDoubleToLongBits5 = Double.doubleToLongBits(this.f67e);
                int i5 = (i4 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
                long jDoubleToLongBits6 = Double.doubleToLongBits(this.f68f);
                int i6 = (i5 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
                long jDoubleToLongBits7 = Double.doubleToLongBits(this.f69g);
                return (i6 * 31) + ((int) ((jDoubleToLongBits7 >>> 32) ^ jDoubleToLongBits7));
            }

            public TransferParameters(double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
                if (Double.isNaN(d2) || Double.isNaN(d3) || Double.isNaN(d4) || Double.isNaN(d5) || Double.isNaN(d6) || Double.isNaN(d7) || Double.isNaN(d8)) {
                    throw new IllegalArgumentException("Parameters cannot be NaN");
                }
                if (d5 < 0.0d || d5 > Math.ulp(1.0f) + 1.0f) {
                    throw new IllegalArgumentException("Parameter d must be in the range [0..1], was " + d5);
                }
                if (d5 == 0.0d && (d2 == 0.0d || d8 == 0.0d)) {
                    throw new IllegalArgumentException("Parameter a or g is zero, the transfer function is constant");
                }
                if (d5 >= 1.0d && d4 == 0.0d) {
                    throw new IllegalArgumentException("Parameter c is zero, the transfer function is constant");
                }
                if ((d2 == 0.0d || d8 == 0.0d) && d4 == 0.0d) {
                    throw new IllegalArgumentException("Parameter a or g is zero, and c is zero, the transfer function is constant");
                }
                if (d4 < 0.0d) {
                    throw new IllegalArgumentException("The transfer function must be increasing");
                }
                if (d2 < 0.0d || d8 < 0.0d) {
                    throw new IllegalArgumentException("The transfer function must be positive or increasing");
                }
                this.f64a = d2;
                this.f65b = d3;
                this.c = d4;
                this.f66d = d5;
                this.f67e = d6;
                this.f68f = d7;
                this.f69g = d8;
            }
        }

        private static float area(float[] fArr) {
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float f5 = fArr[3];
            float f6 = fArr[4];
            float f7 = fArr[5];
            float f8 = (((((f4 * f7) + ((f3 * f6) + (f2 * f5))) - (f5 * f6)) - (f3 * f4)) - (f2 * f7)) * 0.5f;
            return f8 < 0.0f ? -f8 : f8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public double clamp(double d2) {
            float f2 = this.mMin;
            if (d2 >= f2) {
                f2 = this.mMax;
                if (d2 <= f2) {
                    return d2;
                }
            }
            return f2;
        }

        private static float[] computePrimaries(float[] fArr) {
            float[] fArrMul3x3Float3 = ColorSpace.mul3x3Float3(fArr, new float[]{1.0f, 0.0f, 0.0f});
            float[] fArrMul3x3Float4 = ColorSpace.mul3x3Float3(fArr, new float[]{0.0f, 1.0f, 0.0f});
            float[] fArrMul3x3Float5 = ColorSpace.mul3x3Float3(fArr, new float[]{0.0f, 0.0f, 1.0f});
            float f2 = fArrMul3x3Float3[0];
            float f3 = fArrMul3x3Float3[1];
            float f4 = f2 + f3 + fArrMul3x3Float3[2];
            float f5 = fArrMul3x3Float4[0] + fArrMul3x3Float4[1] + fArrMul3x3Float4[2];
            float f6 = fArrMul3x3Float5[0] + fArrMul3x3Float5[1] + fArrMul3x3Float5[2];
            return new float[]{f2 / f4, f3 / f4, fArrMul3x3Float4[0] / f5, fArrMul3x3Float4[1] / f5, fArrMul3x3Float5[0] / f6, fArrMul3x3Float5[1] / f6};
        }

        private static float[] computeWhitePoint(float[] fArr) {
            float[] fArrMul3x3Float3 = ColorSpace.mul3x3Float3(fArr, new float[]{1.0f, 1.0f, 1.0f});
            float f2 = fArrMul3x3Float3[0];
            float f3 = fArrMul3x3Float3[1];
            float f4 = f2 + f3 + fArrMul3x3Float3[2];
            return new float[]{f2 / f4, f3 / f4};
        }

        private static float[] computeXYZMatrix(float[] fArr, float[] fArr2) {
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float f5 = fArr[3];
            float f6 = fArr[4];
            float f7 = fArr[5];
            float f8 = fArr2[0];
            float f9 = fArr2[1];
            float f10 = 1.0f - f2;
            float f11 = f10 / f3;
            float f12 = 1.0f - f4;
            float f13 = 1.0f - f6;
            float f14 = (1.0f - f8) / f9;
            float f15 = f2 / f3;
            float f16 = (f4 / f5) - f15;
            float f17 = (f8 / f9) - f15;
            float f18 = (f12 / f5) - f11;
            float f19 = (f6 / f7) - f15;
            float f20 = (((f14 - f11) * f16) - (f17 * f18)) / ((((f13 / f7) - f11) * f16) - (f18 * f19));
            float f21 = (f17 - (f19 * f20)) / f16;
            float f22 = (1.0f - f21) - f20;
            float f23 = f22 / f3;
            float f24 = f21 / f5;
            float f25 = f20 / f7;
            return new float[]{f2 * f23, f22, (f10 - f3) * f23, f4 * f24, f21, (f12 - f5) * f24, f6 * f25, f20, (f13 - f7) * f25};
        }

        private static boolean contains(float[] fArr, float[] fArr2) {
            float f2 = fArr[0] - fArr2[0];
            float f3 = fArr[1] - fArr2[1];
            float[] fArr3 = {f2, f3, fArr[2] - fArr2[2], fArr[3] - fArr2[3], fArr[4] - fArr2[4], fArr[5] - fArr2[5]};
            return cross(f2, f3, fArr2[0] - fArr2[4], fArr2[1] - fArr2[5]) >= 0.0f && cross(fArr2[0] - fArr2[2], fArr2[1] - fArr2[3], fArr3[0], fArr3[1]) >= 0.0f && cross(fArr3[2], fArr3[3], fArr2[2] - fArr2[0], fArr2[3] - fArr2[1]) >= 0.0f && cross(fArr2[2] - fArr2[4], fArr2[3] - fArr2[5], fArr3[2], fArr3[3]) >= 0.0f && cross(fArr3[4], fArr3[5], fArr2[4] - fArr2[2], fArr2[5] - fArr2[3]) >= 0.0f && cross(fArr2[4] - fArr2[0], fArr2[5] - fArr2[1], fArr3[4], fArr3[5]) >= 0.0f;
        }

        private static float cross(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ double lambda$new$0(TransferParameters transferParameters, double d2) {
            return ColorSpace.rcpResponse(d2, transferParameters.f64a, transferParameters.f65b, transferParameters.c, transferParameters.f66d, transferParameters.f69g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ double lambda$new$1(TransferParameters transferParameters, double d2) {
            return ColorSpace.rcpResponse(d2, transferParameters.f64a, transferParameters.f65b, transferParameters.c, transferParameters.f66d, transferParameters.f67e, transferParameters.f68f, transferParameters.f69g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ double lambda$new$2(TransferParameters transferParameters, double d2) {
            return ColorSpace.response(d2, transferParameters.f64a, transferParameters.f65b, transferParameters.c, transferParameters.f66d, transferParameters.f69g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ double lambda$new$3(TransferParameters transferParameters, double d2) {
            return ColorSpace.response(d2, transferParameters.f64a, transferParameters.f65b, transferParameters.c, transferParameters.f66d, transferParameters.f67e, transferParameters.f68f, transferParameters.f69g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ double lambda$new$4(double d2, double d3) {
            if (d3 < 0.0d) {
                d3 = 0.0d;
            }
            return Math.pow(d3, 1.0d / d2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ double lambda$new$5(double d2, double d3) {
            if (d3 < 0.0d) {
                d3 = 0.0d;
            }
            return Math.pow(d3, d2);
        }

        private static float[] xyPrimaries(float[] fArr) {
            float[] fArr2 = new float[6];
            if (fArr.length == 9) {
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = f2 + f3 + fArr[2];
                fArr2[0] = f2 / f4;
                fArr2[1] = f3 / f4;
                float f5 = fArr[3];
                float f6 = fArr[4];
                float f7 = f5 + f6 + fArr[5];
                fArr2[2] = f5 / f7;
                fArr2[3] = f6 / f7;
                float f8 = fArr[6];
                float f9 = fArr[7];
                float f10 = f8 + f9 + fArr[8];
                fArr2[4] = f8 / f10;
                fArr2[5] = f9 / f10;
            } else {
                System.arraycopy(fArr, 0, fArr2, 0, 6);
            }
            return fArr2;
        }

        private static float[] xyWhitePoint(float[] fArr) {
            float[] fArr2 = new float[2];
            if (fArr.length == 3) {
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = f2 + f3 + fArr[2];
                fArr2[0] = f2 / f4;
                fArr2[1] = f3 / f4;
            } else {
                System.arraycopy(fArr, 0, fArr2, 0, 2);
            }
            return fArr2;
        }

        @Override // android.graphics.ColorSpace
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
                return false;
            }
            Rgb rgb = (Rgb) obj;
            if (Float.compare(rgb.mMin, this.mMin) != 0 || Float.compare(rgb.mMax, this.mMax) != 0 || !Arrays.equals(this.mWhitePoint, rgb.mWhitePoint) || !Arrays.equals(this.mPrimaries, rgb.mPrimaries)) {
                return false;
            }
            TransferParameters transferParameters = this.mTransferParameters;
            if (transferParameters != null) {
                return transferParameters.equals(rgb.mTransferParameters);
            }
            if (rgb.mTransferParameters == null) {
                return true;
            }
            if (this.mOetf.equals(rgb.mOetf)) {
                return this.mEotf.equals(rgb.mEotf);
            }
            return false;
        }

        public float[] fromLinear(float f2, float f3, float f4) {
            return fromLinear(new float[]{f2, f3, f4});
        }

        @Override // android.graphics.ColorSpace
        public float[] fromXyz(float[] fArr) {
            ColorSpace.mul3x3Float3(this.mInverseTransform, fArr);
            fArr[0] = (float) this.mClampedOetf.applyAsDouble(fArr[0]);
            fArr[1] = (float) this.mClampedOetf.applyAsDouble(fArr[1]);
            fArr[2] = (float) this.mClampedOetf.applyAsDouble(fArr[2]);
            return fArr;
        }

        public DoubleUnaryOperator getEotf() {
            return this.mClampedEotf;
        }

        public float[] getInverseTransform(float[] fArr) {
            float[] fArr2 = this.mInverseTransform;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            return fArr;
        }

        @Override // android.graphics.ColorSpace
        public float getMaxValue(int i2) {
            return this.mMax;
        }

        @Override // android.graphics.ColorSpace
        public float getMinValue(int i2) {
            return this.mMin;
        }

        public DoubleUnaryOperator getOetf() {
            return this.mClampedOetf;
        }

        public float[] getPrimaries(float[] fArr) {
            float[] fArr2 = this.mPrimaries;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            return fArr;
        }

        public TransferParameters getTransferParameters() {
            return this.mTransferParameters;
        }

        public float[] getTransform(float[] fArr) {
            float[] fArr2 = this.mTransform;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            return fArr;
        }

        public float[] getWhitePoint(float[] fArr) {
            float[] fArr2 = this.mWhitePoint;
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            return fArr;
        }

        @Override // android.graphics.ColorSpace
        public int hashCode() {
            int iHashCode = (Arrays.hashCode(this.mPrimaries) + ((Arrays.hashCode(this.mWhitePoint) + (super.hashCode() * 31)) * 31)) * 31;
            float f2 = this.mMin;
            int iFloatToIntBits = (iHashCode + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.mMax;
            int iFloatToIntBits2 = (iFloatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
            TransferParameters transferParameters = this.mTransferParameters;
            int iHashCode2 = iFloatToIntBits2 + (transferParameters != null ? transferParameters.hashCode() : 0);
            if (this.mTransferParameters == null) {
                return this.mEotf.hashCode() + ((this.mOetf.hashCode() + (iHashCode2 * 31)) * 31);
            }
            return iHashCode2;
        }

        @Override // android.graphics.ColorSpace
        public boolean isSrgb() {
            return this.mIsSrgb;
        }

        @Override // android.graphics.ColorSpace
        public boolean isWideGamut() {
            return this.mIsWideGamut;
        }

        public float[] toLinear(float f2, float f3, float f4) {
            return toLinear(new float[]{f2, f3, f4});
        }

        @Override // android.graphics.ColorSpace
        public float[] toXyz(float[] fArr) {
            fArr[0] = (float) this.mClampedEotf.applyAsDouble(fArr[0]);
            fArr[1] = (float) this.mClampedEotf.applyAsDouble(fArr[1]);
            fArr[2] = (float) this.mClampedEotf.applyAsDouble(fArr[2]);
            return ColorSpace.mul3x3Float3(this.mTransform, fArr);
        }

        private static boolean isSrgb(float[] fArr, float[] fArr2, DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2, float f2, float f3, int i2) {
            if (i2 == 0) {
                return true;
            }
            return ColorSpace.compare(fArr, ColorSpace.SRGB_PRIMARIES) && ColorSpace.compare(fArr2, ColorSpace.ILLUMINANT_D65) && doubleUnaryOperator.applyAsDouble(0.5d) >= 0.5001d && doubleUnaryOperator2.applyAsDouble(0.5d) <= 0.5001d && f2 == 0.0f && f3 == 1.0f;
        }

        private static boolean isWideGamut(float[] fArr, float f2, float f3) {
            return (area(fArr) / area(ColorSpace.NTSC_1953_PRIMARIES) > 0.9f && contains(fArr, ColorSpace.SRGB_PRIMARIES)) || (f2 < 0.0f && f3 > 1.0f);
        }

        public float[] fromLinear(float[] fArr) {
            fArr[0] = (float) this.mClampedOetf.applyAsDouble(fArr[0]);
            fArr[1] = (float) this.mClampedOetf.applyAsDouble(fArr[1]);
            fArr[2] = (float) this.mClampedOetf.applyAsDouble(fArr[2]);
            return fArr;
        }

        public float[] getInverseTransform() {
            float[] fArr = this.mInverseTransform;
            return Arrays.copyOf(fArr, fArr.length);
        }

        public float[] getPrimaries() {
            float[] fArr = this.mPrimaries;
            return Arrays.copyOf(fArr, fArr.length);
        }

        public float[] getTransform() {
            float[] fArr = this.mTransform;
            return Arrays.copyOf(fArr, fArr.length);
        }

        public float[] toLinear(float[] fArr) {
            fArr[0] = (float) this.mClampedEotf.applyAsDouble(fArr[0]);
            fArr[1] = (float) this.mClampedEotf.applyAsDouble(fArr[1]);
            fArr[2] = (float) this.mClampedEotf.applyAsDouble(fArr[2]);
            return fArr;
        }

        public float[] getWhitePoint() {
            float[] fArr = this.mWhitePoint;
            return Arrays.copyOf(fArr, fArr.length);
        }

        public Rgb(String str, float[] fArr, DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2) {
            this(str, computePrimaries(fArr), computeWhitePoint(fArr), doubleUnaryOperator, doubleUnaryOperator2, 0.0f, 1.0f, -1);
        }

        public Rgb(String str, float[] fArr, float[] fArr2, DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2, float f2, float f3) {
            this(str, fArr, fArr2, doubleUnaryOperator, doubleUnaryOperator2, f2, f3, -1);
        }

        public Rgb(String str, float[] fArr, TransferParameters transferParameters) {
            this(str, computePrimaries(fArr), computeWhitePoint(fArr), transferParameters, -1);
        }

        public Rgb(String str, float[] fArr, float[] fArr2, TransferParameters transferParameters) {
            this(str, fArr, fArr2, transferParameters, -1);
        }

        private Rgb(String str, float[] fArr, float[] fArr2, final TransferParameters transferParameters, int i2) {
            DoubleUnaryOperator doubleUnaryOperator;
            DoubleUnaryOperator doubleUnaryOperator2;
            double d2 = transferParameters.f67e;
            if (d2 == 0.0d && transferParameters.f68f == 0.0d) {
                final int i3 = 0;
                doubleUnaryOperator = new DoubleUnaryOperator() { // from class: android.graphics.b
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d3) {
                        switch (i3) {
                            case 0:
                                return ColorSpace.Rgb.lambda$new$0((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 1:
                                return ColorSpace.Rgb.lambda$new$1((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 2:
                                return ColorSpace.Rgb.lambda$new$2((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 3:
                                return ColorSpace.Rgb.lambda$new$3((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            default:
                                return ((ColorSpace.Rgb) transferParameters).clamp(d3);
                        }
                    }
                };
            } else {
                final int i4 = 1;
                doubleUnaryOperator = new DoubleUnaryOperator() { // from class: android.graphics.b
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d3) {
                        switch (i4) {
                            case 0:
                                return ColorSpace.Rgb.lambda$new$0((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 1:
                                return ColorSpace.Rgb.lambda$new$1((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 2:
                                return ColorSpace.Rgb.lambda$new$2((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 3:
                                return ColorSpace.Rgb.lambda$new$3((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            default:
                                return ((ColorSpace.Rgb) transferParameters).clamp(d3);
                        }
                    }
                };
            }
            DoubleUnaryOperator doubleUnaryOperator3 = doubleUnaryOperator;
            if (d2 == 0.0d && transferParameters.f68f == 0.0d) {
                final int i5 = 2;
                doubleUnaryOperator2 = new DoubleUnaryOperator() { // from class: android.graphics.b
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d3) {
                        switch (i5) {
                            case 0:
                                return ColorSpace.Rgb.lambda$new$0((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 1:
                                return ColorSpace.Rgb.lambda$new$1((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 2:
                                return ColorSpace.Rgb.lambda$new$2((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 3:
                                return ColorSpace.Rgb.lambda$new$3((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            default:
                                return ((ColorSpace.Rgb) transferParameters).clamp(d3);
                        }
                    }
                };
            } else {
                final int i6 = 3;
                doubleUnaryOperator2 = new DoubleUnaryOperator() { // from class: android.graphics.b
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d3) {
                        switch (i6) {
                            case 0:
                                return ColorSpace.Rgb.lambda$new$0((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 1:
                                return ColorSpace.Rgb.lambda$new$1((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 2:
                                return ColorSpace.Rgb.lambda$new$2((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            case 3:
                                return ColorSpace.Rgb.lambda$new$3((ColorSpace.Rgb.TransferParameters) transferParameters, d3);
                            default:
                                return ((ColorSpace.Rgb) transferParameters).clamp(d3);
                        }
                    }
                };
            }
            this(str, fArr, fArr2, doubleUnaryOperator3, doubleUnaryOperator2, 0.0f, 1.0f, i2);
            this.mTransferParameters = transferParameters;
        }

        public Rgb(String str, float[] fArr, double d2) {
            this(str, computePrimaries(fArr), computeWhitePoint(fArr), d2, 0.0f, 1.0f, -1);
        }

        public Rgb(String str, float[] fArr, float[] fArr2, double d2) {
            this(str, fArr, fArr2, d2, 0.0f, 1.0f, -1);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private Rgb(String str, float[] fArr, float[] fArr2, final double d2, float f2, float f3, int i2) {
            DoubleUnaryOperator doubleUnaryOperatorIdentity;
            DoubleUnaryOperator doubleUnaryOperatorIdentity2;
            if (d2 == 1.0d) {
                doubleUnaryOperatorIdentity = DoubleUnaryOperator.identity();
            } else {
                final int i3 = 0;
                doubleUnaryOperatorIdentity = new DoubleUnaryOperator() { // from class: android.graphics.c
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d3) {
                        switch (i3) {
                            case 0:
                                return ColorSpace.Rgb.lambda$new$4(d2, d3);
                            default:
                                return ColorSpace.Rgb.lambda$new$5(d2, d3);
                        }
                    }
                };
            }
            DoubleUnaryOperator doubleUnaryOperator = doubleUnaryOperatorIdentity;
            if (d2 == 1.0d) {
                doubleUnaryOperatorIdentity2 = DoubleUnaryOperator.identity();
            } else {
                final int i4 = 1;
                doubleUnaryOperatorIdentity2 = new DoubleUnaryOperator() { // from class: android.graphics.c
                    @Override // java.util.function.DoubleUnaryOperator
                    public final double applyAsDouble(double d3) {
                        switch (i4) {
                            case 0:
                                return ColorSpace.Rgb.lambda$new$4(d2, d3);
                            default:
                                return ColorSpace.Rgb.lambda$new$5(d2, d3);
                        }
                    }
                };
            }
            this(str, fArr, fArr2, doubleUnaryOperator, doubleUnaryOperatorIdentity2, f2, f3, i2);
            this.mTransferParameters = d2 == 1.0d ? new TransferParameters(0.0d, 0.0d, 1.0d, ((double) Math.ulp(1.0f)) + 1.0d, d2) : new TransferParameters(1.0d, 0.0d, 0.0d, 0.0d, d2);
        }

        /* JADX WARN: Type inference failed for: r8v10, types: [android.graphics.b] */
        private Rgb(String str, float[] fArr, float[] fArr2, DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2, float f2, float f3, int i2) {
            super(str, Model.RGB, i2);
            if (fArr != null && (fArr.length == 6 || fArr.length == 9)) {
                if (fArr2 == null || !(fArr2.length == 2 || fArr2.length == 3)) {
                    throw new IllegalArgumentException("The color space's white point must be defined as an array of 2 floats in xyY or 3 float in XYZ");
                }
                if (doubleUnaryOperator == null || doubleUnaryOperator2 == null) {
                    throw new IllegalArgumentException("The transfer functions of a color space cannot be null");
                }
                if (f2 < f3) {
                    float[] fArrXyWhitePoint = xyWhitePoint(fArr2);
                    this.mWhitePoint = fArrXyWhitePoint;
                    float[] fArrXyPrimaries = xyPrimaries(fArr);
                    this.mPrimaries = fArrXyPrimaries;
                    float[] fArrComputeXYZMatrix = computeXYZMatrix(fArrXyPrimaries, fArrXyWhitePoint);
                    this.mTransform = fArrComputeXYZMatrix;
                    this.mInverseTransform = ColorSpace.inverse3x3(fArrComputeXYZMatrix);
                    this.mOetf = doubleUnaryOperator;
                    this.mEotf = doubleUnaryOperator2;
                    this.mMin = f2;
                    this.mMax = f3;
                    final int i3 = 4;
                    ?? r8 = new DoubleUnaryOperator() { // from class: android.graphics.b
                        @Override // java.util.function.DoubleUnaryOperator
                        public final double applyAsDouble(double d3) {
                            switch (i3) {
                                case 0:
                                    return ColorSpace.Rgb.lambda$new$0((ColorSpace.Rgb.TransferParameters) this, d3);
                                case 1:
                                    return ColorSpace.Rgb.lambda$new$1((ColorSpace.Rgb.TransferParameters) this, d3);
                                case 2:
                                    return ColorSpace.Rgb.lambda$new$2((ColorSpace.Rgb.TransferParameters) this, d3);
                                case 3:
                                    return ColorSpace.Rgb.lambda$new$3((ColorSpace.Rgb.TransferParameters) this, d3);
                                default:
                                    return ((ColorSpace.Rgb) this).clamp(d3);
                            }
                        }
                    };
                    this.mClampedOetf = doubleUnaryOperator.andThen(r8);
                    this.mClampedEotf = r8.andThen(doubleUnaryOperator2);
                    this.mIsWideGamut = isWideGamut(fArrXyPrimaries, f2, f3);
                    this.mIsSrgb = isSrgb(fArrXyPrimaries, fArrXyWhitePoint, doubleUnaryOperator, doubleUnaryOperator2, f2, f3, i2);
                    return;
                }
                throw new IllegalArgumentException("Invalid range: min=" + f2 + ", max=" + f3 + "; min must be strictly < max");
            }
            throw new IllegalArgumentException("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
        }

        private Rgb(Rgb rgb, float[] fArr, float[] fArr2) {
            super(rgb.getName(), Model.RGB, -1);
            this.mWhitePoint = xyWhitePoint(fArr2);
            this.mPrimaries = rgb.mPrimaries;
            this.mTransform = fArr;
            this.mInverseTransform = ColorSpace.inverse3x3(fArr);
            this.mMin = rgb.mMin;
            this.mMax = rgb.mMax;
            this.mOetf = rgb.mOetf;
            this.mEotf = rgb.mEotf;
            this.mClampedOetf = rgb.mClampedOetf;
            this.mClampedEotf = rgb.mClampedEotf;
            this.mIsWideGamut = rgb.mIsWideGamut;
            this.mIsSrgb = rgb.mIsSrgb;
            this.mTransferParameters = rgb.mTransferParameters;
        }
    }

    public static final class Xyz extends ColorSpace {
        private static float clamp(float f2) {
            float f3 = -2.0f;
            if (f2 >= -2.0f) {
                f3 = 2.0f;
                if (f2 <= 2.0f) {
                    return f2;
                }
            }
            return f3;
        }

        @Override // android.graphics.ColorSpace
        public float[] fromXyz(float[] fArr) {
            fArr[0] = clamp(fArr[0]);
            fArr[1] = clamp(fArr[1]);
            fArr[2] = clamp(fArr[2]);
            return fArr;
        }

        @Override // android.graphics.ColorSpace
        public float getMaxValue(int i2) {
            return 2.0f;
        }

        @Override // android.graphics.ColorSpace
        public float getMinValue(int i2) {
            return -2.0f;
        }

        @Override // android.graphics.ColorSpace
        public boolean isWideGamut() {
            return true;
        }

        @Override // android.graphics.ColorSpace
        public float[] toXyz(float[] fArr) {
            fArr[0] = clamp(fArr[0]);
            fArr[1] = clamp(fArr[1]);
            fArr[2] = clamp(fArr[2]);
            return fArr;
        }

        private Xyz(String str, int i2) {
            super(str, Model.XYZ, i2);
        }
    }

    static {
        float[] fArr = {0.31006f, 0.31616f};
        ILLUMINANT_C = fArr;
        float[] fArr2 = {0.34567f, 0.3585f};
        ILLUMINANT_D50 = fArr2;
        float[] fArr3 = {0.32168f, 0.33767f};
        ILLUMINANT_D60 = fArr3;
        float[] fArr4 = {0.31271f, 0.32902f};
        ILLUMINANT_D65 = fArr4;
        float[] fArr5 = {0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f};
        SRGB_PRIMARIES = fArr5;
        float[] fArr6 = {0.67f, 0.33f, 0.21f, 0.71f, 0.14f, 0.08f};
        NTSC_1953_PRIMARIES = fArr6;
        ColorSpace[] colorSpaceArr = new ColorSpace[Named.values().length];
        sNamedColorSpaces = colorSpaceArr;
        Named named = Named.SRGB;
        colorSpaceArr[named.ordinal()] = new Rgb("sRGB IEC61966-2.1", fArr5, fArr4, new Rgb.TransferParameters(0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d), named.ordinal());
        Named named2 = Named.LINEAR_SRGB;
        colorSpaceArr[named2.ordinal()] = new Rgb("sRGB IEC61966-2.1 (Linear)", fArr5, fArr4, 1.0d, 0.0f, 1.0f, named2.ordinal());
        Named named3 = Named.EXTENDED_SRGB;
        int iOrdinal = named3.ordinal();
        final int i2 = 0;
        DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: android.graphics.a
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d2) {
                switch (i2) {
                    case 0:
                        return ColorSpace.lambda$static$0(d2);
                    default:
                        return ColorSpace.lambda$static$1(d2);
                }
            }
        };
        final int i3 = 1;
        colorSpaceArr[iOrdinal] = new Rgb("scRGB-nl IEC 61966-2-2:2003", fArr5, fArr4, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: android.graphics.a
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d2) {
                switch (i3) {
                    case 0:
                        return ColorSpace.lambda$static$0(d2);
                    default:
                        return ColorSpace.lambda$static$1(d2);
                }
            }
        }, -0.799f, 2.399f, named3.ordinal());
        Named named4 = Named.LINEAR_EXTENDED_SRGB;
        colorSpaceArr[named4.ordinal()] = new Rgb("scRGB IEC 61966-2-2:2003", fArr5, fArr4, 1.0d, -0.5f, 7.499f, named4.ordinal());
        Named named5 = Named.BT709;
        colorSpaceArr[named5.ordinal()] = new Rgb("Rec. ITU-R BT.709-5", new float[]{0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f}, fArr4, new Rgb.TransferParameters(0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 2.2222222222222223d), named5.ordinal());
        Named named6 = Named.BT2020;
        colorSpaceArr[named6.ordinal()] = new Rgb("Rec. ITU-R BT.2020-1", new float[]{0.708f, 0.292f, 0.17f, 0.797f, 0.131f, 0.046f}, fArr4, new Rgb.TransferParameters(0.9096697898662786d, 0.09033021013372146d, 0.2222222222222222d, 0.08145d, 2.2222222222222223d), named6.ordinal());
        Named named7 = Named.DCI_P3;
        colorSpaceArr[named7.ordinal()] = new Rgb("SMPTE RP 431-2-2007 DCI (P3)", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, new float[]{0.314f, 0.351f}, 2.6d, 0.0f, 1.0f, named7.ordinal());
        Named named8 = Named.DISPLAY_P3;
        colorSpaceArr[named8.ordinal()] = new Rgb("Display P3", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, fArr4, new Rgb.TransferParameters(0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.039d, 2.4d), named8.ordinal());
        Named named9 = Named.NTSC_1953;
        colorSpaceArr[named9.ordinal()] = new Rgb("NTSC (1953)", fArr6, fArr, new Rgb.TransferParameters(0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 2.2222222222222223d), named9.ordinal());
        Named named10 = Named.SMPTE_C;
        colorSpaceArr[named10.ordinal()] = new Rgb("SMPTE-C RGB", new float[]{0.63f, 0.34f, 0.31f, 0.595f, 0.155f, 0.07f}, fArr4, new Rgb.TransferParameters(0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 2.2222222222222223d), named10.ordinal());
        Named named11 = Named.ADOBE_RGB;
        colorSpaceArr[named11.ordinal()] = new Rgb("Adobe RGB (1998)", new float[]{0.64f, 0.33f, 0.21f, 0.71f, 0.15f, 0.06f}, fArr4, 2.2d, 0.0f, 1.0f, named11.ordinal());
        Named named12 = Named.PRO_PHOTO_RGB;
        colorSpaceArr[named12.ordinal()] = new Rgb("ROMM RGB ISO 22028-2:2013", new float[]{0.7347f, 0.2653f, 0.1596f, 0.8404f, 0.0366f, 1.0E-4f}, fArr2, new Rgb.TransferParameters(1.0d, 0.0d, 0.0625d, 0.031248d, 1.8d), named12.ordinal());
        Named named13 = Named.ACES;
        double d2 = 1.0d;
        float f2 = -65504.0f;
        float f3 = 65504.0f;
        colorSpaceArr[named13.ordinal()] = new Rgb("SMPTE ST 2065-1:2012 ACES", new float[]{0.7347f, 0.2653f, 0.0f, 1.0f, 1.0E-4f, -0.077f}, fArr3, d2, f2, f3, named13.ordinal());
        Named named14 = Named.ACESCG;
        colorSpaceArr[named14.ordinal()] = new Rgb("Academy S-2014-004 ACEScg", new float[]{0.713f, 0.293f, 0.165f, 0.83f, 0.128f, 0.044f}, fArr3, d2, f2, f3, named14.ordinal());
        Named named15 = Named.CIE_XYZ;
        colorSpaceArr[named15.ordinal()] = new Xyz("Generic XYZ", named15.ordinal());
        Named named16 = Named.CIE_LAB;
        colorSpaceArr[named16.ordinal()] = new Lab("Generic L*a*b*", named16.ordinal());
    }

    private static double absRcpResponse(double d2, double d3, double d4, double d5, double d6, double d7) {
        return Math.copySign(rcpResponse(d2 < 0.0d ? -d2 : d2, d3, d4, d5, d6, d7), d2);
    }

    private static double absResponse(double d2, double d3, double d4, double d5, double d6, double d7) {
        return Math.copySign(response(d2 < 0.0d ? -d2 : d2, d3, d4, d5, d6, d7), d2);
    }

    public static ColorSpace adapt(ColorSpace colorSpace, float[] fArr) {
        return adapt(colorSpace, fArr, Adaptation.BRADFORD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] chromaticAdaptation(float[] fArr, float[] fArr2, float[] fArr3) {
        float[] fArrMul3x3Float3 = mul3x3Float3(fArr, fArr2);
        float[] fArrMul3x3Float4 = mul3x3Float3(fArr, fArr3);
        return mul3x3(inverse3x3(fArr), mul3x3Diag(new float[]{fArrMul3x3Float4[0] / fArrMul3x3Float3[0], fArrMul3x3Float4[1] / fArrMul3x3Float3[1], fArrMul3x3Float4[2] / fArrMul3x3Float3[2]}, fArr));
    }

    private static boolean compare(Rgb.TransferParameters transferParameters, Rgb.TransferParameters transferParameters2) {
        if (transferParameters == null && transferParameters2 == null) {
            return true;
        }
        return transferParameters != null && transferParameters2 != null && Math.abs(transferParameters.f64a - transferParameters2.f64a) < 0.001d && Math.abs(transferParameters.f65b - transferParameters2.f65b) < 0.001d && Math.abs(transferParameters.c - transferParameters2.c) < 0.001d && Math.abs(transferParameters.f66d - transferParameters2.f66d) < 0.002d && Math.abs(transferParameters.f67e - transferParameters2.f67e) < 0.001d && Math.abs(transferParameters.f68f - transferParameters2.f68f) < 0.001d && Math.abs(transferParameters.f69g - transferParameters2.f69g) < 0.001d;
    }

    public static Connector connect(ColorSpace colorSpace, ColorSpace colorSpace2) {
        return connect(colorSpace, colorSpace2, RenderIntent.PERCEPTUAL);
    }

    public static Renderer createRenderer() {
        return new Renderer();
    }

    public static ColorSpace get(int i2) {
        if (i2 < 0 || i2 > Named.values().length) {
            throw new IllegalArgumentException(android.accessibilityservice.c.m(new StringBuilder("Invalid ID, must be in the range [0.."), Named.values().length, "]"));
        }
        return sNamedColorSpaces[i2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] inverse3x3(float[] fArr) {
        float f2 = fArr[0];
        float f3 = fArr[3];
        float f4 = fArr[6];
        float f5 = fArr[1];
        float f6 = fArr[4];
        float f7 = fArr[7];
        float f8 = fArr[2];
        float f9 = fArr[5];
        float f10 = fArr[8];
        float f11 = (f6 * f10) - (f7 * f9);
        float f12 = (f7 * f8) - (f5 * f10);
        float f13 = (f5 * f9) - (f6 * f8);
        float f14 = (f4 * f13) + (f3 * f12) + (f2 * f11);
        float[] fArr2 = new float[fArr.length];
        fArr2[0] = f11 / f14;
        fArr2[1] = f12 / f14;
        fArr2[2] = f13 / f14;
        fArr2[3] = ((f4 * f9) - (f3 * f10)) / f14;
        fArr2[4] = ((f10 * f2) - (f4 * f8)) / f14;
        fArr2[5] = ((f8 * f3) - (f9 * f2)) / f14;
        fArr2[6] = ((f3 * f7) - (f4 * f6)) / f14;
        fArr2[7] = ((f4 * f5) - (f7 * f2)) / f14;
        fArr2[8] = ((f2 * f6) - (f3 * f5)) / f14;
        return fArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$0(double d2) {
        return absRcpResponse(d2, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$1(double d2) {
        return absResponse(d2, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d);
    }

    public static ColorSpace match(float[] fArr, Rgb.TransferParameters transferParameters) {
        for (ColorSpace colorSpace : sNamedColorSpaces) {
            if (colorSpace.getModel() == Model.RGB) {
                Rgb rgb = (Rgb) adapt(colorSpace, ILLUMINANT_D50_XYZ);
                if (compare(fArr, rgb.mTransform) && compare(transferParameters, rgb.mTransferParameters)) {
                    return colorSpace;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] mul3x3(float[] fArr, float[] fArr2) {
        float f2 = fArr[0] * fArr2[0];
        float f3 = fArr[3];
        float f4 = fArr2[1];
        float f5 = fArr[6];
        float f6 = fArr2[2];
        float f7 = f5 * f6;
        float f8 = fArr[1];
        float f9 = fArr2[0];
        float f10 = fArr[4];
        float f11 = f4 * f10;
        float f12 = fArr[7];
        float f13 = f12 * f6;
        float f14 = fArr[2] * f9;
        float f15 = fArr[5];
        float f16 = (fArr2[1] * f15) + f14;
        float f17 = fArr[8];
        float f18 = fArr[0];
        float f19 = fArr2[3] * f18;
        float f20 = fArr2[4];
        float f21 = (f3 * f20) + f19;
        float f22 = fArr2[5];
        float f23 = fArr[1];
        float f24 = fArr2[3];
        float f25 = f10 * f20;
        float f26 = fArr[2];
        float f27 = f15 * fArr2[4];
        float f28 = f18 * fArr2[6];
        float f29 = fArr[3];
        float f30 = fArr2[7];
        float f31 = (f29 * f30) + f28;
        float f32 = fArr2[8];
        float f33 = fArr2[6];
        return new float[]{f7 + (f3 * f4) + f2, f13 + f11 + (f8 * f9), (f6 * f17) + f16, (f5 * f22) + f21, (f12 * f22) + f25 + (f23 * f24), (f22 * f17) + f27 + (f24 * f26), (f5 * f32) + f31, (f12 * f32) + (fArr[4] * f30) + (f23 * f33), (f17 * f32) + (fArr[5] * fArr2[7]) + (f26 * f33)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] mul3x3Diag(float[] fArr, float[] fArr2) {
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        return new float[]{fArr[0] * fArr2[0], fArr[1] * fArr2[1], fArr[2] * fArr2[2], fArr2[3] * f2, fArr2[4] * f3, fArr2[5] * f4, f2 * fArr2[6], f3 * fArr2[7], f4 * fArr2[8]};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] mul3x3Float3(float[] fArr, float[] fArr2) {
        float f2 = fArr2[0];
        float f3 = fArr2[1];
        float f4 = fArr2[2];
        fArr2[0] = (fArr[6] * f4) + (fArr[3] * f3) + (fArr[0] * f2);
        fArr2[1] = (fArr[7] * f4) + (fArr[4] * f3) + (fArr[1] * f2);
        fArr2[2] = (fArr[8] * f4) + (fArr[5] * f3) + (fArr[2] * f2);
        return fArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double rcpResponse(double d2, double d3, double d4, double d5, double d6, double d7) {
        return d2 >= d6 * d5 ? (Math.pow(d2, 1.0d / d7) - d4) / d3 : d2 / d5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double response(double d2, double d3, double d4, double d5, double d6, double d7) {
        return d2 >= d6 ? Math.pow((d3 * d2) + d4, d7) : d2 * d5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void xyYToUv(float[] fArr) {
        for (int i2 = 0; i2 < fArr.length; i2 += 2) {
            float f2 = fArr[i2];
            int i3 = i2 + 1;
            float f3 = fArr[i3];
            float f4 = (12.0f * f3) + ((-2.0f) * f2) + 3.0f;
            fArr[i2] = (f2 * 4.0f) / f4;
            fArr[i3] = (f3 * 9.0f) / f4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] xyYToXyz(float[] fArr) {
        float f2 = 1.0f - fArr[0];
        float f3 = fArr[1];
        return new float[]{fArr[0] / fArr[1], 1.0f, (f2 - f3) / f3};
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ColorSpace colorSpace = (ColorSpace) obj;
        return this.mId == colorSpace.mId && this.mName.equals(colorSpace.mName) && this.mModel == colorSpace.mModel;
    }

    public float[] fromXyz(float f2, float f3, float f4) {
        float[] fArr = new float[this.mModel.getComponentCount()];
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        return fromXyz(fArr);
    }

    public abstract float[] fromXyz(float[] fArr);

    public int getComponentCount() {
        return this.mModel.getComponentCount();
    }

    public int getId() {
        return this.mId;
    }

    public abstract float getMaxValue(int i2);

    public abstract float getMinValue(int i2);

    public Model getModel() {
        return this.mModel;
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return ((this.mModel.hashCode() + (this.mName.hashCode() * 31)) * 31) + this.mId;
    }

    public boolean isSrgb() {
        return false;
    }

    public abstract boolean isWideGamut();

    public String toString() {
        return this.mName + " (id=" + this.mId + ", model=" + this.mModel + ")";
    }

    public float[] toXyz(float f2, float f3, float f4) {
        return toXyz(new float[]{f2, f3, f4});
    }

    public abstract float[] toXyz(float[] fArr);

    private ColorSpace(String str, Model model, int i2) {
        if (str == null || str.length() < 1) {
            throw new IllegalArgumentException("The name of a color space cannot be null and must contain at least 1 character");
        }
        if (model == null) {
            throw new IllegalArgumentException("A color space must have a model");
        }
        if (i2 < -1 || i2 > 63) {
            throw new IllegalArgumentException("The id must be between -1 and 63");
        }
        this.mName = str;
        this.mModel = model;
        this.mId = i2;
    }

    public static ColorSpace adapt(ColorSpace colorSpace, float[] fArr, Adaptation adaptation) {
        if (colorSpace.getModel() != Model.RGB) {
            return colorSpace;
        }
        Rgb rgb = (Rgb) colorSpace;
        if (compare(rgb.mWhitePoint, fArr)) {
            return colorSpace;
        }
        return new Rgb(rgb, mul3x3(chromaticAdaptation(adaptation.mTransform, xyYToXyz(rgb.getWhitePoint()), fArr.length == 3 ? Arrays.copyOf(fArr, 3) : xyYToXyz(fArr)), rgb.mTransform), fArr);
    }

    public static Connector connect(ColorSpace colorSpace, ColorSpace colorSpace2, RenderIntent renderIntent) {
        if (colorSpace.equals(colorSpace2)) {
            return Connector.identity(colorSpace);
        }
        Model model = colorSpace.getModel();
        Model model2 = Model.RGB;
        return (model == model2 && colorSpace2.getModel() == model2) ? new Connector.Rgb((Rgb) colorSpace, (Rgb) colorSpace2, renderIntent) : new Connector(colorSpace, colorSpace2, renderIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double rcpResponse(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return d2 >= d6 * d5 ? (Math.pow(d2 - d7, 1.0d / d9) - d4) / d3 : (d2 - d8) / d5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double response(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        return d2 >= d6 ? Math.pow((d3 * d2) + d4, d9) + d7 : (d5 * d2) + d8;
    }

    public static Connector connect(ColorSpace colorSpace) {
        return connect(colorSpace, RenderIntent.PERCEPTUAL);
    }

    public static Connector connect(ColorSpace colorSpace, RenderIntent renderIntent) {
        if (colorSpace.isSrgb()) {
            return Connector.identity(colorSpace);
        }
        if (colorSpace.getModel() == Model.RGB) {
            return new Connector.Rgb((Rgb) colorSpace, (Rgb) get(Named.SRGB), renderIntent);
        }
        return new Connector(colorSpace, get(Named.SRGB), renderIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean compare(float[] fArr, float[] fArr2) {
        if (fArr == fArr2) {
            return true;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            if (Float.compare(fArr[i2], fArr2[i2]) != 0 && Math.abs(fArr[i2] - fArr2[i2]) > 0.001f) {
                return false;
            }
        }
        return true;
    }

    public static ColorSpace get(Named named) {
        return sNamedColorSpaces[named.ordinal()];
    }
}
