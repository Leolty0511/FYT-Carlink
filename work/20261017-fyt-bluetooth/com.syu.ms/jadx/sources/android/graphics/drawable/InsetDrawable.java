package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class InsetDrawable extends Drawable implements Drawable.Callback {
    private InsetState mInsetState;
    private boolean mMutated;
    private final Rect mTmpRect;

    public static final class InsetState extends Drawable.ConstantState {
        public boolean mCanConstantState;
        public int mChangingConfigurations;
        public boolean mCheckedConstantState;
        public Drawable mDrawable;
        public int mInsetBottom;
        public int mInsetLeft;
        public int mInsetRight;
        public int mInsetTop;

        public InsetState(InsetState insetState, InsetDrawable insetDrawable, Resources resources) {
            if (insetState != null) {
                if (resources != null) {
                    this.mDrawable = insetState.mDrawable.getConstantState().newDrawable(resources);
                } else {
                    this.mDrawable = insetState.mDrawable.getConstantState().newDrawable();
                }
                this.mDrawable.setCallback(insetDrawable);
                this.mDrawable.setLayoutDirection(insetState.mDrawable.getLayoutDirection());
                this.mInsetLeft = insetState.mInsetLeft;
                this.mInsetTop = insetState.mInsetTop;
                this.mInsetRight = insetState.mInsetRight;
                this.mInsetBottom = insetState.mInsetBottom;
                this.mCanConstantState = true;
                this.mCheckedConstantState = true;
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
            return new InsetDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new InsetDrawable(this, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mInsetState.mDrawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mInsetState.mDrawable.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        InsetState insetState = this.mInsetState;
        return changingConfigurations | insetState.mChangingConfigurations | insetState.mDrawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.mInsetState.canConstantState()) {
            return null;
        }
        this.mInsetState.mChangingConfigurations = getChangingConfigurations();
        return this.mInsetState;
    }

    public Drawable getDrawable() {
        return this.mInsetState.mDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mInsetState.mDrawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mInsetState.mDrawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mInsetState.mDrawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding = this.mInsetState.mDrawable.getPadding(rect);
        int i2 = rect.left;
        InsetState insetState = this.mInsetState;
        int i3 = insetState.mInsetLeft;
        rect.left = i2 + i3;
        int i4 = rect.right;
        int i5 = insetState.mInsetRight;
        rect.right = i4 + i5;
        int i6 = rect.top;
        int i7 = insetState.mInsetTop;
        rect.top = i6 + i7;
        int i8 = rect.bottom;
        int i9 = insetState.mInsetBottom;
        rect.bottom = i8 + i9;
        return padding || (((i3 | i5) | i7) | i9) != 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        Drawable drawableCreateFromXmlInner;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.InsetDrawable);
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 0);
        int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
        int dimensionPixelOffset = typedArrayObtainAttributes.getDimensionPixelOffset(2, 0);
        int dimensionPixelOffset2 = typedArrayObtainAttributes.getDimensionPixelOffset(4, 0);
        int dimensionPixelOffset3 = typedArrayObtainAttributes.getDimensionPixelOffset(3, 0);
        int dimensionPixelOffset4 = typedArrayObtainAttributes.getDimensionPixelOffset(5, 0);
        typedArrayObtainAttributes.recycle();
        if (resourceId != 0) {
            drawableCreateFromXmlInner = resources.getDrawable(resourceId);
        } else {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <inset> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
        }
        if (drawableCreateFromXmlInner == null) {
            Log.w("drawable", "No drawable specified for <inset>");
        }
        InsetState insetState = this.mInsetState;
        insetState.mDrawable = drawableCreateFromXmlInner;
        insetState.mInsetLeft = dimensionPixelOffset;
        insetState.mInsetRight = dimensionPixelOffset3;
        insetState.mInsetTop = dimensionPixelOffset2;
        insetState.mInsetBottom = dimensionPixelOffset4;
        if (drawableCreateFromXmlInner != null) {
            drawableCreateFromXmlInner.setCallback(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mInsetState.mDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mInsetState.mDrawable.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Rect rect2 = this.mTmpRect;
        rect2.set(rect);
        int i2 = rect2.left;
        InsetState insetState = this.mInsetState;
        int i3 = i2 + insetState.mInsetLeft;
        rect2.left = i3;
        int i4 = rect2.top + insetState.mInsetTop;
        rect2.top = i4;
        int i5 = rect2.right - insetState.mInsetRight;
        rect2.right = i5;
        int i6 = rect2.bottom - insetState.mInsetBottom;
        rect2.bottom = i6;
        insetState.mDrawable.setBounds(i3, i4, i5, i6);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean state = this.mInsetState.mDrawable.setState(iArr);
        onBoundsChange(getBounds());
        return state;
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
        this.mInsetState.mDrawable.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mInsetState.mDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setLayoutDirection(int i2) {
        this.mInsetState.mDrawable.setLayoutDirection(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        this.mInsetState.mDrawable.setVisible(z2, z3);
        return super.setVisible(z2, z3);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public InsetDrawable() {
        this((InsetState) null, (Resources) null);
    }

    public InsetDrawable(Drawable drawable, int i2) {
        this(drawable, i2, i2, i2, i2);
    }

    public InsetDrawable(Drawable drawable, int i2, int i3, int i4, int i5) {
        this((InsetState) null, (Resources) null);
        InsetState insetState = this.mInsetState;
        insetState.mDrawable = drawable;
        insetState.mInsetLeft = i2;
        insetState.mInsetTop = i3;
        insetState.mInsetRight = i4;
        insetState.mInsetBottom = i5;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    private InsetDrawable(InsetState insetState, Resources resources) {
        this.mTmpRect = new Rect();
        this.mInsetState = new InsetState(insetState, this, resources);
    }
}
