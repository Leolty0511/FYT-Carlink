package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import com.android.internal.R;
import java.io.IOException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class RippleDrawable extends LayerDrawable {
    private static final int MASK_CONTENT = 1;
    private static final int MASK_EXPLICIT = 2;
    private static final int MASK_NONE = 0;
    private static final int MASK_UNKNOWN = -1;
    private static final int MAX_RIPPLES = 10;
    public static final int RADIUS_AUTO = -1;
    private RippleBackground mBackground;
    private boolean mBackgroundActive;
    private int mDensity;
    private final Rect mDirtyBounds;
    private final Rect mDrawingBounds;
    private RippleForeground[] mExitingRipples;
    private int mExitingRipplesCount;
    private boolean mForceSoftware;
    private boolean mHasPending;
    private boolean mHasValidMask;
    private final Rect mHotspotBounds;
    private Drawable mMask;
    private Bitmap mMaskBuffer;
    private Canvas mMaskCanvas;
    private PorterDuffColorFilter mMaskColorFilter;
    private Matrix mMaskMatrix;
    private BitmapShader mMaskShader;
    private boolean mOverrideBounds;
    private float mPendingX;
    private float mPendingY;
    private RippleForeground mRipple;
    private boolean mRippleActive;
    private Paint mRipplePaint;
    private RippleState mState;
    private final Rect mTempRect;

    public static class RippleState extends LayerDrawable.LayerState {
        ColorStateList mColor;
        int mMaxRadius;
        int[] mTouchThemeAttrs;

        public RippleState(LayerDrawable.LayerState layerState, RippleDrawable rippleDrawable, Resources resources) {
            super(layerState, rippleDrawable, resources);
            this.mColor = ColorStateList.valueOf(Color.MAGENTA);
            this.mMaxRadius = -1;
            if (layerState == null || !(layerState instanceof RippleState)) {
                return;
            }
            RippleState rippleState = (RippleState) layerState;
            this.mTouchThemeAttrs = rippleState.mTouchThemeAttrs;
            this.mColor = rippleState.mColor;
            this.mMaxRadius = rippleState.mMaxRadius;
            int i2 = rippleState.mDensity;
            int i3 = this.mDensity;
            if (i2 != i3) {
                applyDensityScaling(layerState.mDensity, i3);
            }
        }

        private void applyDensityScaling(int i2, int i3) {
            int i4 = this.mMaxRadius;
            if (i4 != -1) {
                this.mMaxRadius = Drawable.scaleFromDensity(i4, i2, i3, true);
            }
        }

        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            ColorStateList colorStateList;
            return this.mTouchThemeAttrs != null || ((colorStateList = this.mColor) != null && colorStateList.canApplyTheme()) || super.canApplyTheme();
        }

        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int changingConfigurations = super.getChangingConfigurations();
            ColorStateList colorStateList = this.mColor;
            return changingConfigurations | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new RippleDrawable(this, (Resources) null);
        }

        @Override // android.graphics.drawable.LayerDrawable.LayerState
        public void onDensityChanged(int i2, int i3) {
            super.onDensityChanged(i2, i3);
            applyDensityScaling(i2, i3);
        }

        @Override // android.graphics.drawable.LayerDrawable.LayerState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new RippleDrawable(this, resources);
        }
    }

    private void cancelExitingRipples() {
        int i2 = this.mExitingRipplesCount;
        RippleForeground[] rippleForegroundArr = this.mExitingRipples;
        for (int i3 = 0; i3 < i2; i3++) {
            rippleForegroundArr[i3].end();
        }
        if (rippleForegroundArr != null) {
            Arrays.fill(rippleForegroundArr, 0, i2, (Object) null);
        }
        this.mExitingRipplesCount = 0;
        invalidateSelf(false);
    }

    private void clearHotspots() {
        RippleForeground rippleForeground = this.mRipple;
        if (rippleForeground != null) {
            rippleForeground.end();
            this.mRipple = null;
            this.mRippleActive = false;
        }
        RippleBackground rippleBackground = this.mBackground;
        if (rippleBackground != null) {
            rippleBackground.end();
            this.mBackground = null;
            this.mBackgroundActive = false;
        }
        cancelExitingRipples();
    }

    private void drawBackgroundAndRipples(Canvas canvas) {
        RippleForeground rippleForeground = this.mRipple;
        RippleBackground rippleBackground = this.mBackground;
        int i2 = this.mExitingRipplesCount;
        if (rippleForeground != null || i2 > 0 || (rippleBackground != null && rippleBackground.isVisible())) {
            float fExactCenterX = this.mHotspotBounds.exactCenterX();
            float fExactCenterY = this.mHotspotBounds.exactCenterY();
            canvas.translate(fExactCenterX, fExactCenterY);
            updateMaskShaderIfNeeded();
            if (this.mMaskShader != null) {
                Rect bounds = getBounds();
                this.mMaskMatrix.setTranslate(bounds.left - fExactCenterX, bounds.top - fExactCenterY);
                this.mMaskShader.setLocalMatrix(this.mMaskMatrix);
            }
            int colorForState = this.mState.mColor.getColorForState(getState(), -16777216);
            int iAlpha = (Color.alpha(colorForState) / 2) << 24;
            Paint ripplePaint = getRipplePaint();
            PorterDuffColorFilter porterDuffColorFilter = this.mMaskColorFilter;
            if (porterDuffColorFilter != null) {
                porterDuffColorFilter.setColor(colorForState | (-16777216));
                ripplePaint.setColor(iAlpha);
                ripplePaint.setColorFilter(this.mMaskColorFilter);
                ripplePaint.setShader(this.mMaskShader);
            } else {
                ripplePaint.setColor((colorForState & 16777215) | iAlpha);
                ripplePaint.setColorFilter(null);
                ripplePaint.setShader(null);
            }
            if (rippleBackground != null && rippleBackground.isVisible()) {
                rippleBackground.draw(canvas, ripplePaint);
            }
            if (i2 > 0) {
                RippleForeground[] rippleForegroundArr = this.mExitingRipples;
                for (int i3 = 0; i3 < i2; i3++) {
                    rippleForegroundArr[i3].draw(canvas, ripplePaint);
                }
            }
            if (rippleForeground != null) {
                rippleForeground.draw(canvas, ripplePaint);
            }
            canvas.translate(-fExactCenterX, -fExactCenterY);
        }
    }

    private void drawContent(Canvas canvas) {
        LayerDrawable.LayerState layerState = this.mLayerState;
        LayerDrawable.ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            LayerDrawable.ChildDrawable childDrawable = childDrawableArr[i3];
            if (childDrawable.mId != 16908334) {
                childDrawable.mDrawable.draw(canvas);
            }
        }
    }

    private void drawMask(Canvas canvas) {
        this.mMask.draw(canvas);
    }

    private int getMaskType() {
        RippleBackground rippleBackground;
        if (this.mRipple == null && this.mExitingRipplesCount <= 0 && ((rippleBackground = this.mBackground) == null || !rippleBackground.isVisible())) {
            return -1;
        }
        Drawable drawable = this.mMask;
        if (drawable != null) {
            return drawable.getOpacity() == -1 ? 0 : 2;
        }
        LayerDrawable.LayerState layerState = this.mLayerState;
        LayerDrawable.ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            if (childDrawableArr[i3].mDrawable.getOpacity() != -1) {
                return 1;
            }
        }
        return 0;
    }

    private Paint getRipplePaint() {
        if (this.mRipplePaint == null) {
            Paint paint = new Paint();
            this.mRipplePaint = paint;
            paint.setAntiAlias(true);
            this.mRipplePaint.setStyle(Paint.Style.FILL);
        }
        return this.mRipplePaint;
    }

    private boolean isBounded() {
        return getNumberOfLayers() > 0;
    }

    private void onHotspotBoundsChanged() {
        int i2 = this.mExitingRipplesCount;
        RippleForeground[] rippleForegroundArr = this.mExitingRipples;
        for (int i3 = 0; i3 < i2; i3++) {
            rippleForegroundArr[i3].onHotspotBoundsChanged();
        }
        RippleForeground rippleForeground = this.mRipple;
        if (rippleForeground != null) {
            rippleForeground.onHotspotBoundsChanged();
        }
        RippleBackground rippleBackground = this.mBackground;
        if (rippleBackground != null) {
            rippleBackground.onHotspotBoundsChanged();
        }
    }

    private void pruneRipples() {
        RippleForeground[] rippleForegroundArr = this.mExitingRipples;
        int i2 = this.mExitingRipplesCount;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (!rippleForegroundArr[i4].hasFinishedExit()) {
                rippleForegroundArr[i3] = rippleForegroundArr[i4];
                i3++;
            }
        }
        for (int i5 = i3; i5 < i2; i5++) {
            rippleForegroundArr[i5] = null;
        }
        this.mExitingRipplesCount = i3;
    }

    private void setBackgroundActive(boolean z2, boolean z3) {
        if (this.mBackgroundActive != z2) {
            this.mBackgroundActive = z2;
            if (z2) {
                tryBackgroundEnter(z3);
            } else {
                tryBackgroundExit();
            }
        }
    }

    private void setRippleActive(boolean z2) {
        if (this.mRippleActive != z2) {
            this.mRippleActive = z2;
            if (z2) {
                tryRippleEnter();
            } else {
                tryRippleExit();
            }
        }
    }

    private void tryBackgroundEnter(boolean z2) {
        if (this.mBackground == null) {
            this.mBackground = new RippleBackground(this, this.mHotspotBounds, isBounded(), this.mForceSoftware);
        }
        this.mBackground.setup(this.mState.mMaxRadius, this.mDensity);
        this.mBackground.enter(z2);
    }

    private void tryBackgroundExit() {
        RippleBackground rippleBackground = this.mBackground;
        if (rippleBackground != null) {
            rippleBackground.exit();
        }
    }

    private void tryRippleEnter() {
        float fExactCenterX;
        float fExactCenterY;
        if (this.mExitingRipplesCount >= 10) {
            return;
        }
        if (this.mRipple == null) {
            if (this.mHasPending) {
                this.mHasPending = false;
                fExactCenterX = this.mPendingX;
                fExactCenterY = this.mPendingY;
            } else {
                fExactCenterX = this.mHotspotBounds.exactCenterX();
                fExactCenterY = this.mHotspotBounds.exactCenterY();
            }
            this.mRipple = new RippleForeground(this, this.mHotspotBounds, fExactCenterX, fExactCenterY, isBounded(), this.mForceSoftware);
        }
        this.mRipple.setup(this.mState.mMaxRadius, this.mDensity);
        this.mRipple.enter(false);
    }

    private void tryRippleExit() {
        RippleForeground rippleForeground = this.mRipple;
        if (rippleForeground != null) {
            if (this.mExitingRipples == null) {
                this.mExitingRipples = new RippleForeground[10];
            }
            RippleForeground[] rippleForegroundArr = this.mExitingRipples;
            int i2 = this.mExitingRipplesCount;
            this.mExitingRipplesCount = i2 + 1;
            rippleForegroundArr[i2] = rippleForeground;
            rippleForeground.exit();
            this.mRipple = null;
        }
    }

    private void updateLocalState() {
        this.mMask = findDrawableByLayerId(16908334);
    }

    private void updateMaskShaderIfNeeded() {
        int maskType;
        if (this.mHasValidMask || (maskType = getMaskType()) == -1) {
            return;
        }
        this.mHasValidMask = true;
        Rect bounds = getBounds();
        if (maskType == 0 || bounds.isEmpty()) {
            Bitmap bitmap = this.mMaskBuffer;
            if (bitmap != null) {
                bitmap.recycle();
                this.mMaskBuffer = null;
                this.mMaskShader = null;
                this.mMaskCanvas = null;
            }
            this.mMaskMatrix = null;
            this.mMaskColorFilter = null;
            return;
        }
        Bitmap bitmap2 = this.mMaskBuffer;
        if (bitmap2 != null && bitmap2.getWidth() == bounds.width() && this.mMaskBuffer.getHeight() == bounds.height()) {
            this.mMaskBuffer.eraseColor(0);
        } else {
            Bitmap bitmap3 = this.mMaskBuffer;
            if (bitmap3 != null) {
                bitmap3.recycle();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bounds.width(), bounds.height(), Bitmap.Config.ALPHA_8);
            this.mMaskBuffer = bitmapCreateBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.mMaskShader = new BitmapShader(bitmapCreateBitmap, tileMode, tileMode);
            this.mMaskCanvas = new Canvas(this.mMaskBuffer);
        }
        Matrix matrix = this.mMaskMatrix;
        if (matrix == null) {
            this.mMaskMatrix = new Matrix();
        } else {
            matrix.reset();
        }
        if (this.mMaskColorFilter == null) {
            this.mMaskColorFilter = new PorterDuffColorFilter(0, PorterDuff.Mode.SRC_IN);
        }
        int i2 = bounds.left;
        int i3 = bounds.top;
        this.mMaskCanvas.translate(-i2, -i3);
        if (maskType == 2) {
            drawMask(this.mMaskCanvas);
        } else if (maskType == 1) {
            drawContent(this.mMaskCanvas);
        }
        this.mMaskCanvas.translate(i2, i3);
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        RippleState rippleState = this.mState;
        rippleState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        rippleState.mTouchThemeAttrs = typedArray.extractThemeAttrs();
        ColorStateList colorStateList = typedArray.getColorStateList(0);
        if (colorStateList != null) {
            this.mState.mColor = colorStateList;
        }
        RippleState rippleState2 = this.mState;
        rippleState2.mMaxRadius = typedArray.getDimensionPixelSize(1, rippleState2.mMaxRadius);
    }

    private void verifyRequiredAttributes(TypedArray typedArray) throws XmlPullParserException {
        RippleState rippleState = this.mState;
        if (rippleState.mColor == null) {
            int[] iArr = rippleState.mTouchThemeAttrs;
            if (iArr == null || iArr[0] == 0) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <ripple> requires a valid color attribute"));
            }
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        RippleState rippleState = this.mState;
        if (rippleState == null) {
            return;
        }
        int[] iArr = rippleState.mTouchThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.RippleDrawable);
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
        ColorStateList colorStateList = rippleState.mColor;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            rippleState.mColor = rippleState.mColor.obtainForTheme(theme);
        }
        updateLocalState();
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        RippleState rippleState = this.mState;
        return (rippleState != null && rippleState.canApplyTheme()) || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        pruneRipples();
        Rect dirtyBounds = getDirtyBounds();
        int iSave = canvas.save(2);
        canvas.clipRect(dirtyBounds);
        drawContent(canvas);
        drawBackgroundAndRipples(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mState;
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        if (isBounded()) {
            return getBounds();
        }
        Rect rect = this.mDrawingBounds;
        Rect rect2 = this.mDirtyBounds;
        rect2.set(rect);
        rect.setEmpty();
        int iExactCenterX = (int) this.mHotspotBounds.exactCenterX();
        int iExactCenterY = (int) this.mHotspotBounds.exactCenterY();
        Rect rect3 = this.mTempRect;
        RippleForeground[] rippleForegroundArr = this.mExitingRipples;
        int i2 = this.mExitingRipplesCount;
        for (int i3 = 0; i3 < i2; i3++) {
            rippleForegroundArr[i3].getBounds(rect3);
            rect3.offset(iExactCenterX, iExactCenterY);
            rect.union(rect3);
        }
        RippleBackground rippleBackground = this.mBackground;
        if (rippleBackground != null) {
            rippleBackground.getBounds(rect3);
            rect3.offset(iExactCenterX, iExactCenterY);
            rect.union(rect3);
        }
        rect2.union(rect);
        rect2.union(super.getDirtyBounds());
        return rect2;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        rect.set(this.mHotspotBounds);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        LayerDrawable.LayerState layerState = this.mLayerState;
        LayerDrawable.ChildDrawable[] childDrawableArr = layerState.mChildren;
        int i2 = layerState.mNumChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            LayerDrawable.ChildDrawable childDrawable = childDrawableArr[i3];
            if (childDrawable.mId != 16908334) {
                childDrawable.mDrawable.getOutline(outline);
                if (!outline.isEmpty()) {
                    return;
                }
            }
        }
    }

    public int getRadius() {
        return this.mState.mMaxRadius;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        return true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.RippleDrawable);
        setPaddingMode(1);
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        verifyRequiredAttributes(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        updateLocalState();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        invalidateSelf(true);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isProjected() {
        if (isBounded()) {
            return false;
        }
        int i2 = this.mState.mMaxRadius;
        Rect bounds = getBounds();
        Rect rect = this.mHotspotBounds;
        if (i2 == -1 || i2 > rect.width() / 2 || i2 > rect.height() / 2) {
            return true;
        }
        return (bounds.equals(rect) || bounds.contains(rect)) ? false : true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        RippleForeground rippleForeground = this.mRipple;
        if (rippleForeground != null) {
            rippleForeground.end();
        }
        RippleBackground rippleBackground = this.mBackground;
        if (rippleBackground != null) {
            rippleBackground.end();
        }
        cancelExitingRipples();
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public Drawable mutate() {
        super.mutate();
        this.mState = (RippleState) this.mLayerState;
        this.mMask = findDrawableByLayerId(16908334);
        return this;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (!this.mOverrideBounds) {
            this.mHotspotBounds.set(rect);
            onHotspotBoundsChanged();
        }
        RippleBackground rippleBackground = this.mBackground;
        if (rippleBackground != null) {
            rippleBackground.onBoundsChange();
        }
        RippleForeground rippleForeground = this.mRipple;
        if (rippleForeground != null) {
            rippleForeground.onBoundsChange();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z2 = true;
            } else if (i2 == 16842908) {
                z5 = true;
            } else if (i2 == 16842919) {
                z3 = true;
            } else if (i2 == 16843623) {
                z4 = true;
            }
        }
        setRippleActive(z2 && z3);
        setBackgroundActive(z4 || z5 || (z2 && z3), z5 || z4);
        return zOnStateChange;
    }

    public void setColor(ColorStateList colorStateList) {
        this.mState.mColor = colorStateList;
        invalidateSelf(false);
    }

    @Override // android.graphics.drawable.LayerDrawable
    public boolean setDrawableByLayerId(int i2, Drawable drawable) {
        if (!super.setDrawableByLayerId(i2, drawable)) {
            return false;
        }
        if (i2 != 16908334) {
            return true;
        }
        this.mMask = drawable;
        this.mHasValidMask = false;
        return true;
    }

    public void setForceSoftware(boolean z2) {
        this.mForceSoftware = z2;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        RippleForeground rippleForeground = this.mRipple;
        if (rippleForeground == null || this.mBackground == null) {
            this.mPendingX = f2;
            this.mPendingY = f3;
            this.mHasPending = true;
        }
        if (rippleForeground != null) {
            rippleForeground.move(f2, f3);
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        this.mOverrideBounds = true;
        this.mHotspotBounds.set(i2, i3, i4, i5);
        onHotspotBoundsChanged();
    }

    @Override // android.graphics.drawable.LayerDrawable
    public void setPaddingMode(int i2) {
        super.setPaddingMode(i2);
    }

    public void setRadius(int i2) {
        this.mState.mMaxRadius = i2;
        invalidateSelf(false);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (!z2) {
            clearHotspots();
        } else if (visible) {
            if (this.mRippleActive) {
                tryRippleEnter();
            }
            if (this.mBackgroundActive) {
                tryBackgroundEnter(false);
            }
            jumpToCurrentState();
        }
        return visible;
    }

    public RippleDrawable() {
        this(new RippleState(null, null, null), null);
    }

    @Override // android.graphics.drawable.LayerDrawable
    public RippleState createConstantState(LayerDrawable.LayerState layerState, Resources resources) {
        return new RippleState(layerState, this, resources);
    }

    public void invalidateSelf(boolean z2) {
        super.invalidateSelf();
        if (z2) {
            this.mHasValidMask = false;
        }
    }

    public RippleDrawable(ColorStateList colorStateList, Drawable drawable, Drawable drawable2) {
        this(new RippleState(null, null, null), null);
        if (colorStateList != null) {
            if (drawable != null) {
                addLayer(drawable, null, 0, 0, 0, 0, 0);
            }
            if (drawable2 != null) {
                addLayer(drawable2, null, 16908334, 0, 0, 0, 0);
            }
            setColor(colorStateList);
            ensurePadding();
            refreshPadding();
            updateLocalState();
            return;
        }
        throw new IllegalArgumentException("RippleDrawable requires a non-null color");
    }

    private RippleDrawable(RippleState rippleState, Resources resources) {
        this.mTempRect = new Rect();
        this.mHotspotBounds = new Rect();
        this.mDrawingBounds = new Rect();
        this.mDirtyBounds = new Rect();
        this.mExitingRipplesCount = 0;
        RippleState rippleState2 = new RippleState(rippleState, this, resources);
        this.mState = rippleState2;
        this.mLayerState = rippleState2;
        this.mDensity = Drawable.resolveDensity(resources, rippleState2.mDensity);
        if (this.mState.mNumChildren > 0) {
            ensurePadding();
            refreshPadding();
        }
        updateLocalState();
    }
}
