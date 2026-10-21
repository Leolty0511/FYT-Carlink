package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.net.LinkQualityInfo;
import android.util.AttributeSet;
import i.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AnimationSet extends Animation {
    private static final int PROPERTY_CHANGE_BOUNDS_MASK = 128;
    private static final int PROPERTY_DURATION_MASK = 32;
    private static final int PROPERTY_FILL_AFTER_MASK = 1;
    private static final int PROPERTY_FILL_BEFORE_MASK = 2;
    private static final int PROPERTY_MORPH_MATRIX_MASK = 64;
    private static final int PROPERTY_REPEAT_MODE_MASK = 4;
    private static final int PROPERTY_SHARE_INTERPOLATOR_MASK = 16;
    private static final int PROPERTY_START_OFFSET_MASK = 8;
    private ArrayList<Animation> mAnimations;
    private boolean mDirty;
    private int mFlags;
    private boolean mHasAlpha;
    private long mLastEnd;
    private long[] mStoredOffsets;
    private Transformation mTempTransformation;

    public AnimationSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFlags = 0;
        this.mAnimations = new ArrayList<>();
        this.mTempTransformation = new Transformation();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AnimationSet);
        setFlag(16, typedArrayObtainStyledAttributes.getBoolean(1, true));
        init();
        if (context.getApplicationInfo().targetSdkVersion >= 14) {
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                this.mFlags |= 32;
            }
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                this.mFlags = 2 | this.mFlags;
            }
            if (typedArrayObtainStyledAttributes.hasValue(3)) {
                this.mFlags |= 1;
            }
            if (typedArrayObtainStyledAttributes.hasValue(5)) {
                this.mFlags |= 4;
            }
            if (typedArrayObtainStyledAttributes.hasValue(4)) {
                this.mFlags |= 8;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void init() {
        this.mStartTime = 0L;
    }

    private void setFlag(int i2, boolean z2) {
        if (z2) {
            this.mFlags = i2 | this.mFlags;
        } else {
            this.mFlags = (~i2) & this.mFlags;
        }
    }

    public void addAnimation(Animation animation) {
        this.mAnimations.add(animation);
        if (((this.mFlags & 64) == 0) && animation.willChangeTransformationMatrix()) {
            this.mFlags |= 64;
        }
        if (((this.mFlags & 128) == 0) && animation.willChangeBounds()) {
            this.mFlags |= 128;
        }
        if ((this.mFlags & 32) == 32) {
            this.mLastEnd = this.mStartOffset + this.mDuration;
        } else if (this.mAnimations.size() == 1) {
            long startOffset = animation.getStartOffset() + animation.getDuration();
            this.mDuration = startOffset;
            this.mLastEnd = this.mStartOffset + startOffset;
        } else {
            long jMax = Math.max(this.mLastEnd, animation.getStartOffset() + animation.getDuration());
            this.mLastEnd = jMax;
            this.mDuration = jMax - this.mStartOffset;
        }
        this.mDirty = true;
    }

    @Override // android.view.animation.Animation
    public long computeDurationHint() {
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        long j2 = 0;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            long jComputeDurationHint = arrayList.get(i2).computeDurationHint();
            if (jComputeDurationHint > j2) {
                j2 = jComputeDurationHint;
            }
        }
        return j2;
    }

    public List<Animation> getAnimations() {
        return this.mAnimations;
    }

    @Override // android.view.animation.Animation
    public long getDuration() {
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        if ((this.mFlags & 32) == 32) {
            return this.mDuration;
        }
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, arrayList.get(i2).getDuration());
        }
        return jMax;
    }

    @Override // android.view.animation.Animation
    public long getStartTime() {
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        long jMin = LinkQualityInfo.UNKNOWN_LONG;
        for (int i2 = 0; i2 < size; i2++) {
            jMin = Math.min(jMin, arrayList.get(i2).getStartTime());
        }
        return jMin;
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j2, Transformation transformation) {
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        Transformation transformation2 = this.mTempTransformation;
        transformation.clear();
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animation animation = arrayList.get(i2);
            transformation2.clear();
            z4 = animation.getTransformation(j2, transformation2, getScaleFactor()) || z4;
            transformation.compose(transformation2);
            z3 = z3 || animation.hasStarted();
            z2 = animation.hasEnded() && z2;
        }
        if (z3 && !this.mStarted) {
            Animation.AnimationListener animationListener = this.mListener;
            if (animationListener != null) {
                animationListener.onAnimationStart(this);
            }
            this.mStarted = true;
        }
        if (z2 != this.mEnded) {
            Animation.AnimationListener animationListener2 = this.mListener;
            if (animationListener2 != null) {
                animationListener2.onAnimationEnd(this);
            }
            this.mEnded = z2;
        }
        return z4;
    }

    @Override // android.view.animation.Animation
    public boolean hasAlpha() {
        if (this.mDirty) {
            this.mHasAlpha = false;
            this.mDirty = false;
            int size = this.mAnimations.size();
            ArrayList<Animation> arrayList = this.mAnimations;
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).hasAlpha()) {
                    this.mHasAlpha = true;
                    break;
                }
            }
        }
        return this.mHasAlpha;
    }

    @Override // android.view.animation.Animation
    public void initialize(int i2, int i3, int i4, int i5) {
        long j2;
        super.initialize(i2, i3, i4, i5);
        int i6 = this.mFlags;
        boolean z2 = (i6 & 32) == 32;
        boolean z3 = (i6 & 1) == 1;
        boolean z4 = (i6 & 2) == 2;
        boolean z5 = (i6 & 4) == 4;
        boolean z6 = (i6 & 16) == 16;
        boolean z7 = (i6 & 8) == 8;
        if (z6) {
            ensureInterpolator();
        }
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        long j3 = this.mDuration;
        boolean z8 = this.mFillAfter;
        boolean z9 = this.mFillBefore;
        int i7 = this.mRepeatMode;
        Interpolator interpolator = this.mInterpolator;
        long j4 = this.mStartOffset;
        long[] jArr = this.mStoredOffsets;
        if (z7) {
            j2 = j4;
            if (jArr == null || jArr.length != size) {
                jArr = new long[size];
                this.mStoredOffsets = jArr;
            }
        } else {
            j2 = j4;
            if (jArr != null) {
                jArr = null;
                this.mStoredOffsets = null;
            }
        }
        int i8 = 0;
        while (i8 < size) {
            Animation animation = arrayList.get(i8);
            if (z2) {
                animation.setDuration(j3);
            }
            if (z3) {
                animation.setFillAfter(z8);
            }
            if (z4) {
                animation.setFillBefore(z9);
            }
            int i9 = i7;
            if (z5) {
                animation.setRepeatMode(i9);
            }
            i7 = i9;
            Interpolator interpolator2 = interpolator;
            if (z6) {
                animation.setInterpolator(interpolator2);
            }
            if (z7) {
                long startOffset = animation.getStartOffset();
                animation.setStartOffset(startOffset + j2);
                jArr[i8] = startOffset;
            }
            animation.initialize(i2, i3, i4, i5);
            i8++;
            z2 = z2;
            z3 = z3;
            arrayList = arrayList;
            interpolator = interpolator2;
        }
    }

    @Override // android.view.animation.Animation
    public void initializeInvalidateRegion(int i2, int i3, int i4, int i5) {
        RectF rectF = this.mPreviousRegion;
        rectF.set(i2, i3, i4, i5);
        rectF.inset(-1.0f, -1.0f);
        if (this.mFillBefore) {
            int size = this.mAnimations.size();
            ArrayList<Animation> arrayList = this.mAnimations;
            Transformation transformation = this.mTempTransformation;
            Transformation transformation2 = this.mPreviousTransformation;
            for (int i6 = size - 1; i6 >= 0; i6--) {
                Animation animation = arrayList.get(i6);
                if (!animation.isFillEnabled() || animation.getFillBefore() || animation.getStartOffset() == 0) {
                    transformation.clear();
                    Interpolator interpolator = animation.mInterpolator;
                    animation.applyTransformation(interpolator != null ? interpolator.getInterpolation(0.0f) : 0.0f, transformation);
                    transformation2.compose(transformation);
                }
            }
        }
    }

    @Override // android.view.animation.Animation
    public void reset() {
        super.reset();
        restoreChildrenStartOffset();
    }

    public void restoreChildrenStartOffset() {
        long[] jArr = this.mStoredOffsets;
        if (jArr == null) {
            return;
        }
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).setStartOffset(jArr[i2]);
        }
    }

    @Override // android.view.animation.Animation
    public void restrictDuration(long j2) {
        super.restrictDuration(j2);
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).restrictDuration(j2);
        }
    }

    @Override // android.view.animation.Animation
    public void scaleCurrentDuration(float f2) {
        ArrayList<Animation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).scaleCurrentDuration(f2);
        }
    }

    @Override // android.view.animation.Animation
    public void setDuration(long j2) {
        this.mFlags |= 32;
        super.setDuration(j2);
        this.mLastEnd = this.mStartOffset + this.mDuration;
    }

    @Override // android.view.animation.Animation
    public void setFillAfter(boolean z2) {
        this.mFlags |= 1;
        super.setFillAfter(z2);
    }

    @Override // android.view.animation.Animation
    public void setFillBefore(boolean z2) {
        this.mFlags |= 2;
        super.setFillBefore(z2);
    }

    @Override // android.view.animation.Animation
    public void setRepeatMode(int i2) {
        this.mFlags |= 4;
        super.setRepeatMode(i2);
    }

    @Override // android.view.animation.Animation
    public void setStartOffset(long j2) {
        this.mFlags |= 8;
        super.setStartOffset(j2);
    }

    @Override // android.view.animation.Animation
    public void setStartTime(long j2) {
        super.setStartTime(j2);
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).setStartTime(j2);
        }
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return (this.mFlags & 128) == 128;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return (this.mFlags & 64) == 64;
    }

    @Override // android.view.animation.Animation
    /* JADX INFO: renamed from: clone */
    public AnimationSet mo19clone() {
        AnimationSet animationSet = (AnimationSet) super.mo19clone();
        animationSet.mTempTransformation = new Transformation();
        animationSet.mAnimations = new ArrayList<>();
        int size = this.mAnimations.size();
        ArrayList<Animation> arrayList = this.mAnimations;
        for (int i2 = 0; i2 < size; i2++) {
            animationSet.mAnimations.add(arrayList.get(i2).mo19clone());
        }
        return animationSet;
    }

    public AnimationSet(boolean z2) {
        this.mFlags = 0;
        this.mAnimations = new ArrayList<>();
        this.mTempTransformation = new Transformation();
        setFlag(16, z2);
        init();
    }
}
