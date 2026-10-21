package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.PathParser;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AdaptiveIconDrawable extends Drawable implements Drawable.Callback {
    private static final int BACKGROUND_ID = 0;
    private static final float DEFAULT_VIEW_PORT_SCALE = 0.6666667f;
    private static final float EXTRA_INSET_PERCENTAGE = 0.25f;
    private static final int FOREGROUND_ID = 1;
    public static final float MASK_SIZE = 100.0f;
    private static final float SAFEZONE_SCALE = 0.9166667f;
    private static Path sMask;
    private final Canvas mCanvas;
    private boolean mChildRequestedInvalidation;
    private Rect mHotspotBounds;
    LayerState mLayerState;
    private Bitmap mLayersBitmap;
    private Shader mLayersShader;
    private final Path mMask;
    private Bitmap mMaskBitmap;
    private final Matrix mMaskMatrix;
    private boolean mMutated;
    private Paint mPaint;
    private boolean mSuspendChildInvalidation;
    private final Rect mTmpOutRect;
    private final Region mTransparentRegion;

    public static class LayerState extends Drawable.ConstantState {
        static final int N_CHILDREN = 2;
        private boolean mAutoMirrored;
        int mChangingConfigurations;
        private boolean mCheckedOpacity;
        private boolean mCheckedStateful;
        ChildDrawable[] mChildren;
        int mChildrenChangingConfigurations;
        int mDensity;
        private boolean mIsStateful;
        private int mOpacity;
        int mOpacityOverride;
        int mSrcDensityOverride;
        private int[] mThemeAttrs;

        public LayerState(LayerState layerState, AdaptiveIconDrawable adaptiveIconDrawable, Resources resources) {
            int i2 = 0;
            this.mSrcDensityOverride = 0;
            this.mOpacityOverride = 0;
            this.mAutoMirrored = false;
            this.mDensity = Drawable.resolveDensity(resources, layerState != null ? layerState.mDensity : 0);
            this.mChildren = new ChildDrawable[2];
            if (layerState == null) {
                while (i2 < 2) {
                    this.mChildren[i2] = new ChildDrawable(this.mDensity);
                    i2++;
                }
                return;
            }
            ChildDrawable[] childDrawableArr = layerState.mChildren;
            this.mChangingConfigurations = layerState.mChangingConfigurations;
            this.mChildrenChangingConfigurations = layerState.mChildrenChangingConfigurations;
            while (i2 < 2) {
                this.mChildren[i2] = new ChildDrawable(childDrawableArr[i2], adaptiveIconDrawable, resources);
                i2++;
            }
            this.mCheckedOpacity = layerState.mCheckedOpacity;
            this.mOpacity = layerState.mOpacity;
            this.mCheckedStateful = layerState.mCheckedStateful;
            this.mIsStateful = layerState.mIsStateful;
            this.mAutoMirrored = layerState.mAutoMirrored;
            this.mThemeAttrs = layerState.mThemeAttrs;
            this.mOpacityOverride = layerState.mOpacityOverride;
            this.mSrcDensityOverride = layerState.mSrcDensityOverride;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            if (this.mThemeAttrs != null || super.canApplyTheme()) {
                return true;
            }
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i2 = 0; i2 < 2; i2++) {
                if (childDrawableArr[i2].canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final boolean canConstantState() {
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i2 = 0; i2 < 2; i2++) {
                Drawable drawable = childDrawableArr[i2].mDrawable;
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
            ChildDrawable[] childDrawableArr = this.mChildren;
            int i2 = 0;
            while (true) {
                if (i2 >= 2) {
                    i2 = -1;
                    break;
                }
                if (childDrawableArr[i2].mDrawable != null) {
                    break;
                }
                i2++;
            }
            int opacity = i2 >= 0 ? childDrawableArr[i2].mDrawable.getOpacity() : -2;
            for (int i3 = i2 + 1; i3 < 2; i3++) {
                Drawable drawable = childDrawableArr[i3].mDrawable;
                if (drawable != null) {
                    opacity = Drawable.resolveOpacity(opacity, drawable.getOpacity());
                }
            }
            this.mOpacity = opacity;
            this.mCheckedOpacity = true;
            return opacity;
        }

        public final boolean hasFocusStateSpecified() {
            ChildDrawable[] childDrawableArr = this.mChildren;
            for (int i2 = 0; i2 < 2; i2++) {
                Drawable drawable = childDrawableArr[i2].mDrawable;
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
            ChildDrawable[] childDrawableArr = this.mChildren;
            boolean z2 = false;
            for (int i2 = 0; i2 < 2; i2++) {
                Drawable drawable = childDrawableArr[i2].mDrawable;
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
            return new AdaptiveIconDrawable(this, (Resources) null);
        }

        public final void setDensity(int i2) {
            if (this.mDensity != i2) {
                this.mDensity = i2;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new AdaptiveIconDrawable(this, resources);
        }
    }

    public AdaptiveIconDrawable() {
        this((LayerState) null, (Resources) null);
    }

    private void addLayer(int i2, ChildDrawable childDrawable) {
        LayerState layerState = this.mLayerState;
        layerState.mChildren[i2] = childDrawable;
        layerState.invalidateCache();
    }

    private ChildDrawable createChildDrawable(Drawable drawable) {
        ChildDrawable childDrawable = new ChildDrawable(this.mLayerState.mDensity);
        childDrawable.mDrawable = drawable;
        drawable.setCallback(this);
        this.mLayerState.mChildrenChangingConfigurations |= childDrawable.mDrawable.getChangingConfigurations();
        return childDrawable;
    }

    public static float getExtraInsetFraction() {
        return 0.25f;
    }

    public static float getExtraInsetPercentage() {
        return 0.25f;
    }

    private int getMaxIntrinsicHeight() {
        int intrinsicHeight;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i3 >= 2) {
                return i2;
            }
            Drawable drawable = layerState.mChildren[i3].mDrawable;
            if (drawable != null && (intrinsicHeight = drawable.getIntrinsicHeight()) > i2) {
                i2 = intrinsicHeight;
            }
            i3++;
        }
    }

    private int getMaxIntrinsicWidth() {
        int intrinsicWidth;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            LayerState layerState = this.mLayerState;
            if (i3 >= 2) {
                return i2;
            }
            Drawable drawable = layerState.mChildren[i3].mDrawable;
            if (drawable != null && (intrinsicWidth = drawable.getIntrinsicWidth()) > i2) {
                i2 = intrinsicWidth;
            }
            i3++;
        }
    }

    private void inflateLayers(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i2;
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
            if (next2 == 2 && depth2 <= depth) {
                String name = xmlPullParser.getName();
                if (name.equals("background")) {
                    i2 = 0;
                } else if (name.equals("foreground")) {
                    i2 = 1;
                } else {
                    continue;
                }
                ChildDrawable childDrawable = new ChildDrawable(layerState.mDensity);
                TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.AdaptiveIconDrawableLayer);
                updateLayerFromTypedArray(childDrawable, typedArrayObtainAttributes);
                typedArrayObtainAttributes.recycle();
                if (childDrawable.mDrawable == null && childDrawable.mThemeAttrs == null) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <foreground> or <background> tag requires a 'drawable'attribute or child tag defining a drawable");
                    }
                    Drawable drawableCreateFromXmlInnerForDensity = Drawable.createFromXmlInnerForDensity(resources, xmlPullParser, attributeSet, this.mLayerState.mSrcDensityOverride, theme);
                    childDrawable.mDrawable = drawableCreateFromXmlInnerForDensity;
                    drawableCreateFromXmlInnerForDensity.setCallback(this);
                    layerState.mChildrenChangingConfigurations |= childDrawable.mDrawable.getChangingConfigurations();
                }
                addLayer(i2, childDrawable);
            }
        }
    }

    private void resumeChildInvalidation() {
        this.mSuspendChildInvalidation = false;
        if (this.mChildRequestedInvalidation) {
            this.mChildRequestedInvalidation = false;
            invalidateSelf();
        }
    }

    private void suspendChildInvalidation() {
        this.mSuspendChildInvalidation = true;
    }

    private void updateLayerBounds(Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        try {
            suspendChildInvalidation();
            updateLayerBoundsInternal(rect);
            updateMaskBoundsInternal(rect);
        } finally {
            resumeChildInvalidation();
        }
    }

    private void updateLayerBoundsInternal(Rect rect) {
        Drawable drawable;
        int iWidth = rect.width() / 2;
        int iHeight = rect.height() / 2;
        for (int i2 = 0; i2 < 2; i2++) {
            ChildDrawable childDrawable = this.mLayerState.mChildren[i2];
            if (childDrawable != null && (drawable = childDrawable.mDrawable) != null) {
                int iWidth2 = (int) (rect.width() / 1.3333334f);
                int iHeight2 = (int) (rect.height() / 1.3333334f);
                Rect rect2 = this.mTmpOutRect;
                rect2.set(iWidth - iWidth2, iHeight - iHeight2, iWidth2 + iWidth, iHeight2 + iHeight);
                drawable.setBounds(rect2);
            }
        }
    }

    private void updateLayerFromTypedArray(ChildDrawable childDrawable, TypedArray typedArray) {
        LayerState layerState = this.mLayerState;
        layerState.mChildrenChangingConfigurations |= typedArray.getChangingConfigurations();
        childDrawable.mThemeAttrs = typedArray.extractThemeAttrs();
        Drawable drawableForDensity = typedArray.getDrawableForDensity(0, layerState.mSrcDensityOverride);
        if (drawableForDensity != null) {
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null) {
                drawable.setCallback(null);
            }
            childDrawable.mDrawable = drawableForDensity;
            drawableForDensity.setCallback(this);
            layerState.mChildrenChangingConfigurations = childDrawable.mDrawable.getChangingConfigurations() | layerState.mChildrenChangingConfigurations;
        }
    }

    private void updateMaskBoundsInternal(Rect rect) {
        this.mMaskMatrix.setScale(rect.width() / 100.0f, rect.height() / 100.0f);
        sMask.transform(this.mMaskMatrix, this.mMask);
        Bitmap bitmap = this.mMaskBitmap;
        if (bitmap == null || bitmap.getWidth() != rect.width() || this.mMaskBitmap.getHeight() != rect.height()) {
            this.mMaskBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ALPHA_8);
            this.mLayersBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
        }
        this.mCanvas.setBitmap(this.mMaskBitmap);
        this.mPaint.setShader(null);
        this.mCanvas.drawPath(this.mMask, this.mPaint);
        this.mMaskMatrix.postTranslate(rect.left, rect.top);
        this.mMask.reset();
        sMask.transform(this.mMaskMatrix, this.mMask);
        this.mTransparentRegion.setEmpty();
        this.mLayersShader = null;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        LayerState layerState = this.mLayerState;
        if (layerState == null) {
            return;
        }
        int iResolveDensity = Drawable.resolveDensity(theme.getResources(), 0);
        layerState.setDensity(iResolveDensity);
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            ChildDrawable childDrawable = childDrawableArr[i2];
            childDrawable.setDensity(iResolveDensity);
            int[] iArr = childDrawable.mThemeAttrs;
            if (iArr != null) {
                TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.AdaptiveIconDrawableLayer);
                updateLayerFromTypedArray(childDrawable, typedArrayResolveAttributes);
                typedArrayResolveAttributes.recycle();
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
        LayerState layerState = this.mLayerState;
        return (layerState != null && layerState.canApplyTheme()) || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
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
        Drawable drawable;
        Bitmap bitmap = this.mLayersBitmap;
        if (bitmap == null) {
            return;
        }
        if (this.mLayersShader == null) {
            this.mCanvas.setBitmap(bitmap);
            this.mCanvas.drawColor(-16777216);
            int i2 = 0;
            while (true) {
                LayerState layerState = this.mLayerState;
                if (i2 >= 2) {
                    break;
                }
                ChildDrawable childDrawable = layerState.mChildren[i2];
                if (childDrawable != null && (drawable = childDrawable.mDrawable) != null) {
                    drawable.draw(this.mCanvas);
                }
                i2++;
            }
            Bitmap bitmap2 = this.mLayersBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
            this.mLayersShader = bitmapShader;
            this.mPaint.setShader(bitmapShader);
        }
        if (this.mMaskBitmap != null) {
            Rect bounds = getBounds();
            canvas.drawBitmap(this.mMaskBitmap, bounds.left, bounds.top, this.mPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return -3;
    }

    public Drawable getBackground() {
        return this.mLayerState.mChildren[0].mDrawable;
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

    public Drawable getForeground() {
        return this.mLayerState.mChildren[1].mDrawable;
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

    public Path getIconMask() {
        return this.mMask;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (getMaxIntrinsicHeight() * DEFAULT_VIEW_PORT_SCALE);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (getMaxIntrinsicWidth() * DEFAULT_VIEW_PORT_SCALE);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        LayerState layerState = this.mLayerState;
        int i2 = layerState.mOpacityOverride;
        return i2 != 0 ? i2 : layerState.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setConvexPath(this.mMask);
    }

    public Region getSafeZone() {
        this.mMaskMatrix.reset();
        this.mMaskMatrix.setScale(SAFEZONE_SCALE, SAFEZONE_SCALE, getBounds().centerX(), getBounds().centerY());
        Path path = new Path();
        this.mMask.transform(this.mMaskMatrix, path);
        Region region = new Region(getBounds());
        region.setPath(path, region);
        return region;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        if (this.mTransparentRegion.isEmpty()) {
            this.mMask.toggleInverseFillType();
            this.mTransparentRegion.set(getBounds());
            Region region = this.mTransparentRegion;
            region.setPath(this.mMask, region);
            this.mMask.toggleInverseFillType();
        }
        return this.mTransparentRegion;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        return this.mLayerState.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        LayerState layerState = this.mLayerState;
        if (layerState == null) {
            return;
        }
        int iResolveDensity = Drawable.resolveDensity(resources, 0);
        layerState.setDensity(iResolveDensity);
        layerState.mSrcDensityOverride = this.mSrcDensityOverride;
        ChildDrawable[] childDrawableArr = layerState.mChildren;
        for (int i2 = 0; i2 < layerState.mChildren.length; i2++) {
            childDrawableArr[i2].setDensity(iResolveDensity);
        }
        inflateLayers(resources, xmlPullParser, attributeSet, theme);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (this.mSuspendChildInvalidation) {
            this.mChildRequestedInvalidation = true;
        } else {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.mLayersShader = null;
        super.invalidateSelf();
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
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            if (childDrawableArr[i2].mDrawable.isProjected()) {
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
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mLayerState = createConstantState(this.mLayerState, null);
            int i2 = 0;
            while (true) {
                LayerState layerState = this.mLayerState;
                if (i2 >= 2) {
                    break;
                }
                Drawable drawable = layerState.mChildren[i2].mDrawable;
                if (drawable != null) {
                    drawable.mutate();
                }
                i2++;
            }
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        updateLayerBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        boolean z2 = false;
        for (int i3 = 0; i3 < 2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null && drawable.setLevel(i2)) {
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
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        boolean z2 = false;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null && drawable.isStateful() && drawable.setState(iArr)) {
                z2 = true;
            }
        }
        if (z2) {
            updateLayerBounds(getBounds());
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i3 = 0; i3 < 2; i3++) {
            Drawable drawable = childDrawableArr[i3].mDrawable;
            if (drawable != null) {
                drawable.setAlpha(i2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        this.mLayerState.mAutoMirrored = z2;
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.setAutoMirrored(z2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.setDither(z2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.setHotspot(f2, f3);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i6 = 0; i6 < 2; i6++) {
            Drawable drawable = childDrawableArr[i6].mDrawable;
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

    public void setOpacity(int i2) {
        this.mLayerState.mOpacityOverride = i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.setTintList(colorStateList);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
            if (drawable != null) {
                drawable.setTintMode(mode);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        ChildDrawable[] childDrawableArr = this.mLayerState.mChildren;
        for (int i2 = 0; i2 < 2; i2++) {
            Drawable drawable = childDrawableArr[i2].mDrawable;
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

    public static class ChildDrawable {
        public int mDensity;
        public Drawable mDrawable;
        public int[] mThemeAttrs;

        public ChildDrawable(int i2) {
            this.mDensity = i2;
        }

        public boolean canApplyTheme() {
            Drawable drawable;
            return this.mThemeAttrs != null || ((drawable = this.mDrawable) != null && drawable.canApplyTheme());
        }

        public final void setDensity(int i2) {
            if (this.mDensity != i2) {
                this.mDensity = i2;
            }
        }

        public ChildDrawable(ChildDrawable childDrawable, AdaptiveIconDrawable adaptiveIconDrawable, Resources resources) {
            Drawable drawableNewDrawable;
            this.mDensity = 160;
            Drawable drawable = childDrawable.mDrawable;
            if (drawable != null) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState == null) {
                    drawableNewDrawable = drawable;
                } else if (resources != null) {
                    drawableNewDrawable = constantState.newDrawable(resources);
                } else {
                    drawableNewDrawable = constantState.newDrawable();
                }
                drawableNewDrawable.setCallback(adaptiveIconDrawable);
                drawableNewDrawable.setBounds(drawable.getBounds());
                drawableNewDrawable.setLevel(drawable.getLevel());
            } else {
                drawableNewDrawable = null;
            }
            this.mDrawable = drawableNewDrawable;
            this.mThemeAttrs = childDrawable.mThemeAttrs;
            this.mDensity = Drawable.resolveDensity(resources, childDrawable.mDensity);
        }
    }

    public AdaptiveIconDrawable(LayerState layerState, Resources resources) {
        this.mTmpOutRect = new Rect();
        this.mPaint = new Paint(7);
        this.mLayerState = createConstantState(layerState, resources);
        if (sMask == null) {
            sMask = PathParser.createPathFromPathData(Resources.getSystem().getString(R.string.config_icon_mask));
        }
        this.mMask = PathParser.createPathFromPathData(Resources.getSystem().getString(R.string.config_icon_mask));
        this.mMaskMatrix = new Matrix();
        this.mCanvas = new Canvas();
        this.mTransparentRegion = new Region();
    }

    public AdaptiveIconDrawable(Drawable drawable, Drawable drawable2) {
        this((LayerState) null, (Resources) null);
        if (drawable != null) {
            addLayer(0, createChildDrawable(drawable));
        }
        if (drawable2 != null) {
            addLayer(1, createChildDrawable(drawable2));
        }
    }
}
