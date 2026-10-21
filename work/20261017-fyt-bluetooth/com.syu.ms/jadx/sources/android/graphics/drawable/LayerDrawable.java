package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class LayerDrawable extends Drawable implements Drawable.Callback {
    public LayerState mLayerState;
    private boolean mMutated;
    private int mOpacityOverride;
    private int[] mPaddingB;
    private int[] mPaddingL;
    private int[] mPaddingR;
    private int[] mPaddingT;
    private final Rect mTmpRect;

    public static class ChildDrawable {
        public Drawable mDrawable;
        public int mId;
        public int mInsetB;
        public int mInsetL;
        public int mInsetR;
        public int mInsetT;
    }

    public static class LayerState extends Drawable.ConstantState {
        private boolean mAutoMirrored;
        private boolean mCanConstantState;
        public int mChangingConfigurations;
        private boolean mCheckedConstantState;
        public ChildDrawable[] mChildren;
        public int mChildrenChangingConfigurations;
        private boolean mHaveOpacity;
        private boolean mHaveStateful;
        public int mNum;
        private int mOpacity;
        private boolean mStateful;

        public LayerState(LayerState layerState, LayerDrawable layerDrawable, Resources resources) {
            this.mHaveOpacity = false;
            this.mHaveStateful = false;
            if (layerState == null) {
                this.mNum = 0;
                this.mChildren = null;
                return;
            }
            ChildDrawable[] childDrawableArr = layerState.mChildren;
            int i2 = layerState.mNum;
            this.mNum = i2;
            this.mChildren = new ChildDrawable[i2];
            this.mChangingConfigurations = layerState.mChangingConfigurations;
            this.mChildrenChangingConfigurations = layerState.mChildrenChangingConfigurations;
            for (int i3 = 0; i3 < i2; i3++) {
                ChildDrawable[] childDrawableArr2 = this.mChildren;
                ChildDrawable childDrawable = new ChildDrawable();
                childDrawableArr2[i3] = childDrawable;
                ChildDrawable childDrawable2 = childDrawableArr[i3];
                if (resources != null) {
                    childDrawable.mDrawable = childDrawable2.mDrawable.getConstantState().newDrawable(resources);
                } else {
                    childDrawable.mDrawable = childDrawable2.mDrawable.getConstantState().newDrawable();
                }
                childDrawable.mDrawable.setCallback(layerDrawable);
                childDrawable.mDrawable.setLayoutDirection(childDrawable2.mDrawable.getLayoutDirection());
                childDrawable.mInsetL = childDrawable2.mInsetL;
                childDrawable.mInsetT = childDrawable2.mInsetT;
                childDrawable.mInsetR = childDrawable2.mInsetR;
                childDrawable.mInsetB = childDrawable2.mInsetB;
                childDrawable.mId = childDrawable2.mId;
            }
            this.mHaveOpacity = layerState.mHaveOpacity;
            this.mOpacity = layerState.mOpacity;
            this.mHaveStateful = layerState.mHaveStateful;
            this.mStateful = layerState.mStateful;
            this.mCanConstantState = true;
            this.mCheckedConstantState = true;
            this.mAutoMirrored = layerState.mAutoMirrored;
        }

        public boolean canConstantState() {
            if (!this.mCheckedConstantState && this.mChildren != null) {
                this.mCanConstantState = true;
                int i2 = this.mNum;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (this.mChildren[i3].mDrawable.getConstantState() == null) {
                        this.mCanConstantState = false;
                        break;
                    }
                }
                this.mCheckedConstantState = true;
            }
            return this.mCanConstantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        public final int getOpacity() {
            if (this.mHaveOpacity) {
                return this.mOpacity;
            }
            int i2 = this.mNum;
            int opacity = i2 > 0 ? this.mChildren[0].mDrawable.getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, this.mChildren[i3].mDrawable.getOpacity());
            }
            this.mOpacity = opacity;
            this.mHaveOpacity = true;
            return opacity;
        }

        public final boolean isStateful() {
            if (this.mHaveStateful) {
                return this.mStateful;
            }
            int i2 = this.mNum;
            boolean z2 = false;
            for (int i3 = 0; i3 < i2; i3++) {
                if (this.mChildren[i3].mDrawable.isStateful()) {
                    z2 = true;
                    break;
                }
            }
            this.mStateful = z2;
            this.mHaveStateful = true;
            return z2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new LayerDrawable(this, (Resources) null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new LayerDrawable(this, resources);
        }
    }

    public LayerDrawable(Drawable[] drawableArr) {
        this(drawableArr, (LayerState) null);
    }

    private void addLayer(Drawable drawable, int i2, int i3, int i4, int i5, int i6) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int length = childDrawableArr != null ? childDrawableArr.length : 0;
        int i7 = layerState.mNum;
        if (i7 >= length) {
            ChildDrawable[] childDrawableArr2 = new ChildDrawable[length + 10];
            if (i7 > 0) {
                System.arraycopy(childDrawableArr, 0, childDrawableArr2, 0, i7);
            }
            layerState.mChildren = childDrawableArr2;
        }
        this.mLayerState.mChildrenChangingConfigurations |= drawable.getChangingConfigurations();
        ChildDrawable childDrawable = new ChildDrawable();
        layerState.mChildren[i7] = childDrawable;
        childDrawable.mId = i2;
        childDrawable.mDrawable = drawable;
        drawable.setAutoMirrored(isAutoMirrored());
        childDrawable.mInsetL = i3;
        childDrawable.mInsetT = i4;
        childDrawable.mInsetR = i5;
        childDrawable.mInsetB = i6;
        layerState.mNum++;
        drawable.setCallback(this);
    }

    private void ensurePadding() {
        int i2 = this.mLayerState.mNum;
        int[] iArr = this.mPaddingL;
        if (iArr == null || iArr.length < i2) {
            this.mPaddingL = new int[i2];
            this.mPaddingT = new int[i2];
            this.mPaddingR = new int[i2];
            this.mPaddingB = new int[i2];
        }
    }

    private boolean reapplyPadding(int i2, ChildDrawable childDrawable) {
        Rect rect = this.mTmpRect;
        childDrawable.mDrawable.getPadding(rect);
        int i3 = rect.left;
        int[] iArr = this.mPaddingL;
        if (i3 == iArr[i2] && rect.top == this.mPaddingT[i2] && rect.right == this.mPaddingR[i2] && rect.bottom == this.mPaddingB[i2]) {
            return false;
        }
        iArr[i2] = i3;
        this.mPaddingT[i2] = rect.top;
        this.mPaddingR[i2] = rect.right;
        this.mPaddingB[i2] = rect.bottom;
        return true;
    }

    public LayerState createConstantState(LayerState layerState, Resources resources) {
        return new LayerState(layerState, this, resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        for (int i3 = 0; i3 < i2; i3++) {
            childDrawableArr[i3].mDrawable.draw(canvas);
        }
    }

    public Drawable findDrawableByLayerId(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i3 = layerState.mNum - 1; i3 >= 0; i3--) {
            if (childDrawableArr[i3].mId == i2) {
                return childDrawableArr[i3].mDrawable;
            }
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        LayerState layerState = this.mLayerState;
        return layerState.mNum > 0 ? layerState.mChildren[0].mDrawable.getAlpha() : super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        LayerState layerState = this.mLayerState;
        return changingConfigurations | layerState.mChangingConfigurations | layerState.mChildrenChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!this.mLayerState.canConstantState()) {
            return null;
        }
        this.mLayerState.mChangingConfigurations = getChangingConfigurations();
        return this.mLayerState;
    }

    public Drawable getDrawable(int i2) {
        return this.mLayerState.mChildren[i2].mDrawable;
    }

    public int getId(int i2) {
        return this.mLayerState.mChildren[i2].mId;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            ChildDrawable childDrawable = childDrawableArr[i6];
            int intrinsicHeight = childDrawable.mDrawable.getIntrinsicHeight() + childDrawable.mInsetT + childDrawable.mInsetB + i5 + i3;
            if (intrinsicHeight > i4) {
                i4 = intrinsicHeight;
            }
            i5 += this.mPaddingT[i6];
            i3 += this.mPaddingB[i6];
        }
        return i4;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            ChildDrawable childDrawable = childDrawableArr[i6];
            int intrinsicWidth = childDrawable.mDrawable.getIntrinsicWidth() + childDrawable.mInsetL + childDrawable.mInsetR + i5 + i3;
            if (intrinsicWidth > i4) {
                i4 = intrinsicWidth;
            }
            i5 += this.mPaddingL[i6];
            i3 += this.mPaddingR[i6];
        }
        return i4;
    }

    public int getNumberOfLayers() {
        return this.mLayerState.mNum;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        int i2 = this.mOpacityOverride;
        return i2 != 0 ? i2 : this.mLayerState.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        for (int i3 = 0; i3 < i2; i3++) {
            reapplyPadding(i3, childDrawableArr[i3]);
            rect.left += this.mPaddingL[i3];
            rect.top += this.mPaddingT[i3];
            rect.right += this.mPaddingR[i3];
            rect.bottom += this.mPaddingB[i3];
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth;
        int next;
        Drawable drawableCreateFromXmlInner;
        super.inflate(resources, xmlPullParser, attributeSet);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.LayerDrawable);
        this.mOpacityOverride = typedArrayObtainAttributes.getInt(0, 0);
        setAutoMirrored(typedArrayObtainAttributes.getBoolean(1, false));
        typedArrayObtainAttributes.recycle();
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.LayerDrawableItem);
                int dimensionPixelOffset = typedArrayObtainAttributes2.getDimensionPixelOffset(2, 0);
                int dimensionPixelOffset2 = typedArrayObtainAttributes2.getDimensionPixelOffset(3, 0);
                int dimensionPixelOffset3 = typedArrayObtainAttributes2.getDimensionPixelOffset(4, 0);
                int dimensionPixelOffset4 = typedArrayObtainAttributes2.getDimensionPixelOffset(5, 0);
                int resourceId = typedArrayObtainAttributes2.getResourceId(1, 0);
                int resourceId2 = typedArrayObtainAttributes2.getResourceId(0, -1);
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
                addLayer(drawableCreateFromXmlInner, resourceId2, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3, dimensionPixelOffset4);
            }
        }
        ensurePadding();
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mLayerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mLayerState.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            LayerState layerStateCreateConstantState = createConstantState(this.mLayerState, null);
            this.mLayerState = layerStateCreateConstantState;
            ChildDrawable[] childDrawableArr = layerStateCreateConstantState.mChildren;
            int i2 = layerStateCreateConstantState.mNum;
            for (int i3 = 0; i3 < i2; i3++) {
                childDrawableArr[i3].mDrawable.mutate();
            }
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            ChildDrawable childDrawable = childDrawableArr[i7];
            childDrawable.mDrawable.setBounds(rect.left + childDrawable.mInsetL + i3, rect.top + childDrawable.mInsetT + i4, (rect.right - childDrawable.mInsetR) - i5, (rect.bottom - childDrawable.mInsetB) - i6);
            i3 += this.mPaddingL[i7];
            i5 += this.mPaddingR[i7];
            i4 += this.mPaddingT[i7];
            i6 += this.mPaddingB[i7];
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNum;
        boolean z2 = false;
        boolean z3 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            ChildDrawable childDrawable = childDrawableArr[i4];
            if (childDrawable.mDrawable.setLevel(i2)) {
                z3 = true;
            }
            if (reapplyPadding(i4, childDrawable)) {
                z2 = true;
            }
        }
        if (z2) {
            onBoundsChange(getBounds());
        }
        return z3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < i2; i3++) {
            ChildDrawable childDrawable = childDrawableArr[i3];
            if (childDrawable.mDrawable.setState(iArr)) {
                z3 = true;
            }
            if (reapplyPadding(i3, childDrawable)) {
                z2 = true;
            }
        }
        if (z2) {
            onBoundsChange(getBounds());
        }
        return z3;
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
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNum;
        for (int i4 = 0; i4 < i3; i4++) {
            childDrawableArr[i4].mDrawable.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        this.mLayerState.mAutoMirrored = z2;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        for (int i3 = 0; i3 < i2; i3++) {
            childDrawableArr[i3].mDrawable.setAutoMirrored(z2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        for (int i3 = 0; i3 < i2; i3++) {
            childDrawableArr[i3].mDrawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        for (int i3 = 0; i3 < i2; i3++) {
            childDrawableArr[i3].mDrawable.setDither(z2);
        }
    }

    public boolean setDrawableByLayerId(int i2, Drawable drawable) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i3 = layerState.mNum - 1; i3 >= 0; i3--) {
            if (childDrawableArr[i3].mId == i2) {
                if (childDrawableArr[i3].mDrawable != null) {
                    if (drawable != null) {
                        drawable.setBounds(childDrawableArr[i3].mDrawable.getBounds());
                    }
                    childDrawableArr[i3].mDrawable.setCallback(null);
                }
                if (drawable != null) {
                    drawable.setCallback(this);
                }
                childDrawableArr[i3].mDrawable = drawable;
                return true;
            }
        }
        return false;
    }

    public void setId(int i2, int i3) {
        this.mLayerState.mChildren[i2].mId = i3;
    }

    public void setLayerInset(int i2, int i3, int i4, int i5, int i6) {
        ChildDrawable childDrawable = this.mLayerState.mChildren[i2];
        childDrawable.mInsetL = i3;
        childDrawable.mInsetT = i4;
        childDrawable.mInsetR = i5;
        childDrawable.mInsetB = i6;
    }

    @Override // android.graphics.drawable.Drawable
    public void setLayoutDirection(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNum;
        for (int i4 = 0; i4 < i3; i4++) {
            childDrawableArr[i4].mDrawable.setLayoutDirection(i2);
        }
        super.setLayoutDirection(i2);
    }

    public void setOpacity(int i2) {
        this.mOpacityOverride = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNum;
        for (int i3 = 0; i3 < i2; i3++) {
            childDrawableArr[i3].mDrawable.setVisible(z2, z3);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public LayerDrawable(Drawable[] drawableArr, LayerState layerState) {
        this(layerState, (Resources) null);
        int length = drawableArr.length;
        ChildDrawable[] childDrawableArr = new ChildDrawable[length];
        for (int i2 = 0; i2 < length; i2++) {
            childDrawableArr[i2] = new ChildDrawable();
            childDrawableArr[i2].mDrawable = drawableArr[i2];
            drawableArr[i2].setCallback(this);
            this.mLayerState.mChildrenChangingConfigurations |= drawableArr[i2].getChangingConfigurations();
        }
        LayerState layerState2 = this.mLayerState;
        layerState2.mNum = length;
        layerState2.mChildren = childDrawableArr;
        ensurePadding();
    }

    public LayerDrawable() {
        this((LayerState) null, (Resources) null);
    }

    public LayerDrawable(LayerState layerState, Resources resources) {
        this.mOpacityOverride = 0;
        this.mTmpRect = new Rect();
        LayerState layerStateCreateConstantState = createConstantState(layerState, resources);
        this.mLayerState = layerStateCreateConstantState;
        if (layerStateCreateConstantState.mNum > 0) {
            ensurePadding();
        }
    }
}
