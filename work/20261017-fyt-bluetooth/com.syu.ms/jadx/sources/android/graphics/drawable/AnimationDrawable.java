package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimationDrawable extends DrawableContainer implements Runnable, Animatable {
    private final AnimationState mAnimationState;
    private int mCurFrame;
    private boolean mMutated;

    public static final class AnimationState extends DrawableContainer.DrawableContainerState {
        private int[] mDurations;
        private boolean mOneShot;

        public AnimationState(AnimationState animationState, AnimationDrawable animationDrawable, Resources resources) {
            super(animationState, animationDrawable, resources);
            if (animationState != null) {
                this.mDurations = animationState.mDurations;
                this.mOneShot = animationState.mOneShot;
            } else {
                this.mDurations = new int[getCapacity()];
                this.mOneShot = true;
            }
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

    private void nextFrame(boolean z2) {
        boolean z3 = true;
        int i2 = this.mCurFrame + 1;
        int childCount = this.mAnimationState.getChildCount();
        if (i2 >= childCount) {
            i2 = 0;
        }
        if (this.mAnimationState.mOneShot && i2 >= childCount - 1) {
            z3 = false;
        }
        setFrame(i2, z2, z3);
    }

    private void setFrame(int i2, boolean z2, boolean z3) {
        if (i2 >= this.mAnimationState.getChildCount()) {
            return;
        }
        this.mCurFrame = i2;
        selectDrawable(i2);
        if (z2) {
            unscheduleSelf(this);
        }
        if (z3) {
            this.mCurFrame = i2;
            scheduleSelf(this, SystemClock.uptimeMillis() + ((long) this.mAnimationState.mDurations[i2]));
        }
    }

    public void addFrame(Drawable drawable, int i2) {
        this.mAnimationState.addFrame(drawable, i2);
        if (this.mCurFrame < 0) {
            setFrame(0, true, false);
        }
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
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth;
        int next;
        Drawable drawableCreateFromXmlInner;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AnimationDrawable);
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 0);
        this.mAnimationState.setVariablePadding(typedArrayObtainAttributes.getBoolean(1, false));
        this.mAnimationState.mOneShot = typedArrayObtainAttributes.getBoolean(2, false);
        typedArrayObtainAttributes.recycle();
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.AnimationDrawableItem);
                int i2 = typedArrayObtainAttributes2.getInt(0, -1);
                if (i2 < 0) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'duration' attribute");
                }
                int resourceId = typedArrayObtainAttributes2.getResourceId(1, 0);
                typedArrayObtainAttributes2.recycle();
                if (resourceId != 0) {
                    drawableCreateFromXmlInner = resources.getDrawable(resourceId);
                } else {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
                this.mAnimationState.addFrame(drawableCreateFromXmlInner, i2);
                if (drawableCreateFromXmlInner != null) {
                    drawableCreateFromXmlInner.setCallback(this);
                }
            }
        }
        setFrame(0, true, false);
    }

    public boolean isOneShot() {
        return this.mAnimationState.mOneShot;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mCurFrame > -1;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            AnimationState animationState = this.mAnimationState;
            animationState.mDurations = (int[]) animationState.mDurations.clone();
            this.mMutated = true;
        }
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        nextFrame(false);
    }

    public void setOneShot(boolean z2) {
        this.mAnimationState.mOneShot = z2;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (!z2) {
            unscheduleSelf(this);
        } else if (visible || z3) {
            setFrame(0, true, true);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        run();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        this.mCurFrame = -1;
        super.unscheduleSelf(runnable);
    }

    public AnimationDrawable() {
        this(null, null);
    }

    private AnimationDrawable(AnimationState animationState, Resources resources) {
        this.mCurFrame = -1;
        AnimationState animationState2 = new AnimationState(animationState, this, resources);
        this.mAnimationState = animationState2;
        setConstantState(animationState2);
        if (animationState != null) {
            setFrame(0, true, false);
        }
    }
}
