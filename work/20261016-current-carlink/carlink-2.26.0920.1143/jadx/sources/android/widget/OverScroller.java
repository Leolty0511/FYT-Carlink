package android.widget;

import android.content.Context;
import android.util.Log;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
public class OverScroller {
    private static final int DEFAULT_DURATION = 250;
    private static final int FLING_MODE = 1;
    private static final int SCROLL_MODE = 0;
    private final boolean mFlywheel;
    private Interpolator mInterpolator;
    private int mMode;
    private final SplineOverScroller mScrollerX;
    private final SplineOverScroller mScrollerY;

    public static class SplineOverScroller {
        private static final int BALLISTIC = 2;
        private static final int CUBIC = 1;
        private static final float END_TENSION = 1.0f;
        private static final float GRAVITY = 2000.0f;
        private static final float INFLEXION = 0.35f;
        private static final int NB_SAMPLES = 100;
        private static final float P1 = 0.175f;
        private static final float P2 = 0.35000002f;
        private static final int SPLINE = 0;
        private static final float START_TENSION = 0.5f;
        private float mCurrVelocity;
        private int mCurrentPosition;
        private float mDeceleration;
        private int mDuration;
        private int mFinal;
        private int mOver;
        private float mPhysicalCoeff;
        private int mSplineDistance;
        private int mSplineDuration;
        private int mStart;
        private long mStartTime;
        private int mVelocity;
        private static float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
        private static final float[] SPLINE_POSITION = new float[101];
        private static final float[] SPLINE_TIME = new float[101];
        private float mFlingFriction = ViewConfiguration.getScrollFriction();
        private int mState = 0;
        private boolean mFinished = true;

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

        public SplineOverScroller(Context context) {
            this.mPhysicalCoeff = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        }

        private void adjustDuration(int i2, int i3, int i4) {
            float fAbs = Math.abs((i4 - i2) / (i3 - i2));
            int i5 = (int) (fAbs * 100.0f);
            if (i5 < 100) {
                float f2 = i5 / 100.0f;
                int i6 = i5 + 1;
                float[] fArr = SPLINE_TIME;
                float f3 = fArr[i5];
                this.mDuration = (int) (this.mDuration * android.accessibilityservice.c.a(fArr[i6], f3, (fAbs - f2) / ((i6 / 100.0f) - f2), f3));
            }
        }

        private void fitOnBounceCurve(int i2, int i3, int i4) {
            float f2 = this.mDeceleration;
            float f3 = (-i4) / f2;
            float f4 = i4;
            float fSqrt = (float) Math.sqrt((((double) ((((f4 * f4) / 2.0f) / Math.abs(f2)) + Math.abs(i3 - i2))) * 2.0d) / ((double) Math.abs(this.mDeceleration)));
            this.mStartTime -= (long) ((int) ((fSqrt - f3) * 1000.0f));
            this.mStart = i3;
            this.mCurrentPosition = i3;
            this.mVelocity = (int) ((-this.mDeceleration) * fSqrt);
        }

        private static float getDeceleration(int i2) {
            if (i2 > 0) {
                return -2000.0f;
            }
            return GRAVITY;
        }

        private double getSplineDeceleration(int i2) {
            return Math.log((Math.abs(i2) * INFLEXION) / (this.mFlingFriction * this.mPhysicalCoeff));
        }

        private double getSplineFlingDistance(int i2) {
            double splineDeceleration = getSplineDeceleration(i2);
            float f2 = DECELERATION_RATE;
            return Math.exp((((double) f2) / (((double) f2) - 1.0d)) * splineDeceleration) * ((double) (this.mFlingFriction * this.mPhysicalCoeff));
        }

        private int getSplineFlingDuration(int i2) {
            return (int) (Math.exp(getSplineDeceleration(i2) / (((double) DECELERATION_RATE) - 1.0d)) * 1000.0d);
        }

        private void onEdgeReached() {
            int i2 = this.mVelocity;
            float f2 = i2 * i2;
            float fAbs = f2 / (Math.abs(this.mDeceleration) * 2.0f);
            float fSignum = Math.signum(this.mVelocity);
            int i3 = this.mOver;
            if (fAbs > i3) {
                this.mDeceleration = ((-fSignum) * f2) / (i3 * 2.0f);
                fAbs = i3;
            }
            this.mOver = (int) fAbs;
            this.mState = 2;
            int i4 = this.mStart;
            int i5 = this.mVelocity;
            if (i5 <= 0) {
                fAbs = -fAbs;
            }
            this.mFinal = i4 + ((int) fAbs);
            this.mDuration = -((int) ((i5 * 1000.0f) / this.mDeceleration));
        }

