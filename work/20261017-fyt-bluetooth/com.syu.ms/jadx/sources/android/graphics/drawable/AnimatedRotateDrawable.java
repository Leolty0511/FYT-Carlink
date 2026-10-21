package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedRotateDrawable extends Drawable implements Drawable.Callback, Runnable, Animatable {
    private float mCurrentDegrees;
    private float mIncrement;
    private boolean mMutated;
    private boolean mRunning;
    private AnimatedRotateState mState;

    public static final class AnimatedRotateState extends Drawable.ConstantState {
        private boolean mCanConstantState;
        public int mChangingConfigurations;
        private boolean mCheckedConstantState;
        public Drawable mDrawable;
        public int mFrameDuration;
        public int mFramesCount;
        public float mPivotX;
        public boolean mPivotXRel;
        public float mPivotY;
        public boolean mPivotYRel;

        public AnimatedRotateState(AnimatedRotateState animatedRotateState, AnimatedRotateDrawable animatedRotateDrawable, Resources resources) {
            if (animatedRotateState != null) {
                if (resources != null) {
                    this.mDrawable = animatedRotateState.mDrawable.getConstantState().newDrawable(resources);
                } else {
                    this.mDrawable = animatedRotateState.mDrawable.getConstantState().newDrawable();
                }
                this.mDrawable.setCallback(animatedRotateDrawable);
                this.mDrawable.setLayoutDirection(animatedRotateState.mDrawable.getLayoutDirection());
                this.mPivotXRel = animatedRotateState.mPivotXRel;
                this.mPivotX = animatedRotateState.mPivotX;
                this.mPivotYRel = animatedRotateState.mPivotYRel;
                this.mPivotY = animatedRotateState.mPivotY;
                this.mFramesCount = animatedRotateState.mFramesCount;
                this.mFrameDuration = animatedRotateState.mFrameDuration;
                this.mCheckedConstantState = true;
                this.mCanConstantState = true;
            }
        }

        public boolean canConstantState() {
            if (!this.mCheckedConstantState) {
                this.mCanConstantState = this.mDrawable.getConstantState() != null;
                this.mCheckedConstantState = true;
            }
            return this.mCanConstantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimatedRotateDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AnimatedRotateDrawable(this, resources);
        }
    }

    private void init() {
        AnimatedRotateState animatedRotateState = this.mState;
        this.mIncrement = 360.0f / animatedRotateState.mFramesCount;
        Drawable drawable = animatedRotateState.mDrawable;
        if (drawable != null) {
            drawable.setFilterBitmap(true);
            if (drawable instanceof BitmapDrawable) {
                ((BitmapDrawable) drawable).setAntiAlias(true);
            }
        }
    }

    private void nextFrame() {
        unscheduleSelf(this);
        scheduleSelf(this, SystemClock.uptimeMillis() + ((long) this.mState.mFrameDuration));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        AnimatedRotateState animatedRotateState = this.mState;
        Drawable drawable = animatedRotateState.mDrawable;
        Rect bounds = drawable.getBounds();
        int i2 = bounds.right;
        int i3 = bounds.left;
        int i4 = i2 - i3;
        int i5 = bounds.bottom;
        int i6 = bounds.top;
        canvas.rotate(this.mCurrentDegrees, (animatedRotateState.mPivotXRel ? i4 * animatedRotateState.mPivotX : animatedRotateState.mPivotX) + i3, (animatedRotateState.mPivotYRel ? (i5 - i6) * animatedRotateState.mPivotY : animatedRotateState.mPivotY) + i6);
        drawable.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mState.mDrawable.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        AnimatedRotateState animatedRotateState = this.mState;
        return changingConfigurations | animatedRotateState.mChangingConfigurations | animatedRotateState.mDrawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.mState.canConstantState()) {
            return null;
        }
        this.mState.mChangingConfigurations = getChangingConfigurations();
        return this.mState;
    }

    public Drawable getDrawable() {
        return this.mState.mDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mState.mDrawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mState.mDrawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mState.mDrawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.mState.mDrawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AnimatedRotateDrawable);
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 0);
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(2);
        boolean z2 = typedValuePeekValue.type == 6;
        float fraction = z2 ? typedValuePeekValue.getFraction(1.0f, 1.0f) : typedValuePeekValue.getFloat();
        TypedValue typedValuePeekValue2 = typedArrayObtainAttributes.peekValue(3);
        boolean z3 = typedValuePeekValue2.type == 6;
        float fraction2 = z3 ? typedValuePeekValue2.getFraction(1.0f, 1.0f) : typedValuePeekValue2.getFloat();
        setFramesCount(typedArrayObtainAttributes.getInt(5, 12));
        setFramesDuration(typedArrayObtainAttributes.getInt(4, 150));
        int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
        Drawable drawable = resourceId > 0 ? resources.getDrawable(resourceId) : null;
        typedArrayObtainAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next == 2 && (drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet)) == null) {
                Log.w("drawable", "Bad element under <animated-rotate>: " + xmlPullParser.getName());
            }
        }
        if (drawable == null) {
            Log.w("drawable", "No drawable specified for <animated-rotate>");
        }
        AnimatedRotateState animatedRotateState = this.mState;
        animatedRotateState.mDrawable = drawable;
        animatedRotateState.mPivotXRel = z2;
        animatedRotateState.mPivotX = fraction;
        animatedRotateState.mPivotYRel = z3;
        animatedRotateState.mPivotY = fraction2;
        init();
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mState.mDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState.mDrawable.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.mState.mDrawable.setBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // java.lang.Runnable
    public void run() {
        float f2 = this.mCurrentDegrees;
        float f3 = this.mIncrement;
        float f4 = f2 + f3;
        this.mCurrentDegrees = f4;
        if (f4 > 360.0f - f3) {
            this.mCurrentDegrees = 0.0f;
        }
        invalidateSelf();
        nextFrame();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.mState.mDrawable.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mState.mDrawable.setColorFilter(colorFilter);
    }

    public void setFramesCount(int i2) {
        this.mState.mFramesCount = i2;
        this.mIncrement = 360.0f / i2;
    }

    public void setFramesDuration(int i2) {
        this.mState.mFrameDuration = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        this.mState.mDrawable.setVisible(z2, z3);
        boolean visible = super.setVisible(z2, z3);
        if (!z2) {
            unscheduleSelf(this);
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
        unscheduleSelf(this);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public AnimatedRotateDrawable() {
        this(null, null);
    }

    private AnimatedRotateDrawable(AnimatedRotateState animatedRotateState, Resources resources) {
        this.mState = new AnimatedRotateState(animatedRotateState, this, resources);
        init();
    }
}
