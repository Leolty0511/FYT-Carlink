package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.android.ims.ImsConfig;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimationDrawable extends DrawableContainer implements Runnable, Animatable {
    private boolean mAnimating;
    private AnimationState mAnimationState;
    private int mCurFrame;
    private boolean mMutated;
    private boolean mRunning;

    public static final class AnimationState extends DrawableContainer.DrawableContainerState {
        private int[] mDurations;
        private boolean mOneShot;

        public AnimationState(AnimationState animationState, AnimationDrawable animationDrawable, Resources resources) {
            super(animationState, animationDrawable, resources);
            this.mOneShot = false;
            if (animationState != null) {
                this.mDurations = animationState.mDurations;
                this.mOneShot = animationState.mOneShot;
            } else {
                this.mDurations = new int[getCapacity()];
                this.mOneShot = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mutate() {
            this.mDurations = (int[]) this.mDurations.clone();
        }

        public void addFrame(Drawable drawable, int i2) {
            this.mDurations[super.addChild(drawable)] = i2;
        }

        @Override // android.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int i2, int i3) {
            super.growArray(i2, i3);
            int[] iArr = new int[i3];
            System.arraycopy(this.mDurations, 0, iArr, 0, i2);
            this.mDurations = iArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimationDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimationDrawable(this, resources);
        }
    }

    private void inflateChildElements(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next2 == 3) {
                return;
            }
            if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimationDrawableItem);
                int i2 = typedArrayObtainAttributes.getInt(0, -1);
                if (i2 < 0) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'duration' attribute");
                }
                Drawable drawable = typedArrayObtainAttributes.getDrawable(1);
                typedArrayObtainAttributes.recycle();
                if (drawable == null) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                }
                this.mAnimationState.addFrame(drawable, i2);
                if (drawable != null) {
                    drawable.setCallback(this);
                }
            }
        }
    }

    private void nextFrame(boolean z2) {
        int i2 = this.mCurFrame + 1;
        int childCount = this.mAnimationState.getChildCount();
        boolean z3 = this.mAnimationState.mOneShot && i2 >= childCount + (-1);
        if (!this.mAnimationState.mOneShot && i2 >= childCount) {
            i2 = 0;
        }
        setFrame(i2, z2, true ^ z3);
    }

    private void setFrame(int i2, boolean z2, boolean z3) {
        if (i2 >= this.mAnimationState.getChildCount()) {
            return;
        }
        this.mAnimating = z3;
        this.mCurFrame = i2;
        selectDrawable(i2);
        if (z2 || z3) {
            unscheduleSelf(this);
        }
        if (z3) {
            this.mCurFrame = i2;
            this.mRunning = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + ((long) this.mAnimationState.mDurations[i2]));
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        AnimationState animationState = this.mAnimationState;
        animationState.mVariablePadding = typedArray.getBoolean(1, animationState.mVariablePadding);
        AnimationState animationState2 = this.mAnimationState;
        animationState2.mOneShot = typedArray.getBoolean(2, animationState2.mOneShot);
    }

    public void addFrame(Drawable drawable, int i2) {
        this.mAnimationState.addFrame(drawable, i2);
        if (this.mRunning) {
            return;
        }
        setFrame(0, true, false);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    public int getDuration(int i2) {
        return this.mAnimationState.mDurations[i2];
    }

    public Drawable getFrame(int i2) {
        return this.mAnimationState.getChild(i2);
    }

    public int getNumberOfFrames() {
        return this.mAnimationState.getChildCount();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimationDrawable);
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 0);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        updateDensity(resources);
        typedArrayObtainAttributes.recycle();
        inflateChildElements(resources, xmlPullParser, attributeSet, theme);
        setFrame(0, true, false);
    }

    public boolean isOneShot() {
        return this.mAnimationState.mOneShot;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mAnimationState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        nextFrame(false);
    }

    @Override // android.graphics.drawable.DrawableContainer
    public void setConstantState(DrawableContainer.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof AnimationState) {
            this.mAnimationState = (AnimationState) drawableContainerState;
        }
    }

    public void setOneShot(boolean z2) {
        this.mAnimationState.mOneShot = z2;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (!z2) {
            unscheduleSelf(this);
        } else if (z3 || visible) {
            setFrame(z3 || ((!this.mRunning && !this.mAnimationState.mOneShot) || this.mCurFrame >= this.mAnimationState.getChildCount()) ? 0 : this.mCurFrame, true, this.mAnimating);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        boolean z2 = true;
        this.mAnimating = true;
        if (isRunning()) {
            return;
        }
        if (this.mAnimationState.getChildCount() <= 1 && this.mAnimationState.mOneShot) {
            z2 = false;
        }
        setFrame(0, false, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimating = false;
        if (isRunning()) {
            this.mCurFrame = 0;
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        this.mRunning = false;
        super.unscheduleSelf(runnable);
    }

    public AnimationDrawable() {
        this(null, null);
    }

    @Override // android.graphics.drawable.DrawableContainer
    public AnimationState cloneConstantState() {
        return new AnimationState(this.mAnimationState, this, null);
    }

    private AnimationDrawable(AnimationState animationState, Resources resources) {
        this.mCurFrame = 0;
        setConstantState(new AnimationState(animationState, this, resources));
        if (animationState != null) {
            setFrame(0, true, false);
        }
    }
}