        private void startAfterEdge(int i2, int i3, int i4, int i5) {
            if (i2 > i3 && i2 < i4) {
                Log.e("OverScroller", "startAfterEdge called from a valid position");
                this.mFinished = true;
                return;
            }
            boolean z2 = i2 > i4;
            int i6 = z2 ? i4 : i3;
            int i7 = i2 - i6;
            if (i7 * i5 >= 0) {
                startBounceAfterEdge(i2, i6, i5);
            } else if (getSplineFlingDistance(i5) > Math.abs(i7)) {
                fling(i2, i5, z2 ? i3 : i2, z2 ? i2 : i4, this.mOver);
            } else {
                startSpringback(i2, i6, i5);
            }
        }

        private void startBounceAfterEdge(int i2, int i3, int i4) {
            this.mDeceleration = getDeceleration(i4 == 0 ? i2 - i3 : i4);
            fitOnBounceCurve(i2, i3, i4);
            onEdgeReached();
        }

        private void startSpringback(int i2, int i3, int i4) {
            this.mFinished = false;
            this.mState = 1;
            this.mStart = i2;
            this.mCurrentPosition = i2;
            this.mFinal = i3;
            int i5 = i2 - i3;
            this.mDeceleration = getDeceleration(i5);
            this.mVelocity = -i5;
            this.mOver = Math.abs(i5);
            this.mDuration = (int) (Math.sqrt((((double) i5) * (-2.0d)) / ((double) this.mDeceleration)) * 1000.0d);
        }

        public boolean continueWhenFinished() {
            int i2 = this.mState;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                if (i2 == 2) {
                    this.mStartTime += (long) this.mDuration;
                    startSpringback(this.mFinal, this.mStart, 0);
                }
            } else {
                if (this.mDuration >= this.mSplineDuration) {
                    return false;
                }
                int i3 = this.mFinal;
                this.mStart = i3;
                this.mCurrentPosition = i3;
                int i4 = (int) this.mCurrVelocity;
                this.mVelocity = i4;
                this.mDeceleration = getDeceleration(i4);
                this.mStartTime += (long) this.mDuration;
                onEdgeReached();
            }
            update();
            return true;
        }

        public void extendDuration(int i2) {
            this.mDuration = ((int) (AnimationUtils.currentAnimationTimeMillis() - this.mStartTime)) + i2;
            this.mFinished = false;
        }

        public void finish() {
            this.mCurrentPosition = this.mFinal;
            this.mFinished = true;
        }

        public void fling(int i2, int i3, int i4, int i5, int i6) {
            double splineFlingDistance;
            this.mOver = i6;
            this.mFinished = false;
            this.mVelocity = i3;
            float f2 = i3;
            this.mCurrVelocity = f2;
            this.mSplineDuration = 0;
            this.mDuration = 0;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mStart = i2;
            this.mCurrentPosition = i2;
            if (i2 > i5 || i2 < i4) {
                startAfterEdge(i2, i4, i5, i3);
                return;
            }
            this.mState = 0;
            if (i3 != 0) {
                int splineFlingDuration = getSplineFlingDuration(i3);
                this.mSplineDuration = splineFlingDuration;
                this.mDuration = splineFlingDuration;
                splineFlingDistance = getSplineFlingDistance(i3);
            } else {
                splineFlingDistance = 0.0d;
            }
            int iSignum = (int) (splineFlingDistance * ((double) Math.signum(f2)));
            this.mSplineDistance = iSignum;
            int i7 = i2 + iSignum;
            this.mFinal = i7;
            if (i7 < i4) {
                adjustDuration(this.mStart, i7, i4);
                this.mFinal = i4;
            }
            int i8 = this.mFinal;
            if (i8 > i5) {
                adjustDuration(this.mStart, i8, i5);
                this.mFinal = i5;
            }
        }

        public void notifyEdgeReached(int i2, int i3, int i4) {
            if (this.mState == 0) {
                this.mOver = i4;
                this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
                startAfterEdge(i2, i3, i3, (int) this.mCurrVelocity);
            }
        }

        public void setFinalPosition(int i2) {
            this.mFinal = i2;
            this.mFinished = false;
        }

        public void setFriction(float f2) {
            this.mFlingFriction = f2;
        }

        public boolean springback(int i2, int i3, int i4) {
            this.mFinished = true;
            this.mFinal = i2;
            this.mStart = i2;
            this.mCurrentPosition = i2;
            this.mVelocity = 0;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = 0;
            if (i2 < i3) {
                startSpringback(i2, i3, 0);
            } else if (i2 > i4) {
                startSpringback(i2, i4, 0);
            }
            return !this.mFinished;
        }

