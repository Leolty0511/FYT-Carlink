package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ScaleDrawable extends Drawable implements Drawable.Callback {
    private boolean mMutated;
    private ScaleState mScaleState;
    private final Rect mTmpRect;

    public static final class ScaleState extends Drawable.ConstantState {
        private boolean mCanConstantState;
        public int mChangingConfigurations;
        private boolean mCheckedConstantState;
        public Drawable mDrawable;
        public int mGravity;
        public float mScaleHeight;
        public float mScaleWidth;
        public boolean mUseIntrinsicSizeAsMin;

        public ScaleState(ScaleState scaleState, ScaleDrawable scaleDrawable, Resources resources) {
            if (scaleState != null) {
                if (resources != null) {
                    this.mDrawable = scaleState.mDrawable.getConstantState().newDrawable(resources);
                } else {
                    this.mDrawable = scaleState.mDrawable.getConstantState().newDrawable();
                }
                this.mDrawable.setCallback(scaleDrawable);
                this.mDrawable.setLayoutDirection(scaleState.mDrawable.getLayoutDirection());
                this.mScaleWidth = scaleState.mScaleWidth;
                this.mScaleHeight = scaleState.mScaleHeight;
                this.mGravity = scaleState.mGravity;
                this.mUseIntrinsicSizeAsMin = scaleState.mUseIntrinsicSizeAsMin;
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
            return new ScaleDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ScaleDrawable(this, resources);
        }
    }

    private static float getPercent(TypedArray typedArray, int i2) {
        String string = typedArray.getString(i2);
        if (string == null || !string.endsWith("%")) {
            return -1.0f;
        }
        return Float.parseFloat(string.substring(0, string.length() - 1)) / 100.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mScaleState.mDrawable.getLevel() != 0) {
            this.mScaleState.mDrawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mScaleState.mDrawable.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        ScaleState scaleState = this.mScaleState;
        return changingConfigurations | scaleState.mChangingConfigurations | scaleState.mDrawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.mScaleState.canConstantState()) {
            return null;
        }
        this.mScaleState.mChangingConfigurations = getChangingConfigurations();
        return this.mScaleState;
    }

    public Drawable getDrawable() {
        return this.mScaleState.mDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mScaleState.mDrawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mScaleState.mDrawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mScaleState.mDrawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.mScaleState.mDrawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.ScaleDrawable);
        float percent = getPercent(typedArrayObtainAttributes, 1);
        float percent2 = getPercent(typedArrayObtainAttributes, 2);
        int i2 = typedArrayObtainAttributes.getInt(3, 3);
        boolean z2 = typedArrayObtainAttributes.getBoolean(4, false);
        Drawable drawable = typedArrayObtainAttributes.getDrawable(0);
        typedArrayObtainAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            } else if (next == 2) {
                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (drawable == null) {
            throw new IllegalArgumentException("No drawable specified for <scale>");
        }
        ScaleState scaleState = this.mScaleState;
        scaleState.mDrawable = drawable;
        scaleState.mScaleWidth = percent;
        scaleState.mScaleHeight = percent2;
        scaleState.mGravity = i2;
        scaleState.mUseIntrinsicSizeAsMin = z2;
        drawable.setCallback(this);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mScaleState.mDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mScaleState.mDrawable.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Rect rect2 = this.mTmpRect;
        boolean z2 = this.mScaleState.mUseIntrinsicSizeAsMin;
        int level = getLevel();
        int iWidth = rect.width();
        ScaleState scaleState = this.mScaleState;
        if (scaleState.mScaleWidth > 0.0f) {
            iWidth -= (int) ((((iWidth - (z2 ? scaleState.mDrawable.getIntrinsicWidth() : 0)) * (10000 - level)) * this.mScaleState.mScaleWidth) / 10000.0f);
        }
        int i2 = iWidth;
        int iHeight = rect.height();
        ScaleState scaleState2 = this.mScaleState;
        if (scaleState2.mScaleHeight > 0.0f) {
            iHeight -= (int) ((((iHeight - (z2 ? scaleState2.mDrawable.getIntrinsicHeight() : 0)) * (10000 - level)) * this.mScaleState.mScaleHeight) / 10000.0f);
        }
        int i3 = iHeight;
        Gravity.apply(this.mScaleState.mGravity, i2, i3, rect, rect2, getLayoutDirection());
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        this.mScaleState.mDrawable.setBounds(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        this.mScaleState.mDrawable.setLevel(i2);
        onBoundsChange(getBounds());
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean state = this.mScaleState.mDrawable.setState(iArr);
        onBoundsChange(getBounds());
        return state;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.mScaleState.mDrawable.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mScaleState.mDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        this.mScaleState.mDrawable.setVisible(z2, z3);
        return super.setVisible(z2, z3);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    public ScaleDrawable() {
        this(null, null);
    }

    public ScaleDrawable(Drawable drawable, int i2, float f2, float f3) {
        this(null, null);
        ScaleState scaleState = this.mScaleState;
        scaleState.mDrawable = drawable;
        scaleState.mGravity = i2;
        scaleState.mScaleWidth = f2;
        scaleState.mScaleHeight = f3;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    private ScaleDrawable(ScaleState scaleState, Resources resources) {
        this.mTmpRect = new Rect();
        this.mScaleState = new ScaleState(scaleState, this, resources);
    }
}
