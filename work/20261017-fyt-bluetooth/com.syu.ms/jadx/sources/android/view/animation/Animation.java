package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Handler;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.TypedValue;
import dalvik.system.CloseGuard;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class Animation implements Cloneable {
    public static final int ABSOLUTE = 0;
    public static final int INFINITE = -1;
    public static final int RELATIVE_TO_PARENT = 2;
    public static final int RELATIVE_TO_SELF = 1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    public static final int START_ON_FIRST_FRAME = -1;
    private static final boolean USE_CLOSEGUARD = SystemProperties.getBoolean("log.closeguard.Animation", false);
    public static final int ZORDER_BOTTOM = -1;
    public static final int ZORDER_NORMAL = 0;
    public static final int ZORDER_TOP = 1;
    private int mBackgroundColor;
    public long mDuration;
    public Interpolator mInterpolator;
    public AnimationListener mListener;
    private Handler mListenerHandler;
    private Runnable mOnEnd;
    private Runnable mOnRepeat;
    private Runnable mOnStart;
    public long mStartOffset;
    private int mZAdjustment;
    public boolean mEnded = false;
    public boolean mStarted = false;
    public boolean mCycleFlip = false;
    public boolean mInitialized = false;
    public boolean mFillBefore = true;
    public boolean mFillAfter = false;
    public boolean mFillEnabled = false;
    public long mStartTime = -1;
    public int mRepeatCount = 0;
    public int mRepeated = 0;
    public int mRepeatMode = 1;
    private float mScaleFactor = 1.0f;
    private boolean mDetachWallpaper = false;
    private boolean mMore = true;
    private boolean mOneMoreTime = true;
    public RectF mPreviousRegion = new RectF();
    public RectF mRegion = new RectF();
    public Transformation mTransformation = new Transformation();
    public Transformation mPreviousTransformation = new Transformation();
    private final CloseGuard guard = CloseGuard.get();

    public interface AnimationListener {
        void onAnimationEnd(Animation animation);

        void onAnimationRepeat(Animation animation);

        void onAnimationStart(Animation animation);
    }

    public static class Description {
        public int type;
        public float value;

        public static Description parseValue(TypedValue typedValue) {
            Description description = new Description();
            if (typedValue == null) {
                description.type = 0;
                description.value = 0.0f;
            } else {
                int i2 = typedValue.type;
                if (i2 == 6) {
                    int i3 = typedValue.data;
                    description.type = (i3 & 15) == 1 ? 2 : 1;
                    description.value = TypedValue.complexToFloat(i3);
                    return description;
                }
                if (i2 == 4) {
                    description.type = 0;
                    description.value = typedValue.getFloat();
                    return description;
                }
                if (i2 >= 16 && i2 <= 31) {
                    description.type = 0;
                    description.value = typedValue.data;
                    return description;
                }
            }
            description.type = 0;
            description.value = 0.0f;
            return description;
        }
    }

    public Animation() {
        ensureInterpolator();
    }

    private void fireAnimationEnd() {
        AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            Handler handler = this.mListenerHandler;
            if (handler == null) {
                animationListener.onAnimationEnd(this);
            } else {
                handler.postAtFrontOfQueue(this.mOnEnd);
            }
        }
    }

    private void fireAnimationRepeat() {
        AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            Handler handler = this.mListenerHandler;
            if (handler == null) {
                animationListener.onAnimationRepeat(this);
            } else {
                handler.postAtFrontOfQueue(this.mOnRepeat);
            }
        }
    }

    private void fireAnimationStart() {
        AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            Handler handler = this.mListenerHandler;
            if (handler == null) {
                animationListener.onAnimationStart(this);
            } else {
                handler.postAtFrontOfQueue(this.mOnStart);
            }
        }
    }

    public void applyTransformation(float f2, Transformation transformation) {
    }

    public void cancel() {
        if (this.mStarted && !this.mEnded) {
            fireAnimationEnd();
            this.mEnded = true;
            this.guard.close();
        }
        this.mStartTime = Long.MIN_VALUE;
        this.mOneMoreTime = false;
        this.mMore = false;
    }

    public long computeDurationHint() {
        return (getStartOffset() + getDuration()) * ((long) (getRepeatCount() + 1));
    }

    public void detach() {
        if (!this.mStarted || this.mEnded) {
            return;
        }
        this.mEnded = true;
        this.guard.close();
        fireAnimationEnd();
    }

    public void ensureInterpolator() {
        if (this.mInterpolator == null) {
            this.mInterpolator = new AccelerateDecelerateInterpolator();
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.guard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
        } finally {
            super.finalize();
        }
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public boolean getDetachWallpaper() {
        return this.mDetachWallpaper;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public boolean getFillAfter() {
        return this.mFillAfter;
    }

    public boolean getFillBefore() {
        return this.mFillBefore;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public void getInvalidateRegion(int i2, int i3, int i4, int i5, RectF rectF, Transformation transformation) {
        RectF rectF2 = this.mRegion;
        RectF rectF3 = this.mPreviousRegion;
        rectF.set(i2, i3, i4, i5);
        transformation.getMatrix().mapRect(rectF);
        rectF.inset(-1.0f, -1.0f);
        rectF2.set(rectF);
        rectF.union(rectF3);
        rectF3.set(rectF2);
        Transformation transformation2 = this.mTransformation;
        Transformation transformation3 = this.mPreviousTransformation;
        transformation2.set(transformation);
        transformation.set(transformation3);
        transformation3.set(transformation2);
    }

    public int getRepeatCount() {
        return this.mRepeatCount;
    }

    public int getRepeatMode() {
        return this.mRepeatMode;
    }

    public float getScaleFactor() {
        return this.mScaleFactor;
    }

    public long getStartOffset() {
        return this.mStartOffset;
    }

    public long getStartTime() {
        return this.mStartTime;
    }

    public boolean getTransformation(long j2, Transformation transformation) {
        float fMax;
        if (this.mStartTime == -1) {
            this.mStartTime = j2;
        }
        long startOffset = getStartOffset();
        long j3 = this.mDuration;
        if (j3 != 0) {
            fMax = (j2 - (this.mStartTime + startOffset)) / j3;
        } else {
            fMax = j2 < this.mStartTime ? 0.0f : 1.0f;
        }
        boolean z2 = fMax >= 1.0f;
        this.mMore = !z2;
        if (!this.mFillEnabled) {
            fMax = Math.max(Math.min(fMax, 1.0f), 0.0f);
        }
        if ((fMax >= 0.0f || this.mFillBefore) && (fMax <= 1.0f || this.mFillAfter)) {
            if (!this.mStarted) {
                fireAnimationStart();
                this.mStarted = true;
                if (USE_CLOSEGUARD) {
                    this.guard.open("cancel or detach or getTransformation");
                }
            }
            if (this.mFillEnabled) {
                fMax = Math.max(Math.min(fMax, 1.0f), 0.0f);
            }
            if (this.mCycleFlip) {
                fMax = 1.0f - fMax;
            }
            applyTransformation(this.mInterpolator.getInterpolation(fMax), transformation);
        }
        if (z2) {
            int i2 = this.mRepeatCount;
            int i3 = this.mRepeated;
            if (i2 != i3) {
                if (i2 > 0) {
                    this.mRepeated = i3 + 1;
                }
                if (this.mRepeatMode == 2) {
                    this.mCycleFlip = !this.mCycleFlip;
                }
                this.mStartTime = -1L;
                this.mMore = true;
                fireAnimationRepeat();
            } else if (!this.mEnded) {
                this.mEnded = true;
                this.guard.close();
                fireAnimationEnd();
            }
        }
        boolean z3 = this.mMore;
        if (z3 || !this.mOneMoreTime) {
            return z3;
        }
        this.mOneMoreTime = false;
        return true;
    }

    public int getZAdjustment() {
        return this.mZAdjustment;
    }

    public boolean hasAlpha() {
        return false;
    }

    public boolean hasEnded() {
        return this.mEnded;
    }

    public boolean hasStarted() {
        return this.mStarted;
    }

    public void initialize(int i2, int i3, int i4, int i5) {
        reset();
        this.mInitialized = true;
    }

    public void initializeInvalidateRegion(int i2, int i3, int i4, int i5) {
        RectF rectF = this.mPreviousRegion;
        rectF.set(i2, i3, i4, i5);
        rectF.inset(-1.0f, -1.0f);
        if (this.mFillBefore) {
            applyTransformation(this.mInterpolator.getInterpolation(0.0f), this.mPreviousTransformation);
        }
    }

    public boolean isFillEnabled() {
        return this.mFillEnabled;
    }

    public boolean isInitialized() {
        return this.mInitialized;
    }

    public void reset() {
        this.mPreviousRegion.setEmpty();
        this.mPreviousTransformation.clear();
        this.mInitialized = false;
        this.mCycleFlip = false;
        this.mRepeated = 0;
        this.mMore = true;
        this.mOneMoreTime = true;
        this.mListenerHandler = null;
    }

    public float resolveSize(int i2, float f2, int i3, int i4) {
        float f3;
        if (i2 == 1) {
            f3 = i3;
        } else {
            if (i2 != 2) {
                return f2;
            }
            f3 = i4;
        }
        return f3 * f2;
    }

    public void restrictDuration(long j2) {
        long j3 = this.mStartOffset;
        if (j3 > j2) {
            this.mStartOffset = j2;
            this.mDuration = 0L;
            this.mRepeatCount = 0;
            return;
        }
        long j4 = this.mDuration + j3;
        if (j4 > j2) {
            this.mDuration = j2 - j3;
            j4 = j2;
        }
        if (this.mDuration <= 0) {
            this.mDuration = 0L;
            this.mRepeatCount = 0;
            return;
        }
        int i2 = this.mRepeatCount;
        if (i2 < 0 || i2 > j2 || ((long) i2) * j4 > j2) {
            int i3 = ((int) (j2 / j4)) - 1;
            this.mRepeatCount = i3;
            if (i3 < 0) {
                this.mRepeatCount = 0;
            }
        }
    }

    public void scaleCurrentDuration(float f2) {
        this.mDuration = (long) (this.mDuration * f2);
        this.mStartOffset = (long) (this.mStartOffset * f2);
    }

    public void setAnimationListener(AnimationListener animationListener) {
        this.mListener = animationListener;
    }

    public void setBackgroundColor(int i2) {
        this.mBackgroundColor = i2;
    }

    public void setDetachWallpaper(boolean z2) {
        this.mDetachWallpaper = z2;
    }

    public void setDuration(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("Animation duration cannot be negative");
        }
        this.mDuration = j2;
    }

    public void setFillAfter(boolean z2) {
        this.mFillAfter = z2;
    }

    public void setFillBefore(boolean z2) {
        this.mFillBefore = z2;
    }

    public void setFillEnabled(boolean z2) {
        this.mFillEnabled = z2;
    }

    public void setInterpolator(Context context, int i2) {
        setInterpolator(AnimationUtils.loadInterpolator(context, i2));
    }

    public void setListenerHandler(Handler handler) {
        if (this.mListenerHandler == null) {
            this.mOnStart = new Runnable() { // from class: android.view.animation.Animation.1
                @Override // java.lang.Runnable
                public void run() {
                    Animation animation = Animation.this;
                    AnimationListener animationListener = animation.mListener;
                    if (animationListener != null) {
                        animationListener.onAnimationStart(animation);
                    }
                }
            };
            this.mOnRepeat = new Runnable() { // from class: android.view.animation.Animation.2
                @Override // java.lang.Runnable
                public void run() {
                    Animation animation = Animation.this;
                    AnimationListener animationListener = animation.mListener;
                    if (animationListener != null) {
                        animationListener.onAnimationRepeat(animation);
                    }
                }
            };
            this.mOnEnd = new Runnable() { // from class: android.view.animation.Animation.3
                @Override // java.lang.Runnable
                public void run() {
                    Animation animation = Animation.this;
                    AnimationListener animationListener = animation.mListener;
                    if (animationListener != null) {
                        animationListener.onAnimationEnd(animation);
                    }
                }
            };
        }
        this.mListenerHandler = handler;
    }

    public void setRepeatCount(int i2) {
        if (i2 < 0) {
            i2 = -1;
        }
        this.mRepeatCount = i2;
    }

    public void setRepeatMode(int i2) {
        this.mRepeatMode = i2;
    }

    public void setStartOffset(long j2) {
        this.mStartOffset = j2;
    }

    public void setStartTime(long j2) {
        this.mStartTime = j2;
        this.mEnded = false;
        this.mStarted = false;
        this.mCycleFlip = false;
        this.mRepeated = 0;
        this.mMore = true;
    }

    public void setZAdjustment(int i2) {
        this.mZAdjustment = i2;
    }

    public void start() {
        setStartTime(-1L);
    }

    public void startNow() {
        setStartTime(AnimationUtils.currentAnimationTimeMillis());
    }

    public boolean willChangeBounds() {
        return true;
    }

    public boolean willChangeTransformationMatrix() {
        return true;
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Animation mo19clone() {
        Animation animation = (Animation) super.clone();
        animation.mPreviousRegion = new RectF();
        animation.mRegion = new RectF();
        animation.mTransformation = new Transformation();
        animation.mPreviousTransformation = new Transformation();
        return animation;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public Animation(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.Animation);
        setDuration(typedArrayObtainStyledAttributes.getInt(2, 0));
        setStartOffset(typedArrayObtainStyledAttributes.getInt(5, 0));
        setFillEnabled(typedArrayObtainStyledAttributes.getBoolean(9, this.mFillEnabled));
        setFillBefore(typedArrayObtainStyledAttributes.getBoolean(3, this.mFillBefore));
        setFillAfter(typedArrayObtainStyledAttributes.getBoolean(4, this.mFillAfter));
        setRepeatCount(typedArrayObtainStyledAttributes.getInt(6, this.mRepeatCount));
        setRepeatMode(typedArrayObtainStyledAttributes.getInt(7, 1));
        setZAdjustment(typedArrayObtainStyledAttributes.getInt(8, 0));
        setBackgroundColor(typedArrayObtainStyledAttributes.getInt(0, 0));
        setDetachWallpaper(typedArrayObtainStyledAttributes.getBoolean(10, false));
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId > 0) {
            setInterpolator(context, resourceId);
        }
        ensureInterpolator();
    }

    public boolean getTransformation(long j2, Transformation transformation, float f2) {
        this.mScaleFactor = f2;
        return getTransformation(j2, transformation);
    }
}