        public void startScroll(int i2, int i3, int i4) {
            this.mFinished = false;
            this.mStart = i2;
            this.mCurrentPosition = i2;
            this.mFinal = i2 + i3;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mDuration = i4;
            this.mDeceleration = 0.0f;
            this.mVelocity = 0;
        }

        public boolean update() {
            float fA;
            float f2;
            double d2;
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
            if (jCurrentAnimationTimeMillis == 0) {
                return this.mDuration > 0;
            }
            int i2 = this.mDuration;
            if (jCurrentAnimationTimeMillis > i2) {
                return false;
            }
            int i3 = this.mState;
            if (i3 == 0) {
                int i4 = this.mSplineDuration;
                float f3 = jCurrentAnimationTimeMillis / i4;
                int i5 = (int) (f3 * 100.0f);
                if (i5 < 100) {
                    float f4 = i5 / 100.0f;
                    int i6 = i5 + 1;
                    float[] fArr = SPLINE_POSITION;
                    float f5 = fArr[i5];
                    f2 = (fArr[i6] - f5) / ((i6 / 100.0f) - f4);
                    fA = android.accessibilityservice.c.a(f3, f4, f2, f5);
                } else {
                    fA = 1.0f;
                    f2 = 0.0f;
                }
                int i7 = this.mSplineDistance;
                this.mCurrVelocity = ((f2 * i7) / i4) * 1000.0f;
                d2 = fA * i7;
            } else if (i3 == 1) {
                float f6 = jCurrentAnimationTimeMillis / i2;
                float f7 = f6 * f6;
                float fSignum = Math.signum(this.mVelocity);
                int i8 = this.mOver;
                this.mCurrVelocity = ((-f6) + f7) * fSignum * i8 * 6.0f;
                d2 = ((3.0f * f7) - ((2.0f * f6) * f7)) * i8 * fSignum;
            } else if (i3 != 2) {
                d2 = 0.0d;
            } else {
                float f8 = jCurrentAnimationTimeMillis / 1000.0f;
                int i9 = this.mVelocity;
                float f9 = this.mDeceleration;
                this.mCurrVelocity = (f9 * f8) + i9;
                d2 = (((f9 * f8) * f8) / 2.0f) + (i9 * f8);
            }
            this.mCurrentPosition = this.mStart + ((int) Math.round(d2));
            return true;
        }

