package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedRotateDrawable extends DrawableWrapper implements Animatable {
    private float mCurrentDegrees;
    private float mIncrement;
    private final Runnable mNextFrame;
    private boolean mRunning;
    private AnimatedRotateState mState;

    public static final class AnimatedRotateState extends DrawableWrapper.DrawableWrapperState {
        int mFrameDuration;
        int mFramesCount;
        float mPivotX;
        boolean mPivotXRel;
        float mPivotY;
        boolean mPivotYRel;
        private int[] mThemeAttrs;

        public AnimatedRotateState(AnimatedRotateState animatedRotateState, Resources resources) {
            super(animatedRotateState, resources);
            this.mPivotXRel = false;
            this.mPivotX = 0.0f;
            this.mPivotYRel = false;
            this.mPivotY = 0.0f;
            this.mFrameDuration = 150;
            this.mFramesCount = 12;
            if (animatedRotateState != null) {
                this.mPivotXRel = animatedRotateState.mPivotXRel;
                this.mPivotX = animatedRotateState.mPivotX;
                this.mPivotYRel = animatedRotateState.mPivotYRel;
                this.mPivotY = animatedRotateState.mPivotY;
                this.mFramesCount = animatedRotateState.mFramesCount;
                this.mFrameDuration = animatedRotateState.mFrameDuration;
            }
        }

        @Override // android.graphics.drawable.DrawableWrapper.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimatedRotateDrawable(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nextFrame() {
        unscheduleSelf(this.mNextFrame);
        scheduleSelf(this.mNextFrame, SystemClock.uptimeMillis() + ((long) this.mState.mFrameDuration));
    }

    private void updateLocalState() {
        this.mIncrement = 360.0f / this.mState.mFramesCount;
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.setFilterBitmap(true);
            if (drawable instanceof BitmapDrawable) {
                ((BitmapDrawable) drawable).setAntiAlias(true);
            }
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        AnimatedRotateState animatedRotateState = this.mState;
        if (animatedRotateState == null) {
            return;
        }
        animatedRotateState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        animatedRotateState.mThemeAttrs = typedArray.extractThemeAttrs();
        if (typedArray.hasValue(2)) {
            TypedValue typedValuePeekValue = typedArray.peekValue(2);
            boolean z2 = typedValuePeekValue.type == 6;
            animatedRotateState.mPivotXRel = z2;
            animatedRotateState.mPivotX = z2 ? typedValuePeekValue.getFraction(1.0f, 1.0f) : typedValuePeekValue.getFloat();
        }
        if (typedArray.hasValue(3)) {
            TypedValue typedValuePeekValue2 = typedArray.peekValue(3);
            boolean z3 = typedValuePeekValue2.type == 6;
            animatedRotateState.mPivotYRel = z3;
            animatedRotateState.mPivotY = z3 ? typedValuePeekValue2.getFraction(1.0f, 1.0f) : typedValuePeekValue2.getFloat();
        }
        setFramesCount(typedArray.getInt(5, animatedRotateState.mFramesCount));
        setFramesDuration(typedArray.getInt(4, animatedRotateState.mFrameDuration));
    }

    private void verifyRequiredAttributes(TypedArray typedArray) throws XmlPullParserException {
        if (getDrawable() == null) {
            if (this.mState.mThemeAttrs == null || this.mState.mThemeAttrs[1] == 0) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <animated-rotate> tag requires a 'drawable' attribute or child tag defining a drawable"));
            }
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        AnimatedRotateState animatedRotateState = this.mState;
        if (animatedRotateState == null) {
            return;
        }
        if (animatedRotateState.mThemeAttrs != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(animatedRotateState.mThemeAttrs, R.styleable.AnimatedRotateDrawable);
            try {
                try {
                    updateStateFromTypedArray(typedArrayResolveAttributes);
                    verifyRequiredAttributes(typedArrayResolveAttributes);
                } catch (XmlPullParserException e2) {
                    Drawable.rethrowAsRuntimeException(e2);
                }
                typedArrayResolveAttributes.recycle();
            } catch (Throwable th) {
                typedArrayResolveAttributes.recycle();
                throw th;
            }
        }
        updateLocalState();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = getDrawable();
        Rect bounds = drawable.getBounds();
        int i2 = bounds.right - bounds.left;
        int i3 = bounds.bottom - bounds.top;
        AnimatedRotateState animatedRotateState = this.mState;
        float f2 = animatedRotateState.mPivotXRel ? i2 * animatedRotateState.mPivotX : animatedRotateState.mPivotX;
        float f3 = animatedRotateState.mPivotYRel ? i3 * animatedRotateState.mPivotY : animatedRotateState.mPivotY;
        int iSave = canvas.save();
        canvas.rotate(this.mCurrentDegrees, f2 + bounds.left, f3 + bounds.top);
        drawable.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedRotateDrawable);
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        verifyRequiredAttributes(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        updateLocalState();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.DrawableWrapper
    public DrawableWrapper.DrawableWrapperState mutateConstantState() {
        AnimatedRotateState animatedRotateState = new AnimatedRotateState(this.mState, null);
        this.mState = animatedRotateState;
        return animatedRotateState;
    }

    public void setFramesCount(int i2) {
        this.mState.mFramesCount = i2;
        this.mIncrement = 360.0f / i2;
    }

    public void setFramesDuration(int i2) {
        this.mState.mFrameDuration = i2;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (!z2) {
            unscheduleSelf(this.mNextFrame);
        } else if (visible || z3) {
            this.mCurrentDegrees = 0.0f;
            nextFrame();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        nextFrame();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mRunning = false;
        unscheduleSelf(this.mNextFrame);
    }

    public AnimatedRotateDrawable() {
        this(new AnimatedRotateState(null, null), null);
    }

    private AnimatedRotateDrawable(AnimatedRotateState animatedRotateState, Resources resources) {
        super(animatedRotateState, resources);
        this.mNextFrame = new Runnable() { // from class: android.graphics.drawable.AnimatedRotateDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                AnimatedRotateDrawable animatedRotateDrawable = AnimatedRotateDrawable.this;
                animatedRotateDrawable.mCurrentDegrees = AnimatedRotateDrawable.this.mIncrement + animatedRotateDrawable.mCurrentDegrees;
                if (AnimatedRotateDrawable.this.mCurrentDegrees > 360.0f - AnimatedRotateDrawable.this.mIncrement) {
                    AnimatedRotateDrawable.this.mCurrentDegrees = 0.0f;
                }
                AnimatedRotateDrawable.this.invalidateSelf();
                AnimatedRotateDrawable.this.nextFrame();
            }
        };
        this.mState = animatedRotateState;
        updateLocalState();
    }
}
