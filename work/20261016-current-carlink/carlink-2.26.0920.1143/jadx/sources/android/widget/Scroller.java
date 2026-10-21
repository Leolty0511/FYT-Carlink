package android.widget;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
public class Scroller {
    private static final int DEFAULT_DURATION = 250;
    private static final float END_TENSION = 1.0f;
    private static final int FLING_MODE = 1;
    private static final float INFLEXION = 0.35f;
    private static final int NB_SAMPLES = 100;
    private static final float P1 = 0.175f;
    private static final float P2 = 0.35000002f;
    private static final int SCROLL_MODE = 0;
    private static final float START_TENSION = 0.5f;
    private float mCurrVelocity;
    private int mCurrX;
    private int mCurrY;
    private float mDeceleration;
    private float mDeltaX;
    private float mDeltaY;
    private int mDistance;
    private int mDuration;
    private float mDurationReciprocal;
    private int mFinalX;
    private int mFinalY;
    private boolean mFinished;
    private float mFlingFriction;
    private boolean mFlywheel;
    private final Interpolator mInterpolator;
    private int mMaxX;
    private int mMaxY;
    private int mMinX;
    private int mMinY;
    private int mMode;
    private float mPhysicalCoeff;
    private final float mPpi;
    private long mStartTime;
    private int mStartX;
    private int mStartY;
    private float mVelocity;
    private static float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static final float[] SPLINE_POSITION = new float[101];
    private static final float[] SPLINE_TIME = new float[101];

    public static class ViscousFluidInterpolator implements Interpolator {
        private static final float VISCOUS_FLUID_NORMALIZE;
        private static final float VISCOUS_FLUID_OFFSET;
        private static final float VISCOUS_FLUID_SCALE = 8.0f;

        static {
            float fViscousFluid = 1.0f / viscousFluid(1.0f);
            VISCOUS_FLUID_NORMALIZE = fViscousFluid;
            VISCOUS_FLUID_OFFSET = 1.0f - (fViscousFluid * viscousFluid(1.0f));
        }

        private static float viscousFluid(float f2) {
            float f3 = f2 * VISCOUS_FLUID_SCALE;
            return f3 < 1.0f ? f3 - (1.0f - ((float) Math.exp(-f3))) : android.accessibilityservice.c.a(1.0f, (float) Math.exp(1.0f - f3), 0.63212055f, 0.36787945f);
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float fViscousFluid = VISCOUS_FLUID_NORMALIZE * viscousFluid(f2);
            return fViscousFluid > 0.0f ? fViscousFluid + VISCOUS_FLUID_OFFSET : fViscousFluid;
        }
    }

    static {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12 = 0.0f;
        float f13 = 0.0f;
        for (int i2 = 0; i2 < 100; i2++) {
            float f14 = i2 / 100.0f;
            float f15 = 1.0f;
            while (true) {
                f2 = 2.0f;
                f3 = ((f15 - f12) / 2.0f) + f12;
                f4 = 3.0f;
                f5 = 1.0f - f3;
                f6 = f3 * 3.0f * f5;
                f7 = f3 * f3 * f3;
                float f16 = (((f3 * P2) + (f5 * P1)) * f6) + f7;
                if (Math.abs(f16 - f14) < 1.0E-5d) {
                    break;
                } else if (f16 > f14) {
                    f15 = f3;
                } else {
                    f12 = f3;
                }
            }
            SPLINE_POSITION[i2] = (((f5 * 0.5f) + f3) * f6) + f7;
            float f17 = 1.0f;
            while (true) {
                f8 = ((f17 - f13) / f2) + f13;
                f9 = 1.0f - f8;
                f10 = f8 * f4 * f9;
                f11 = f8 * f8 * f8;
                float f18 = (((f9 * 0.5f) + f8) * f10) + f11;
                if (Math.abs(f18 - f14) < 1.0E-5d) {
                    break;
                }
                if (f18 > f14) {
                    f17 = f8;
                } else {
                    f13 = f8;
                }
                f2 = 2.0f;
                f4 = 3.0f;
            }
            SPLINE_TIME[i2] = (((f8 * P2) + (f9 * P1)) * f10) + f11;
        }
        float[] fArr = SPLINE_POSITION;
        SPLINE_TIME[100] = 1.0f;
        fArr[100] = 1.0f;
    }

