package android.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LongSparseLongArray;
import android.util.SparseIntArray;
import android.util.StateSet;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedStateListDrawable extends StateListDrawable {
    private static final String ELEMENT_ITEM = "item";
    private static final String ELEMENT_TRANSITION = "transition";
    private static final String LOGTAG = "AnimatedStateListDrawable";
    private boolean mMutated;
    private AnimatedStateListState mState;
    private Transition mTransition;
    private int mTransitionFromIndex;
    private int mTransitionToIndex;

    public static class AnimatableTransition extends Transition {
        private final Animatable mA;

        public AnimatableTransition(Animatable animatable) {
            super();
            this.mA = animatable;
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void start() {
            this.mA.start();
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void stop() {
            this.mA.stop();
        }
    }

    public static class AnimatedStateListState extends StateListDrawable.StateListState {
        private static final long REVERSED_BIT = 4294967296L;
        private static final long REVERSIBLE_FLAG_BIT = 8589934592L;
        int[] mAnimThemeAttrs;
        SparseIntArray mStateIds;
        LongSparseLongArray mTransitions;

        public AnimatedStateListState(AnimatedStateListState animatedStateListState, AnimatedStateListDrawable animatedStateListDrawable, Resources resources) {
            super(animatedStateListState, animatedStateListDrawable, resources);
            if (animatedStateListState == null) {
                this.mTransitions = new LongSparseLongArray();
                this.mStateIds = new SparseIntArray();
            } else {
                this.mAnimThemeAttrs = animatedStateListState.mAnimThemeAttrs;
                this.mTransitions = animatedStateListState.mTransitions;
                this.mStateIds = animatedStateListState.mStateIds;
            }
        }

        private static long generateTransitionKey(int i2, int i3) {
            return ((long) i3) | (((long) i2) << 32);
        }

        public int addStateSet(int[] iArr, Drawable drawable, int i2) {
            int iAddStateSet = super.addStateSet(iArr, drawable);
            this.mStateIds.put(iAddStateSet, i2);
            return iAddStateSet;
        }

        public int addTransition(int i2, int i3, Drawable drawable, boolean z2) {
            int iAddChild = super.addChild(drawable);
            long jGenerateTransitionKey = generateTransitionKey(i2, i3);
            long j2 = z2 ? 8589934592L : 0L;
            long j3 = iAddChild;
            this.mTransitions.append(jGenerateTransitionKey, j3 | j2);
            if (z2) {
                this.mTransitions.append(generateTransitionKey(i3, i2), 4294967296L | j3 | j2);
            }
            return iAddChild;
        }

        @Override // android.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.DrawableContainer.DrawableContainerState, android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.mAnimThemeAttrs != null || super.canApplyTheme();
        }

        public int getKeyframeIdAt(int i2) {
            if (i2 < 0) {
                return 0;
            }
            return this.mStateIds.get(i2, 0);
        }

        public int indexOfKeyframe(int[] iArr) {
            int iIndexOfStateSet = super.indexOfStateSet(iArr);
            return iIndexOfStateSet >= 0 ? iIndexOfStateSet : super.indexOfStateSet(StateSet.WILD_CARD);
        }

        public int indexOfTransition(int i2, int i3) {
            return (int) this.mTransitions.get(generateTransitionKey(i2, i3), -1L);
        }

        public boolean isTransitionReversed(int i2, int i3) {
            return (this.mTransitions.get(generateTransitionKey(i2, i3), -1L) & 4294967296L) != 0;
        }

        @Override // android.graphics.drawable.StateListDrawable.StateListState
        public void mutate() {
            this.mTransitions = this.mTransitions.m31clone();
            this.mStateIds = this.mStateIds.m34clone();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimatedStateListDrawable(this, null);
        }

        public boolean transitionHasReversibleFlag(int i2, int i3) {
            return (this.mTransitions.get(generateTransitionKey(i2, i3), -1L) & 8589934592L) != 0;
        }

        @Override // android.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawable(this, resources);
        }
    }

    public static class AnimatedVectorDrawableTransition extends Transition {
        private final AnimatedVectorDrawable mAvd;
        private final boolean mHasReversibleFlag;
        private final boolean mReversed;

        public AnimatedVectorDrawableTransition(AnimatedVectorDrawable animatedVectorDrawable, boolean z2, boolean z3) {
            super();
            this.mAvd = animatedVectorDrawable;
            this.mReversed = z2;
            this.mHasReversibleFlag = z3;
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public boolean canReverse() {
            return this.mAvd.canReverse() && this.mHasReversibleFlag;
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void reverse() {
            if (canReverse()) {
                this.mAvd.reverse();
            } else {
                Log.w(AnimatedStateListDrawable.LOGTAG, "Can't reverse, either the reversible is set to false, or the AnimatedVectorDrawable can't reverse");
            }
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void start() {
            if (this.mReversed) {
                reverse();
            } else {
                this.mAvd.start();
            }
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void stop() {
            this.mAvd.stop();
        }
    }

    public static class AnimationDrawableTransition extends Transition {
        private final ObjectAnimator mAnim;
        private final boolean mHasReversibleFlag;

        public AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z2, boolean z3) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i2 = z2 ? numberOfFrames - 1 : 0;
            int i3 = z2 ? 0 : numberOfFrames - 1;
            FrameInterpolator frameInterpolator = new FrameInterpolator(animationDrawable, z2);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i2, i3);
            objectAnimatorOfInt.setAutoCancel(true);
            objectAnimatorOfInt.setDuration(frameInterpolator.getTotalDuration());
            objectAnimatorOfInt.setInterpolator(frameInterpolator);
            this.mHasReversibleFlag = z3;
            this.mAnim = objectAnimatorOfInt;
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public boolean canReverse() {
            return this.mHasReversibleFlag;
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void reverse() {
            this.mAnim.reverse();
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void start() {
            this.mAnim.start();
        }

        @Override // android.graphics.drawable.AnimatedStateListDrawable.Transition
        public void stop() {
            this.mAnim.cancel();
        }
    }

    public static class FrameInterpolator implements TimeInterpolator {
        private int[] mFrameTimes;
        private int mFrames;
        private int mTotalDuration;

        public FrameInterpolator(AnimationDrawable animationDrawable, boolean z2) {
            updateFrames(animationDrawable, z2);
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            int i2 = (int) ((f2 * this.mTotalDuration) + 0.5f);
            int i3 = this.mFrames;
            int[] iArr = this.mFrameTimes;
            int i4 = 0;
            while (i4 < i3) {
                int i5 = iArr[i4];
                if (i2 < i5) {
                    break;
                }
                i2 -= i5;
                i4++;
            }
            return (i4 / i3) + (i4 < i3 ? i2 / this.mTotalDuration : 0.0f);
        }

        public int getTotalDuration() {
            return this.mTotalDuration;
        }

        public int updateFrames(AnimationDrawable animationDrawable, boolean z2) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.mFrames = numberOfFrames;
            int[] iArr = this.mFrameTimes;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.mFrameTimes = new int[numberOfFrames];
            }
            int[] iArr2 = this.mFrameTimes;
            int i2 = 0;
            for (int i3 = 0; i3 < numberOfFrames; i3++) {
                int duration = animationDrawable.getDuration(z2 ? (numberOfFrames - i3) - 1 : i3);
                iArr2[i3] = duration;
                i2 += duration;
            }
            this.mTotalDuration = i2;
            return i2;
        }
    }

    public static abstract class Transition {
        private Transition() {
        }

        public boolean canReverse() {
            return false;
        }

        public void reverse() {
        }

        public abstract void start();

        public abstract void stop();
    }

    private void inflateChildElements(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals("item")) {
                    parseItem(resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals(ELEMENT_TRANSITION)) {
                    parseTransition(resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    private void init() {
        onStateChange(getState());
    }

    private int parseItem(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableItem);
        int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
        Drawable drawable = typedArrayObtainAttributes.getDrawable(1);
        typedArrayObtainAttributes.recycle();
        int[] iArrExtractStateSet = extractStateSet(attributeSet);
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
        }
        return this.mState.addStateSet(iArrExtractStateSet, drawable, resourceId);
    }

    private int parseTransition(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableTransition);
        int resourceId = typedArrayObtainAttributes.getResourceId(2, 0);
        int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
        boolean z2 = typedArrayObtainAttributes.getBoolean(3, false);
        Drawable drawable = typedArrayObtainAttributes.getDrawable(0);
        typedArrayObtainAttributes.recycle();
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
        }
        return this.mState.addTransition(resourceId, resourceId2, drawable, z2);
    }

    private boolean selectTransition(int i2) {
        int currentIndex;
        int iIndexOfTransition;
        Transition animatableTransition;
        Transition transition = this.mTransition;
        if (transition == null) {
            currentIndex = getCurrentIndex();
        } else {
            if (i2 == this.mTransitionToIndex) {
                return true;
            }
            if (i2 == this.mTransitionFromIndex && transition.canReverse()) {
                transition.reverse();
                this.mTransitionToIndex = this.mTransitionFromIndex;
                this.mTransitionFromIndex = i2;
                return true;
            }
            currentIndex = this.mTransitionToIndex;
            transition.stop();
        }
        this.mTransition = null;
        this.mTransitionFromIndex = -1;
        this.mTransitionToIndex = -1;
        AnimatedStateListState animatedStateListState = this.mState;
        int keyframeIdAt = animatedStateListState.getKeyframeIdAt(currentIndex);
        int keyframeIdAt2 = animatedStateListState.getKeyframeIdAt(i2);
        if (keyframeIdAt2 == 0 || keyframeIdAt == 0 || (iIndexOfTransition = animatedStateListState.indexOfTransition(keyframeIdAt, keyframeIdAt2)) < 0) {
            return false;
        }
        boolean zTransitionHasReversibleFlag = animatedStateListState.transitionHasReversibleFlag(keyframeIdAt, keyframeIdAt2);
        selectDrawable(iIndexOfTransition);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            animatableTransition = new AnimationDrawableTransition((AnimationDrawable) current, animatedStateListState.isTransitionReversed(keyframeIdAt, keyframeIdAt2), zTransitionHasReversibleFlag);
        } else {
            if (!(current instanceof AnimatedVectorDrawable)) {
                if (current instanceof Animatable) {
                    animatableTransition = new AnimatableTransition((Animatable) current);
                }
                return false;
            }
            animatableTransition = new AnimatedVectorDrawableTransition((AnimatedVectorDrawable) current, animatedStateListState.isTransitionReversed(keyframeIdAt, keyframeIdAt2), zTransitionHasReversibleFlag);
        }
        animatableTransition.start();
        this.mTransition = animatableTransition;
        this.mTransitionFromIndex = currentIndex;
        this.mTransitionToIndex = i2;
        return true;
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        AnimatedStateListState animatedStateListState = this.mState;
        animatedStateListState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        animatedStateListState.mAnimThemeAttrs = typedArray.extractThemeAttrs();
        animatedStateListState.setVariablePadding(typedArray.getBoolean(2, animatedStateListState.mVariablePadding));
        animatedStateListState.setConstantSize(typedArray.getBoolean(3, animatedStateListState.mConstantSize));
        animatedStateListState.setEnterFadeDuration(typedArray.getInt(4, animatedStateListState.mEnterFadeDuration));
        animatedStateListState.setExitFadeDuration(typedArray.getInt(5, animatedStateListState.mExitFadeDuration));
        setDither(typedArray.getBoolean(0, animatedStateListState.mDither));
        setAutoMirrored(typedArray.getBoolean(6, animatedStateListState.mAutoMirrored));
    }

    public void addState(int[] iArr, Drawable drawable, int i2) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable must not be null");
        }
        this.mState.addStateSet(iArr, drawable, i2);
        onStateChange(getState());
    }

    public <T extends Drawable & Animatable> void addTransition(int i2, int i3, T t2, boolean z2) {
        if (t2 == null) {
            throw new IllegalArgumentException("Transition drawable must not be null");
        }
        this.mState.addTransition(i2, i3, t2, z2);
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        int[] iArr;
        super.applyTheme(theme);
        AnimatedStateListState animatedStateListState = this.mState;
        if (animatedStateListState == null || (iArr = animatedStateListState.mAnimThemeAttrs) == null) {
            return;
        }
        TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.AnimatedRotateDrawable);
        updateStateFromTypedArray(typedArrayResolveAttributes);
        typedArrayResolveAttributes.recycle();
        init();
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawable);
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 1);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        updateDensity(resources);
        typedArrayObtainAttributes.recycle();
        inflateChildElements(resources, xmlPullParser, attributeSet, theme);
        init();
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.mTransition;
        if (transition != null) {
            transition.stop();
            this.mTransition = null;
            selectDrawable(this.mTransitionToIndex);
            this.mTransitionToIndex = -1;
            this.mTransitionFromIndex = -1;
        }
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int iIndexOfKeyframe = this.mState.indexOfKeyframe(iArr);
        boolean z2 = iIndexOfKeyframe != getCurrentIndex() && (selectTransition(iIndexOfKeyframe) || selectDrawable(iIndexOfKeyframe));
        Drawable current = getCurrent();
        return current != null ? z2 | current.setState(iArr) : z2;
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer
    public void setConstantState(DrawableContainer.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof AnimatedStateListState) {
            this.mState = (AnimatedStateListState) drawableContainerState;
        }
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        Transition transition = this.mTransition;
        if (transition != null && (visible || z3)) {
            if (z2) {
                transition.start();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    public AnimatedStateListDrawable() {
        this(null, null);
    }

    private AnimatedStateListDrawable(AnimatedStateListState animatedStateListState, Resources resources) {
        super(null);
        this.mTransitionToIndex = -1;
        this.mTransitionFromIndex = -1;
        setConstantState(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer
    public AnimatedStateListState cloneConstantState() {
        return new AnimatedStateListState(this.mState, this, null);
    }
}
