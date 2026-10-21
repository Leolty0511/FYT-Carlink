package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.util.Log;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ShapeDrawable extends Drawable {
    private boolean mMutated;
    private ShapeState mShapeState;

    public static abstract class ShaderFactory {
        public abstract Shader resize(int i2, int i3);
    }

    public static final class ShapeState extends Drawable.ConstantState {
        public int mAlpha;
        public int mChangingConfigurations;
        public int mIntrinsicHeight;
        public int mIntrinsicWidth;
        public Rect mPadding;
        public Paint mPaint;
        public ShaderFactory mShaderFactory;
        public Shape mShape;

        public ShapeState(ShapeState shapeState) {
            this.mAlpha = 255;
            if (shapeState == null) {
                this.mPaint = new Paint(1);
                return;
            }
            this.mPaint = shapeState.mPaint;
            this.mShape = shapeState.mShape;
            this.mPadding = shapeState.mPadding;
            this.mIntrinsicWidth = shapeState.mIntrinsicWidth;
            this.mIntrinsicHeight = shapeState.mIntrinsicHeight;
            this.mAlpha = shapeState.mAlpha;
            this.mShaderFactory = shapeState.mShaderFactory;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ShapeDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ShapeDrawable(this);
        }
    }

    private static int modulateAlpha(int i2, int i3) {
        return (i2 * (i3 + (i3 >>> 7))) >>> 8;
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

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        Paint paint = this.mShapeState.mPaint;
        int alpha = paint.getAlpha();
        paint.setAlpha(modulateAlpha(alpha, this.mShapeState.mAlpha));
        if (paint.getAlpha() != 0 || paint.getXfermode() != null || paint.hasShadow) {
            if (this.mShapeState.mShape != null) {
                int iSave = canvas.save();
                canvas.translate(bounds.left, bounds.top);
                onDraw(this.mShapeState.mShape, canvas, paint);
                canvas.restoreToCount(iSave);
            } else {
                canvas.drawRect(bounds, paint);
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
        return super.getChangingConfigurations() | this.mShapeState.mChangingConfigurations;
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
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.ShapeDrawable);
        this.mShapeState.mPaint.setColor(typedArrayObtainAttributes.getColor(3, this.mShapeState.mPaint.getColor()));
        this.mShapeState.mPaint.setDither(typedArrayObtainAttributes.getBoolean(0, false));
        setIntrinsicWidth((int) typedArrayObtainAttributes.getDimension(2, 0.0f));
        setIntrinsicHeight((int) typedArrayObtainAttributes.getDimension(1, 0.0f));
        typedArrayObtainAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (!inflateTag(name, resources, xmlPullParser, attributeSet)) {
                    Log.w("drawable", "Unknown element: " + name + " for ShapeDrawable " + this);
                }
            }
        }
    }

    public boolean inflateTag(String str, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (!"padding".equals(str)) {
            return false;
        }
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.ShapeDrawablePadding);
        setPadding(typedArrayObtainAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainAttributes.getDimensionPixelOffset(3, 0));
        typedArrayObtainAttributes.recycle();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            ShapeState shapeState = this.mShapeState;
            if (shapeState.mPaint != null) {
                shapeState.mPaint = new Paint(this.mShapeState.mPaint);
            } else {
                shapeState.mPaint = new Paint(1);
            }
            ShapeState shapeState2 = this.mShapeState;
            if (shapeState2.mPadding != null) {
                shapeState2.mPadding = new Rect(this.mShapeState.mPadding);
            } else {
                shapeState2.mPadding = new Rect();
            }
            try {
                ShapeState shapeState3 = this.mShapeState;
                shapeState3.mShape = shapeState3.mShape.mo9clone();
                this.mMutated = true;
            } catch (CloneNotSupportedException unused) {
                return null;
            }
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

    public ShapeDrawable() {
        this((ShapeState) null);
    }

    public ShapeDrawable(Shape shape) {
        this((ShapeState) null);
        this.mShapeState.mShape = shape;
    }

    private ShapeDrawable(ShapeState shapeState) {
        this.mShapeState = new ShapeState(shapeState);
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
