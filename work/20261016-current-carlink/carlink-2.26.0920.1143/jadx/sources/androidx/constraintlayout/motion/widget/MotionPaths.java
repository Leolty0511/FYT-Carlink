package androidx.constraintlayout.motion.widget;

import android.accessibilityservice.c;
import android.app.m;
import android.provider.BrowserContract;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes2.dex */
class MotionPaths implements Comparable<MotionPaths> {
    static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    static final int PERPENDICULAR = 1;
    static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {BrowserContract.Bookmarks.POSITION, "x", "y", "width", "height", "pathRotate"};
    LinkedHashMap<String, ConstraintAttribute> attributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mRelativeAngle;
    MotionController mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f287x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f288y;
    int mDrawPath = 0;
    float mPathRotate = Float.NaN;
    float mProgress = Float.NaN;

    public MotionPaths() {
        int i2 = Key.UNSET;
        this.mPathMotionArc = i2;
        this.mAnimateRelativeTo = i2;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
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

    public void applyParameters(ConstraintSet.Constraint constraint) {
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = constraint.propertySet.mProgress;
        this.mRelativeAngle = constraint.layout.circleAngle;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.isContinuous()) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    public void configureRelativeTo(MotionController motionController) {
        motionController.getPos(this.mProgress);
    }

    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z2) {
        boolean zDiff = diff(this.f287x, motionPaths.f287x);
        boolean zDiff2 = diff(this.f288y, motionPaths.f288y);
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        boolean z3 = zDiff | zDiff2 | z2;
        zArr[1] = zArr[1] | z3;
        zArr[2] = z3 | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = diff(this.height, motionPaths.height) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.f287x, this.f288y, this.width, this.height, this.mPathRotate};
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
        float fA = this.f287x;
        float fCos = this.f288y;
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
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d2, fArr2, new float[2]);
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
        float fA = this.f287x;
        float fCos = this.f288y;
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
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d2, fArr2, new float[2]);
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
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        int i3 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[i2] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[iNumberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        while (i3 < iNumberOfInterpolatedValues) {
            dArr[i2] = fArr[i3];
            i3++;
            i2++;
        }
        return iNumberOfInterpolatedValues;
    }

    public int getCustomDataCount(String str) {
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.numberOfInterpolatedValues();
    }

    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i2) {
        float f2 = this.f287x;
        float fCos = this.f288y;
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
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float centerX = motionController.getCenterX();
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
        return this.attributes.containsKey(str);
    }

    public void initCartesian(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f2 = keyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = keyPosition.mDrawPath;
        float f3 = Float.isNaN(keyPosition.mPercentWidth) ? f2 : keyPosition.mPercentWidth;
        float f4 = Float.isNaN(keyPosition.mPercentHeight) ? f2 : keyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = f5 - f6;
        float f8 = motionPaths2.height;
        float f9 = motionPaths.height;
        float f10 = f8 - f9;
        this.position = this.time;
        float f11 = motionPaths.f287x;
        float f12 = motionPaths.f288y;
        float f13 = ((f5 / 2.0f) + motionPaths2.f287x) - ((f6 / 2.0f) + f11);
        float f14 = ((f8 / 2.0f) + motionPaths2.f288y) - ((f9 / 2.0f) + f12);
        float f15 = f7 * f3;
        float f16 = f15 / 2.0f;
        this.f287x = (int) (((f13 * f2) + f11) - f16);
        float f17 = (f14 * f2) + f12;
        float f18 = f10 * f4;
        float f19 = f18 / 2.0f;
        this.f288y = (int) (f17 - f19);
        this.width = (int) (f6 + f15);
        this.height = (int) (f9 + f18);
        float f20 = Float.isNaN(keyPosition.mPercentX) ? f2 : keyPosition.mPercentX;
        float f21 = Float.isNaN(keyPosition.mAltPercentY) ? 0.0f : keyPosition.mAltPercentY;
        if (!Float.isNaN(keyPosition.mPercentY)) {
            f2 = keyPosition.mPercentY;
        }
        float f22 = Float.isNaN(keyPosition.mAltPercentX) ? 0.0f : keyPosition.mAltPercentX;
        this.mMode = 0;
        this.f287x = (int) (((f22 * f14) + ((f20 * f13) + motionPaths.f287x)) - f16);
        this.f288y = (int) (((f14 * f2) + ((f13 * f21) + motionPaths.f288y)) - f19);
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    public void initPath(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f2 = keyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = keyPosition.mDrawPath;
        float f3 = Float.isNaN(keyPosition.mPercentWidth) ? f2 : keyPosition.mPercentWidth;
        float f4 = Float.isNaN(keyPosition.mPercentHeight) ? f2 : keyPosition.mPercentHeight;
        float f5 = motionPaths2.width - motionPaths.width;
        float f6 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            f2 = keyPosition.mPercentX;
        }
        float f7 = motionPaths.f287x;
        float f8 = motionPaths.width;
        float f9 = motionPaths.f288y;
        float f10 = motionPaths.height;
        float f11 = ((motionPaths2.width / 2.0f) + motionPaths2.f287x) - ((f8 / 2.0f) + f7);
        float f12 = ((motionPaths2.height / 2.0f) + motionPaths2.f288y) - ((f10 / 2.0f) + f9);
        float f13 = f11 * f2;
        float f14 = f5 * f3;
        float f15 = f14 / 2.0f;
        this.f287x = (int) ((f7 + f13) - f15);
        float f16 = f2 * f12;
        float f17 = f6 * f4;
        float f18 = f17 / 2.0f;
        this.f288y = (int) ((f9 + f16) - f18);
        this.width = (int) (f8 + f14);
        this.height = (int) (f10 + f17);
        float f19 = Float.isNaN(keyPosition.mPercentY) ? 0.0f : keyPosition.mPercentY;
        this.mMode = 1;
        float f20 = (int) ((motionPaths.f287x + f13) - f15);
        float f21 = (int) ((motionPaths.f288y + f16) - f18);
        this.f287x = f20 + ((-f12) * f19);
        this.f288y = f21 + (f11 * f19);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    public void initPolar(int i2, int i3, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float fMin;
        float fA;
        float f2 = keyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mMode = keyPosition.mPositionType;
        float f3 = Float.isNaN(keyPosition.mPercentWidth) ? f2 : keyPosition.mPercentWidth;
        float f4 = Float.isNaN(keyPosition.mPercentHeight) ? f2 : keyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = motionPaths2.height;
        float f8 = motionPaths.height;
        this.position = this.time;
        this.width = (int) (((f5 - f6) * f3) + f6);
        this.height = (int) (((f7 - f8) * f4) + f8);
        int i4 = keyPosition.mPositionType;
        if (i4 == 1) {
            float f9 = Float.isNaN(keyPosition.mPercentX) ? f2 : keyPosition.mPercentX;
            float f10 = motionPaths2.f287x;
            float f11 = motionPaths.f287x;
            this.f287x = c.a(f10, f11, f9, f11);
            if (!Float.isNaN(keyPosition.mPercentY)) {
                f2 = keyPosition.mPercentY;
            }
            float f12 = motionPaths2.f288y;
            float f13 = motionPaths.f288y;
            this.f288y = c.a(f12, f13, f2, f13);
        } else if (i4 != 2) {
            float f14 = Float.isNaN(keyPosition.mPercentX) ? f2 : keyPosition.mPercentX;
            float f15 = motionPaths2.f287x;
            float f16 = motionPaths.f287x;
            this.f287x = c.a(f15, f16, f14, f16);
            if (!Float.isNaN(keyPosition.mPercentY)) {
                f2 = keyPosition.mPercentY;
            }
            float f17 = motionPaths2.f288y;
            float f18 = motionPaths.f288y;
            this.f288y = c.a(f17, f18, f2, f18);
        } else {
            if (Float.isNaN(keyPosition.mPercentX)) {
                float f19 = motionPaths2.f287x;
                float f20 = motionPaths.f287x;
                fMin = c.a(f19, f20, f2, f20);
            } else {
                fMin = Math.min(f4, f3) * keyPosition.mPercentX;
            }
            this.f287x = fMin;
            if (Float.isNaN(keyPosition.mPercentY)) {
                float f21 = motionPaths2.f288y;
                float f22 = motionPaths.f288y;
                fA = c.a(f21, f22, f2, f22);
            } else {
                fA = keyPosition.mPercentY;
            }
            this.f288y = fA;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    public void initScreen(int i2, int i3, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f2 = keyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = keyPosition.mDrawPath;
        float f3 = Float.isNaN(keyPosition.mPercentWidth) ? f2 : keyPosition.mPercentWidth;
        float f4 = Float.isNaN(keyPosition.mPercentHeight) ? f2 : keyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = f5 - f6;
        float f8 = motionPaths2.height;
        float f9 = motionPaths.height;
        float f10 = f8 - f9;
        this.position = this.time;
        float f11 = motionPaths.f287x;
        float f12 = motionPaths.f288y;
        float f13 = (f5 / 2.0f) + motionPaths2.f287x;
        float f14 = (f8 / 2.0f) + motionPaths2.f288y;
        float f15 = f7 * f3;
        this.f287x = (int) ((((f13 - ((f6 / 2.0f) + f11)) * f2) + f11) - (f15 / 2.0f));
        float f16 = f10 * f4;
        this.f288y = (int) ((((f14 - ((f9 / 2.0f) + f12)) * f2) + f12) - (f16 / 2.0f));
        this.width = (int) (f6 + f15);
        this.height = (int) (f9 + f16);
        this.mMode = 2;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            this.f287x = (int) (keyPosition.mPercentX * ((int) (i2 - this.width)));
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            this.f288y = (int) (keyPosition.mPercentY * ((int) (i3 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    public void setBounds(float f2, float f3, float f4, float f5) {
        this.f287x = f2;
        this.f288y = f3;
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

    public void setView(float f2, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z2) {
        View view2;
        boolean z3;
        boolean z4;
        float f3 = this.f287x;
        float f4 = this.f288y;
        float f5 = this.width;
        float f6 = this.height;
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
        float f7 = Float.NaN;
        int i5 = 0;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
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
                float f12 = (float) d2;
                float f13 = (float) this.mTempDelta[i5];
                if (i5 == 1) {
                    f8 = f13;
                    f3 = f12;
                } else if (i5 == 2) {
                    f9 = f13;
                    f4 = f12;
                } else if (i5 == 3) {
                    f10 = f13;
                    f5 = f12;
                } else if (i5 == 4) {
                    f11 = f13;
                    f6 = f12;
                } else if (i5 == 5) {
                    f7 = f12;
                }
            }
            i5++;
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(f2, fArr, fArr2);
            float f14 = fArr[0];
            float f15 = fArr[1];
            float f16 = fArr2[0];
            float f17 = fArr2[1];
            double d3 = f3;
            double d4 = f4;
            float fA = (float) (m.a(d4, d3, f14) - ((double) (f5 / 2.0f)));
            float fCos = (float) ((((double) f15) - (Math.cos(d4) * d3)) - ((double) (f6 / 2.0f)));
            double d5 = f16;
            double d6 = f8;
            double d7 = f9;
            float fCos2 = (float) ((Math.cos(d4) * d3 * d7) + m.a(d4, d6, d5));
            float fSin = (float) ((Math.sin(d4) * d3 * d7) + (((double) f17) - (Math.cos(d4) * d6)));
            if (dArr2.length >= 2) {
                z4 = false;
                dArr2[0] = fCos2;
                z3 = true;
                dArr2[1] = fSin;
            } else {
                z4 = false;
                z3 = true;
            }
            if (Float.isNaN(f7)) {
                view2 = view;
            } else {
                view2 = view;
                view2.setRotation((float) (Math.toDegrees(Math.atan2(fSin, fCos2)) + ((double) f7)));
            }
            f4 = fCos;
            f3 = fA;
        } else {
            view2 = view;
            z3 = true;
            if (!Float.isNaN(f7)) {
                view2.setRotation((float) (Math.toDegrees(Math.atan2((f11 / 2.0f) + f9, (f10 / 2.0f) + f8)) + ((double) f7) + ((double) 0.0f)));
            }
            z4 = false;
        }
        if (view2 instanceof FloatLayout) {
            ((FloatLayout) view2).layout(f3, f4, f5 + f3, f4 + f6);
            return;
        }
        float f18 = f3 + 0.5f;
        int i6 = (int) f18;
        float f19 = f4 + 0.5f;
        int i7 = (int) f19;
        int i8 = (int) (f18 + f5);
        int i9 = (int) (f19 + f6);
        int i10 = i8 - i6;
        int i11 = i9 - i7;
        if (i10 != view.getMeasuredWidth() || i11 != view.getMeasuredHeight()) {
            z4 = z3;
        }
        if (z4 || z2) {
            view2.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        }
        view2.layout(i6, i7, i8, i9);
    }

    public void setupRelative(MotionController motionController, MotionPaths motionPaths) {
        double d2 = (((this.width / 2.0f) + this.f287x) - motionPaths.f287x) - (motionPaths.width / 2.0f);
        double d3 = (((this.height / 2.0f) + this.f288y) - motionPaths.f288y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motionController;
        this.f287x = (float) Math.hypot(d3, d2);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f288y = (float) (Math.atan2(d3, d2) + 1.5707963267948966d);
        } else {
            this.f288y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public MotionPaths(int i2, int i3, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        int i4 = Key.UNSET;
        this.mPathMotionArc = i4;
        this.mAnimateRelativeTo = i4;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != Key.UNSET) {
            initPolar(i2, i3, keyPosition, motionPaths, motionPaths2);
            return;
        }
        int i5 = keyPosition.mPositionType;
        if (i5 == 1) {
            initPath(keyPosition, motionPaths, motionPaths2);
        } else if (i5 != 2) {
            initCartesian(keyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i2, i3, keyPosition, motionPaths, motionPaths2);
        }
    }

    public void getCenter(double d2, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f2 = this.f287x;
        float f3 = this.f288y;
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
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motionController.getCenter(d2, fArr3, fArr4);
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
