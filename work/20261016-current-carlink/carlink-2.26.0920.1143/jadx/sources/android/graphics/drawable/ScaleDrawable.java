package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ScaleDrawable extends DrawableWrapper {
    private static final int MAX_LEVEL = 10000;
    private ScaleState mState;
    private final Rect mTmpRect;

    public static final class ScaleState extends DrawableWrapper.DrawableWrapperState {
        private static final float DO_NOT_SCALE = -1.0f;
        int mGravity;
        int mInitialLevel;
        float mScaleHeight;
        float mScaleWidth;
        private int[] mThemeAttrs;
        boolean mUseIntrinsicSizeAsMin;

        public ScaleState(ScaleState scaleState, Resources resources) {
            super(scaleState, resources);
            this.mScaleWidth = -1.0f;
            this.mScaleHeight = -1.0f;
            this.mGravity = 3;
            this.mUseIntrinsicSizeAsMin = false;
            this.mInitialLevel = 0;
            if (scaleState != null) {
                this.mScaleWidth = scaleState.mScaleWidth;
                this.mScaleHeight = scaleState.mScaleHeight;
                this.mGravity = scaleState.mGravity;
                this.mUseIntrinsicSizeAsMin = scaleState.mUseIntrinsicSizeAsMin;
                this.mInitialLevel = scaleState.mInitialLevel;
            }
        }

        @Override // android.graphics.drawable.DrawableWrapper.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ScaleDrawable(this, resources);
        }
    }

    private static float getPercent(TypedArray typedArray, int i2, float f2) {
        int type = typedArray.getType(i2);
        if (type == 6 || type == 0) {
            return typedArray.getFraction(i2, 1, 1, f2);
        }
        String string = typedArray.getString(i2);
        return (string == null || !string.endsWith("%")) ? f2 : Float.parseFloat(string.substring(0, string.length() - 1)) / 100.0f;
    }

    private void updateLocalState() {
        setLevel(this.mState.mInitialLevel);
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        ScaleState scaleState = this.mState;
        if (scaleState == null) {
            return;
        }
        scaleState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        scaleState.mThemeAttrs = typedArray.extractThemeAttrs();
        scaleState.mScaleWidth = getPercent(typedArray, 1, scaleState.mScaleWidth);
        scaleState.mScaleHeight = getPercent(typedArray, 2, scaleState.mScaleHeight);
        scaleState.mGravity = typedArray.getInt(3, scaleState.mGravity);
        scaleState.mUseIntrinsicSizeAsMin = typedArray.getBoolean(4, scaleState.mUseIntrinsicSizeAsMin);
        scaleState.mInitialLevel = typedArray.getInt(5, scaleState.mInitialLevel);
    }

    private void verifyRequiredAttributes(TypedArray typedArray) throws XmlPullParserException {
        if (getDrawable() == null) {
            if (this.mState.mThemeAttrs == null || this.mState.mThemeAttrs[0] == 0) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <scale> tag requires a 'drawable' attribute or child tag defining a drawable"));
            }
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        ScaleState scaleState = this.mState;
        if (scaleState == null) {
            return;
        }
        if (scaleState.mThemeAttrs != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(scaleState.mThemeAttrs, R.styleable.ScaleDrawable);
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
        if (drawable == null || drawable.getLevel() == 0) {
            return;
        }
        drawable.draw(canvas);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = getDrawable();
        if (drawable.getLevel() == 0) {
            return -2;
        }
        int opacity = drawable.getOpacity();
        if (opacity != -1 || drawable.getLevel() >= 10000) {
            return opacity;
        }
        return -3;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.ScaleDrawable);
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        verifyRequiredAttributes(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        updateLocalState();
    }

    @Override // android.graphics.drawable.DrawableWrapper
    public DrawableWrapper.DrawableWrapperState mutateConstantState() {
        ScaleState scaleState = new ScaleState(this.mState, null);
        this.mState = scaleState;
        return scaleState;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = getDrawable();
        Rect rect2 = this.mTmpRect;
        boolean z2 = this.mState.mUseIntrinsicSizeAsMin;
        int level = getLevel();
        int iWidth = rect.width();
        if (this.mState.mScaleWidth > 0.0f) {
            iWidth -= (int) ((((10000 - level) * (iWidth - (z2 ? drawable.getIntrinsicWidth() : 0))) * this.mState.mScaleWidth) / 10000.0f);
        }
        int i2 = iWidth;
        int iHeight = rect.height();
        if (this.mState.mScaleHeight > 0.0f) {
            iHeight -= (int) ((((10000 - level) * (iHeight - (z2 ? drawable.getIntrinsicHeight() : 0))) * this.mState.mScaleHeight) / 10000.0f);
        }
        int i3 = iHeight;
        Gravity.apply(this.mState.mGravity, i2, i3, rect, rect2, getLayoutDirection());
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        drawable.setBounds(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        onBoundsChange(getBounds());
        invalidateSelf();
        return true;
    }

    public ScaleDrawable() {
        this(new ScaleState(null, null), null);
    }

    public ScaleDrawable(Drawable drawable, int i2, float f2, float f3) {
        this(new ScaleState(null, null), null);
        ScaleState scaleState = this.mState;
        scaleState.mGravity = i2;
        scaleState.mScaleWidth = f2;
        scaleState.mScaleHeight = f3;
        setDrawable(drawable);
    }

    private ScaleDrawable(ScaleState scaleState, Resources resources) {
        super(scaleState, resources);
        this.mTmpRect = new Rect();
        this.mState = scaleState;
        updateLocalState();
    }
}
