package android.graphics.drawable;

import android.accessibilityservice.c;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.ActivityThread;
import android.app.Application;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.IntArray;
import android.util.Log;
import android.util.LongArray;
import android.util.PathParser;
import android.util.Property;
import android.util.TimeUtils;
import android.view.Choreographer;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import android.view.RenderNodeAnimatorSetHelper;
import com.android.internal.R;
import com.android.internal.util.VirtualRefBasePtr;
import dalvik.annotation.optimization.FastNative;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedVectorDrawable extends Drawable implements Animatable2 {
    private static final String ANIMATED_VECTOR = "animated-vector";
    private static final boolean DBG_ANIMATION_VECTOR_DRAWABLE = false;
    private static final String LOGTAG = "AnimatedVectorDrawable";
    private static final String TARGET = "target";
    private AnimatedVectorDrawableState mAnimatedVectorState;
    private ArrayList<Animatable2.AnimationCallback> mAnimationCallbacks;
    private Animator.AnimatorListener mAnimatorListener;
    private VectorDrawableAnimator mAnimatorSet;
    private AnimatorSet mAnimatorSetFromXml;
    private final Drawable.Callback mCallback;
    private boolean mMutated;
    private Resources mRes;

    public static class AnimatedVectorDrawableState extends Drawable.ConstantState {
        ArrayList<Animator> mAnimators;
        int mChangingConfigurations;
        ArrayList<PendingAnimator> mPendingAnims;
        private final boolean mShouldIgnoreInvalidAnim = AnimatedVectorDrawable.shouldIgnoreInvalidAnimation();
        ArrayMap<Animator, String> mTargetNameMap;
        VectorDrawable mVectorDrawable;

        public static class PendingAnimator {
            public final int animResId;
            public final float pathErrorScale;
            public final String target;

            public PendingAnimator(int i2, float f2, String str) {
                this.animResId = i2;
                this.pathErrorScale = f2;
                this.target = str;
            }

            public Animator newInstance(Resources resources, Resources.Theme theme) {
                return AnimatorInflater.loadAnimator(resources, theme, this.animResId, this.pathErrorScale);
            }
        }

        public AnimatedVectorDrawableState(AnimatedVectorDrawableState animatedVectorDrawableState, Drawable.Callback callback, Resources resources) {
            if (animatedVectorDrawableState == null) {
                this.mVectorDrawable = new VectorDrawable();
                return;
            }
            this.mChangingConfigurations = animatedVectorDrawableState.mChangingConfigurations;
            VectorDrawable vectorDrawable = animatedVectorDrawableState.mVectorDrawable;
            if (vectorDrawable != null) {
                Drawable.ConstantState constantState = vectorDrawable.getConstantState();
                if (resources != null) {
                    this.mVectorDrawable = (VectorDrawable) constantState.newDrawable(resources);
                } else {
                    this.mVectorDrawable = (VectorDrawable) constantState.newDrawable();
                }
                VectorDrawable vectorDrawable2 = (VectorDrawable) this.mVectorDrawable.mutate();
                this.mVectorDrawable = vectorDrawable2;
                vectorDrawable2.setCallback(callback);
                this.mVectorDrawable.setLayoutDirection(animatedVectorDrawableState.mVectorDrawable.getLayoutDirection());
                this.mVectorDrawable.setBounds(animatedVectorDrawableState.mVectorDrawable.getBounds());
                this.mVectorDrawable.setAllowCaching(false);
            }
            if (animatedVectorDrawableState.mAnimators != null) {
                this.mAnimators = new ArrayList<>(animatedVectorDrawableState.mAnimators);
            }
            if (animatedVectorDrawableState.mTargetNameMap != null) {
                this.mTargetNameMap = new ArrayMap<>(animatedVectorDrawableState.mTargetNameMap);
            }
            if (animatedVectorDrawableState.mPendingAnims != null) {
                this.mPendingAnims = new ArrayList<>(animatedVectorDrawableState.mPendingAnims);
            }
        }

        private Animator prepareLocalAnimator(int i2) {
            Animator animator = this.mAnimators.get(i2);
            Animator animatorMo0clone = animator.mo0clone();
            String str = this.mTargetNameMap.get(animator);
            Object targetByName = this.mVectorDrawable.getTargetByName(str);
            if (!this.mShouldIgnoreInvalidAnim) {
                if (targetByName == null) {
                    throw new IllegalStateException(c.k("Target with the name \"", str, "\" cannot be found in the VectorDrawable to be animated."));
                }
                if (!(targetByName instanceof VectorDrawable.VectorDrawableState) && !(targetByName instanceof VectorDrawable.VObject)) {
                    throw new UnsupportedOperationException("Target should be either VGroup, VPath, or ConstantState, " + targetByName.getClass() + " is not supported");
                }
            }
            animatorMo0clone.setTarget(targetByName);
            return animatorMo0clone;
        }

        public void addPendingAnimator(int i2, float f2, String str) {
            if (this.mPendingAnims == null) {
                this.mPendingAnims = new ArrayList<>(1);
            }
            this.mPendingAnims.add(new PendingAnimator(i2, f2, str));
        }

        public void addTargetAnimator(String str, Animator animator) {
            if (this.mAnimators == null) {
                this.mAnimators = new ArrayList<>(1);
                this.mTargetNameMap = new ArrayMap<>(1);
            }
            this.mAnimators.add(animator);
            this.mTargetNameMap.put(animator, str);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            VectorDrawable vectorDrawable = this.mVectorDrawable;
            return (vectorDrawable != null && vectorDrawable.canApplyTheme()) || this.mPendingAnims != null || super.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        public void inflatePendingAnimators(Resources resources, Resources.Theme theme) {
            ArrayList<PendingAnimator> arrayList = this.mPendingAnims;
            if (arrayList != null) {
                this.mPendingAnims = null;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    PendingAnimator pendingAnimator = arrayList.get(i2);
                    Animator animatorNewInstance = pendingAnimator.newInstance(resources, theme);
                    AnimatedVectorDrawable.updateAnimatorProperty(animatorNewInstance, pendingAnimator.target, this.mVectorDrawable, this.mShouldIgnoreInvalidAnim);
                    addTargetAnimator(pendingAnimator.target, animatorNewInstance);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimatedVectorDrawable(this, null);
        }

        public void prepareLocalAnimators(AnimatorSet animatorSet, Resources resources) {
            if (this.mPendingAnims != null) {
                if (resources != null) {
                    inflatePendingAnimators(resources, null);
                } else {
                    Log.e(AnimatedVectorDrawable.LOGTAG, "Failed to load animators. Either the AnimatedVectorDrawable must be created using a Resources object or applyTheme() must be called with a non-null Theme object.");
                }
                this.mPendingAnims = null;
            }
            ArrayList<Animator> arrayList = this.mAnimators;
            int size = arrayList == null ? 0 : arrayList.size();
            if (size > 0) {
                AnimatorSet.Builder builderPlay = animatorSet.play(prepareLocalAnimator(0));
                for (int i2 = 1; i2 < size; i2++) {
                    builderPlay.with(prepareLocalAnimator(i2));
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimatedVectorDrawable(this, resources);
        }
    }

    public interface VectorDrawableAnimator {
        boolean canReverse();

        void end();

        void init(AnimatorSet animatorSet);

        boolean isInfinite();

        boolean isRunning();

        boolean isStarted();

        void onDraw(Canvas canvas);

        void pause();

        void removeListener(Animator.AnimatorListener animatorListener);

        void reset();

        void resume();

        void reverse();

        void setListener(Animator.AnimatorListener animatorListener);

        void start();
    }

    public static class VectorDrawableAnimatorRT implements VectorDrawableAnimator {
        private static final int END_ANIMATION = 4;
        private static final int MAX_SAMPLE_POINTS = 300;
        private static final int RESET_ANIMATION = 3;
        private static final int REVERSE_ANIMATION = 2;
        private static final int START_ANIMATION = 1;
        private final AnimatedVectorDrawable mDrawable;
        private long mSetPtr;
        private final VirtualRefBasePtr mSetRefBasePtr;
        private Animator.AnimatorListener mListener = null;
        private final LongArray mStartDelays = new LongArray();
        private PropertyValuesHolder.PropertyValues mTmpValues = new PropertyValuesHolder.PropertyValues();
        private boolean mContainsSequentialAnimators = false;
        private boolean mStarted = false;
        private boolean mInitialized = false;
        private boolean mIsReversible = false;
        private boolean mIsInfinite = false;
        private WeakReference<RenderNode> mLastSeenTarget = null;
        private int mLastListenerId = 0;
        private final IntArray mPendingAnimationActions = new IntArray();

        public VectorDrawableAnimatorRT(AnimatedVectorDrawable animatedVectorDrawable) {
            this.mSetPtr = 0L;
            this.mDrawable = animatedVectorDrawable;
            long jNCreateAnimatorSet = AnimatedVectorDrawable.nCreateAnimatorSet();
            this.mSetPtr = jNCreateAnimatorSet;
            this.mSetRefBasePtr = new VirtualRefBasePtr(jNCreateAnimatorSet);
        }

        private void addPendingAction(int i2) {
            invalidateOwningView();
            this.mPendingAnimationActions.add(i2);
        }

        private static void callOnFinished(VectorDrawableAnimatorRT vectorDrawableAnimatorRT, int i2) {
            vectorDrawableAnimatorRT.onAnimationEnd(i2);
        }

        private static float[] createFloatDataPoints(PropertyValuesHolder.PropertyValues.DataSource dataSource, long j2) {
            int frameCount = getFrameCount(j2);
            float[] fArr = new float[frameCount];
            float f2 = frameCount - 1;
            for (int i2 = 0; i2 < frameCount; i2++) {
                fArr[i2] = ((Float) dataSource.getValueAtFraction(i2 / f2)).floatValue();
            }
            return fArr;
        }

        private static int[] createIntDataPoints(PropertyValuesHolder.PropertyValues.DataSource dataSource, long j2) {
            int frameCount = getFrameCount(j2);
            int[] iArr = new int[frameCount];
            float f2 = frameCount - 1;
            for (int i2 = 0; i2 < frameCount; i2++) {
                iArr[i2] = ((Integer) dataSource.getValueAtFraction(i2 / f2)).intValue();
            }
            return iArr;
        }

        private void createNativeChildAnimator(long j2, long j3, ObjectAnimator objectAnimator) {
            long duration = objectAnimator.getDuration();
            int repeatCount = objectAnimator.getRepeatCount();
            long startDelay = objectAnimator.getStartDelay() + j3;
            long jCreateNativeInterpolator = RenderNodeAnimatorSetHelper.createNativeInterpolator(objectAnimator.getInterpolator(), duration);
            long durationScale = (long) (ValueAnimator.getDurationScale() * startDelay);
            long durationScale2 = (long) (ValueAnimator.getDurationScale() * duration);
            this.mStartDelays.add(durationScale);
            AnimatedVectorDrawable.nAddAnimator(this.mSetPtr, j2, jCreateNativeInterpolator, durationScale, durationScale2, repeatCount, objectAnimator.getRepeatMode());
        }

        private void createRTAnimator(ObjectAnimator objectAnimator, long j2) {
            PropertyValuesHolder[] values = objectAnimator.getValues();
            Object target = objectAnimator.getTarget();
            if (target instanceof VectorDrawable.VGroup) {
                createRTAnimatorForGroup(values, objectAnimator, (VectorDrawable.VGroup) target, j2);
                return;
            }
            if (!(target instanceof VectorDrawable.VPath)) {
                if (target instanceof VectorDrawable.VectorDrawableState) {
                    createRTAnimatorForRootGroup(values, objectAnimator, (VectorDrawable.VectorDrawableState) target, j2);
                    return;
                }
                return;
            }
            for (PropertyValuesHolder propertyValuesHolder : values) {
                propertyValuesHolder.getPropertyValues(this.mTmpValues);
                PropertyValuesHolder.PropertyValues propertyValues = this.mTmpValues;
                if ((propertyValues.endValue instanceof PathParser.PathData) && propertyValues.propertyName.equals("pathData")) {
                    createRTAnimatorForPath(objectAnimator, (VectorDrawable.VPath) target, j2);
                } else if (target instanceof VectorDrawable.VFullPath) {
                    createRTAnimatorForFullPath(objectAnimator, (VectorDrawable.VFullPath) target, j2);
                } else if (!this.mDrawable.mAnimatedVectorState.mShouldIgnoreInvalidAnim) {
                    throw new IllegalArgumentException("ClipPath only supports PathData property");
                }
            }
        }

        private void createRTAnimatorForFullPath(ObjectAnimator objectAnimator, VectorDrawable.VFullPath vFullPath, long j2) {
            long jNCreatePathPropertyHolder;
            int propertyIndex = vFullPath.getPropertyIndex(this.mTmpValues.propertyName);
            long nativePtr = vFullPath.getNativePtr();
            PropertyValuesHolder.PropertyValues propertyValues = this.mTmpValues;
            Class cls = propertyValues.type;
            if (cls == Float.class || cls == Float.TYPE) {
                if (propertyIndex < 0) {
                    if (!this.mDrawable.mAnimatedVectorState.mShouldIgnoreInvalidAnim) {
                        throw new IllegalArgumentException(c.n(new StringBuilder("Property: "), this.mTmpValues.propertyName, " is not supported for FullPath"));
                    }
                    return;
                } else {
                    jNCreatePathPropertyHolder = AnimatedVectorDrawable.nCreatePathPropertyHolder(nativePtr, propertyIndex, ((Float) propertyValues.startValue).floatValue(), ((Float) this.mTmpValues.endValue).floatValue());
                    PropertyValuesHolder.PropertyValues.DataSource dataSource = this.mTmpValues.dataSource;
                    if (dataSource != null) {
                        float[] fArrCreateFloatDataPoints = createFloatDataPoints(dataSource, objectAnimator.getDuration());
                        AnimatedVectorDrawable.nSetPropertyHolderData(jNCreatePathPropertyHolder, fArrCreateFloatDataPoints, fArrCreateFloatDataPoints.length);
                    }
                }
            } else {
                if (cls != Integer.class && cls != Integer.TYPE) {
                    if (this.mDrawable.mAnimatedVectorState.mShouldIgnoreInvalidAnim) {
                        return;
                    }
                    throw new UnsupportedOperationException("Unsupported type: " + this.mTmpValues.type + ". Only float, int or PathData value is supported for Paths.");
                }
                jNCreatePathPropertyHolder = AnimatedVectorDrawable.nCreatePathColorPropertyHolder(nativePtr, propertyIndex, ((Integer) propertyValues.startValue).intValue(), ((Integer) this.mTmpValues.endValue).intValue());
                PropertyValuesHolder.PropertyValues.DataSource dataSource2 = this.mTmpValues.dataSource;
                if (dataSource2 != null) {
                    int[] iArrCreateIntDataPoints = createIntDataPoints(dataSource2, objectAnimator.getDuration());
                    AnimatedVectorDrawable.nSetPropertyHolderData(jNCreatePathPropertyHolder, iArrCreateIntDataPoints, iArrCreateIntDataPoints.length);
                }
            }
            createNativeChildAnimator(jNCreatePathPropertyHolder, j2, objectAnimator);
        }

        private void createRTAnimatorForGroup(PropertyValuesHolder[] propertyValuesHolderArr, ObjectAnimator objectAnimator, VectorDrawable.VGroup vGroup, long j2) {
            long nativePtr = vGroup.getNativePtr();
            for (PropertyValuesHolder propertyValuesHolder : propertyValuesHolderArr) {
                propertyValuesHolder.getPropertyValues(this.mTmpValues);
                int propertyIndex = VectorDrawable.VGroup.getPropertyIndex(this.mTmpValues.propertyName);
                PropertyValuesHolder.PropertyValues propertyValues = this.mTmpValues;
                Class cls = propertyValues.type;
                if ((cls == Float.class || cls == Float.TYPE) && propertyIndex >= 0) {
                    long jNCreateGroupPropertyHolder = AnimatedVectorDrawable.nCreateGroupPropertyHolder(nativePtr, propertyIndex, ((Float) propertyValues.startValue).floatValue(), ((Float) this.mTmpValues.endValue).floatValue());
                    PropertyValuesHolder.PropertyValues.DataSource dataSource = this.mTmpValues.dataSource;
                    if (dataSource != null) {
                        float[] fArrCreateFloatDataPoints = createFloatDataPoints(dataSource, objectAnimator.getDuration());
                        AnimatedVectorDrawable.nSetPropertyHolderData(jNCreateGroupPropertyHolder, fArrCreateFloatDataPoints, fArrCreateFloatDataPoints.length);
                    }
                    createNativeChildAnimator(jNCreateGroupPropertyHolder, j2, objectAnimator);
                }
            }
        }

        private void createRTAnimatorForPath(ObjectAnimator objectAnimator, VectorDrawable.VPath vPath, long j2) {
            createNativeChildAnimator(AnimatedVectorDrawable.nCreatePathDataPropertyHolder(vPath.getNativePtr(), ((PathParser.PathData) this.mTmpValues.startValue).getNativePtr(), ((PathParser.PathData) this.mTmpValues.endValue).getNativePtr()), j2, objectAnimator);
        }

        private void createRTAnimatorForRootGroup(PropertyValuesHolder[] propertyValuesHolderArr, ObjectAnimator objectAnimator, VectorDrawable.VectorDrawableState vectorDrawableState, long j2) {
            Float f2;
            Float f3;
            long nativeRenderer = vectorDrawableState.getNativeRenderer();
            if (!objectAnimator.getPropertyName().equals("alpha")) {
                if (!this.mDrawable.mAnimatedVectorState.mShouldIgnoreInvalidAnim) {
                    throw new UnsupportedOperationException("Only alpha is supported for root group");
                }
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= propertyValuesHolderArr.length) {
                    f2 = null;
                    f3 = null;
                    break;
                }
                propertyValuesHolderArr[i2].getPropertyValues(this.mTmpValues);
                if (this.mTmpValues.propertyName.equals("alpha")) {
                    PropertyValuesHolder.PropertyValues propertyValues = this.mTmpValues;
                    f2 = (Float) propertyValues.startValue;
                    f3 = (Float) propertyValues.endValue;
                    break;
                }
                i2++;
            }
            if (f2 == null && f3 == null) {
                if (!this.mDrawable.mAnimatedVectorState.mShouldIgnoreInvalidAnim) {
                    throw new UnsupportedOperationException("No alpha values are specified");
                }
                return;
            }
            long jNCreateRootAlphaPropertyHolder = AnimatedVectorDrawable.nCreateRootAlphaPropertyHolder(nativeRenderer, f2.floatValue(), f3.floatValue());
            PropertyValuesHolder.PropertyValues.DataSource dataSource = this.mTmpValues.dataSource;
            if (dataSource != null) {
                float[] fArrCreateFloatDataPoints = createFloatDataPoints(dataSource, objectAnimator.getDuration());
                AnimatedVectorDrawable.nSetPropertyHolderData(jNCreateRootAlphaPropertyHolder, fArrCreateFloatDataPoints, fArrCreateFloatDataPoints.length);
            }
            createNativeChildAnimator(jNCreateRootAlphaPropertyHolder, j2, objectAnimator);
        }

        private void endAnimation() {
            AnimatedVectorDrawable.nEnd(this.mSetPtr);
            invalidateOwningView();
        }

        private static int getFrameCount(long j2) {
            int iMax = Math.max(2, (int) Math.ceil(j2 / ((double) ((int) (Choreographer.getInstance().getFrameIntervalNanos() / TimeUtils.NANOS_PER_MS)))));
            if (iMax <= 300) {
                return iMax;
            }
            Log.w(AnimatedVectorDrawable.LOGTAG, "Duration for the animation is too long :" + j2 + ", the animation will subsample the keyframe or path data.");
            return 300;
        }

        private void handlePendingAction(int i2) {
            if (i2 == 1) {
                startAnimation();
                return;
            }
            if (i2 == 2) {
                reverseAnimation();
            } else if (i2 == 3) {
                resetAnimation();
            } else {
                if (i2 != 4) {
                    throw new UnsupportedOperationException(c.e("Animation action ", i2, "is not supported"));
                }
                endAnimation();
            }
        }

        private void invalidateOwningView() {
            this.mDrawable.invalidateSelf();
        }

        private void onAnimationEnd(int i2) {
            if (i2 != this.mLastListenerId) {
                return;
            }
            this.mStarted = false;
            invalidateOwningView();
            Animator.AnimatorListener animatorListener = this.mListener;
            if (animatorListener != null) {
                animatorListener.onAnimationEnd(null);
            }
        }

        private void parseAnimatorSet(AnimatorSet animatorSet, long j2) {
            ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
            boolean zShouldPlayTogether = animatorSet.shouldPlayTogether();
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                Animator animator = childAnimations.get(i2);
                if (animator instanceof AnimatorSet) {
                    parseAnimatorSet((AnimatorSet) animator, j2);
                } else if (animator instanceof ObjectAnimator) {
                    createRTAnimator((ObjectAnimator) animator, j2);
                }
                if (!zShouldPlayTogether) {
                    long totalDuration = animator.getTotalDuration() + j2;
                    this.mContainsSequentialAnimators = true;
                    j2 = totalDuration;
                }
            }
        }

        private void resetAnimation() {
            AnimatedVectorDrawable.nReset(this.mSetPtr);
            invalidateOwningView();
        }

        private void reverseAnimation() {
            this.mStarted = true;
            long j2 = this.mSetPtr;
            int i2 = this.mLastListenerId + 1;
            this.mLastListenerId = i2;
            AnimatedVectorDrawable.nReverse(j2, this, i2);
            invalidateOwningView();
            Animator.AnimatorListener animatorListener = this.mListener;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(null);
            }
        }

        private void startAnimation() {
            this.mStarted = true;
            long j2 = this.mSetPtr;
            int i2 = this.mLastListenerId + 1;
            this.mLastListenerId = i2;
            AnimatedVectorDrawable.nStart(j2, this, i2);
            invalidateOwningView();
            Animator.AnimatorListener animatorListener = this.mListener;
            if (animatorListener != null) {
                animatorListener.onAnimationStart(null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void transferPendingActions(VectorDrawableAnimator vectorDrawableAnimator) {
            for (int i2 = 0; i2 < this.mPendingAnimationActions.size(); i2++) {
                int i3 = this.mPendingAnimationActions.get(i2);
                if (i3 == 1) {
                    vectorDrawableAnimator.start();
                } else if (i3 == 4) {
                    vectorDrawableAnimator.end();
                } else if (i3 == 2) {
                    vectorDrawableAnimator.reverse();
                } else {
                    if (i3 != 3) {
                        throw new UnsupportedOperationException(c.e("Animation action ", i3, "is not supported"));
                    }
                    vectorDrawableAnimator.reset();
                }
            }
            this.mPendingAnimationActions.clear();
        }

        private boolean useLastSeenTarget() {
            WeakReference<RenderNode> weakReference = this.mLastSeenTarget;
            if (weakReference != null) {
                return useTarget(weakReference.get());
            }
            return false;
        }

        private boolean useTarget(RenderNode renderNode) {
            if (renderNode == null || !renderNode.isAttached()) {
                return false;
            }
            renderNode.registerVectorDrawableAnimator(this);
            return true;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean canReverse() {
            return this.mIsReversible;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void end() {
            if (this.mInitialized) {
                if (useLastSeenTarget()) {
                    endAnimation();
                } else {
                    addPendingAction(4);
                }
            }
        }

        public long getAnimatorNativePtr() {
            return this.mSetPtr;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void init(AnimatorSet animatorSet) {
            if (this.mInitialized) {
                throw new UnsupportedOperationException("VectorDrawableAnimator cannot be re-initialized");
            }
            parseAnimatorSet(animatorSet, 0L);
            AnimatedVectorDrawable.nSetVectorDrawableTarget(this.mSetPtr, this.mDrawable.mAnimatedVectorState.mVectorDrawable.getNativeTree());
            this.mInitialized = true;
            this.mIsInfinite = animatorSet.getTotalDuration() == -1;
            this.mIsReversible = true;
            if (this.mContainsSequentialAnimators) {
                this.mIsReversible = false;
                return;
            }
            for (int i2 = 0; i2 < this.mStartDelays.size(); i2++) {
                if (this.mStartDelays.get(i2) > 0) {
                    this.mIsReversible = false;
                    return;
                }
            }
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean isInfinite() {
            return this.mIsInfinite;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean isRunning() {
            if (this.mInitialized) {
                return this.mStarted;
            }
            return false;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean isStarted() {
            return this.mStarted;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void onDraw(Canvas canvas) {
            if (canvas.isHardwareAccelerated()) {
                recordLastSeenTarget((DisplayListCanvas) canvas);
            }
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void pause() {
        }

        public void recordLastSeenTarget(DisplayListCanvas displayListCanvas) {
            RenderNode target = RenderNodeAnimatorSetHelper.getTarget(displayListCanvas);
            this.mLastSeenTarget = new WeakReference<>(target);
            if ((this.mInitialized || this.mPendingAnimationActions.size() > 0) && useTarget(target)) {
                for (int i2 = 0; i2 < this.mPendingAnimationActions.size(); i2++) {
                    handlePendingAction(this.mPendingAnimationActions.get(i2));
                }
                this.mPendingAnimationActions.clear();
            }
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void removeListener(Animator.AnimatorListener animatorListener) {
            this.mListener = null;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void reset() {
            if (this.mInitialized) {
                if (useLastSeenTarget()) {
                    resetAnimation();
                } else {
                    addPendingAction(3);
                }
            }
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void resume() {
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void reverse() {
            if (this.mIsReversible && this.mInitialized) {
                if (useLastSeenTarget()) {
                    reverseAnimation();
                } else {
                    addPendingAction(2);
                }
            }
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void setListener(Animator.AnimatorListener animatorListener) {
            this.mListener = animatorListener;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void start() {
            if (this.mInitialized) {
                if (useLastSeenTarget()) {
                    startAnimation();
                } else {
                    addPendingAction(1);
                }
            }
        }
    }

    public static class VectorDrawableAnimatorUI implements VectorDrawableAnimator {
        private final Drawable mDrawable;
        private AnimatorSet mSet = null;
        private ArrayList<Animator.AnimatorListener> mListenerArray = null;
        private boolean mIsInfinite = false;

        public VectorDrawableAnimatorUI(AnimatedVectorDrawable animatedVectorDrawable) {
            this.mDrawable = animatedVectorDrawable;
        }

        private void invalidateOwningView() {
            this.mDrawable.invalidateSelf();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean canReverse() {
            AnimatorSet animatorSet = this.mSet;
            return animatorSet != null && animatorSet.canReverse();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void end() {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet == null) {
                return;
            }
            animatorSet.end();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void init(AnimatorSet animatorSet) {
            if (this.mSet != null) {
                throw new UnsupportedOperationException("VectorDrawableAnimator cannot be re-initialized");
            }
            AnimatorSet animatorSetMo0clone = animatorSet.mo0clone();
            this.mSet = animatorSetMo0clone;
            this.mIsInfinite = animatorSetMo0clone.getTotalDuration() == -1;
            ArrayList<Animator.AnimatorListener> arrayList = this.mListenerArray;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            for (int i2 = 0; i2 < this.mListenerArray.size(); i2++) {
                this.mSet.addListener(this.mListenerArray.get(i2));
            }
            this.mListenerArray.clear();
            this.mListenerArray = null;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean isInfinite() {
            return this.mIsInfinite;
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean isRunning() {
            AnimatorSet animatorSet = this.mSet;
            return animatorSet != null && animatorSet.isRunning();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public boolean isStarted() {
            AnimatorSet animatorSet = this.mSet;
            return animatorSet != null && animatorSet.isStarted();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void onDraw(Canvas canvas) {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet == null || !animatorSet.isStarted()) {
                return;
            }
            invalidateOwningView();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void pause() {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet == null) {
                return;
            }
            animatorSet.pause();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void removeListener(Animator.AnimatorListener animatorListener) {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet != null) {
                animatorSet.removeListener(animatorListener);
                return;
            }
            ArrayList<Animator.AnimatorListener> arrayList = this.mListenerArray;
            if (arrayList == null) {
                return;
            }
            arrayList.remove(animatorListener);
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void reset() {
            if (this.mSet == null) {
                return;
            }
            start();
            this.mSet.cancel();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void resume() {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet == null) {
                return;
            }
            animatorSet.resume();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void reverse() {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet == null) {
                return;
            }
            animatorSet.reverse();
            invalidateOwningView();
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void setListener(Animator.AnimatorListener animatorListener) {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet != null) {
                animatorSet.addListener(animatorListener);
                return;
            }
            if (this.mListenerArray == null) {
                this.mListenerArray = new ArrayList<>();
            }
            this.mListenerArray.add(animatorListener);
        }

        @Override // android.graphics.drawable.AnimatedVectorDrawable.VectorDrawableAnimator
        public void start() {
            AnimatorSet animatorSet = this.mSet;
            if (animatorSet == null || animatorSet.isStarted()) {
                return;
            }
            this.mSet.start();
            invalidateOwningView();
        }
    }

    private static boolean containsSameValueType(PropertyValuesHolder propertyValuesHolder, Property property) {
        Class valueType = propertyValuesHolder.getValueType();
        Class type = property.getType();
        Class cls = Float.TYPE;
        if (valueType == cls || valueType == Float.class) {
            return type == cls || type == Float.class;
        }
        Class cls2 = Integer.TYPE;
        if (valueType == cls2 || valueType == Integer.class) {
            return type == cls2 || type == Integer.class;
        }
        return valueType == type;
    }

    private void ensureAnimatorSet() {
        if (this.mAnimatorSetFromXml == null) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.mAnimatorSetFromXml = animatorSet;
            this.mAnimatedVectorState.prepareLocalAnimators(animatorSet, this.mRes);
            this.mAnimatorSet.init(this.mAnimatorSetFromXml);
            this.mRes = null;
        }
    }

    private void fallbackOntoUI() {
        VectorDrawableAnimator vectorDrawableAnimator = this.mAnimatorSet;
        if (vectorDrawableAnimator instanceof VectorDrawableAnimatorRT) {
            VectorDrawableAnimatorRT vectorDrawableAnimatorRT = (VectorDrawableAnimatorRT) vectorDrawableAnimator;
            VectorDrawableAnimatorUI vectorDrawableAnimatorUI = new VectorDrawableAnimatorUI(this);
            this.mAnimatorSet = vectorDrawableAnimatorUI;
            AnimatorSet animatorSet = this.mAnimatorSetFromXml;
            if (animatorSet != null) {
                vectorDrawableAnimatorUI.init(animatorSet);
            }
            if (vectorDrawableAnimatorRT.mListener != null) {
                this.mAnimatorSet.setListener(vectorDrawableAnimatorRT.mListener);
            }
            vectorDrawableAnimatorRT.transferPendingActions(this.mAnimatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nAddAnimator(long j2, long j3, long j4, long j5, long j6, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateAnimatorSet();

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateGroupPropertyHolder(long j2, int i2, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreatePathColorPropertyHolder(long j2, int i2, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreatePathDataPropertyHolder(long j2, long j3, long j4);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreatePathPropertyHolder(long j2, int i2, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateRootAlphaPropertyHolder(long j2, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nEnd(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nReset(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nReverse(long j2, VectorDrawableAnimatorRT vectorDrawableAnimatorRT, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetPropertyHolderData(long j2, float[] fArr, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetPropertyHolderData(long j2, int[] iArr, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetVectorDrawableTarget(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nStart(long j2, VectorDrawableAnimatorRT vectorDrawableAnimatorRT, int i2);

    private void removeAnimatorSetListener() {
        Animator.AnimatorListener animatorListener = this.mAnimatorListener;
        if (animatorListener != null) {
            this.mAnimatorSet.removeListener(animatorListener);
            this.mAnimatorListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldIgnoreInvalidAnimation() {
        Application applicationCurrentApplication = ActivityThread.currentApplication();
        return applicationCurrentApplication == null || applicationCurrentApplication.getApplicationInfo() == null || applicationCurrentApplication.getApplicationInfo().targetSdkVersion < 24;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateAnimatorProperty(Animator animator, String str, VectorDrawable vectorDrawable, boolean z2) {
        if (!(animator instanceof ObjectAnimator)) {
            if (animator instanceof AnimatorSet) {
                Iterator<Animator> it = ((AnimatorSet) animator).getChildAnimations().iterator();
                while (it.hasNext()) {
                    updateAnimatorProperty(it.next(), str, vectorDrawable, z2);
                }
                return;
            }
            return;
        }
        for (PropertyValuesHolder propertyValuesHolder : ((ObjectAnimator) animator).getValues()) {
            String propertyName = propertyValuesHolder.getPropertyName();
            Object targetByName = vectorDrawable.getTargetByName(str);
            Property property = targetByName instanceof VectorDrawable.VObject ? ((VectorDrawable.VObject) targetByName).getProperty(propertyName) : targetByName instanceof VectorDrawable.VectorDrawableState ? ((VectorDrawable.VectorDrawableState) targetByName).getProperty(propertyName) : null;
            if (property != null) {
                if (containsSameValueType(propertyValuesHolder, property)) {
                    propertyValuesHolder.setProperty(property);
                } else if (!z2) {
                    StringBuilder sbV = c.v("Wrong valueType for Property: ", propertyName, ".  Expected type: ");
                    sbV.append(property.getType().toString());
                    sbV.append(". Actual type defined in resources: ");
                    sbV.append(propertyValuesHolder.getValueType().toString());
                    throw new RuntimeException(sbV.toString());
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        VectorDrawable vectorDrawable = this.mAnimatedVectorState.mVectorDrawable;
        if (vectorDrawable != null && vectorDrawable.canApplyTheme()) {
            vectorDrawable.applyTheme(theme);
        }
        if (theme != null) {
            this.mAnimatedVectorState.inflatePendingAnimators(theme.getResources(), theme);
        }
        if (this.mAnimatedVectorState.mPendingAnims == null) {
            this.mRes = null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        AnimatedVectorDrawableState animatedVectorDrawableState = this.mAnimatedVectorState;
        return (animatedVectorDrawableState != null && animatedVectorDrawableState.canApplyTheme()) || super.canApplyTheme();
    }

    public boolean canReverse() {
        return this.mAnimatorSet.canReverse();
    }

    @Override // android.graphics.drawable.Animatable2
    public void clearAnimationCallbacks() {
        removeAnimatorSetListener();
        ArrayList<Animatable2.AnimationCallback> arrayList = this.mAnimationCallbacks;
        if (arrayList == null) {
            return;
        }
        arrayList.clear();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        VectorDrawable vectorDrawable = this.mAnimatedVectorState.mVectorDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.clearMutated();
        }
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!canvas.isHardwareAccelerated()) {
            VectorDrawableAnimator vectorDrawableAnimator = this.mAnimatorSet;
            if ((vectorDrawableAnimator instanceof VectorDrawableAnimatorRT) && !vectorDrawableAnimator.isRunning() && ((VectorDrawableAnimatorRT) this.mAnimatorSet).mPendingAnimationActions.size() > 0) {
                fallbackOntoUI();
            }
        }
        this.mAnimatorSet.onDraw(canvas);
        this.mAnimatedVectorState.mVectorDrawable.draw(canvas);
    }

    public void forceAnimationOnUI() {
        VectorDrawableAnimator vectorDrawableAnimator = this.mAnimatorSet;
        if (vectorDrawableAnimator instanceof VectorDrawableAnimatorRT) {
            if (((VectorDrawableAnimatorRT) vectorDrawableAnimator).isRunning()) {
                throw new UnsupportedOperationException("Cannot force Animated Vector Drawable to run on UI thread when the animation has started on RenderThread.");
            }
            fallbackOntoUI();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAnimatedVectorState.mVectorDrawable.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mAnimatedVectorState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mAnimatedVectorState.mVectorDrawable.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mAnimatedVectorState.mChangingConfigurations = getChangingConfigurations();
        return this.mAnimatedVectorState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mAnimatedVectorState.mVectorDrawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mAnimatedVectorState.mVectorDrawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        return this.mAnimatedVectorState.mVectorDrawable.getOpticalInsets();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.mAnimatedVectorState.mVectorDrawable.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableState animatedVectorDrawableState = this.mAnimatedVectorState;
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        float f2 = 1.0f;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (ANIMATED_VECTOR.equals(name)) {
                    TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedVectorDrawable);
                    int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        VectorDrawable vectorDrawable = (VectorDrawable) resources.getDrawable(resourceId, theme).mutate();
                        vectorDrawable.setAllowCaching(false);
                        vectorDrawable.setCallback(this.mCallback);
                        float pixelSize = vectorDrawable.getPixelSize();
                        VectorDrawable vectorDrawable2 = animatedVectorDrawableState.mVectorDrawable;
                        if (vectorDrawable2 != null) {
                            vectorDrawable2.setCallback(null);
                        }
                        animatedVectorDrawableState.mVectorDrawable = vectorDrawable;
                        f2 = pixelSize;
                    }
                    typedArrayObtainAttributes.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes2 = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedVectorDrawableTarget);
                    String string = typedArrayObtainAttributes2.getString(0);
                    int resourceId2 = typedArrayObtainAttributes2.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        if (theme != null) {
                            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(resources, theme, resourceId2, f2);
                            updateAnimatorProperty(animatorLoadAnimator, string, animatedVectorDrawableState.mVectorDrawable, animatedVectorDrawableState.mShouldIgnoreInvalidAnim);
                            animatedVectorDrawableState.addTargetAnimator(string, animatorLoadAnimator);
                        } else {
                            animatedVectorDrawableState.addPendingAnimator(resourceId2, f2, string);
                        }
                    }
                    typedArrayObtainAttributes2.recycle();
                }
            }
            eventType = xmlPullParser.next();
        }
        if (animatedVectorDrawableState.mPendingAnims == null) {
            resources = null;
        }
        this.mRes = resources;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mAnimatorSet.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mAnimatedVectorState.mVectorDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mAnimatedVectorState = new AnimatedVectorDrawableState(this.mAnimatedVectorState, this.mCallback, this.mRes);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.mAnimatedVectorState.mVectorDrawable.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        return this.mAnimatedVectorState.mVectorDrawable.setLayoutDirection(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        return this.mAnimatedVectorState.mVectorDrawable.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return this.mAnimatedVectorState.mVectorDrawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Animatable2
    public void registerAnimationCallback(Animatable2.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.mAnimationCallbacks == null) {
            this.mAnimationCallbacks = new ArrayList<>();
        }
        this.mAnimationCallbacks.add(animationCallback);
        if (this.mAnimatorListener == null) {
            this.mAnimatorListener = new AnimatorListenerAdapter() { // from class: android.graphics.drawable.AnimatedVectorDrawable.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ArrayList arrayList = new ArrayList(AnimatedVectorDrawable.this.mAnimationCallbacks);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2.AnimationCallback) arrayList.get(i2)).onAnimationEnd(AnimatedVectorDrawable.this);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ArrayList arrayList = new ArrayList(AnimatedVectorDrawable.this.mAnimationCallbacks);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2.AnimationCallback) arrayList.get(i2)).onAnimationStart(AnimatedVectorDrawable.this);
                    }
                }
            };
        }
        this.mAnimatorSet.setListener(this.mAnimatorListener);
    }

    public void reset() {
        ensureAnimatorSet();
        this.mAnimatorSet.reset();
    }

    public void reverse() {
        ensureAnimatorSet();
        if (canReverse()) {
            this.mAnimatorSet.reverse();
        } else {
            Log.w(LOGTAG, "AnimatedVectorDrawable can't reverse()");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.mAnimatedVectorState.mVectorDrawable.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mAnimatedVectorState.mVectorDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        this.mAnimatedVectorState.mVectorDrawable.setHotspot(f2, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        this.mAnimatedVectorState.mVectorDrawable.setHotspotBounds(i2, i3, i4, i5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.mAnimatedVectorState.mVectorDrawable.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.mAnimatedVectorState.mVectorDrawable.setTintMode(mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        if (this.mAnimatorSet.isInfinite() && this.mAnimatorSet.isStarted()) {
            if (z2) {
                this.mAnimatorSet.resume();
            } else {
                this.mAnimatorSet.pause();
            }
        }
        this.mAnimatedVectorState.mVectorDrawable.setVisible(z2, z3);
        return super.setVisible(z2, z3);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        ensureAnimatorSet();
        this.mAnimatorSet.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimatorSet.end();
    }

    @Override // android.graphics.drawable.Animatable2
    public boolean unregisterAnimationCallback(Animatable2.AnimationCallback animationCallback) {
        ArrayList<Animatable2.AnimationCallback> arrayList = this.mAnimationCallbacks;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(animationCallback);
        if (this.mAnimationCallbacks.size() == 0) {
            removeAnimatorSetListener();
        }
        return zRemove;
    }

    public AnimatedVectorDrawable() {
        this(null, null);
    }

    private AnimatedVectorDrawable(AnimatedVectorDrawableState animatedVectorDrawableState, Resources resources) {
        this.mAnimatorSetFromXml = null;
        this.mAnimationCallbacks = null;
        this.mAnimatorListener = null;
        Drawable.Callback callback = new Drawable.Callback() { // from class: android.graphics.drawable.AnimatedVectorDrawable.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                AnimatedVectorDrawable.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
                AnimatedVectorDrawable.this.scheduleSelf(runnable, j2);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                AnimatedVectorDrawable.this.unscheduleSelf(runnable);
            }
        };
        this.mCallback = callback;
        this.mAnimatedVectorState = new AnimatedVectorDrawableState(animatedVectorDrawableState, callback, resources);
        this.mAnimatorSet = new VectorDrawableAnimatorRT(this);
        this.mRes = resources;
    }
}
