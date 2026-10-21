package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.util.Log;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ShapeDrawable extends Drawable {
    private boolean mMutated;
    private ShapeState mShapeState;
    private PorterDuffColorFilter mTintFilter;

    public static abstract class ShaderFactory {
        public abstract Shader resize(int i2, int i3);
    }

    public static final class ShapeState extends Drawable.ConstantState {
        int mAlpha;
        int mChangingConfigurations;
        int mIntrinsicHeight;
        int mIntrinsicWidth;
        Rect mPadding;
        final Paint mPaint;
        ShaderFactory mShaderFactory;
        Shape mShape;
        int[] mThemeAttrs;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;

        public ShapeState() {
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mAlpha = 255;
            this.mPaint = new Paint(1);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            ColorStateList colorStateList;
            return this.mThemeAttrs != null || ((colorStateList = this.mTint) != null && colorStateList.canApplyTheme());
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i2 = this.mChangingConfigurations;
            ColorStateList colorStateList = this.mTint;
            return i2 | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ShapeDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ShapeDrawable(this, resources);
        }

        public ShapeState(ShapeState shapeState) {
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mAlpha = 255;
            this.mChangingConfigurations = shapeState.mChangingConfigurations;
            this.mPaint = new Paint(shapeState.mPaint);
            this.mThemeAttrs = shapeState.mThemeAttrs;
            Shape shape = shapeState.mShape;
            if (shape != null) {
                try {
                    this.mShape = shape.mo21clone();
                } catch (CloneNotSupportedException unused) {
                    this.mShape = shapeState.mShape;
                }
            }
            this.mTint = shapeState.mTint;
            this.mTintMode = shapeState.mTintMode;
            if (shapeState.mPadding != null) {
                this.mPadding = new Rect(shapeState.mPadding);
            }
            this.mIntrinsicWidth = shapeState.mIntrinsicWidth;
            this.mIntrinsicHeight = shapeState.mIntrinsicHeight;
            this.mAlpha = shapeState.mAlpha;
            this.mShaderFactory = shapeState.mShaderFactory;
        }
    }

    private static int modulateAlpha(int i2, int i3) {
        return ((i3 + (i3 >>> 7)) * i2) >>> 8;
    }

    private void updateLocalState() {
        PorterDuffColorFilter porterDuffColorFilter = this.mTintFilter;
        ShapeState shapeState = this.mShapeState;
        this.mTintFilter = updateTintFilter(porterDuffColorFilter, shapeState.mTint, shapeState.mTintMode);
    }

    private void updateShape() {
        if (this.mShapeState.mShape != null) {
            Rect bounds = getBounds();
            int iWidth = bounds.width();
            int iHeight = bounds.height();
            this.mShapeState.mShape.resize(iWidth, iHeight);
            ShapeState shapeState = this.mShapeState;
            ShaderFactory shaderFactory = shapeState.mShaderFactory;
            if (shaderFactory != null) {
                shapeState.mPaint.setShader(shaderFactory.resize(iWidth, iHeight));
            }
        }
        invalidateSelf();
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        ShapeState shapeState = this.mShapeState;
        Paint paint = shapeState.mPaint;
        shapeState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        shapeState.mThemeAttrs = typedArray.extractThemeAttrs();
        paint.setColor(typedArray.getColor(4, paint.getColor()));
        paint.setDither(typedArray.getBoolean(0, paint.isDither()));
        shapeState.mIntrinsicWidth = (int) typedArray.getDimension(3, shapeState.mIntrinsicWidth);
        shapeState.mIntrinsicHeight = (int) typedArray.getDimension(2, shapeState.mIntrinsicHeight);
        int i2 = typedArray.getInt(5, -1);
        if (i2 != -1) {
            shapeState.mTintMode = Drawable.parseTintMode(i2, PorterDuff.Mode.SRC_IN);
        }
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            shapeState.mTint = colorStateList;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        ShapeState shapeState = this.mShapeState;
        if (shapeState == null) {
            return;
        }
        int[] iArr = shapeState.mThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.ShapeDrawable);
            updateStateFromTypedArray(typedArrayResolveAttributes);
            typedArrayResolveAttributes.recycle();
        }
        ColorStateList colorStateList = shapeState.mTint;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            shapeState.mTint = shapeState.mTint.obtainForTheme(theme);
        }
        updateLocalState();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z2;
        Rect bounds = getBounds();
        ShapeState shapeState = this.mShapeState;
        Paint paint = shapeState.mPaint;
        int alpha = paint.getAlpha();
        paint.setAlpha(modulateAlpha(alpha, shapeState.mAlpha));
        if (paint.getAlpha() != 0 || paint.getXfermode() != null || paint.hasShadowLayer()) {
            if (this.mTintFilter == null || paint.getColorFilter() != null) {
                z2 = false;
            } else {
                paint.setColorFilter(this.mTintFilter);
                z2 = true;
            }
            if (shapeState.mShape != null) {
                int iSave = canvas.save();
                canvas.translate(bounds.left, bounds.top);
                onDraw(shapeState.mShape, canvas, paint);
                canvas.restoreToCount(iSave);
            } else {
                canvas.drawRect(bounds, paint);
            }
            if (z2) {
                paint.setColorFilter(null);
            }
        }
        paint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mShapeState.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mShapeState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mShapeState.mChangingConfigurations = getChangingConfigurations();
        return this.mShapeState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mShapeState.mIntrinsicHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mShapeState.mIntrinsicWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        ShapeState shapeState = this.mShapeState;
        if (shapeState.mShape != null) {
            return -3;
        }
        Paint paint = shapeState.mPaint;
        if (paint.getXfermode() != null) {
            return -3;
        }
        int alpha = paint.getAlpha();
        if (alpha == 0) {
            return -2;
        }
        return alpha == 255 ? -1 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Shape shape = this.mShapeState.mShape;
        if (shape != null) {
            shape.getOutline(outline);
            outline.setAlpha(getAlpha() / 255.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.mShapeState.mPadding;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public Paint getPaint() {
        return this.mShapeState.mPaint;
    }

    public ShaderFactory getShaderFactory() {
        return this.mShapeState.mShaderFactory;
    }

    public Shape getShape() {
        return this.mShapeState.mShape;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        ColorStateList colorStateList = this.mShapeState.mTint;
        return colorStateList != null && colorStateList.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.ShapeDrawable);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (!inflateTag(name, resources, xmlPullParser, attributeSet)) {
                    Log.w("drawable", "Unknown element: " + name + " for ShapeDrawable " + this);
                }
            }
        }
        updateLocalState();
    }

    public boolean inflateTag(String str, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (!"padding".equals(str)) {
            return false;
        }
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.ShapeDrawablePadding);
        setPadding(typedArrayObtainAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainAttributes.getDimensionPixelOffset(3, 0));
        typedArrayObtainAttributes.recycle();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        return super.isStateful() || ((colorStateList = this.mShapeState.mTint) != null && colorStateList.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mShapeState = new ShapeState(this.mShapeState);
            updateLocalState();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        updateShape();
    }

    public void onDraw(Shape shape, Canvas canvas, Paint paint) {
        shape.draw(canvas, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ShapeState shapeState = this.mShapeState;
        ColorStateList colorStateList = shapeState.mTint;
        if (colorStateList == null || (mode = shapeState.mTintMode) == null) {
            return false;
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.mShapeState.mAlpha = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mShapeState.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        this.mShapeState.mPaint.setDither(z2);
        invalidateSelf();
    }

    public void setIntrinsicHeight(int i2) {
        this.mShapeState.mIntrinsicHeight = i2;
        invalidateSelf();
    }

    public void setIntrinsicWidth(int i2) {
        this.mShapeState.mIntrinsicWidth = i2;
        invalidateSelf();
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        if ((i2 | i3 | i4 | i5) == 0) {
            this.mShapeState.mPadding = null;
        } else {
            ShapeState shapeState = this.mShapeState;
            if (shapeState.mPadding == null) {
                shapeState.mPadding = new Rect();
            }
            this.mShapeState.mPadding.set(i2, i3, i4, i5);
        }
        invalidateSelf();
    }

    public void setShaderFactory(ShaderFactory shaderFactory) {
        this.mShapeState.mShaderFactory = shaderFactory;
    }

    public void setShape(Shape shape) {
        this.mShapeState.mShape = shape;
        updateShape();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        ShapeState shapeState = this.mShapeState;
        shapeState.mTint = colorStateList;
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, shapeState.mTintMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        ShapeState shapeState = this.mShapeState;
        shapeState.mTintMode = mode;
        this.mTintFilter = updateTintFilter(this.mTintFilter, shapeState.mTint, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setXfermode(Xfermode xfermode) {
        this.mShapeState.mPaint.setXfermode(xfermode);
        invalidateSelf();
    }

    public ShapeDrawable() {
        this(new ShapeState(), null);
    }

    public ShapeDrawable(Shape shape) {
        this(new ShapeState(), null);
        this.mShapeState.mShape = shape;
    }

    private ShapeDrawable(ShapeState shapeState, Resources resources) {
        this.mShapeState = shapeState;
        updateLocalState();
    }

    public void setPadding(Rect rect) {
        if (rect == null) {
            this.mShapeState.mPadding = null;
        } else {
            ShapeState shapeState = this.mShapeState;
            if (shapeState.mPadding == null) {
                shapeState.mPadding = new Rect();
            }
            this.mShapeState.mPadding.set(rect);
        }
        invalidateSelf();
    }
}