    public Scroller(Context context) {
        this(context, null);
    }

    private float computeDeceleration(float f2) {
        return this.mPpi * 386.0878f * f2;
    }

    private double getSplineDeceleration(float f2) {
        return Math.log((Math.abs(f2) * INFLEXION) / (this.mFlingFriction * this.mPhysicalCoeff));
    }

    private double getSplineFlingDistance(float f2) {
        double splineDeceleration = getSplineDeceleration(f2);
        float f3 = DECELERATION_RATE;
        return Math.exp((((double) f3) / (((double) f3) - 1.0d)) * splineDeceleration) * ((double) (this.mFlingFriction * this.mPhysicalCoeff));
    }

    private int getSplineFlingDuration(float f2) {
        return (int) (Math.exp(getSplineDeceleration(f2) / (((double) DECELERATION_RATE) - 1.0d)) * 1000.0d);
    }

    public void abortAnimation() {
        this.mCurrX = this.mFinalX;
        this.mCurrY = this.mFinalY;
        this.mFinished = true;
    }

    public boolean computeScrollOffset() {
        float fA;
        float f2;
        if (this.mFinished) {
            return false;
        }
        int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
        int i2 = this.mDuration;
        if (iCurrentAnimationTimeMillis < i2) {
            int i3 = this.mMode;
            if (i3 == 0) {
                float interpolation = this.mInterpolator.getInterpolation(iCurrentAnimationTimeMillis * this.mDurationReciprocal);
                this.mCurrX = Math.round(this.mDeltaX * interpolation) + this.mStartX;
                this.mCurrY = Math.round(interpolation * this.mDeltaY) + this.mStartY;
            } else if (i3 == 1) {
                float f3 = iCurrentAnimationTimeMillis / i2;
                int i4 = (int) (f3 * 100.0f);
                if (i4 < 100) {
                    float f4 = i4 / 100.0f;
                    int i5 = i4 + 1;
                    float[] fArr = SPLINE_POSITION;
                    float f5 = fArr[i4];
                    f2 = (fArr[i5] - f5) / ((i5 / 100.0f) - f4);
                    fA = android.accessibilityservice.c.a(f3, f4, f2, f5);
                } else {
                    fA = 1.0f;
                    f2 = 0.0f;
                }
                this.mCurrVelocity = ((f2 * this.mDistance) / i2) * 1000.0f;
                int i6 = this.mStartX;
                int iRound = Math.round((this.mFinalX - i6) * fA) + i6;
                this.mCurrX = iRound;
                int iMin = Math.min(iRound, this.mMaxX);
                this.mCurrX = iMin;
                this.mCurrX = Math.max(iMin, this.mMinX);
                int i7 = this.mStartY;
                int iRound2 = Math.round(fA * (this.mFinalY - i7)) + i7;
                this.mCurrY = iRound2;
                int iMin2 = Math.min(iRound2, this.mMaxY);
                this.mCurrY = iMin2;
                int iMax = Math.max(iMin2, this.mMinY);
                this.mCurrY = iMax;
                if (this.mCurrX == this.mFinalX && iMax == this.mFinalY) {
                    this.mFinished = true;
                }
            }
        } else {
            this.mCurrX = this.mFinalX;
            this.mCurrY = this.mFinalY;
            this.mFinished = true;
        }
        return true;
    }

    public void extendDuration(int i2) {
        int iTimePassed = timePassed() + i2;
        this.mDuration = iTimePassed;
        this.mDurationReciprocal = 1.0f / iTimePassed;
        this.mFinished = false;
    }

