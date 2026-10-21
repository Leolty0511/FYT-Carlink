package android.view;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ViewPropertyAnimator {
    private static final int ALPHA = 512;
    private static final int NONE = 0;
    private static final int ROTATION = 16;
    private static final int ROTATION_X = 32;
    private static final int ROTATION_Y = 64;
    private static final int SCALE_X = 4;
    private static final int SCALE_Y = 8;
    private static final int TRANSFORM_MASK = 511;
    private static final int TRANSLATION_X = 1;
    private static final int TRANSLATION_Y = 2;
    private static final int X = 128;
    private static final int Y = 256;
    private HashMap<Animator, Runnable> mAnimatorCleanupMap;
    private HashMap<Animator, Runnable> mAnimatorOnEndMap;
    private HashMap<Animator, Runnable> mAnimatorOnStartMap;
    private HashMap<Animator, Runnable> mAnimatorSetupMap;
    private long mDuration;
    private TimeInterpolator mInterpolator;
    private Runnable mPendingCleanupAction;
    private Runnable mPendingOnEndAction;
    private Runnable mPendingOnStartAction;
    private Runnable mPendingSetupAction;
    private ValueAnimator mTempValueAnimator;
    private final View mView;
    private boolean mDurationSet = false;
    private long mStartDelay = 0;
    private boolean mStartDelaySet = false;
    private boolean mInterpolatorSet = false;
    private Animator.AnimatorListener mListener = null;
    private ValueAnimator.AnimatorUpdateListener mUpdateListener = null;
    private AnimatorEventListener mAnimatorEventListener = new AnimatorEventListener();
    public ArrayList<NameValuesHolder> mPendingAnimations = new ArrayList<>();
    private Runnable mAnimationStarter = new Runnable() { // from class: android.view.ViewPropertyAnimator.1
        @Override // java.lang.Runnable
        public void run() {
            ViewPropertyAnimator.this.startAnimation();
        }
    };
    private HashMap<Animator, PropertyBundle> mAnimatorMap = new HashMap<>();

    public class AnimatorEventListener implements Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener {
        private AnimatorEventListener() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (ViewPropertyAnimator.this.mListener != null) {
                ViewPropertyAnimator.this.mListener.onAnimationCancel(animator);
            }
            if (ViewPropertyAnimator.this.mAnimatorOnEndMap != null) {
                ViewPropertyAnimator.this.mAnimatorOnEndMap.remove(animator);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewPropertyAnimator.this.mView.setHasTransientState(false);
            if (ViewPropertyAnimator.this.mListener != null) {
                ViewPropertyAnimator.this.mListener.onAnimationEnd(animator);
            }
            if (ViewPropertyAnimator.this.mAnimatorOnEndMap != null) {
                Runnable runnable = (Runnable) ViewPropertyAnimator.this.mAnimatorOnEndMap.get(animator);
                if (runnable != null) {
                    runnable.run();
                }
                ViewPropertyAnimator.this.mAnimatorOnEndMap.remove(animator);
            }
            if (ViewPropertyAnimator.this.mAnimatorCleanupMap != null) {
                Runnable runnable2 = (Runnable) ViewPropertyAnimator.this.mAnimatorCleanupMap.get(animator);
                if (runnable2 != null) {
                    runnable2.run();
                }
                ViewPropertyAnimator.this.mAnimatorCleanupMap.remove(animator);
            }
            ViewPropertyAnimator.this.mAnimatorMap.remove(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            if (ViewPropertyAnimator.this.mListener != null) {
                ViewPropertyAnimator.this.mListener.onAnimationRepeat(animator);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (ViewPropertyAnimator.this.mAnimatorSetupMap != null) {
                Runnable runnable = (Runnable) ViewPropertyAnimator.this.mAnimatorSetupMap.get(animator);
                if (runnable != null) {
                    runnable.run();
                }
                ViewPropertyAnimator.this.mAnimatorSetupMap.remove(animator);
            }
            if (ViewPropertyAnimator.this.mAnimatorOnStartMap != null) {
                Runnable runnable2 = (Runnable) ViewPropertyAnimator.this.mAnimatorOnStartMap.get(animator);
                if (runnable2 != null) {
                    runnable2.run();
                }
                ViewPropertyAnimator.this.mAnimatorOnStartMap.remove(animator);
            }
            if (ViewPropertyAnimator.this.mListener != null) {
                ViewPropertyAnimator.this.mListener.onAnimationStart(animator);
            }
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            boolean alphaNoInvalidation;
            PropertyBundle propertyBundle = (PropertyBundle) ViewPropertyAnimator.this.mAnimatorMap.get(valueAnimator);
            if (propertyBundle == null) {
                return;
            }
            boolean z2 = ViewPropertyAnimator.this.mView.mDisplayList != null;
            if (!z2) {
                ViewPropertyAnimator.this.mView.invalidateParentCaches();
            }
            float animatedFraction = valueAnimator.getAnimatedFraction();
            int i2 = propertyBundle.mPropertyMask & ViewPropertyAnimator.TRANSFORM_MASK;
            if (i2 != 0) {
                ViewPropertyAnimator.this.mView.invalidateViewProperty(false, false);
            }
            ArrayList<NameValuesHolder> arrayList = propertyBundle.mNameValuesHolder;
            if (arrayList != null) {
                int size = arrayList.size();
                alphaNoInvalidation = false;
                for (int i3 = 0; i3 < size; i3++) {
                    NameValuesHolder nameValuesHolder = arrayList.get(i3);
                    float f2 = nameValuesHolder.mFromValue + (nameValuesHolder.mDeltaValue * animatedFraction);
                    int i4 = nameValuesHolder.mNameConstant;
                    if (i4 == 512) {
                        alphaNoInvalidation = ViewPropertyAnimator.this.mView.setAlphaNoInvalidation(f2);
                    } else {
                        ViewPropertyAnimator.this.setValue(i4, f2);
                    }
                }
            } else {
                alphaNoInvalidation = false;
            }
            if (i2 != 0) {
                ViewPropertyAnimator.this.mView.mTransformationInfo.mMatrixDirty = true;
                if (!z2) {
                    ViewPropertyAnimator.this.mView.mPrivateFlags |= 32;
                }
            }
            if (alphaNoInvalidation) {
                ViewPropertyAnimator.this.mView.invalidate(true);
            } else {
                ViewPropertyAnimator.this.mView.invalidateViewProperty(false, false);
            }
            if (ViewPropertyAnimator.this.mUpdateListener != null) {
                ViewPropertyAnimator.this.mUpdateListener.onAnimationUpdate(valueAnimator);
            }
        }
    }

    public static class NameValuesHolder {
        public float mDeltaValue;
        public float mFromValue;
        public int mNameConstant;

        public NameValuesHolder(int i2, float f2, float f3) {
            this.mNameConstant = i2;
            this.mFromValue = f2;
            this.mDeltaValue = f3;
        }
    }

    public static class PropertyBundle {
        public ArrayList<NameValuesHolder> mNameValuesHolder;
        public int mPropertyMask;

        public PropertyBundle(int i2, ArrayList<NameValuesHolder> arrayList) {
            this.mPropertyMask = i2;
            this.mNameValuesHolder = arrayList;
        }

        public boolean cancel(int i2) {
            ArrayList<NameValuesHolder> arrayList;
            if ((this.mPropertyMask & i2) != 0 && (arrayList = this.mNameValuesHolder) != null) {
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    if (this.mNameValuesHolder.get(i3).mNameConstant == i2) {
                        this.mNameValuesHolder.remove(i3);
                        this.mPropertyMask = (~i2) & this.mPropertyMask;
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public ViewPropertyAnimator(View view) {
        this.mView = view;
        view.ensureTransformationInfo();
    }

    private void animateProperty(int i2, float f2) {
        float value = getValue(i2);
        animatePropertyBy(i2, value, f2 - value);
    }

    private void animatePropertyBy(int i2, float f2) {
        animatePropertyBy(i2, getValue(i2), f2);
    }

    private float getValue(int i2) {
        float f2;
        float f3;
        View view = this.mView;
        View.TransformationInfo transformationInfo = view.mTransformationInfo;
        if (i2 == 1) {
            return transformationInfo.mTranslationX;
        }
        if (i2 == 2) {
            return transformationInfo.mTranslationY;
        }
        if (i2 == 4) {
            return transformationInfo.mScaleX;
        }
        if (i2 == 8) {
            return transformationInfo.mScaleY;
        }
        if (i2 == 16) {
            return transformationInfo.mRotation;
        }
        if (i2 == 32) {
            return transformationInfo.mRotationX;
        }
        if (i2 == 64) {
            return transformationInfo.mRotationY;
        }
        if (i2 == 128) {
            f2 = view.mLeft;
            f3 = transformationInfo.mTranslationX;
        } else {
            if (i2 != 256) {
                if (i2 != 512) {
                    return 0.0f;
                }
                return transformationInfo.mAlpha;
            }
            f2 = view.mTop;
            f3 = transformationInfo.mTranslationY;
        }
        return f2 + f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i2, float f2) {
        View view = this.mView;
        View.TransformationInfo transformationInfo = view.mTransformationInfo;
        DisplayList displayList = view.mDisplayList;
        if (i2 == 1) {
            transformationInfo.mTranslationX = f2;
            if (displayList != null) {
                displayList.setTranslationX(f2);
                return;
            }
            return;
        }
        if (i2 == 2) {
            transformationInfo.mTranslationY = f2;
            if (displayList != null) {
                displayList.setTranslationY(f2);
                return;
            }
            return;
        }
        if (i2 == 4) {
            transformationInfo.mScaleX = f2;
            if (displayList != null) {
                displayList.setScaleX(f2);
                return;
            }
            return;
        }
        if (i2 == 8) {
            transformationInfo.mScaleY = f2;
            if (displayList != null) {
                displayList.setScaleY(f2);
                return;
            }
            return;
        }
        if (i2 == 16) {
            transformationInfo.mRotation = f2;
            if (displayList != null) {
                displayList.setRotation(f2);
                return;
            }
            return;
        }
        if (i2 == 32) {
            transformationInfo.mRotationX = f2;
            if (displayList != null) {
                displayList.setRotationX(f2);
                return;
            }
            return;
        }
        if (i2 == 64) {
            transformationInfo.mRotationY = f2;
            if (displayList != null) {
                displayList.setRotationY(f2);
                return;
            }
            return;
        }
        if (i2 == 128) {
            int i3 = view.mLeft;
            transformationInfo.mTranslationX = f2 - i3;
            if (displayList != null) {
                displayList.setTranslationX(f2 - i3);
                return;
            }
            return;
        }
        if (i2 == 256) {
            int i4 = view.mTop;
            transformationInfo.mTranslationY = f2 - i4;
            if (displayList != null) {
                displayList.setTranslationY(f2 - i4);
                return;
            }
            return;
        }
        if (i2 != 512) {
            return;
        }
        transformationInfo.mAlpha = f2;
        if (displayList != null) {
            displayList.setAlpha(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAnimation() {
        this.mView.setHasTransientState(true);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f);
        ArrayList arrayList = (ArrayList) this.mPendingAnimations.clone();
        this.mPendingAnimations.clear();
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 |= ((NameValuesHolder) arrayList.get(i3)).mNameConstant;
        }
        this.mAnimatorMap.put(valueAnimatorOfFloat, new PropertyBundle(i2, arrayList));
        Runnable runnable = this.mPendingSetupAction;
        if (runnable != null) {
            this.mAnimatorSetupMap.put(valueAnimatorOfFloat, runnable);
            this.mPendingSetupAction = null;
        }
        Runnable runnable2 = this.mPendingCleanupAction;
        if (runnable2 != null) {
            this.mAnimatorCleanupMap.put(valueAnimatorOfFloat, runnable2);
            this.mPendingCleanupAction = null;
        }
        Runnable runnable3 = this.mPendingOnStartAction;
        if (runnable3 != null) {
            this.mAnimatorOnStartMap.put(valueAnimatorOfFloat, runnable3);
            this.mPendingOnStartAction = null;
        }
        Runnable runnable4 = this.mPendingOnEndAction;
        if (runnable4 != null) {
            this.mAnimatorOnEndMap.put(valueAnimatorOfFloat, runnable4);
            this.mPendingOnEndAction = null;
        }
        valueAnimatorOfFloat.addUpdateListener(this.mAnimatorEventListener);
        valueAnimatorOfFloat.addListener(this.mAnimatorEventListener);
        if (this.mStartDelaySet) {
            valueAnimatorOfFloat.setStartDelay(this.mStartDelay);
        }
        if (this.mDurationSet) {
            valueAnimatorOfFloat.setDuration(this.mDuration);
        }
        if (this.mInterpolatorSet) {
            valueAnimatorOfFloat.setInterpolator(this.mInterpolator);
        }
        valueAnimatorOfFloat.start();
    }

    public ViewPropertyAnimator alpha(float f2) {
        animateProperty(512, f2);
        return this;
    }

    public ViewPropertyAnimator alphaBy(float f2) {
        animatePropertyBy(512, f2);
        return this;
    }

    public void cancel() {
        if (this.mAnimatorMap.size() > 0) {
            Iterator it = ((HashMap) this.mAnimatorMap.clone()).keySet().iterator();
            while (it.hasNext()) {
                ((Animator) it.next()).cancel();
            }
        }
        this.mPendingAnimations.clear();
        this.mView.removeCallbacks(this.mAnimationStarter);
    }

    public long getDuration() {
        if (this.mDurationSet) {
            return this.mDuration;
        }
        if (this.mTempValueAnimator == null) {
            this.mTempValueAnimator = new ValueAnimator();
        }
        return this.mTempValueAnimator.getDuration();
    }

    public TimeInterpolator getInterpolator() {
        if (this.mInterpolatorSet) {
            return this.mInterpolator;
        }
        if (this.mTempValueAnimator == null) {
            this.mTempValueAnimator = new ValueAnimator();
        }
        return this.mTempValueAnimator.getInterpolator();
    }

    public long getStartDelay() {
        if (this.mStartDelaySet) {
            return this.mStartDelay;
        }
        return 0L;
    }

    public ViewPropertyAnimator rotation(float f2) {
        animateProperty(16, f2);
        return this;
    }

    public ViewPropertyAnimator rotationBy(float f2) {
        animatePropertyBy(16, f2);
        return this;
    }

    public ViewPropertyAnimator rotationX(float f2) {
        animateProperty(32, f2);
        return this;
    }

    public ViewPropertyAnimator rotationXBy(float f2) {
        animatePropertyBy(32, f2);
        return this;
    }

    public ViewPropertyAnimator rotationY(float f2) {
        animateProperty(64, f2);
        return this;
    }

    public ViewPropertyAnimator rotationYBy(float f2) {
        animatePropertyBy(64, f2);
        return this;
    }

    public ViewPropertyAnimator scaleX(float f2) {
        animateProperty(4, f2);
        return this;
    }

    public ViewPropertyAnimator scaleXBy(float f2) {
        animatePropertyBy(4, f2);
        return this;
    }

    public ViewPropertyAnimator scaleY(float f2) {
        animateProperty(8, f2);
        return this;
    }

    public ViewPropertyAnimator scaleYBy(float f2) {
        animatePropertyBy(8, f2);
        return this;
    }

    public ViewPropertyAnimator setDuration(long j2) {
        if (j2 >= 0) {
            this.mDurationSet = true;
            this.mDuration = j2;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j2);
    }

    public ViewPropertyAnimator setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolatorSet = true;
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public ViewPropertyAnimator setListener(Animator.AnimatorListener animatorListener) {
        this.mListener = animatorListener;
        return this;
    }

    public ViewPropertyAnimator setStartDelay(long j2) {
        if (j2 >= 0) {
            this.mStartDelaySet = true;
            this.mStartDelay = j2;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j2);
    }

    public ViewPropertyAnimator setUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.mUpdateListener = animatorUpdateListener;
        return this;
    }

    public void start() {
        this.mView.removeCallbacks(this.mAnimationStarter);
        startAnimation();
    }

    public ViewPropertyAnimator translationX(float f2) {
        animateProperty(1, f2);
        return this;
    }

    public ViewPropertyAnimator translationXBy(float f2) {
        animatePropertyBy(1, f2);
        return this;
    }

    public ViewPropertyAnimator translationY(float f2) {
        animateProperty(2, f2);
        return this;
    }

    public ViewPropertyAnimator translationYBy(float f2) {
        animatePropertyBy(2, f2);
        return this;
    }

    public ViewPropertyAnimator withEndAction(Runnable runnable) {
        this.mPendingOnEndAction = runnable;
        if (runnable != null && this.mAnimatorOnEndMap == null) {
            this.mAnimatorOnEndMap = new HashMap<>();
        }
        return this;
    }

    public ViewPropertyAnimator withLayer() {
        this.mPendingSetupAction = new Runnable() { // from class: android.view.ViewPropertyAnimator.2
            @Override // java.lang.Runnable
            public void run() {
                ViewPropertyAnimator.this.mView.setLayerType(2, null);
                if (ViewPropertyAnimator.this.mView.isAttachedToWindow()) {
                    ViewPropertyAnimator.this.mView.buildLayer();
                }
            }
        };
        final int layerType = this.mView.getLayerType();
        this.mPendingCleanupAction = new Runnable() { // from class: android.view.ViewPropertyAnimator.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPropertyAnimator.this.mView.setLayerType(layerType, null);
            }
        };
        if (this.mAnimatorSetupMap == null) {
            this.mAnimatorSetupMap = new HashMap<>();
        }
        if (this.mAnimatorCleanupMap == null) {
            this.mAnimatorCleanupMap = new HashMap<>();
        }
        return this;
    }

    public ViewPropertyAnimator withStartAction(Runnable runnable) {
        this.mPendingOnStartAction = runnable;
        if (runnable != null && this.mAnimatorOnStartMap == null) {
            this.mAnimatorOnStartMap = new HashMap<>();
        }
        return this;
    }

    public ViewPropertyAnimator x(float f2) {
        animateProperty(128, f2);
        return this;
    }

    public ViewPropertyAnimator xBy(float f2) {
        animatePropertyBy(128, f2);
        return this;
    }

    public ViewPropertyAnimator y(float f2) {
        animateProperty(256, f2);
        return this;
    }

    public ViewPropertyAnimator yBy(float f2) {
        animatePropertyBy(256, f2);
        return this;
    }

    private void animatePropertyBy(int i2, float f2, float f3) {
        if (this.mAnimatorMap.size() > 0) {
            Animator animator = null;
            for (Animator animator2 : this.mAnimatorMap.keySet()) {
                PropertyBundle propertyBundle = this.mAnimatorMap.get(animator2);
                if (propertyBundle.cancel(i2) && propertyBundle.mPropertyMask == 0) {
                    animator = animator2;
                    break;
                }
            }
            if (animator != null) {
                animator.cancel();
            }
        }
        this.mPendingAnimations.add(new NameValuesHolder(i2, f2, f3));
        this.mView.removeCallbacks(this.mAnimationStarter);
        this.mView.postOnAnimation(this.mAnimationStarter);
    }
}
