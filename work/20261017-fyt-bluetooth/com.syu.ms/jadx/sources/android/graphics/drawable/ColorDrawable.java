package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewDebug;
import i.a;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class ColorDrawable extends Drawable {
    private boolean mMutated;
    private final Paint mPaint;

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "state_")
    private ColorState mState;

    public static final class ColorState extends Drawable.ConstantState {
        public int mBaseColor;
        public int mChangingConfigurations;

        @ViewDebug.ExportedProperty
        public int mUseColor;

        public ColorState(ColorState colorState) {
            if (colorState != null) {
                this.mBaseColor = colorState.mBaseColor;
                this.mUseColor = colorState.mUseColor;
                this.mChangingConfigurations = colorState.mChangingConfigurations;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ColorDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ColorDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i2 = this.mState.mUseColor;
        if ((i2 >>> 24) != 0) {
            this.mPaint.setColor(i2);
            canvas.drawRect(getBounds(), this.mPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mState.mUseColor >>> 24;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mState.mChangingConfigurations;
    }

    public int getColor() {
        return this.mState.mUseColor;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mState.mChangingConfigurations = getChangingConfigurations();
        return this.mState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        int i2 = this.mState.mUseColor >>> 24;
        if (i2 != 0) {
            return i2 != 255 ? -3 : -1;
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        super.inflate(resources, xmlPullParser, attributeSet);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.ColorDrawable);
        int color = typedArrayObtainAttributes.getColor(0, this.mState.mBaseColor);
        ColorState colorState = this.mState;
        colorState.mUseColor = color;
        colorState.mBaseColor = color;
        typedArrayObtainAttributes.recycle();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState = new ColorState(this.mState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        ColorState colorState = this.mState;
        int i3 = colorState.mBaseColor;
        int i4 = colorState.mUseColor;
        int i5 = ((((i3 >>> 24) * (i2 + (i2 >> 7))) >> 8) << 24) | ((i3 << 8) >>> 8);
        colorState.mUseColor = i5;
        if (i4 != i5) {
            invalidateSelf();
        }
    }

    public void setColor(int i2) {
        ColorState colorState = this.mState;
        if (colorState.mBaseColor == i2 && colorState.mUseColor == i2) {
            return;
        }
        invalidateSelf();
        ColorState colorState2 = this.mState;
        colorState2.mUseColor = i2;
        colorState2.mBaseColor = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public ColorDrawable() {
        this((ColorState) null);
    }

    public ColorDrawable(int i2) {
        this((ColorState) null);
        setColor(i2);
    }

    private ColorDrawable(ColorState colorState) {
        this.mPaint = new Paint();
        this.mState = new ColorState(colorState);
    }
}