    public void fling(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (this.mFlywheel && !this.mFinished) {
            float currVelocity = getCurrVelocity();
            float f2 = this.mFinalX - this.mStartX;
            float f3 = this.mFinalY - this.mStartY;
            float fHypot = (float) Math.hypot(f2, f3);
            float f4 = (f2 / fHypot) * currVelocity;
            float f5 = (f3 / fHypot) * currVelocity;
            float f6 = i4;
            if (Math.signum(f6) == Math.signum(f4)) {
                float f7 = i5;
                if (Math.signum(f7) == Math.signum(f5)) {
                    i4 = (int) (f6 + f4);
                    i5 = (int) (f7 + f5);
                }
            }
        }
        this.mMode = 1;
        this.mFinished = false;
        float fHypot2 = (float) Math.hypot(i4, i5);
        this.mVelocity = fHypot2;
        this.mDuration = getSplineFlingDuration(fHypot2);
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mStartX = i2;
        this.mStartY = i3;
        float f8 = fHypot2 == 0.0f ? 1.0f : i4 / fHypot2;
        float f9 = fHypot2 != 0.0f ? i5 / fHypot2 : 1.0f;
        double splineFlingDistance = getSplineFlingDistance(fHypot2);
        this.mDistance = (int) (((double) Math.signum(fHypot2)) * splineFlingDistance);
        this.mMinX = i6;
        this.mMaxX = i7;
        this.mMinY = i8;
        this.mMaxY = i9;
        int iRound = i2 + ((int) Math.round(((double) f8) * splineFlingDistance));
        this.mFinalX = iRound;
        int iMin = Math.min(iRound, this.mMaxX);
        this.mFinalX = iMin;
        this.mFinalX = Math.max(iMin, this.mMinX);
        int iRound2 = i3 + ((int) Math.round(splineFlingDistance * ((double) f9)));
        this.mFinalY = iRound2;
        int iMin2 = Math.min(iRound2, this.mMaxY);
        this.mFinalY = iMin2;
        this.mFinalY = Math.max(iMin2, this.mMinY);
    }

    public final void forceFinished(boolean z2) {
        this.mFinished = z2;
    }

    public float getCurrVelocity() {
        return this.mMode == 1 ? this.mCurrVelocity : this.mVelocity - ((this.mDeceleration * timePassed()) / 2000.0f);
    }

    public final int getCurrX() {
        return this.mCurrX;
    }

    public final int getCurrY() {
        return this.mCurrY;
    }

    public final int getDuration() {
        return this.mDuration;
    }

    public final int getFinalX() {
        return this.mFinalX;
    }

    public final int getFinalY() {
        return this.mFinalY;
    }

    public final int getStartX() {
        return this.mStartX;
    }

    public final int getStartY() {
        return this.mStartY;
    }

    public final boolean isFinished() {
        return this.mFinished;
    }

    public boolean isScrollingInDirection(float f2, float f3) {
        return !this.mFinished && Math.signum(f2) == Math.signum((float) (this.mFinalX - this.mStartX)) && Math.signum(f3) == Math.signum((float) (this.mFinalY - this.mStartY));
    }

    public void setFinalX(int i2) {
        this.mFinalX = i2;
        this.mDeltaX = i2 - this.mStartX;
        this.mFinished = false;
    }

    public void setFinalY(int i2) {
        this.mFinalY = i2;
        this.mDeltaY = i2 - this.mStartY;
        this.mFinished = false;
    }

    public final void setFriction(float f2) {
        this.mDeceleration = computeDeceleration(f2);
        this.mFlingFriction = f2;
    }

    public void startScroll(int i2, int i3, int i4, int i5) {
        startScroll(i2, i3, i4, i5, 250);
    }

    public int timePassed() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
    }

    public Scroller(Context context, Interpolator interpolator) {
        this(context, interpolator, context.getApplicationInfo().targetSdkVersion >= 11);
    }

    public void startScroll(int i2, int i3, int i4, int i5, int i6) {
        this.mMode = 0;
        this.mFinished = false;
        this.mDuration = i6;
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mStartX = i2;
        this.mStartY = i3;
        this.mFinalX = i2 + i4;
        this.mFinalY = i3 + i5;
        this.mDeltaX = i4;
        this.mDeltaY = i5;
        this.mDurationReciprocal = 1.0f / this.mDuration;
    }

    public Scroller(Context context, Interpolator interpolator, boolean z2) {
        this.mFlingFriction = ViewConfiguration.getScrollFriction();
        this.mFinished = true;
        if (interpolator == null) {
            this.mInterpolator = new ViscousFluidInterpolator();
        } else {
            this.mInterpolator = interpolator;
        }
        this.mPpi = context.getResources().getDisplayMetrics().density * 160.0f;
        this.mDeceleration = computeDeceleration(ViewConfiguration.getScrollFriction());
        this.mFlywheel = z2;
        this.mPhysicalCoeff = computeDeceleration(0.84f);
    }
}
