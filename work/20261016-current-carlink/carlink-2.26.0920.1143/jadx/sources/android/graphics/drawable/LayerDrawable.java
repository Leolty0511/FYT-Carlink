package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import com.android.ims.ImsConfig;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class LayerDrawable extends Drawable implements Drawable.Callback {
    public static final int INSET_UNDEFINED = Integer.MIN_VALUE;
    private static final String LOG_TAG = "LayerDrawable";
    public static final int PADDING_MODE_NEST = 0;
    public static final int PADDING_MODE_STACK = 1;
    private boolean mChildRequestedInvalidation;
    private Rect mHotspotBounds;
    LayerState mLayerState;
    private boolean mMutated;
    private int[] mPaddingB;
    private int[] mPaddingL;
    private int[] mPaddingR;
    private int[] mPaddingT;
    private boolean mSuspendChildInvalidation;
    private final Rect mTmpContainer;
    private final Rect mTmpOutRect;
    private final Rect mTmpRect;

    public static class LayerState extends Drawable.ConstantState {
        private boolean mAutoMirrored;
        int mChangingConfigurations;
        private boolean mCheckedOpacity;
        private boolean mCheckedStateful;
        ChildDrawable[] mChildren;
        int mChildrenChangingConfigurations;
        int mDensity;
        private boolean mIsStateful;
        int mNumChildren;
        private int mOpacity;
        int mOpacityOverride;
        int mPaddingBottom;
        int mPaddingEnd;
        int mPaddingLeft;
        private int mPaddingMode;
        int mPaddingRight;
        int mPaddingStart;
        int mPaddingTop;
        private int[] mThemeAttrs;

        public LayerState(LayerState layerState, LayerDrawable layerDrawable, Resources resources) {
            this.mPaddingTop = -1;
            this.mPaddingBottom = -1;
            this.mPaddingLeft = -1;
            this.mPaddingRight = -1;
            this.mPaddingStart = -1;
            this.mPaddingEnd = -1;
            this.mOpacityOverride = 0;
            this.mAutoMirrored = false;
            this.mPaddingMode = 0;
            this.mDensity = Drawable.resolveDensity(resources, layerState != null ? layerState.mDensity : 0);
            if (layerState == null) {
                this.mNumChildren = 0;
                this.mChildren = null;
                return;
            }
            ChildDrawable[] childDrawableArr = layerState.mChildren;
            int i2 = layerState.mNumChildren;
            this.mNumChildren = i2;
            this.mChildren = new ChildDrawable[i2];
            this.mChangingConfigurations = layerState.mChangingConfigurations;
            this.mChildrenChangingConfigurations = layerState.mChildrenChangingConfigurations;
            for (int i3 = 0; i3 < i2; i3++) {
                this.mChildren[i3] = new ChildDrawable(childDrawableArr[i3], layerDrawable, resources);
            }
            this.mCheckedOpacity = layerState.mCheckedOpacity;
            this.mOpacity = layerState.mOpacity;
            this.mCheckedStateful = layerState.mCheckedStateful;
            this.mIsStateful = layerState.mIsStateful;
            this.mAutoMirrored = layerState.mAutoMirrored;
            this.mPaddingMode = layerState.mPaddingMode;
            this.mThemeAttrs = layerState.mThemeAttrs;
            this.mPaddingTop = layerState.mPaddingTop;
            this.mPaddingBottom = layerState.mPaddingBottom;
            this.mPaddingLeft = layerState.mPaddingLeft;
            this.mPaddingRight = layerState.mPaddingRight;
            this.mPaddingStart = layerState.mPaddingStart;
            this.mPaddingEnd = layerState.mPaddingEnd;
            this.mOpacityOverride = layerState.mOpacityOverride;
            int i4 = layerState.mDensity;
            int i5 = this.mDensity;
            if (i4 != i5) {
                applyDensityScaling(i4, i5);
            }
        }

        private void applyDensityScaling(int i2, int i3) {
            int i4 = this.mPaddingLeft;
            if (i4 > 0) {
                this.mPaddingLeft = Drawable.scaleFromDensity(i4, i2, i3, false);
            }
            int i5 = this.mPaddingTop;
            if (i5 > 0) {
                this.mPaddingTop = Drawable.scaleFromDensity(i5, i2, i3, false);
            }
            int i6 = this.mPaddingRight;
            if (i6 > 0) {
                this.mPaddingRight = Drawable.scaleFromDensity(i6, i2, i3, false);
            }
            int i7 = this.mPaddingBottom;
            if (i7 > 0) {
                this.mPaddingBottom = Drawable.scaleFromDensity(i7, i2, i3, false);
            }
            int i8 = this.mPaddingStart;
            if (i8 > 0) {
                this.mPaddingStart = Drawable.scaleFromDensity(i8, i2, i3, false);
            }
            int i9 = this.mPaddingEnd;
            if (i9 > 0) {
                this.mPaddingEnd = Drawable.scaleFromDensity(i9, i2, i3, false);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            if (this.mThemeAttrs != null || super.canApplyTheme()) {
                return true;
            }
            ChildDrawable[] childDrawableArr = this.mChildren;
            int i2 = this.mNumChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                if (childDrawableArr[i3].canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final boolean canConstantState() {
            ChildDrawable[] childDrawableArr = this.mChildren;
            int i2 = this.mNumChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = childDrawableArr[i3].mDrawable;
                if (drawable != null && drawable.getConstantState() == null) {
                    return false;
                }
            }
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations | this.mChildrenChangingConfigurations;
        }

        public final int getOpacity() {
            if (this.mCheckedOpacity) {
                return this.mOpacity;
            }
            int i2 = this.mNumChildren;
            ChildDrawable[] childDrawableArr = this.mChildren;
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    i3 = -1;
                    break;
                }
                if (childDrawableArr[i3].mDrawable != null) {
                    break;
                }
                i3++;
            }
            int opacity = i3 >= 0 ? childDrawableArr[i3].mDrawable.getOpacity() : -2;
            for (int i4 = i3 + 1; i4 < i2; i4++) {
                Drawable drawable = childDrawableArr[i4].mDrawable;
                if (drawable != null) {
                    opacity = Drawable.resolveOpacity(opacity, drawable.getOpacity());
                }
            }
            this.mOpacity = opacity;
            this.mCheckedOpacity = true;
            return opacity;
        }

        public final boolean hasFocusStateSpecified() {
            int i2 = this.mNumChildren;
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = childDrawableArr[i3].mDrawable;
                if (drawable != null && drawable.hasFocusStateSpecified()) {
                    return true;
                }
            }
            return false;
        }

        public void invalidateCache() {
            this.mCheckedOpacity = false;
            this.mCheckedStateful = false;
        }

        public final boolean isStateful() {
            if (this.mCheckedStateful) {
                return this.mIsStateful;
            }
            int i2 = this.mNumChildren;
            ChildDrawable[] childDrawableArr = this.mChildren;
            boolean z2 = false;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = childDrawableArr[i3].mDrawable;
                if (drawable != null && drawable.isStateful()) {
                    z2 = true;
                    break;
                }
            }
            this.mIsStateful = z2;
            this.mCheckedStateful = true;
            return z2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new LayerDrawable(this, (Resources) null);
        }

        public void onDensityChanged(int i2, int i3) {
            applyDensityScaling(i2, i3);
        }

        public final void setDensity(int i2) {
            int i3 = this.mDensity;
            if (i3 != i2) {
                this.mDensity = i2;
                onDensityChanged(i3, i2);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new LayerDrawable(this, resources);
        }
    }

    public LayerDrawable(Drawable[] drawableArr) {
        this(drawableArr, (LayerState) null);
    }

    private void computeNestedPadding(Rect rect) {
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            refreshChildPadding(i3, childDrawableArr[i3]);
            rect.left += this.mPaddingL[i3];
            rect.top += this.mPaddingT[i3];
            rect.right += this.mPaddingR[i3];
            rect.bottom += this.mPaddingB[i3];
        }
    }

    private void computeStackedPadding(Rect rect) {
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            refreshChildPadding(i3, childDrawableArr[i3]);
            rect.left = Math.max(rect.left, this.mPaddingL[i3]);
            rect.top = Math.max(rect.top, this.mPaddingT[i3]);
            rect.right = Math.max(rect.right, this.mPaddingR[i3]);
            rect.bottom = Math.max(rect.bottom, this.mPaddingB[i3]);
        }
    }

    private ChildDrawable createLayer(Drawable drawable) {
        ChildDrawable childDrawable = new ChildDrawable(this.mLayerState.mDensity);
        childDrawable.mDrawable = drawable;
        return childDrawable;
    }

    private Drawable getFirstNonNullDrawable() {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                return drawable;
            }
        }
        return null;
    }

    private void inflateLayers(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int[] iArr;
        int next;
        LayerState layerState = this.mLayerState;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next2 == 3) {
                return;
            }
            if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                ChildDrawable childDrawable = new ChildDrawable(layerState.mDensity);
                TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.LayerDrawableItem);
                updateLayerFromTypedArray(childDrawable, typedArrayObtainAttributes);
                typedArrayObtainAttributes.recycle();
                if (childDrawable.mDrawable == null && ((iArr = childDrawable.mThemeAttrs) == null || iArr[4] == 0)) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    Drawable drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                    childDrawable.mDrawable = drawableCreateFromXmlInner;
                    drawableCreateFromXmlInner.setCallback(this);
                    layerState.mChildrenChangingConfigurations |= childDrawable.mDrawable.getChangingConfigurations();
                }
                addLayer(childDrawable);
            }
        }
    }

    private boolean refreshChildPadding(int i2, ChildDrawable childDrawable) {
        Drawable drawable = childDrawable.mDrawable;
        if (drawable == null) {
            return false;
        }
        Rect rect = this.mTmpRect;
        drawable.getPadding(rect);
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

    private static int resolveGravity(int i2, int i3, int i4, int i5, int i6) {
        if (!Gravity.isHorizontal(i2)) {
            i2 = i3 < 0 ? i2 | 7 : i2 | 8388611;
        }
        if (!Gravity.isVertical(i2)) {
            i2 = i4 < 0 ? i2 | 112 : i2 | 48;
        }
        if (i3 < 0 && i5 < 0) {
            i2 |= 7;
        }
        return (i4 >= 0 || i6 >= 0) ? i2 : i2 | 112;
    }

    private void resumeChildInvalidation() {
        this.mSuspendChildInvalidation = false;
        if (this.mChildRequestedInvalidation) {
            this.mChildRequestedInvalidation = false;
            invalidateSelf();
        }
    }

    private void setLayerInsetInternal(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        ChildDrawable childDrawable = this.mLayerState.mChildren[i2];
        childDrawable.mInsetL = i3;
        childDrawable.mInsetT = i4;
        childDrawable.mInsetR = i5;
        childDrawable.mInsetB = i6;
        childDrawable.mInsetS = i7;
        childDrawable.mInsetE = i8;
    }

    private void suspendChildInvalidation() {
        this.mSuspendChildInvalidation = true;
    }

    private void updateLayerBounds(Rect rect) {
        try {
            suspendChildInvalidation();
            updateLayerBoundsInternal(rect);
        } finally {
            resumeChildInvalidation();
        }
    }

    private void updateLayerBoundsInternal(Rect rect) {
        boolean z2;
        ChildDrawable[] childDrawableArr;
        Rect rect2 = this.mTmpOutRect;
        int layoutDirection = getLayoutDirection();
        boolean z3 = layoutDirection == 1;
        boolean z4 = this.mLayerState.mPaddingMode == 0;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr2 = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i3 < i2) {
            ChildDrawable childDrawable = childDrawableArr2[i3];
            Drawable drawable = childDrawable.mDrawable;
            if (drawable == null) {
                z2 = z3;
                childDrawableArr = childDrawableArr2;
            } else {
                int i8 = childDrawable.mInsetT;
                int i9 = childDrawable.mInsetB;
                int i10 = z3 ? childDrawable.mInsetE : childDrawable.mInsetS;
                int i11 = z3 ? childDrawable.mInsetS : childDrawable.mInsetE;
                z2 = z3;
                if (i10 == Integer.MIN_VALUE) {
                    i10 = childDrawable.mInsetL;
                }
                if (i11 == Integer.MIN_VALUE) {
                    i11 = childDrawable.mInsetR;
                }
                Rect rect3 = this.mTmpContainer;
                childDrawableArr = childDrawableArr2;
                rect3.set(rect.left + i10 + i4, rect.top + i8 + i5, (rect.right - i11) - i6, (rect.bottom - i9) - i7);
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                int i12 = childDrawable.mWidth;
                int i13 = childDrawable.mHeight;
                int iResolveGravity = resolveGravity(childDrawable.mGravity, i12, i13, intrinsicWidth, intrinsicHeight);
                if (i12 >= 0) {
                    intrinsicWidth = i12;
                }
                if (i13 >= 0) {
                    intrinsicHeight = i13;
                }
                Gravity.apply(iResolveGravity, intrinsicWidth, intrinsicHeight, rect3, rect2, layoutDirection);
                drawable.setBounds(rect2);
                if (z4) {
                    i4 += this.mPaddingL[i3];
                    i6 += this.mPaddingR[i3];
                    i5 += this.mPaddingT[i3];
                    i7 += this.mPaddingB[i3];
                }
            }
            i3++;
            z3 = z2;
            childDrawableArr2 = childDrawableArr;
        }
    }

    private void updateLayerFromTypedArray(ChildDrawable childDrawable, TypedArray typedArray) {
        LayerState layerState = this.mLayerState;
        layerState.mChildrenChangingConfigurations |= typedArray.getChangingConfigurations();
        childDrawable.mThemeAttrs = typedArray.extractThemeAttrs();
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            switch (index) {
                case 0:
                    childDrawable.mGravity = typedArray.getInteger(index, childDrawable.mGravity);
                    break;
                case 1:
                    childDrawable.mId = typedArray.getResourceId(index, childDrawable.mId);
                    break;
                case 2:
                    childDrawable.mHeight = typedArray.getDimensionPixelSize(index, childDrawable.mHeight);
                    break;
                case 3:
                    childDrawable.mWidth = typedArray.getDimensionPixelSize(index, childDrawable.mWidth);
                    break;
                case 5:
                    childDrawable.mInsetL = typedArray.getDimensionPixelOffset(index, childDrawable.mInsetL);
                    break;
                case 6:
                    childDrawable.mInsetT = typedArray.getDimensionPixelOffset(index, childDrawable.mInsetT);
                    break;
                case 7:
                    childDrawable.mInsetR = typedArray.getDimensionPixelOffset(index, childDrawable.mInsetR);
                    break;
                case 8:
                    childDrawable.mInsetB = typedArray.getDimensionPixelOffset(index, childDrawable.mInsetB);
                    break;
                case 9:
                    childDrawable.mInsetS = typedArray.getDimensionPixelOffset(index, childDrawable.mInsetS);
                    break;
                case 10:
                    childDrawable.mInsetE = typedArray.getDimensionPixelOffset(index, childDrawable.mInsetE);
                    break;
            }
        }
        Drawable drawable = typedArray.getDrawable(4);
        if (drawable != null) {
            Drawable drawable2 = childDrawable.mDrawable;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            childDrawable.mDrawable = drawable;
            drawable.setCallback(this);
            layerState.mChildrenChangingConfigurations = childDrawable.mDrawable.getChangingConfigurations() | layerState.mChildrenChangingConfigurations;
        }
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        LayerState layerState = this.mLayerState;
        layerState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        layerState.mThemeAttrs = typedArray.extractThemeAttrs();
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            switch (index) {
                case 0:
                    layerState.mPaddingLeft = typedArray.getDimensionPixelOffset(index, layerState.mPaddingLeft);
                    break;
                case 1:
                    layerState.mPaddingTop = typedArray.getDimensionPixelOffset(index, layerState.mPaddingTop);
                    break;
                case 2:
                    layerState.mPaddingRight = typedArray.getDimensionPixelOffset(index, layerState.mPaddingRight);
                    break;
                case 3:
                    layerState.mPaddingBottom = typedArray.getDimensionPixelOffset(index, layerState.mPaddingBottom);
                    break;
                case 4:
                    layerState.mOpacityOverride = typedArray.getInt(index, layerState.mOpacityOverride);
                    break;
                case 5:
                    layerState.mPaddingStart = typedArray.getDimensionPixelOffset(index, layerState.mPaddingStart);
                    break;
                case 6:
                    layerState.mPaddingEnd = typedArray.getDimensionPixelOffset(index, layerState.mPaddingEnd);
                    break;
                case 7:
                    layerState.mAutoMirrored = typedArray.getBoolean(index, layerState.mAutoMirrored);
                    break;
                case 8:
                    layerState.mPaddingMode = typedArray.getInteger(index, layerState.mPaddingMode);
                    break;
            }
        }
    }

    public int addLayer(ChildDrawable childDrawable) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int length = childDrawableArr != null ? childDrawableArr.length : 0;
        int i2 = layerState.mNumChildren;
        if (i2 >= length) {
            ChildDrawable[] childDrawableArr2 = new ChildDrawable[length + 10];
            if (i2 > 0) {
                System.arraycopy(childDrawableArr, 0, childDrawableArr2, 0, i2);
            }
            layerState.mChildren = childDrawableArr2;
        }
        layerState.mChildren[i2] = childDrawable;
        layerState.mNumChildren++;
        layerState.invalidateCache();
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        LayerState layerState = this.mLayerState;
        int iResolveDensity = Drawable.resolveDensity(theme.getResources(), 0);
        layerState.setDensity(iResolveDensity);
        if (layerState.mThemeAttrs != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(layerState.mThemeAttrs, R.styleable.LayerDrawable);
            updateStateFromTypedArray(typedArrayResolveAttributes);
            typedArrayResolveAttributes.recycle();
        }
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            ChildDrawable childDrawable = childDrawableArr[i3];
            childDrawable.setDensity(iResolveDensity);
            int[] iArr = childDrawable.mThemeAttrs;
            if (iArr != null) {
                TypedArray typedArrayResolveAttributes2 = theme.resolveAttributes(iArr, R.styleable.LayerDrawableItem);
                updateLayerFromTypedArray(childDrawable, typedArrayResolveAttributes2);
                typedArrayResolveAttributes2.recycle();
            }
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null && drawable.canApplyTheme()) {
                drawable.applyTheme(theme);
                layerState.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | layerState.mChildrenChangingConfigurations;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.mLayerState.canApplyTheme() || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.clearMutated();
            }
        }
        this.mMutated = false;
    }

    public LayerState createConstantState(LayerState layerState, Resources resources) {
        return new LayerState(layerState, this, resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.draw(canvas);
            }
        }
    }

    public void ensurePadding() {
        int i2 = this.mLayerState.mNumChildren;
        int[] iArr = this.mPaddingL;
        if (iArr == null || iArr.length < i2) {
            this.mPaddingL = new int[i2];
            this.mPaddingT = new int[i2];
            this.mPaddingR = new int[i2];
            this.mPaddingB = new int[i2];
        }
    }

    public Drawable findDrawableByLayerId(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i3 = layerState.mNumChildren - 1; i3 >= 0; i3--) {
            ChildDrawable childDrawable = childDrawableArr[i3];
            if (childDrawable.mId == i2) {
                return childDrawable.mDrawable;
            }
        }
        return null;
    }

    public int findIndexByLayerId(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNumChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            if (childDrawableArr[i4].mId == i2) {
                return i4;
            }
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable firstNonNullDrawable = getFirstNonNullDrawable();
        return firstNonNullDrawable != null ? firstNonNullDrawable.getAlpha() : super.getAlpha();
    }

    public int getBottomPadding() {
        return this.mLayerState.mPaddingBottom;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mLayerState.getChangingConfigurations();
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
        LayerState layerState = this.mLayerState;
        if (i2 < layerState.mNumChildren) {
            return layerState.mChildren[i2].mDrawable;
        }
        throw new IndexOutOfBoundsException();
    }

    public int getEndPadding() {
        return this.mLayerState.mPaddingEnd;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.mHotspotBounds;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    public int getId(int i2) {
        LayerState layerState = this.mLayerState;
        if (i2 < layerState.mNumChildren) {
            return layerState.mChildren[i2].mId;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        boolean z2 = this.mLayerState.mPaddingMode == 0;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        for (int i6 = 0; i6 < i2; i6++) {
            ChildDrawable childDrawable = childDrawableArr[i6];
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null) {
                int intrinsicHeight = childDrawable.mHeight;
                if (intrinsicHeight < 0) {
                    intrinsicHeight = drawable.getIntrinsicHeight();
                }
                int i7 = intrinsicHeight < 0 ? -1 : intrinsicHeight + childDrawable.mInsetT + childDrawable.mInsetB + i3 + i4;
                if (i7 > i5) {
                    i5 = i7;
                }
                if (z2) {
                    i3 += this.mPaddingT[i6];
                    i4 += this.mPaddingB[i6];
                }
            }
        }
        return i5;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        boolean z2 = this.mLayerState.mPaddingMode == 0;
        boolean z3 = getLayoutDirection() == 1;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        for (int i6 = 0; i6 < i2; i6++) {
            ChildDrawable childDrawable = childDrawableArr[i6];
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null) {
                int i7 = z3 ? childDrawable.mInsetE : childDrawable.mInsetS;
                int i8 = z3 ? childDrawable.mInsetS : childDrawable.mInsetE;
                if (i7 == Integer.MIN_VALUE) {
                    i7 = childDrawable.mInsetL;
                }
                if (i8 == Integer.MIN_VALUE) {
                    i8 = childDrawable.mInsetR;
                }
                int intrinsicWidth = childDrawable.mWidth;
                if (intrinsicWidth < 0) {
                    intrinsicWidth = drawable.getIntrinsicWidth();
                }
                int i9 = intrinsicWidth < 0 ? -1 : intrinsicWidth + i7 + i8 + i3 + i4;
                if (i9 > i5) {
                    i5 = i9;
                }
                if (z2) {
                    i3 += this.mPaddingL[i6];
                    i4 += this.mPaddingR[i6];
                }
            }
        }
        return i5;
    }

    public int getLayerGravity(int i2) {
        return this.mLayerState.mChildren[i2].mGravity;
    }

    public int getLayerHeight(int i2) {
        return this.mLayerState.mChildren[i2].mHeight;
    }

    public int getLayerInsetBottom(int i2) {
        return this.mLayerState.mChildren[i2].mInsetB;
    }

    public int getLayerInsetEnd(int i2) {
        return this.mLayerState.mChildren[i2].mInsetE;
    }

    public int getLayerInsetLeft(int i2) {
        return this.mLayerState.mChildren[i2].mInsetL;
    }

    public int getLayerInsetRight(int i2) {
        return this.mLayerState.mChildren[i2].mInsetR;
    }

    public int getLayerInsetStart(int i2) {
        return this.mLayerState.mChildren[i2].mInsetS;
    }

    public int getLayerInsetTop(int i2) {
        return this.mLayerState.mChildren[i2].mInsetT;
    }

    public int getLayerWidth(int i2) {
        return this.mLayerState.mChildren[i2].mWidth;
    }

    public int getLeftPadding() {
        return this.mLayerState.mPaddingLeft;
    }

    public int getNumberOfLayers() {
        return this.mLayerState.mNumChildren;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        LayerState layerState = this.mLayerState;
        int i2 = layerState.mOpacityOverride;
        return i2 != 0 ? i2 : layerState.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.getOutline(outline);
                if (!outline.isEmpty()) {
                    return;
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        LayerState layerState = this.mLayerState;
        if (layerState.mPaddingMode == 0) {
            computeNestedPadding(rect);
        } else {
            computeStackedPadding(rect);
        }
        int i2 = layerState.mPaddingTop;
        int i3 = layerState.mPaddingBottom;
        boolean z2 = getLayoutDirection() == 1;
        int i4 = z2 ? layerState.mPaddingEnd : layerState.mPaddingStart;
        int i5 = z2 ? layerState.mPaddingStart : layerState.mPaddingEnd;
        if (i4 < 0) {
            i4 = layerState.mPaddingLeft;
        }
        if (i5 < 0) {
            i5 = layerState.mPaddingRight;
        }
        if (i4 >= 0) {
            rect.left = i4;
        }
        if (i2 >= 0) {
            rect.top = i2;
        }
        if (i5 >= 0) {
            rect.right = i5;
        }
        if (i3 >= 0) {
            rect.bottom = i3;
        }
        return (rect.left == 0 && rect.top == 0 && rect.right == 0 && rect.bottom == 0) ? false : true;
    }

    public int getPaddingMode() {
        return this.mLayerState.mPaddingMode;
    }

    public int getRightPadding() {
        return this.mLayerState.mPaddingRight;
    }

    public int getStartPadding() {
        return this.mLayerState.mPaddingStart;
    }

    public int getTopPadding() {
        return this.mLayerState.mPaddingTop;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        return this.mLayerState.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        LayerState layerState = this.mLayerState;
        int iResolveDensity = Drawable.resolveDensity(resources, 0);
        layerState.setDensity(iResolveDensity);
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.LayerDrawable);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            childDrawableArr[i3].setDensity(iResolveDensity);
        }
        inflateLayers(resources, xmlPullParser, attributeSet, theme);
        ensurePadding();
        refreshPadding();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (this.mSuspendChildInvalidation) {
            this.mChildRequestedInvalidation = true;
        } else {
            this.mLayerState.invalidateCache();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mLayerState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        if (super.isProjected()) {
            return true;
        }
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            if (childDrawableArr[i3].mDrawable.isProjected()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mLayerState.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            LayerState layerStateCreateConstantState = createConstantState(this.mLayerState, null);
            this.mLayerState = layerStateCreateConstantState;
            ChildDrawable[] childDrawableArr = layerStateCreateConstantState.mChildren;
            int i2 = layerStateCreateConstantState.mNumChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = childDrawableArr[i3].mDrawable;
                if (drawable != null) {
                    drawable.mutate();
                }
            }
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        updateLayerBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNumChildren;
        boolean layoutDirection = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = childDrawableArr[i4].mDrawable;
            if (drawable != null) {
                layoutDirection |= drawable.setLayoutDirection(i2);
            }
        }
        updateLayerBounds(getBounds());
        return layoutDirection;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNumChildren;
        boolean z2 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = childDrawableArr[i4].mDrawable;
            if (drawable != null && drawable.setLevel(i2)) {
                refreshChildPadding(i4, childDrawableArr[i4]);
                z2 = true;
            }
        }
        if (z2) {
            updateLayerBounds(getBounds());
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        boolean z2 = false;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null && drawable.isStateful() && drawable.setState(iArr)) {
                refreshChildPadding(i3, childDrawableArr[i3]);
                z2 = true;
            }
        }
        if (z2) {
            updateLayerBounds(getBounds());
        }
        return z2;
    }

    public void refreshPadding() {
        LayerState layerState = this.mLayerState;
        int i2 = layerState.mNumChildren;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            refreshChildPadding(i3, childDrawableArr[i3]);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i3 = layerState.mNumChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = childDrawableArr[i4].mDrawable;
            if (drawable != null) {
                drawable.setAlpha(i2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        this.mLayerState.mAutoMirrored = z2;
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setAutoMirrored(z2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setDither(z2);
            }
        }
    }

    public void setDrawable(int i2, Drawable drawable) {
        LayerState layerState = this.mLayerState;
        if (i2 >= layerState.mNumChildren) {
            throw new IndexOutOfBoundsException();
        }
        ChildDrawable childDrawable = layerState.mChildren[i2];
        Drawable drawable2 = childDrawable.mDrawable;
        if (drawable2 != null) {
            if (drawable != null) {
                drawable.setBounds(drawable2.getBounds());
            }
            childDrawable.mDrawable.setCallback(null);
        }
        if (drawable != null) {
            drawable.setCallback(this);
        }
        childDrawable.mDrawable = drawable;
        this.mLayerState.invalidateCache();
        refreshChildPadding(i2, childDrawable);
    }

    public boolean setDrawableByLayerId(int i2, Drawable drawable) {
        int iFindIndexByLayerId = findIndexByLayerId(i2);
        if (iFindIndexByLayerId < 0) {
            return false;
        }
        setDrawable(iFindIndexByLayerId, drawable);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setHotspot(f2, f3);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i6 = layerState.mNumChildren;
        for (int i7 = 0; i7 < i6; i7++) {
            Drawable drawable = childDrawableArr[i7].mDrawable;
            if (drawable != null) {
                drawable.setHotspotBounds(i2, i3, i4, i5);
            }
        }
        Rect rect = this.mHotspotBounds;
        if (rect == null) {
            this.mHotspotBounds = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
    }

    public void setId(int i2, int i3) {
        this.mLayerState.mChildren[i2].mId = i3;
    }

    public void setLayerGravity(int i2, int i3) {
        this.mLayerState.mChildren[i2].mGravity = i3;
    }

    public void setLayerHeight(int i2, int i3) {
        this.mLayerState.mChildren[i2].mHeight = i3;
    }

    public void setLayerInset(int i2, int i3, int i4, int i5, int i6) {
        setLayerInsetInternal(i2, i3, i4, i5, i6, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public void setLayerInsetBottom(int i2, int i3) {
        this.mLayerState.mChildren[i2].mInsetB = i3;
    }

    public void setLayerInsetEnd(int i2, int i3) {
        this.mLayerState.mChildren[i2].mInsetE = i3;
    }

    public void setLayerInsetLeft(int i2, int i3) {
        this.mLayerState.mChildren[i2].mInsetL = i3;
    }

    public void setLayerInsetRelative(int i2, int i3, int i4, int i5, int i6) {
        setLayerInsetInternal(i2, 0, i4, 0, i6, i3, i5);
    }

    public void setLayerInsetRight(int i2, int i3) {
        this.mLayerState.mChildren[i2].mInsetR = i3;
    }

    public void setLayerInsetStart(int i2, int i3) {
        this.mLayerState.mChildren[i2].mInsetS = i3;
    }

    public void setLayerInsetTop(int i2, int i3) {
        this.mLayerState.mChildren[i2].mInsetT = i3;
    }

    public void setLayerSize(int i2, int i3, int i4) {
        ChildDrawable childDrawable = this.mLayerState.mChildren[i2];
        childDrawable.mWidth = i3;
        childDrawable.mHeight = i4;
    }

    public void setLayerWidth(int i2, int i3) {
        this.mLayerState.mChildren[i2].mWidth = i3;
    }

    public void setOpacity(int i2) {
        this.mLayerState.mOpacityOverride = i2;
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        LayerState layerState = this.mLayerState;
        layerState.mPaddingLeft = i2;
        layerState.mPaddingTop = i3;
        layerState.mPaddingRight = i4;
        layerState.mPaddingBottom = i5;
        layerState.mPaddingStart = -1;
        layerState.mPaddingEnd = -1;
    }

    public void setPaddingMode(int i2) {
        if (this.mLayerState.mPaddingMode != i2) {
            this.mLayerState.mPaddingMode = i2;
        }
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        LayerState layerState = this.mLayerState;
        layerState.mPaddingStart = i2;
        layerState.mPaddingTop = i3;
        layerState.mPaddingEnd = i4;
        layerState.mPaddingBottom = i5;
        layerState.mPaddingLeft = -1;
        layerState.mPaddingRight = -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setTintList(colorStateList);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setTintMode(mode);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        LayerState layerState = this.mLayerState;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setVisible(z2, z3);
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public LayerDrawable(Drawable[] drawableArr, LayerState layerState) {
        this(layerState, (Resources) null);
        if (drawableArr == null) {
            throw new IllegalArgumentException("layers must be non-null");
        }
        int length = drawableArr.length;
        ChildDrawable[] childDrawableArr = new ChildDrawable[length];
        for (int i2 = 0; i2 < length; i2++) {
            ChildDrawable childDrawable = new ChildDrawable(this.mLayerState.mDensity);
            childDrawableArr[i2] = childDrawable;
            Drawable drawable = drawableArr[i2];
            childDrawable.mDrawable = drawable;
            drawable.setCallback(this);
            this.mLayerState.mChildrenChangingConfigurations |= drawableArr[i2].getChangingConfigurations();
        }
        LayerState layerState2 = this.mLayerState;
        layerState2.mNumChildren = length;
        layerState2.mChildren = childDrawableArr;
        ensurePadding();
        refreshPadding();
    }

    public static class ChildDrawable {
        public int mDensity;
        public Drawable mDrawable;
        public int mGravity;
        public int mHeight;
        public int mId;
        public int mInsetB;
        public int mInsetE;
        public int mInsetL;
        public int mInsetR;
        public int mInsetS;
        public int mInsetT;
        public int[] mThemeAttrs;
        public int mWidth;

        public ChildDrawable(int i2) {
            this.mInsetS = Integer.MIN_VALUE;
            this.mInsetE = Integer.MIN_VALUE;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mGravity = 0;
            this.mId = -1;
            this.mDensity = i2;
        }

        private void applyDensityScaling(int i2, int i3) {
            this.mInsetL = Drawable.scaleFromDensity(this.mInsetL, i2, i3, false);
            this.mInsetT = Drawable.scaleFromDensity(this.mInsetT, i2, i3, false);
            this.mInsetR = Drawable.scaleFromDensity(this.mInsetR, i2, i3, false);
            this.mInsetB = Drawable.scaleFromDensity(this.mInsetB, i2, i3, false);
            int i4 = this.mInsetS;
            if (i4 != Integer.MIN_VALUE) {
                this.mInsetS = Drawable.scaleFromDensity(i4, i2, i3, false);
            }
            int i5 = this.mInsetE;
            if (i5 != Integer.MIN_VALUE) {
                this.mInsetE = Drawable.scaleFromDensity(i5, i2, i3, false);
            }
            int i6 = this.mWidth;
            if (i6 > 0) {
                this.mWidth = Drawable.scaleFromDensity(i6, i2, i3, true);
            }
            int i7 = this.mHeight;
            if (i7 > 0) {
                this.mHeight = Drawable.scaleFromDensity(i7, i2, i3, true);
            }
        }

        public boolean canApplyTheme() {
            Drawable drawable;
            return this.mThemeAttrs != null || ((drawable = this.mDrawable) != null && drawable.canApplyTheme());
        }

        public final void setDensity(int i2) {
            int i3 = this.mDensity;
            if (i3 != i2) {
                this.mDensity = i2;
                applyDensityScaling(i3, i2);
            }
        }

        public ChildDrawable(ChildDrawable childDrawable, LayerDrawable layerDrawable, Resources resources) {
            Drawable drawableNewDrawable;
            this.mDensity = 160;
            this.mInsetS = Integer.MIN_VALUE;
            this.mInsetE = Integer.MIN_VALUE;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mGravity = 0;
            this.mId = -1;
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState == null) {
                    if (drawable.getCallback() != null) {
                        Log.w(LayerDrawable.LOG_TAG, "Invalid drawable added to LayerDrawable! Drawable already belongs to another owner but does not expose a constant state.", new RuntimeException());
                    }
                    drawableNewDrawable = drawable;
                } else if (resources != null) {
                    drawableNewDrawable = constantState.newDrawable(resources);
                } else {
                    drawableNewDrawable = constantState.newDrawable();
                }
                drawableNewDrawable.setLayoutDirection(drawable.getLayoutDirection());
                drawableNewDrawable.setBounds(drawable.getBounds());
                drawableNewDrawable.setLevel(drawable.getLevel());
                drawableNewDrawable.setCallback(layerDrawable);
            } else {
                drawableNewDrawable = null;
            }
            this.mDrawable = drawableNewDrawable;
            this.mThemeAttrs = childDrawable.mThemeAttrs;
            this.mInsetL = childDrawable.mInsetL;
            this.mInsetT = childDrawable.mInsetT;
            this.mInsetR = childDrawable.mInsetR;
            this.mInsetB = childDrawable.mInsetB;
            this.mInsetS = childDrawable.mInsetS;
            this.mInsetE = childDrawable.mInsetE;
            this.mWidth = childDrawable.mWidth;
            this.mHeight = childDrawable.mHeight;
            this.mGravity = childDrawable.mGravity;
            this.mId = childDrawable.mId;
            int iResolveDensity = Drawable.resolveDensity(resources, childDrawable.mDensity);
            this.mDensity = iResolveDensity;
            int i2 = childDrawable.mDensity;
            if (i2 != iResolveDensity) {
                applyDensityScaling(i2, iResolveDensity);
            }
        }
    }

    public ChildDrawable addLayer(Drawable drawable, int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        ChildDrawable childDrawableCreateLayer = createLayer(drawable);
        childDrawableCreateLayer.mId = i2;
        childDrawableCreateLayer.mThemeAttrs = iArr;
        childDrawableCreateLayer.mDrawable.setAutoMirrored(isAutoMirrored());
        childDrawableCreateLayer.mInsetL = i3;
        childDrawableCreateLayer.mInsetT = i4;
        childDrawableCreateLayer.mInsetR = i5;
        childDrawableCreateLayer.mInsetB = i6;
        addLayer(childDrawableCreateLayer);
        this.mLayerState.mChildrenChangingConfigurations |= drawable.getChangingConfigurations();
        drawable.setCallback(this);
        return childDrawableCreateLayer;
    }

    public LayerDrawable() {
        this((LayerState) null, (Resources) null);
    }

    public LayerDrawable(LayerState layerState, Resources resources) {
        this.mTmpRect = new Rect();
        this.mTmpOutRect = new Rect();
        this.mTmpContainer = new Rect();
        LayerState layerStateCreateConstantState = createConstantState(layerState, resources);
        this.mLayerState = layerStateCreateConstantState;
        if (layerStateCreateConstantState.mNumChildren > 0) {
            ensurePadding();
            refreshPadding();
        }
    }

    public int addLayer(Drawable drawable) {
        ChildDrawable childDrawableCreateLayer = createLayer(drawable);
        int iAddLayer = addLayer(childDrawableCreateLayer);
        ensurePadding();
        refreshChildPadding(iAddLayer, childDrawableCreateLayer);
        return iAddLayer;
    }
}
