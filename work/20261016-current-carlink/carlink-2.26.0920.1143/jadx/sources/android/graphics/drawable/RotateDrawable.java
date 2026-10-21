package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.MathUtils;
import android.util.TypedValue;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class RotateDrawable extends DrawableWrapper {
    private static final int MAX_LEVEL = 10000;
    private RotateState mState;

    public static final class RotateState extends DrawableWrapper.DrawableWrapperState {
        float mCurrentDegrees;
        float mFromDegrees;
        float mPivotX;
        boolean mPivotXRel;
        float mPivotY;
        boolean mPivotYRel;
        private int[] mThemeAttrs;
        float mToDegrees;

        public RotateState(RotateState rotateState, Resources resources) {
            super(rotateState, resources);
            this.mPivotXRel = true;
            this.mPivotX = 0.5f;
            this.mPivotYRel = true;
            this.mPivotY = 0.5f;
            this.mFromDegrees = 0.0f;
            this.mToDegrees = 360.0f;
            this.mCurrentDegrees = 0.0f;
            if (rotateState != null) {
                this.mPivotXRel = rotateState.mPivotXRel;
                this.mPivotX = rotateState.mPivotX;
                this.mPivotYRel = rotateState.mPivotYRel;
                this.mPivotY = rotateState.mPivotY;
                this.mFromDegrees = rotateState.mFromDegrees;
                this.mToDegrees = rotateState.mToDegrees;
                this.mCurrentDegrees = rotateState.mCurrentDegrees;
            }
        }

        @Override // android.graphics.drawable.DrawableWrapper.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new RotateDrawable(this, resources);
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        RotateState rotateState = this.mState;
        if (rotateState == null) {
            return;
        }
        rotateState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        rotateState.mThemeAttrs = typedArray.extractThemeAttrs();
        if (typedArray.hasValue(4)) {
            TypedValue typedValuePeekValue = typedArray.peekValue(4);
            boolean z2 = typedValuePeekValue.type == 6;
            rotateState.mPivotXRel = z2;
            rotateState.mPivotX = z2 ? typedValuePeekValue.getFraction(1.0f, 1.0f) : typedValuePeekValue.getFloat();
        }
        if (typedArray.hasValue(5)) {
            TypedValue typedValuePeekValue2 = typedArray.peekValue(5);
            boolean z3 = typedValuePeekValue2.type == 6;
            rotateState.mPivotYRel = z3;
            rotateState.mPivotY = z3 ? typedValuePeekValue2.getFraction(1.0f, 1.0f) : typedValuePeekValue2.getFloat();
        }
        rotateState.mFromDegrees = typedArray.getFloat(2, rotateState.mFromDegrees);
        rotateState.mToDegrees = typedArray.getFloat(3, rotateState.mToDegrees);
        rotateState.mCurrentDegrees = rotateState.mFromDegrees;
    }

    private void verifyRequiredAttributes(TypedArray typedArray) throws XmlPullParserException {
        if (getDrawable() == null) {
            if (this.mState.mThemeAttrs == null || this.mState.mThemeAttrs[1] == 0) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <rotate> tag requires a 'drawable' attribute or child tag defining a drawable"));
            }
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        RotateState rotateState = this.mState;
        if (rotateState == null || rotateState.mThemeAttrs == null) {
            return;
        }
        TypedArray typedArrayResolveAttributes = theme.resolveAttributes(rotateState.mThemeAttrs, R.styleable.RotateDrawable);
        try {
            try {
                updateStateFromTypedArray(typedArrayResolveAttributes);
                verifyRequiredAttributes(typedArrayResolveAttributes);
            } catch (XmlPullParserException e2) {
                Drawable.rethrowAsRuntimeException(e2);
            }
        } finally {
            typedArrayResolveAttributes.recycle();
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = getDrawable();
        Rect bounds = drawable.getBounds();
        int i2 = bounds.right - bounds.left;
        int i3 = bounds.bottom - bounds.top;
        RotateState rotateState = this.mState;
        float f2 = rotateState.mPivotXRel ? i2 * rotateState.mPivotX : rotateState.mPivotX;
        float f3 = rotateState.mPivotYRel ? i3 * rotateState.mPivotY : rotateState.mPivotY;
        int iSave = canvas.save();
        canvas.rotate(rotateState.mCurrentDegrees, f2 + bounds.left, f3 + bounds.top);
        drawable.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    public float getFromDegrees() {
        return this.mState.mFromDegrees;
    }

    public float getPivotX() {
        return this.mState.mPivotX;
    }

    public float getPivotY() {
        return this.mState.mPivotY;
    }

    public float getToDegrees() {
        return this.mState.mToDegrees;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.RotateDrawable);
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        verifyRequiredAttributes(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
    }

    public boolean isPivotXRelative() {
        return this.mState.mPivotXRel;
    }

    public boolean isPivotYRelative() {
        return this.mState.mPivotYRel;
    }

    @Override // android.graphics.drawable.DrawableWrapper
    public DrawableWrapper.DrawableWrapperState mutateConstantState() {
        RotateState rotateState = new RotateState(this.mState, null);
        this.mState = rotateState;
        return rotateState;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        RotateState rotateState = this.mState;
        this.mState.mCurrentDegrees = MathUtils.lerp(rotateState.mFromDegrees, rotateState.mToDegrees, i2 / 10000.0f);
        invalidateSelf();
        return true;
    }

    public void setFromDegrees(float f2) {
        RotateState rotateState = this.mState;
        if (rotateState.mFromDegrees != f2) {
            rotateState.mFromDegrees = f2;
            invalidateSelf();
        }
    }

    public void setPivotX(float f2) {
        RotateState rotateState = this.mState;
        if (rotateState.mPivotX != f2) {
            rotateState.mPivotX = f2;
            invalidateSelf();
        }
    }

    public void setPivotXRelative(boolean z2) {
        RotateState rotateState = this.mState;
        if (rotateState.mPivotXRel != z2) {
            rotateState.mPivotXRel = z2;
            invalidateSelf();
        }
    }

    public void setPivotY(float f2) {
        RotateState rotateState = this.mState;
        if (rotateState.mPivotY != f2) {
            rotateState.mPivotY = f2;
            invalidateSelf();
        }
    }

    public void setPivotYRelative(boolean z2) {
        RotateState rotateState = this.mState;
        if (rotateState.mPivotYRel != z2) {
            rotateState.mPivotYRel = z2;
            invalidateSelf();
        }
    }

    public void setToDegrees(float f2) {
        RotateState rotateState = this.mState;
        if (rotateState.mToDegrees != f2) {
            rotateState.mToDegrees = f2;
            invalidateSelf();
        }
    }

    public RotateDrawable() {
        this(new RotateState(null, null), null);
    }

    private RotateDrawable(RotateState rotateState, Resources resources) {
        super(rotateState, resources);
        this.mState = rotateState;
    }
}
