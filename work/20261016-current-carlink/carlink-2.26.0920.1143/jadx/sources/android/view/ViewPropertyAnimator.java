package android.view;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ViewPropertyAnimator {
    static final int ALPHA = 2048;
    static final int NONE = 0;
    static final int ROTATION = 32;
    static final int ROTATION_X = 64;
    static final int ROTATION_Y = 128;
    static final int SCALE_X = 8;
    static final int SCALE_Y = 16;
    private static final int TRANSFORM_MASK = 2047;
    static final int TRANSLATION_X = 1;
    static final int TRANSLATION_Y = 2;
    static final int TRANSLATION_Z = 4;
    static final int X = 256;
    static final int Y = 512;
    static final int Z = 1024;
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
    private ViewPropertyAnimatorRT mRTBackend;
    private ValueAnimator mTempValueAnimator;
    final View mView;
    private boolean mDurationSet = false;
    private long mStartDelay = 0;
    private boolean mStartDelaySet = false;
    private boolean mInterpolatorSet = false;
    private Animator.AnimatorListener mListener = null;
    private ValueAnimator.AnimatorUpdateListener mUpdateListener = null;
    private AnimatorEventListener mAnimatorEventListener = new AnimatorEventListener();
    ArrayList<NameValuesHolder> mPendingAnimations = new ArrayList<>();
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
        public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
            android.animation.a.a(this, animator, z2);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            if (ViewPropertyAnimator.this.mListener != null) {
                ViewPropertyAnimator.this.mListener.onAnimationRepeat(animator);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
            android.animation.a.b(this, animator, z2);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            boolean alphaNoInvalidation;
            PropertyBundle propertyBundle = (PropertyBundle) ViewPropertyAnimator.this.mAnimatorMap.get(valueAnimator);
            if (propertyBundle == null) {
                return;
            }
            boolean zIsHardwareAccelerated = ViewPropertyAnimator.this.mView.isHardwareAccelerated();
            if (!zIsHardwareAccelerated) {
                ViewPropertyAnimator.this.mView.invalidateParentCaches();
            }
            float animatedFraction = valueAnimator.getAnimatedFraction();
            int i2 = propertyBundle.mPropertyMask & 2047;
            if (i2 != 0) {
                ViewPropertyAnimator.this.mView.invalidateViewProperty(zIsHardwareAccelerated, false);
            }
            ArrayList<NameValuesHolder> arrayList = propertyBundle.mNameValuesHolder;
            if (arrayList != null) {
                int size = arrayList.size();
                alphaNoInvalidation = false;
                for (int i3 = 0; i3 < size; i3++) {
                    NameValuesHolder nameValuesHolder = arrayList.get(i3);
                    float f2 = (nameValuesHolder.mDeltaValue * animatedFraction) + nameValuesHolder.mFromValue;
                    int i4 = nameValuesHolder.mNameConstant;
                    if (i4 == 2048) {
                        alphaNoInvalidation = ViewPropertyAnimator.this.mView.setAlphaNoInvalidation(f2);
                    } else {
                        ViewPropertyAnimator.this.setValue(i4, f2);
                    }
                }
            } else {
                alphaNoInvalidation = false;
            }
            if (i2 != 0 && !zIsHardwareAccelerated) {
                ViewPropertyAnimator.this.mView.mPrivateFlags |= 32;
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

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewPropertyAnimator.this.mView.setHasTransientState(false);
            if (ViewPropertyAnimator.this.mAnimatorCleanupMap != null) {
                Runnable runnable = (Runnable) ViewPropertyAnimator.this.mAnimatorCleanupMap.get(animator);
                if (runnable != null) {
                    runnable.run();
                }
                ViewPropertyAnimator.this.mAnimatorCleanupMap.remove(animator);
            }
            if (ViewPropertyAnimator.this.mListener != null) {
                ViewPropertyAnimator.this.mListener.onAnimationEnd(animator);
            }
            if (ViewPropertyAnimator.this.mAnimatorOnEndMap != null) {
                Runnable runnable2 = (Runnable) ViewPropertyAnimator.this.mAnimatorOnEndMap.get(animator);
                if (runnable2 != null) {
                    runnable2.run();
                }
                ViewPropertyAnimator.this.mAnimatorOnEndMap.remove(animator);
            }
            ViewPropertyAnimator.this.mAnimatorMap.remove(animator);
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
    }

    public static class NameValuesHolder {
        float mDeltaValue;
        float mFromValue;
        int mNameConstant;

        public NameValuesHolder(int i2, float f2, float f3) {
            this.mNameConstant = i2;
            this.mFromValue = f2;
            this.mDeltaValue = f3;
        }
    }

    public static class PropertyBundle {
        ArrayList<NameValuesHolder> mNameValuesHolder;
        int mPropertyMask;

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
        float elevation;
        float translationX;
        View view = this.mView;
        RenderNode renderNode = view.mRenderNode;
        if (i2 == 1) {
            return renderNode.getTranslationX();
        }
        if (i2 == 2) {
            return renderNode.getTranslationY();
        }
        if (i2 == 4) {
            return renderNode.getTranslationZ();
        }
        if (i2 == 8) {
            return renderNode.getScaleX();
        }
        if (i2 == 16) {
            return renderNode.getScaleY();
        }
        if (i2 == 32) {
            return renderNode.getRotation();
        }
        if (i2 == 64) {
            return renderNode.getRotationX();
        }
        if (i2 == 128) {
            return renderNode.getRotationY();
        }
        if (i2 == 256) {
            elevation = view.mLeft;
            translationX = renderNode.getTranslationX();
        } else if (i2 == 512) {
            elevation = view.mTop;
            translationX = renderNode.getTranslationY();
        } else {
            if (i2 != 1024) {
                if (i2 != 2048) {
                    return 0.0f;
                }
                return view.mTransformationInfo.mAlpha;
            }
            elevation = renderNode.getElevation();
            translationX = renderNode.getTranslationZ();
        }
        return translationX + elevation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i2, float f2) {
        View view = this.mView;
        View.TransformationInfo transformationInfo = view.mTransformationInfo;
        RenderNode renderNode = view.mRenderNode;
        if (i2 == 1) {
            renderNode.setTranslationX(f2);
            return;
        }
        if (i2 == 2) {
            renderNode.setTranslationY(f2);
            return;
        }
        if (i2 == 4) {
            renderNode.setTranslationZ(f2);
            return;
        }
        if (i2 == 8) {
            renderNode.setScaleX(f2);
            return;
        }
        if (i2 == 16) {
            renderNode.setScaleY(f2);
            return;
        }
        if (i2 == 32) {
            renderNode.setRotation(f2);
            return;
        }
        if (i2 == 64) {
            renderNode.setRotationX(f2);
            return;
        }
        if (i2 == 128) {
            renderNode.setRotationY(f2);
            return;
        }
        if (i2 == 256) {
            renderNode.setTranslationX(f2 - view.mLeft);
            return;
        }
        if (i2 == 512) {
            renderNode.setTranslationY(f2 - view.mTop);
            return;
        }
        if (i2 == 1024) {
            renderNode.setTranslationZ(f2 - renderNode.getElevation());
        } else {
            if (i2 != 2048) {
                return;
            }
            transformationInfo.mAlpha = f2;
            renderNode.setAlpha(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAnimation() {
        ViewPropertyAnimatorRT viewPropertyAnimatorRT = this.mRTBackend;
        if (viewPropertyAnimatorRT == null || !viewPropertyAnimatorRT.startAnimation(this)) {
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
    }

    public ViewPropertyAnimator alpha(float f2) {
        animateProperty(2048, f2);
        return this;
    }

    public ViewPropertyAnimator alphaBy(float f2) {
        animatePropertyBy(2048, f2);
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
        this.mPendingSetupAction = null;
        this.mPendingCleanupAction = null;
        this.mPendingOnStartAction = null;
        this.mPendingOnEndAction = null;
        this.mView.removeCallbacks(this.mAnimationStarter);
        ViewPropertyAnimatorRT viewPropertyAnimatorRT = this.mRTBackend;
        if (viewPropertyAnimatorRT != null) {
            viewPropertyAnimatorRT.cancelAll();
        }
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

    public Animator.AnimatorListener getListener() {
        return this.mListener;
    }

    public long getStartDelay() {
        if (this.mStartDelaySet) {
            return this.mStartDelay;
        }
        return 0L;
    }

    public ValueAnimator.AnimatorUpdateListener getUpdateListener() {
        return this.mUpdateListener;
    }

    public boolean hasActions() {
        return (this.mPendingSetupAction == null && this.mPendingCleanupAction == null && this.mPendingOnStartAction == null && this.mPendingOnEndAction == null) ? false : true;
    }

    public ViewPropertyAnimator rotation(float f2) {
        animateProperty(32, f2);
        return this;
    }

    public ViewPropertyAnimator rotationBy(float f2) {
        animatePropertyBy(32, f2);
        return this;
    }

    public ViewPropertyAnimator rotationX(float f2) {
        animateProperty(64, f2);
        return this;
    }

    public ViewPropertyAnimator rotationXBy(float f2) {
        animatePropertyBy(64, f2);
        return this;
    }

    public ViewPropertyAnimator rotationY(float f2) {
        animateProperty(128, f2);
        return this;
    }

    public ViewPropertyAnimator rotationYBy(float f2) {
        animatePropertyBy(128, f2);
        return this;
    }

    public ViewPropertyAnimator scaleX(float f2) {
        animateProperty(8, f2);
        return this;
    }

    public ViewPropertyAnimator scaleXBy(float f2) {
        animatePropertyBy(8, f2);
        return this;
    }

    public ViewPropertyAnimator scaleY(float f2) {
        animateProperty(16, f2);
        return this;
    }

    public ViewPropertyAnimator scaleYBy(float f2) {
        animatePropertyBy(16, f2);
        return this;
    }

    public ViewPropertyAnimator setDuration(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException(android.accessibilityservice.c.f("Animators cannot have negative duration: ", j2));
        }
        this.mDurationSet = true;
        this.mDuration = j2;
        return this;
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
        if (j2 < 0) {
            throw new IllegalArgumentException(android.accessibilityservice.c.f("Animators cannot have negative start delay: ", j2));
        }
        this.mStartDelaySet = true;
        this.mStartDelay = j2;
        return this;
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

    public ViewPropertyAnimator translationZ(float f2) {
        animateProperty(4, f2);
        return this;
    }

    public ViewPropertyAnimator translationZBy(float f2) {
        animatePropertyBy(4, f2);
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
        animateProperty(256, f2);
        return this;
    }

    public ViewPropertyAnimator xBy(float f2) {
        animatePropertyBy(256, f2);
        return this;
    }

    public ViewPropertyAnimator y(float f2) {
        animateProperty(512, f2);
        return this;
    }

    public ViewPropertyAnimator yBy(float f2) {
        animatePropertyBy(512, f2);
        return this;
    }

    public ViewPropertyAnimator z(float f2) {
        animateProperty(1024, f2);
        return this;
    }

    public ViewPropertyAnimator zBy(float f2) {
        animatePropertyBy(1024, f2);
        return this;
    }

    private void animatePropertyBy(int i2, float f2, float f3) {
        Animator next;
        if (this.mAnimatorMap.size() > 0) {
            Iterator<Animator> it = this.mAnimatorMap.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                PropertyBundle propertyBundle = this.mAnimatorMap.get(next);
                if (propertyBundle.cancel(i2) && propertyBundle.mPropertyMask == 0) {
                    break;
                }
            }
            if (next != null) {
                next.cancel();
            }
        }
        this.mPendingAnimations.add(new NameValuesHolder(i2, f2, f3));
        this.mView.removeCallbacks(this.mAnimationStarter);
        this.mView.postOnAnimation(this.mAnimationStarter);
    }
}