        public void updateScroll(float f2) {
            int i2 = this.mStart;
            this.mCurrentPosition = Math.round(f2 * (this.mFinal - i2)) + i2;
        }
    }

    public OverScroller(Context context) {
        this(context, null);
    }

    public void abortAnimation() {
        this.mScrollerX.finish();
        this.mScrollerY.finish();
    }

    public boolean computeScrollOffset() {
        if (isFinished()) {
            return false;
        }
        int i2 = this.mMode;
        if (i2 == 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mScrollerX.mStartTime;
            int i3 = this.mScrollerX.mDuration;
            if (jCurrentAnimationTimeMillis < i3) {
                float interpolation = this.mInterpolator.getInterpolation(jCurrentAnimationTimeMillis / i3);
                this.mScrollerX.updateScroll(interpolation);
                this.mScrollerY.updateScroll(interpolation);
            } else {
                abortAnimation();
            }
        } else if (i2 == 1) {
            if (!this.mScrollerX.mFinished && !this.mScrollerX.update() && !this.mScrollerX.continueWhenFinished()) {
                this.mScrollerX.finish();
            }
            if (!this.mScrollerY.mFinished && !this.mScrollerY.update() && !this.mScrollerY.continueWhenFinished()) {
                this.mScrollerY.finish();
            }
        }
        return true;
    }

    @Deprecated
    public void extendDuration(int i2) {
        this.mScrollerX.extendDuration(i2);
        this.mScrollerY.extendDuration(i2);
    }

    public void fling(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        fling(i2, i3, i4, i5, i6, i7, i8, i9, 0, 0);
    }

    public final void forceFinished(boolean z2) {
        this.mScrollerX.mFinished = this.mScrollerY.mFinished = z2;
    }

    public float getCurrVelocity() {
        return (float) Math.hypot(this.mScrollerX.mCurrVelocity, this.mScrollerY.mCurrVelocity);
    }

    public final int getCurrX() {
        return this.mScrollerX.mCurrentPosition;
    }

    public final int getCurrY() {
        return this.mScrollerY.mCurrentPosition;
    }

    @Deprecated
    public final int getDuration() {
        return Math.max(this.mScrollerX.mDuration, this.mScrollerY.mDuration);
    }

    public final int getFinalX() {
        return this.mScrollerX.mFinal;
    }

    public final int getFinalY() {
        return this.mScrollerY.mFinal;
    }

    public final int getStartX() {
        return this.mScrollerX.mStart;
    }

    public final int getStartY() {
        return this.mScrollerY.mStart;
    }

    public final boolean isFinished() {
        return this.mScrollerX.mFinished && this.mScrollerY.mFinished;
    }

    public boolean isOverScrolled() {
        return ((this.mScrollerX.mFinished || this.mScrollerX.mState == 0) && (this.mScrollerY.mFinished || this.mScrollerY.mState == 0)) ? false : true;
    }

    public boolean isScrollingInDirection(float f2, float f3) {
        return !isFinished() && Math.signum(f2) == Math.signum((float) (this.mScrollerX.mFinal - this.mScrollerX.mStart)) && Math.signum(f3) == Math.signum((float) (this.mScrollerY.mFinal - this.mScrollerY.mStart));
    }

    public void notifyHorizontalEdgeReached(int i2, int i3, int i4) {
        this.mScrollerX.notifyEdgeReached(i2, i3, i4);
    }

    public void notifyVerticalEdgeReached(int i2, int i3, int i4) {
        this.mScrollerY.notifyEdgeReached(i2, i3, i4);
    }

    @Deprecated
    public void setFinalX(int i2) {
        this.mScrollerX.setFinalPosition(i2);
    }

    @Deprecated
    public void setFinalY(int i2) {
        this.mScrollerY.setFinalPosition(i2);
    }

    public final void setFriction(float f2) {
        this.mScrollerX.setFriction(f2);
        this.mScrollerY.setFriction(f2);
    }

    public void setInterpolator(Interpolator interpolator) {
        if (interpolator == null) {
            this.mInterpolator = new Scroller.ViscousFluidInterpolator();
        } else {
            this.mInterpolator = interpolator;
        }
    }

    public boolean springBack(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mMode = 1;
        return this.mScrollerX.springback(i2, i4, i5) || this.mScrollerY.springback(i3, i6, i7);
    }

    public void startScroll(int i2, int i3, int i4, int i5) {
        startScroll(i2, i3, i4, i5, 250);
    }

    public int timePassed() {
        return (int) (AnimationUtils.currentAnimationTimeMillis() - Math.min(this.mScrollerX.mStartTime, this.mScrollerY.mStartTime));
    }

    public OverScroller(Context context, Interpolator interpolator) {
        this(context, interpolator, true);
    }

    public void fling(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        if (this.mFlywheel && !isFinished()) {
            float f2 = this.mScrollerX.mCurrVelocity;
            float f3 = this.mScrollerY.mCurrVelocity;
            i12 = i4;
            float f4 = i12;
            if (Math.signum(f4) == Math.signum(f2)) {
                i13 = i5;
                float f5 = i13;
                if (Math.signum(f5) == Math.signum(f3)) {
                    i14 = (int) (f5 + f3);
                    i15 = (int) (f4 + f2);
                }
                this.mMode = 1;
                this.mScrollerX.fling(i2, i15, i6, i7, i10);
                this.mScrollerY.fling(i3, i14, i8, i9, i11);
            }
            i14 = i13;
            i15 = i12;
            this.mMode = 1;
            this.mScrollerX.fling(i2, i15, i6, i7, i10);
            this.mScrollerY.fling(i3, i14, i8, i9, i11);
        }
        i12 = i4;
        i13 = i5;
        i14 = i13;
        i15 = i12;
        this.mMode = 1;
        this.mScrollerX.fling(i2, i15, i6, i7, i10);
        this.mScrollerY.fling(i3, i14, i8, i9, i11);
    }

    public void startScroll(int i2, int i3, int i4, int i5, int i6) {
        this.mMode = 0;
        this.mScrollerX.startScroll(i2, i4, i6);
        this.mScrollerY.startScroll(i3, i5, i6);
    }

    public OverScroller(Context context, Interpolator interpolator, boolean z2) {
        if (interpolator == null) {
            this.mInterpolator = new Scroller.ViscousFluidInterpolator();
        } else {
            this.mInterpolator = interpolator;
        }
        this.mFlywheel = z2;
        this.mScrollerX = new SplineOverScroller(context);
        this.mScrollerY = new SplineOverScroller(context);
    }

    @Deprecated
    public OverScroller(Context context, Interpolator interpolator, float f2, float f3) {
        this(context, interpolator, true);
    }

    @Deprecated
    public OverScroller(Context context, Interpolator interpolator, float f2, float f3, boolean z2) {
        this(context, interpolator, z2);
    }
}
