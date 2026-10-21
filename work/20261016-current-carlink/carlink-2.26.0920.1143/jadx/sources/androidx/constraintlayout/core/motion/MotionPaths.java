package androidx.constraintlayout.core.motion;

import android.accessibilityservice.c;
import android.app.m;
import android.provider.BrowserContract;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {BrowserContract.Bookmarks.POSITION, "x", "y", "width", "height", "pathRotate"};
    HashMap<String, CustomVariable> customAttributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    int mDrawPath;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f279x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f280y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    private boolean diff(float f2, float f3) {
        if (Float.isNaN(f2) || Float.isNaN(f3)) {
            return Float.isNaN(f2) != Float.isNaN(f3);
        }
        return Math.abs(f2 - f3) > 1.0E-6f;
    }

    private static final float xRotate(float f2, float f3, float f4, float f5, float f6, float f7) {
        return (((f6 - f4) * f3) - ((f7 - f5) * f2)) + f4;
    }

    private static final float yRotate(float f2, float f3, float f4, float f5, float f6, float f7) {
        return ((f7 - f5) * f3) + ((f6 - f4) * f2) + f5;
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.motion.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.propertySet.mProgress;
        this.mRelativeAngle = 0.0f;
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.customAttributes.put(str, customAttribute);
            }
        }
    }

    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z2) {
        boolean zDiff = diff(this.f279x, motionPaths.f279x);
        boolean zDiff2 = diff(this.f280y, motionPaths.f280y);
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        boolean z3 = zDiff | zDiff2 | z2;
        zArr[1] = zArr[1] | z3;
        zArr[2] = z3 | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = diff(this.height, motionPaths.height) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.f279x, this.f280y, this.width, this.height, this.mPathRotate};
        int i2 = 0;
        for (int i3 : iArr) {
            if (i3 < 6) {
                dArr[i2] = fArr[i3];
                i2++;
            }
        }
    }

    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.width;
        float f3 = this.height;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f4 = (float) dArr[i3];
            int i4 = iArr[i3];
            if (i4 == 3) {
                f2 = f4;
            } else if (i4 == 4) {
                f3 = f4;
            }
        }
        fArr[i2] = f2;
        fArr[i2 + 1] = f3;
    }

    public void getCenter(double d2, int[] iArr, double[] dArr, float[] fArr, int i2) {
        float fA = this.f279x;
        float fCos = this.f280y;
        float f2 = this.width;
        float f3 = this.height;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f4 = (float) dArr[i3];
            int i4 = iArr[i3];
            if (i4 == 1) {
                fA = f4;
            } else if (i4 == 2) {
                fCos = f4;
            } else if (i4 == 3) {
                f2 = f4;
            } else if (i4 == 4) {
                f3 = f4;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d2, fArr2, new float[2]);
            float f5 = fArr2[0];
            float f6 = fArr2[1];
            double d3 = f5;
            double d4 = fA;
            double d5 = fCos;
            fA = (float) (m.a(d5, d4, d3) - ((double) (f2 / 2.0f)));
            fCos = (float) ((((double) f6) - (Math.cos(d5) * d4)) - ((double) (f3 / 2.0f)));
        }
        fArr[i2] = (f2 / 2.0f) + fA + 0.0f;
        fArr[i2 + 1] = (f3 / 2.0f) + fCos + 0.0f;
    }

    public void getCenterVelocity(double d2, int[] iArr, double[] dArr, float[] fArr, int i2) {
        float fA = this.f279x;
        float fCos = this.f280y;
        float f2 = this.width;
        float f3 = this.height;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f4 = (float) dArr[i3];
            int i4 = iArr[i3];
            if (i4 == 1) {
                fA = f4;
            } else if (i4 == 2) {
                fCos = f4;
            } else if (i4 == 3) {
                f2 = f4;
            } else if (i4 == 4) {
                f3 = f4;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d2, fArr2, new float[2]);
            float f5 = fArr2[0];
            float f6 = fArr2[1];
            double d3 = f5;
            double d4 = fA;
            double d5 = fCos;
            fA = (float) (m.a(d5, d4, d3) - ((double) (f2 / 2.0f)));
            fCos = (float) ((((double) f6) - (Math.cos(d5) * d4)) - ((double) (f3 / 2.0f)));
        }
        fArr[i2] = (f2 / 2.0f) + fA + 0.0f;
        fArr[i2 + 1] = (f3 / 2.0f) + fCos + 0.0f;
    }

    public int getCustomData(String str, double[] dArr, int i2) {
        CustomVariable customVariable = this.customAttributes.get(str);
        int i3 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i2] = customVariable.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[iNumberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        while (i3 < iNumberOfInterpolatedValues) {
            dArr[i2] = fArr[i3];
            i3++;
            i2++;
        }
        return iNumberOfInterpolatedValues;
    }

    public int getCustomDataCount(String str) {
        CustomVariable customVariable = this.customAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.f279x;
        float fCos = this.f280y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            float f5 = (float) dArr[i3];
            int i4 = iArr[i3];
            if (i4 == 1) {
                f2 = f5;
            } else if (i4 == 2) {
                fCos = f5;
            } else if (i4 == 3) {
                f3 = f5;
            } else if (i4 == 4) {
                f4 = f5;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.mRelativeToController.getCenterY();
            double d2 = centerX;
            double d3 = f2;
            double d4 = fCos;
            float fA = (float) (m.a(d4, d3, d2) - ((double) (f3 / 2.0f)));
            fCos = (float) ((((double) centerY) - (Math.cos(d4) * d3)) - ((double) (f4 / 2.0f)));
            f2 = fA;
        }
        float f6 = f3 + f2;
        float f7 = f4 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i5 = i2 + 1;
        fArr[i2] = f2 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = fCos + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f6 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = fCos + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f6 + 0.0f;
        int i10 = i9 + 1;
        fArr[i9] = f7 + 0.0f;
        fArr[i10] = f2 + 0.0f;
        fArr[i10 + 1] = f7 + 0.0f;
    }

    public boolean hasCustomData(String str) {
        return this.customAttributes.containsKey(str);
    }

    public void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f2 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f3 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f2 : motionKeyPosition.mPercentWidth;
        float f4 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f2 : motionKeyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = f5 - f6;
        float f8 = motionPaths2.height;
        float f9 = motionPaths.height;
        float f10 = f8 - f9;
        this.position = this.time;
        float f11 = motionPaths.f279x;
        float f12 = motionPaths.f280y;
        float f13 = ((f5 / 2.0f) + motionPaths2.f279x) - ((f6 / 2.0f) + f11);
        float f14 = ((f8 / 2.0f) + motionPaths2.f280y) - ((f9 / 2.0f) + f12);
        float f15 = f7 * f3;
        float f16 = f15 / 2.0f;
        this.f279x = (int) (((f13 * f2) + f11) - f16);
        float f17 = (f14 * f2) + f12;
        float f18 = f10 * f4;
        float f19 = f18 / 2.0f;
        this.f280y = (int) (f17 - f19);
        this.width = (int) (f6 + f15);
        this.height = (int) (f9 + f18);
        float f20 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
        float f21 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f2 = motionKeyPosition.mPercentY;
        }
        float f22 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.f279x = (int) (((f22 * f14) + ((f20 * f13) + motionPaths.f279x)) - f16);
        this.f280y = (int) (((f14 * f2) + ((f13 * f21) + motionPaths.f280y)) - f19);
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f2 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f3 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f2 : motionKeyPosition.mPercentWidth;
        float f4 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f2 : motionKeyPosition.mPercentHeight;
        float f5 = motionPaths2.width - motionPaths.width;
        float f6 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f2 = motionKeyPosition.mPercentX;
        }
        float f7 = motionPaths.f279x;
        float f8 = motionPaths.width;
        float f9 = motionPaths.f280y;
        float f10 = motionPaths.height;
        float f11 = ((motionPaths2.width / 2.0f) + motionPaths2.f279x) - ((f8 / 2.0f) + f7);
        float f12 = ((motionPaths2.height / 2.0f) + motionPaths2.f280y) - ((f10 / 2.0f) + f9);
        float f13 = f11 * f2;
        float f14 = f5 * f3;
        float f15 = f14 / 2.0f;
        this.f279x = (int) ((f7 + f13) - f15);
        float f16 = f2 * f12;
        float f17 = f6 * f4;
        float f18 = f17 / 2.0f;
        this.f280y = (int) ((f9 + f16) - f18);
        this.width = (int) (f8 + f14);
        this.height = (int) (f10 + f17);
        float f19 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f20 = (int) ((motionPaths.f279x + f13) - f15);
        float f21 = (int) ((motionPaths.f280y + f16) - f18);
        this.f279x = f20 + ((-f12) * f19);
        this.f280y = f21 + (f11 * f19);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initPolar(int i2, int i3, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float fMin;
        float fA;
        float f2 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        float f3 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f2 : motionKeyPosition.mPercentWidth;
        float f4 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f2 : motionKeyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = motionPaths2.height;
        float f8 = motionPaths.height;
        this.position = this.time;
        this.width = (int) (((f5 - f6) * f3) + f6);
        this.height = (int) (((f7 - f8) * f4) + f8);
        int i4 = motionKeyPosition.mPositionType;
        if (i4 == 1) {
            float f9 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
            float f10 = motionPaths2.f279x;
            float f11 = motionPaths.f279x;
            this.f279x = c.a(f10, f11, f9, f11);
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f2 = motionKeyPosition.mPercentY;
            }
            float f12 = motionPaths2.f280y;
            float f13 = motionPaths.f280y;
            this.f280y = c.a(f12, f13, f2, f13);
        } else if (i4 != 2) {
            float f14 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
            float f15 = motionPaths2.f279x;
            float f16 = motionPaths.f279x;
            this.f279x = c.a(f15, f16, f14, f16);
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f2 = motionKeyPosition.mPercentY;
            }
            float f17 = motionPaths2.f280y;
            float f18 = motionPaths.f280y;
            this.f280y = c.a(f17, f18, f2, f18);
        } else {
            if (Float.isNaN(motionKeyPosition.mPercentX)) {
                float f19 = motionPaths2.f279x;
                float f20 = motionPaths.f279x;
                fMin = c.a(f19, f20, f2, f20);
            } else {
                fMin = Math.min(f4, f3) * motionKeyPosition.mPercentX;
            }
            this.f279x = fMin;
            if (Float.isNaN(motionKeyPosition.mPercentY)) {
                float f21 = motionPaths2.f280y;
                float f22 = motionPaths.f280y;
                fA = c.a(f21, f22, f2, f22);
            } else {
                fA = motionKeyPosition.mPercentY;
            }
            this.f280y = fA;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initScreen(int i2, int i3, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f2 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f3 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f2 : motionKeyPosition.mPercentWidth;
        float f4 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f2 : motionKeyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = f5 - f6;
        float f8 = motionPaths2.height;
        float f9 = motionPaths.height;
        float f10 = f8 - f9;
        this.position = this.time;
        float f11 = motionPaths.f279x;
        float f12 = motionPaths.f280y;
        float f13 = (f5 / 2.0f) + motionPaths2.f279x;
        float f14 = (f8 / 2.0f) + motionPaths2.f280y;
        float f15 = f7 * f3;
        this.f279x = (int) ((((f13 - ((f6 / 2.0f) + f11)) * f2) + f11) - (f15 / 2.0f));
        float f16 = f10 * f4;
        this.f280y = (int) ((((f14 - ((f9 / 2.0f) + f12)) * f2) + f12) - (f16 / 2.0f));
        this.width = (int) (f6 + f15);
        this.height = (int) (f9 + f16);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f279x = (int) (motionKeyPosition.mPercentX * ((int) (i2 - this.width)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f280y = (int) (motionKeyPosition.mPercentY * ((int) (i3 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void setBounds(float f2, float f3, float f4, float f5) {
        this.f279x = f2;
        this.f280y = f3;
        this.width = f4;
        this.height = f5;
    }

    public void setDpDt(float f2, float f3, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f8 = (float) dArr[i2];
            double d2 = dArr2[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f4 = f8;
            } else if (i3 == 2) {
                f6 = f8;
            } else if (i3 == 3) {
                f5 = f8;
            } else if (i3 == 4) {
                f7 = f8;
            }
        }
        float f9 = f4 - ((0.0f * f5) / 2.0f);
        float f10 = f6 - ((0.0f * f7) / 2.0f);
        fArr[0] = (((f5 * 1.0f) + f9) * f2) + ((1.0f - f2) * f9) + 0.0f;
        fArr[1] = (((f7 * 1.0f) + f10) * f3) + ((1.0f - f3) * f10) + 0.0f;
    }

    public void setView(float f2, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f3;
        float f4;
        MotionWidget motionWidget2 = motionWidget;
        float f5 = this.f279x;
        float f6 = this.f280y;
        float f7 = this.width;
        float f8 = this.height;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i2 = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i2];
            this.mTempDelta = new double[i2];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i3 = 0; i3 < iArr.length; i3++) {
            double[] dArr4 = this.mTempValue;
            int i4 = iArr[i3];
            dArr4[i4] = dArr[i3];
            this.mTempDelta[i4] = dArr2[i3];
        }
        float f9 = Float.NaN;
        int i5 = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        while (true) {
            double[] dArr5 = this.mTempValue;
            if (i5 >= dArr5.length) {
                break;
            }
            if (!Double.isNaN(dArr5[i5]) || (dArr3 != null && dArr3[i5] != 0.0d)) {
                double d2 = dArr3 != null ? dArr3[i5] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i5])) {
                    d2 = this.mTempValue[i5] + d2;
                }
                float f14 = (float) d2;
                float f15 = (float) this.mTempDelta[i5];
                if (i5 == 1) {
                    f10 = f15;
                    f5 = f14;
                } else if (i5 == 2) {
                    f11 = f15;
                    f6 = f14;
                } else if (i5 == 3) {
                    f12 = f15;
                    f7 = f14;
                } else if (i5 == 4) {
                    f13 = f15;
                    f8 = f14;
                } else if (i5 == 5) {
                    f9 = f14;
                }
            }
            i5++;
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f2, fArr, fArr2);
            float f16 = fArr[0];
            float f17 = fArr[1];
            float f18 = fArr2[0];
            float f19 = fArr2[1];
            double d3 = f5;
            double d4 = f6;
            float fA = (float) (m.a(d4, d3, f16) - ((double) (f7 / 2.0f)));
            f3 = f7;
            f4 = f8;
            float fCos = (float) ((((double) f17) - (Math.cos(d4) * d3)) - ((double) (f8 / 2.0f)));
            double d5 = f18;
            double d6 = f10;
            double d7 = f11;
            float fCos2 = (float) ((Math.cos(d4) * d3 * d7) + m.a(d4, d6, d5));
            float fSin = (float) ((Math.sin(d4) * d3 * d7) + (((double) f19) - (Math.cos(d4) * d6)));
            if (dArr2.length >= 2) {
                dArr2[0] = fCos2;
                dArr2[1] = fSin;
            }
            if (Float.isNaN(f9)) {
                motionWidget2 = motionWidget;
            } else {
                motionWidget2 = motionWidget;
                motionWidget2.setRotationZ((float) (Math.toDegrees(Math.atan2(fSin, fCos2)) + ((double) f9)));
            }
            f6 = fCos;
            f5 = fA;
        } else {
            f3 = f7;
            f4 = f8;
            if (!Float.isNaN(f9)) {
                motionWidget2.setRotationZ((float) (Math.toDegrees(Math.atan2((f13 / 2.0f) + f11, (f12 / 2.0f) + f10)) + ((double) f9) + ((double) 0.0f)));
            }
        }
        float f20 = f5 + 0.5f;
        float f21 = f6 + 0.5f;
        motionWidget2.layout((int) f20, (int) f21, (int) (f20 + f3), (int) (f21 + f4));
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d2 = (((this.width / 2.0f) + this.f279x) - motionPaths.f279x) - (motionPaths.width / 2.0f);
        double d3 = (((this.height / 2.0f) + this.f280y) - motionPaths.f280y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motion;
        this.f279x = (float) Math.hypot(d3, d2);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f280y = (float) (Math.atan2(d3, d2) + 1.5707963267948966d);
        } else {
            this.f280y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public MotionPaths(int i2, int i3, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != -1) {
            initPolar(i2, i3, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i4 = motionKeyPosition.mPositionType;
        if (i4 == 1) {
            initPath(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i4 != 2) {
            initCartesian(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i2, i3, motionKeyPosition, motionPaths, motionPaths2);
        }
    }

    public void getCenter(double d2, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f2 = this.f279x;
        float f3 = this.f280y;
        float f4 = this.width;
        float f5 = this.height;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f10 = (float) dArr[i2];
            float f11 = (float) dArr2[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f2 = f10;
                f6 = f11;
            } else if (i3 == 2) {
                f3 = f10;
                f8 = f11;
            } else if (i3 == 3) {
                f4 = f10;
                f7 = f11;
            } else if (i3 == 4) {
                f5 = f10;
                f9 = f11;
            }
        }
        float f12 = 2.0f;
        float f13 = (f7 / 2.0f) + f6;
        float f14 = (f9 / 2.0f) + f8;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d2, fArr3, fArr4);
            float f15 = fArr3[0];
            float f16 = fArr3[1];
            float f17 = fArr4[0];
            float f18 = fArr4[1];
            double d3 = f2;
            double d4 = f3;
            float fA = (float) (m.a(d4, d3, f15) - ((double) (f4 / 2.0f)));
            float fCos = (float) ((((double) f16) - (Math.cos(d4) * d3)) - ((double) (f5 / 2.0f)));
            double d5 = f17;
            double d6 = f6;
            double d7 = f8;
            float fCos2 = (float) ((Math.cos(d4) * d7) + m.a(d4, d6, d5));
            float fA2 = (float) m.a(d4, d7, ((double) f18) - (Math.cos(d4) * d6));
            f3 = fCos;
            f13 = fCos2;
            f14 = fA2;
            f12 = 2.0f;
            f2 = fA;
        }
        fArr[0] = (f4 / f12) + f2 + 0.0f;
        fArr[1] = (f5 / f12) + f3 + 0.0f;
        fArr2[0] = f13;
        fArr2[1] = f14;
    }
}
