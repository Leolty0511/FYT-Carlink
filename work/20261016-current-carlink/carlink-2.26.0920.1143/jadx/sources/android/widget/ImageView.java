package android.widget;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.TtmlUtils;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewHierarchyEncoder;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.R;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class ImageView extends View {
    private static final String LOG_TAG = "ImageView";
    private static boolean sCompatAdjustViewBounds;
    private static boolean sCompatDone;
    private static boolean sCompatDrawableVisibilityDispatch;
    private static boolean sCompatUseCorrectStreamDensity;
    private boolean mAdjustViewBounds;
    private int mAlpha;
    private int mBaseline;
    private boolean mBaselineAlignBottom;
    private ColorFilter mColorFilter;
    private boolean mColorMod;
    private boolean mCropToPadding;
    private Matrix mDrawMatrix;
    private Drawable mDrawable;
    private int mDrawableHeight;
    private ColorStateList mDrawableTintList;
    private PorterDuff.Mode mDrawableTintMode;
    private int mDrawableWidth;
    private boolean mHasColorFilter;
    private boolean mHasDrawableTint;
    private boolean mHasDrawableTintMode;
    private boolean mHaveFrame;
    private int mLevel;
    private Matrix mMatrix;
    private int mMaxHeight;
    private int mMaxWidth;
    private boolean mMergeState;
    private BitmapDrawable mRecycleableBitmapDrawable;
    private int mResource;
    private ScaleType mScaleType;
    private int[] mState;
    private final RectF mTempDst;
    private final RectF mTempSrc;
    private Uri mUri;
    private final int mViewAlphaScale;
    private Xfermode mXfermode;
    private static final ScaleType[] sScaleTypeArray = {ScaleType.MATRIX, ScaleType.FIT_XY, ScaleType.FIT_START, ScaleType.FIT_CENTER, ScaleType.FIT_END, ScaleType.CENTER, ScaleType.CENTER_CROP, ScaleType.CENTER_INSIDE};
    private static final Matrix.ScaleToFit[] sS2FArray = {Matrix.ScaleToFit.FILL, Matrix.ScaleToFit.START, Matrix.ScaleToFit.CENTER, Matrix.ScaleToFit.END};

    public class ImageDrawableCallback implements Runnable {
        private final Drawable drawable;
        private final int resource;
        private final Uri uri;

        public ImageDrawableCallback(Drawable drawable, Uri uri, int i2) {
            this.drawable = drawable;
            this.uri = uri;
            this.resource = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView.this.setImageDrawable(this.drawable);
            ImageView.this.mUri = this.uri;
            ImageView.this.mResource = this.resource;
        }
    }

    public enum ScaleType {
        MATRIX(0),
        FIT_XY(1),
        FIT_START(2),
        FIT_CENTER(3),
        FIT_END(4),
        CENTER(5),
        CENTER_CROP(6),
        CENTER_INSIDE(7);

        final int nativeInt;

        ScaleType(int i2) {
            this.nativeInt = i2;
        }
    }

    public ImageView(Context context) {
        super(context);
        this.mResource = 0;
        this.mHaveFrame = false;
        this.mAdjustViewBounds = false;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mColorFilter = null;
        this.mHasColorFilter = false;
        this.mAlpha = 255;
        this.mViewAlphaScale = 256;
        this.mColorMod = false;
        this.mDrawable = null;
        this.mRecycleableBitmapDrawable = null;
        this.mDrawableTintList = null;
        this.mDrawableTintMode = null;
        this.mHasDrawableTint = false;
        this.mHasDrawableTintMode = false;
        this.mState = null;
        this.mMergeState = false;
        this.mLevel = 0;
        this.mDrawMatrix = null;
        this.mTempSrc = new RectF();
        this.mTempDst = new RectF();
        this.mBaseline = -1;
        this.mBaselineAlignBottom = false;
        initImageView();
    }

    private void applyColorMod() {
        Drawable drawable = this.mDrawable;
        if (drawable == null || !this.mColorMod) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.mDrawable = drawableMutate;
        if (this.mHasColorFilter) {
            drawableMutate.setColorFilter(this.mColorFilter);
        }
        this.mDrawable.setXfermode(this.mXfermode);
        this.mDrawable.setAlpha((this.mAlpha * 256) >> 8);
    }

    private void applyImageTint() {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            if (this.mHasDrawableTint || this.mHasDrawableTintMode) {
                Drawable drawableMutate = drawable.mutate();
                this.mDrawable = drawableMutate;
                if (this.mHasDrawableTint) {
                    drawableMutate.setTintList(this.mDrawableTintList);
                }
                if (this.mHasDrawableTintMode) {
                    this.mDrawable.setTintMode(this.mDrawableTintMode);
                }
                if (this.mDrawable.isStateful()) {
                    this.mDrawable.setState(getDrawableState());
                }
            }
        }
    }

    private void configureBounds() {
        float f2;
        float f3;
        if (this.mDrawable == null || !this.mHaveFrame) {
            return;
        }
        int i2 = this.mDrawableWidth;
        int i3 = this.mDrawableHeight;
        int width = (getWidth() - this.mPaddingLeft) - this.mPaddingRight;
        int height = (getHeight() - this.mPaddingTop) - this.mPaddingBottom;
        boolean z2 = (i2 < 0 || width == i2) && (i3 < 0 || height == i3);
        if (i2 <= 0 || i3 <= 0 || ScaleType.FIT_XY == this.mScaleType) {
            this.mDrawable.setBounds(0, 0, width, height);
            this.mDrawMatrix = null;
            return;
        }
        this.mDrawable.setBounds(0, 0, i2, i3);
        ScaleType scaleType = ScaleType.MATRIX;
        ScaleType scaleType2 = this.mScaleType;
        if (scaleType == scaleType2) {
            if (this.mMatrix.isIdentity()) {
                this.mDrawMatrix = null;
                return;
            } else {
                this.mDrawMatrix = this.mMatrix;
                return;
            }
        }
        if (z2) {
            this.mDrawMatrix = null;
            return;
        }
        if (ScaleType.CENTER == scaleType2) {
            Matrix matrix = this.mMatrix;
            this.mDrawMatrix = matrix;
            matrix.setTranslate(Math.round((width - i2) * 0.5f), Math.round((height - i3) * 0.5f));
            return;
        }
        float f4 = 0.0f;
        if (ScaleType.CENTER_CROP == scaleType2) {
            Matrix matrix2 = this.mMatrix;
            this.mDrawMatrix = matrix2;
            if (i2 * height > width * i3) {
                f3 = height / i3;
                float f5 = (width - (i2 * f3)) * 0.5f;
                f2 = 0.0f;
                f4 = f5;
            } else {
                float f6 = width / i2;
                f2 = (height - (i3 * f6)) * 0.5f;
                f3 = f6;
            }
            matrix2.setScale(f3, f3);
            this.mDrawMatrix.postTranslate(Math.round(f4), Math.round(f2));
            return;
        }
        if (ScaleType.CENTER_INSIDE != scaleType2) {
            this.mTempSrc.set(0.0f, 0.0f, i2, i3);
            this.mTempDst.set(0.0f, 0.0f, width, height);
            Matrix matrix3 = this.mMatrix;
            this.mDrawMatrix = matrix3;
            matrix3.setRectToRect(this.mTempSrc, this.mTempDst, scaleTypeToScaleToFit(this.mScaleType));
            return;
        }
        this.mDrawMatrix = this.mMatrix;
        float fMin = (i2 > width || i3 > height) ? Math.min(width / i2, height / i3) : 1.0f;
        float fRound = Math.round((width - (i2 * fMin)) * 0.5f);
        float fRound2 = Math.round((height - (i3 * fMin)) * 0.5f);
        this.mDrawMatrix.setScale(fMin, fMin);
        this.mDrawMatrix.postTranslate(fRound, fRound2);
    }

    private Drawable getDrawableFromUri(Uri uri) throws Throwable {
        InputStream inputStreamOpenInputStream;
        String scheme = uri.getScheme();
        InputStream inputStream = null;
        if (ContentResolver.SCHEME_ANDROID_RESOURCE.equals(scheme)) {
            try {
                ContentResolver.OpenResourceIdResult resourceId = this.mContext.getContentResolver().getResourceId(uri);
                return resourceId.f56r.getDrawable(resourceId.id, this.mContext.getTheme());
            } catch (Exception e2) {
                Log.w(LOG_TAG, "Unable to open content: " + uri, e2);
            }
        } else {
            if (!"content".equals(scheme) && !ContentResolver.SCHEME_FILE.equals(scheme)) {
                return Drawable.createFromPath(uri.toString());
            }
            try {
                inputStreamOpenInputStream = this.mContext.getContentResolver().openInputStream(uri);
                try {
                    try {
                        Drawable drawableCreateFromResourceStream = Drawable.createFromResourceStream(sCompatUseCorrectStreamDensity ? getResources() : null, null, inputStreamOpenInputStream, null);
                        if (inputStreamOpenInputStream != null) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e3) {
                                Log.w(LOG_TAG, "Unable to close content: " + uri, e3);
                            }
                        }
                        return drawableCreateFromResourceStream;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamOpenInputStream;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                                Log.w(LOG_TAG, "Unable to close content: " + uri, e4);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e = e5;
                    Log.w(LOG_TAG, "Unable to open content: " + uri, e);
                    if (inputStreamOpenInputStream != null) {
                        try {
                            inputStreamOpenInputStream.close();
                        } catch (IOException e6) {
                            Log.w(LOG_TAG, "Unable to close content: " + uri, e6);
                        }
                    }
                    return null;
                }
            } catch (Exception e7) {
                e = e7;
                inputStreamOpenInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }

    private void initImageView() {
        this.mMatrix = new Matrix();
        this.mScaleType = ScaleType.FIT_CENTER;
        if (sCompatDone) {
            return;
        }
        int i2 = this.mContext.getApplicationInfo().targetSdkVersion;
        sCompatAdjustViewBounds = i2 <= 17;
        sCompatUseCorrectStreamDensity = i2 > 23;
        sCompatDrawableVisibilityDispatch = i2 < 24;
        sCompatDone = true;
    }

    private boolean isFilledByImage() {
        Drawable drawable = this.mDrawable;
        if (drawable == null) {
            return false;
        }
        Rect bounds = drawable.getBounds();
        Matrix matrix = this.mDrawMatrix;
        if (matrix == null) {
            return bounds.left <= 0 && bounds.top <= 0 && bounds.right >= getWidth() && bounds.bottom >= getHeight();
        }
        if (!matrix.rectStaysRect()) {
            return false;
        }
        RectF rectF = this.mTempSrc;
        RectF rectF2 = this.mTempDst;
        rectF.set(bounds);
        matrix.mapRect(rectF2, rectF);
        return rectF2.left <= 0.0f && rectF2.top <= 0.0f && rectF2.right >= ((float) getWidth()) && rectF2.bottom >= ((float) getHeight());
    }

    private void resizeFromDrawable() {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth < 0) {
                intrinsicWidth = this.mDrawableWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight < 0) {
                intrinsicHeight = this.mDrawableHeight;
            }
            if (intrinsicWidth == this.mDrawableWidth && intrinsicHeight == this.mDrawableHeight) {
                return;
            }
            this.mDrawableWidth = intrinsicWidth;
            this.mDrawableHeight = intrinsicHeight;
            requestLayout();
        }
    }

    private int resolveAdjustedSize(int i2, int i3, int i4) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(Math.min(i2, size), i3);
        }
        if (mode != 0) {
            return mode != 1073741824 ? i2 : size;
        }
        return Math.min(i2, i3);
    }

    private void resolveUri() throws Throwable {
        if (this.mDrawable == null && getResources() != null) {
            int i2 = this.mResource;
            Drawable drawable = null;
            if (i2 != 0) {
                try {
                    drawable = this.mContext.getDrawable(i2);
                } catch (Exception e2) {
                    Log.w(LOG_TAG, "Unable to find resource: " + this.mResource, e2);
                    this.mResource = 0;
                }
            } else {
                Uri uri = this.mUri;
                if (uri == null) {
                    return;
                }
                Drawable drawableFromUri = getDrawableFromUri(uri);
                if (drawableFromUri == null) {
                    Log.w(LOG_TAG, "resolveUri failed on bad bitmap uri: " + this.mUri);
                    this.mUri = null;
                }
                drawable = drawableFromUri;
            }
            updateDrawable(drawable);
        }
    }

    private static Matrix.ScaleToFit scaleTypeToScaleToFit(ScaleType scaleType) {
        return sS2FArray[scaleType.nativeInt - 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x005b, code lost:
    
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateDrawable(android.graphics.drawable.Drawable r6) {
        /*
            r5 = this;
            android.graphics.drawable.BitmapDrawable r0 = r5.mRecycleableBitmapDrawable
            r1 = 0
            if (r6 == r0) goto La
            if (r0 == 0) goto La
            r0.setBitmap(r1)
        La:
            android.graphics.drawable.Drawable r0 = r5.mDrawable
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L2f
            if (r0 != r6) goto L14
            r4 = r2
            goto L15
        L14:
            r4 = r3
        L15:
            r0.setCallback(r1)
            android.graphics.drawable.Drawable r0 = r5.mDrawable
            r5.unscheduleDrawable(r0)
            boolean r0 = android.widget.ImageView.sCompatDrawableVisibilityDispatch
            if (r0 != 0) goto L30
            if (r4 != 0) goto L30
            boolean r0 = r5.isAttachedToWindow()
            if (r0 == 0) goto L30
            android.graphics.drawable.Drawable r0 = r5.mDrawable
            r0.setVisible(r3, r3)
            goto L30
        L2f:
            r4 = r3
        L30:
            r5.mDrawable = r6
            if (r6 == 0) goto L8e
            r6.setCallback(r5)
            int r0 = r5.getLayoutDirection()
            r6.setLayoutDirection(r0)
            boolean r0 = r6.isStateful()
            if (r0 == 0) goto L4b
            int[] r0 = r5.getDrawableState()
            r6.setState(r0)
        L4b:
            if (r4 == 0) goto L51
            boolean r0 = android.widget.ImageView.sCompatDrawableVisibilityDispatch
            if (r0 == 0) goto L73
        L51:
            boolean r0 = android.widget.ImageView.sCompatDrawableVisibilityDispatch
            if (r0 == 0) goto L5d
            int r0 = r5.getVisibility()
            if (r0 != 0) goto L70
        L5b:
            r3 = r2
            goto L70
        L5d:
            boolean r0 = r5.isAttachedToWindow()
            if (r0 == 0) goto L70
            int r0 = r5.getWindowVisibility()
            if (r0 != 0) goto L70
            boolean r0 = r5.isShown()
            if (r0 == 0) goto L70
            goto L5b
        L70:
            r6.setVisible(r3, r2)
        L73:
            int r0 = r5.mLevel
            r6.setLevel(r0)
            int r0 = r6.getIntrinsicWidth()
            r5.mDrawableWidth = r0
            int r6 = r6.getIntrinsicHeight()
            r5.mDrawableHeight = r6
            r5.applyImageTint()
            r5.applyColorMod()
            r5.configureBounds()
            goto L93
        L8e:
            r6 = -1
            r5.mDrawableHeight = r6
            r5.mDrawableWidth = r6
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.ImageView.updateDrawable(android.graphics.drawable.Drawable):void");
    }

    public void animateTransform(Matrix matrix) {
        Drawable drawable = this.mDrawable;
        if (drawable == null) {
            return;
        }
        if (matrix == null) {
            drawable.setBounds(0, 0, getWidth(), getHeight());
        } else {
            drawable.setBounds(0, 0, this.mDrawableWidth, this.mDrawableHeight);
            if (this.mDrawMatrix == null) {
                this.mDrawMatrix = new Matrix();
            }
            this.mDrawMatrix.set(matrix);
        }
        invalidate();
    }

    public final void clearColorFilter() {
        setColorFilter((ColorFilter) null);
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mDrawable;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("layout:baseline", getBaseline());
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return ImageView.class.getName();
    }

    public boolean getAdjustViewBounds() {
        return this.mAdjustViewBounds;
    }

    @Override // android.view.View
    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    public int getBaseline() {
        return this.mBaselineAlignBottom ? getMeasuredHeight() : this.mBaseline;
    }

    public boolean getBaselineAlignBottom() {
        return this.mBaselineAlignBottom;
    }

    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    public boolean getCropToPadding() {
        return this.mCropToPadding;
    }

    public Drawable getDrawable() {
        Drawable drawable = this.mDrawable;
        if (drawable == this.mRecycleableBitmapDrawable) {
            this.mRecycleableBitmapDrawable = null;
        }
        return drawable;
    }

    public int getImageAlpha() {
        return this.mAlpha;
    }

    public Matrix getImageMatrix() {
        Matrix matrix = this.mDrawMatrix;
        return matrix == null ? new Matrix(Matrix.IDENTITY_MATRIX) : matrix;
    }

    public ColorStateList getImageTintList() {
        return this.mDrawableTintList;
    }

    public PorterDuff.Mode getImageTintMode() {
        return this.mDrawableTintMode;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public ScaleType getScaleType() {
        return this.mScaleType;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return (getBackground() == null || getBackground().getCurrent() == null) ? false : true;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable != this.mDrawable) {
            super.invalidateDrawable(drawable);
            return;
        }
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth != this.mDrawableWidth || intrinsicHeight != this.mDrawableHeight) {
                this.mDrawableWidth = intrinsicWidth;
                this.mDrawableHeight = intrinsicHeight;
                configureBounds();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean isDefaultFocusHighlightNeeded(Drawable drawable, Drawable drawable2) {
        Drawable drawable3 = this.mDrawable;
        return super.isDefaultFocusHighlightNeeded(drawable, drawable2) && (drawable3 == null || !drawable3.isStateful() || !this.mDrawable.hasFocusStateSpecified());
    }

    @Override // android.view.View
    public boolean isOpaque() {
        Drawable drawable;
        return super.isOpaque() || ((drawable = this.mDrawable) != null && this.mXfermode == null && drawable.getOpacity() == -1 && ((this.mAlpha * 256) >> 8) == 255 && isFilledByImage());
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.mDrawable;
        if (drawable == null || !sCompatDrawableVisibilityDispatch) {
            return;
        }
        drawable.setVisible(getVisibility() == 0, false);
    }

    @Override // android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] iArr = this.mState;
        if (iArr == null) {
            return super.onCreateDrawableState(i2);
        }
        return !this.mMergeState ? iArr : View.mergeDrawableStates(super.onCreateDrawableState(i2 + iArr.length), this.mState);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.mDrawable;
        if (drawable == null || !sCompatDrawableVisibilityDispatch) {
            return;
        }
        drawable.setVisible(false, false);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.mDrawable;
        if (drawable == null || this.mDrawableWidth == 0 || this.mDrawableHeight == 0) {
            return;
        }
        if (this.mDrawMatrix == null && this.mPaddingTop == 0 && this.mPaddingLeft == 0) {
            drawable.draw(canvas);
            return;
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        if (this.mCropToPadding) {
            int i2 = this.mScrollX;
            int i3 = this.mScrollY;
            canvas.clipRect(this.mPaddingLeft + i2, this.mPaddingTop + i3, ((i2 + this.mRight) - this.mLeft) - this.mPaddingRight, ((i3 + this.mBottom) - this.mTop) - this.mPaddingBottom);
        }
        canvas.translate(this.mPaddingLeft, this.mPaddingTop);
        Matrix matrix = this.mDrawMatrix;
        if (matrix != null) {
            canvas.concat(matrix);
        }
        this.mDrawable.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b2 A[PHI: r5
  0x00b2: PHI (r5v9 int) = (r5v7 int), (r5v11 int) binds: [B:30:0x009a, B:36:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d0 A[PHI: r5 r9
  0x00d0: PHI (r5v8 int) = (r5v7 int), (r5v7 int), (r5v10 int), (r5v10 int), (r5v10 int) binds: [B:27:0x0080, B:29:0x0098, B:39:0x00b3, B:40:0x00b5, B:46:0x00cb] A[DONT_GENERATE, DONT_INLINE]
  0x00d0: PHI (r9v7 int) = (r9v6 int), (r9v6 int), (r9v6 int), (r9v6 int), (r9v8 int) binds: [B:27:0x0080, B:29:0x0098, B:39:0x00b3, B:40:0x00b5, B:46:0x00cb] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) throws Throwable {
        int i4;
        int i5;
        float f2;
        boolean z2;
        boolean z3;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        boolean z4;
        resolveUri();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        if (this.mDrawable == null) {
            this.mDrawableWidth = -1;
            this.mDrawableHeight = -1;
            f2 = 0.0f;
            z2 = false;
            z3 = false;
            i4 = 0;
            i5 = 0;
        } else {
            i4 = this.mDrawableWidth;
            i5 = this.mDrawableHeight;
            if (i4 <= 0) {
                i4 = 1;
            }
            if (i5 <= 0) {
                i5 = 1;
            }
            if (this.mAdjustViewBounds) {
                z2 = mode != 1073741824;
                z3 = mode2 != 1073741824;
                f2 = i4 / i5;
            } else {
                f2 = 0.0f;
                z2 = false;
                z3 = false;
            }
        }
        int i6 = this.mPaddingLeft;
        int i7 = this.mPaddingRight;
        int i8 = this.mPaddingTop;
        int i9 = this.mPaddingBottom;
        if (z2 || z3) {
            int iResolveAdjustedSize = resolveAdjustedSize(i4 + i6 + i7, this.mMaxWidth, i2);
            int iResolveAdjustedSize2 = resolveAdjustedSize(i5 + i8 + i9, this.mMaxHeight, i3);
            if (f2 != 0.0f) {
                float f3 = (iResolveAdjustedSize2 - i8) - i9;
                if (Math.abs((((iResolveAdjustedSize - i6) - i7) / f3) - f2) <= 1.0E-7d) {
                    iResolveSizeAndState = iResolveAdjustedSize;
                    iResolveSizeAndState2 = iResolveAdjustedSize2;
                } else {
                    if (z2) {
                        int i10 = ((int) (f3 * f2)) + i6 + i7;
                        if (!z3 && !sCompatAdjustViewBounds) {
                            iResolveAdjustedSize = resolveAdjustedSize(i10, this.mMaxWidth, i2);
                        }
                        if (i10 <= iResolveAdjustedSize) {
                            iResolveAdjustedSize = i10;
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                    } else {
                        z4 = false;
                    }
                    if (z4 || !z3) {
                        iResolveSizeAndState = iResolveAdjustedSize;
                        iResolveSizeAndState2 = iResolveAdjustedSize2;
                    } else {
                        int i11 = ((int) (((iResolveAdjustedSize - i6) - i7) / f2)) + i8 + i9;
                        if (!z2 && !sCompatAdjustViewBounds) {
                            iResolveAdjustedSize2 = resolveAdjustedSize(i11, this.mMaxHeight, i3);
                        }
                        if (i11 <= iResolveAdjustedSize2) {
                            iResolveSizeAndState2 = i11;
                            iResolveSizeAndState = iResolveAdjustedSize;
                        } else {
                            iResolveSizeAndState = iResolveAdjustedSize;
                            iResolveSizeAndState2 = iResolveAdjustedSize2;
                        }
                    }
                }
            } else {
                iResolveSizeAndState = iResolveAdjustedSize;
                iResolveSizeAndState2 = iResolveAdjustedSize2;
            }
        } else {
            int iMax = Math.max(i6 + i7 + i4, getSuggestedMinimumWidth());
            int iMax2 = Math.max(i8 + i9 + i5, getSuggestedMinimumHeight());
            iResolveSizeAndState = View.resolveSizeAndState(iMax, i2, 0);
            iResolveSizeAndState2 = View.resolveSizeAndState(iMax2, i3, 0);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEventInternal(accessibilityEvent);
        CharSequence contentDescription = getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            return;
        }
        accessibilityEvent.getText().add(contentDescription);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.setLayoutDirection(i2);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        Drawable drawable = this.mDrawable;
        if (drawable == null || sCompatDrawableVisibilityDispatch) {
            return;
        }
        drawable.setVisible(z2, false);
    }

    @RemotableViewMethod
    public void setAdjustViewBounds(boolean z2) {
        this.mAdjustViewBounds = z2;
        if (z2) {
            setScaleType(ScaleType.FIT_CENTER);
        }
    }

    @RemotableViewMethod
    @Deprecated
    public void setAlpha(int i2) {
        int i3 = i2 & 255;
        if (this.mAlpha != i3) {
            this.mAlpha = i3;
            this.mColorMod = true;
            applyColorMod();
            invalidate();
        }
    }

    public void setBaseline(int i2) {
        if (this.mBaseline != i2) {
            this.mBaseline = i2;
            requestLayout();
        }
    }

    public void setBaselineAlignBottom(boolean z2) {
        if (this.mBaselineAlignBottom != z2) {
            this.mBaselineAlignBottom = z2;
            requestLayout();
        }
    }

    public final void setColorFilter(int i2, PorterDuff.Mode mode) {
        setColorFilter(new PorterDuffColorFilter(i2, mode));
    }

    public void setCropToPadding(boolean z2) {
        if (this.mCropToPadding != z2) {
            this.mCropToPadding = z2;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        this.mHaveFrame = true;
        configureBounds();
        return frame;
    }

    @RemotableViewMethod
    public void setImageAlpha(int i2) {
        setAlpha(i2);
    }

    @RemotableViewMethod
    public void setImageBitmap(Bitmap bitmap) {
        this.mDrawable = null;
        BitmapDrawable bitmapDrawable = this.mRecycleableBitmapDrawable;
        if (bitmapDrawable == null) {
            this.mRecycleableBitmapDrawable = new BitmapDrawable(this.mContext.getResources(), bitmap);
        } else {
            bitmapDrawable.setBitmap(bitmap);
        }
        setImageDrawable(this.mRecycleableBitmapDrawable);
    }

    public void setImageDrawable(Drawable drawable) {
        if (this.mDrawable != drawable) {
            this.mResource = 0;
            this.mUri = null;
            int i2 = this.mDrawableWidth;
            int i3 = this.mDrawableHeight;
            updateDrawable(drawable);
            if (i2 != this.mDrawableWidth || i3 != this.mDrawableHeight) {
                requestLayout();
            }
            invalidate();
        }
    }

    @RemotableViewMethod(asyncImpl = "setImageIconAsync")
    public void setImageIcon(Icon icon) {
        setImageDrawable(icon == null ? null : icon.loadDrawable(this.mContext));
    }

    public Runnable setImageIconAsync(Icon icon) {
        return new ImageDrawableCallback(icon == null ? null : icon.loadDrawable(this.mContext), null, 0);
    }

    @RemotableViewMethod
    public void setImageLevel(int i2) {
        this.mLevel = i2;
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.setLevel(i2);
            resizeFromDrawable();
        }
    }

    public void setImageMatrix(Matrix matrix) {
        if (matrix != null && matrix.isIdentity()) {
            matrix = null;
        }
        if ((matrix != null || this.mMatrix.isIdentity()) && (matrix == null || this.mMatrix.equals(matrix))) {
            return;
        }
        this.mMatrix.set(matrix);
        configureBounds();
        invalidate();
    }

    @RemotableViewMethod(asyncImpl = "setImageResourceAsync")
    public void setImageResource(int i2) throws Throwable {
        int i3 = this.mDrawableWidth;
        int i4 = this.mDrawableHeight;
        updateDrawable(null);
        this.mResource = i2;
        this.mUri = null;
        resolveUri();
        if (i3 != this.mDrawableWidth || i4 != this.mDrawableHeight) {
            requestLayout();
        }
        invalidate();
    }

    public Runnable setImageResourceAsync(int i2) {
        Drawable drawable;
        if (i2 != 0) {
            try {
                drawable = getContext().getDrawable(i2);
            } catch (Exception e2) {
                Log.w(LOG_TAG, "Unable to find resource: " + i2, e2);
                i2 = 0;
                drawable = null;
            }
        } else {
            drawable = null;
        }
        return new ImageDrawableCallback(drawable, null, i2);
    }

    public void setImageState(int[] iArr, boolean z2) {
        this.mState = iArr;
        this.mMergeState = z2;
        if (this.mDrawable != null) {
            refreshDrawableState();
            resizeFromDrawable();
        }
    }

    public void setImageTintList(ColorStateList colorStateList) {
        this.mDrawableTintList = colorStateList;
        this.mHasDrawableTint = true;
        applyImageTint();
    }

    public void setImageTintMode(PorterDuff.Mode mode) {
        this.mDrawableTintMode = mode;
        this.mHasDrawableTintMode = true;
        applyImageTint();
    }

    @RemotableViewMethod(asyncImpl = "setImageURIAsync")
    public void setImageURI(Uri uri) throws Throwable {
        if (this.mResource == 0) {
            Uri uri2 = this.mUri;
            if (uri2 == uri) {
                return;
            }
            if (uri != null && uri2 != null && uri.equals(uri2)) {
                return;
            }
        }
        updateDrawable(null);
        this.mResource = 0;
        this.mUri = uri;
        int i2 = this.mDrawableWidth;
        int i3 = this.mDrawableHeight;
        resolveUri();
        if (i2 != this.mDrawableWidth || i3 != this.mDrawableHeight) {
            requestLayout();
        }
        invalidate();
    }

    public Runnable setImageURIAsync(Uri uri) {
        Uri uri2;
        if (this.mResource == 0 && ((uri2 = this.mUri) == uri || (uri != null && uri2 != null && uri.equals(uri2)))) {
            return null;
        }
        Drawable drawableFromUri = uri == null ? null : getDrawableFromUri(uri);
        if (drawableFromUri == null) {
            uri = null;
        }
        return new ImageDrawableCallback(drawableFromUri, uri, 0);
    }

    @RemotableViewMethod
    public void setMaxHeight(int i2) {
        this.mMaxHeight = i2;
    }

    @RemotableViewMethod
    public void setMaxWidth(int i2) {
        this.mMaxWidth = i2;
    }

    public void setScaleType(ScaleType scaleType) {
        scaleType.getClass();
        if (this.mScaleType != scaleType) {
            this.mScaleType = scaleType;
            setWillNotCacheDrawing(scaleType == ScaleType.CENTER);
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setSelected(boolean z2) {
        super.setSelected(z2);
        resizeFromDrawable();
    }

    @Override // android.view.View
    @RemotableViewMethod
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        Drawable drawable = this.mDrawable;
        if (drawable == null || !sCompatDrawableVisibilityDispatch) {
            return;
        }
        drawable.setVisible(i2 == 0, false);
    }

    public final void setXfermode(Xfermode xfermode) {
        if (this.mXfermode != xfermode) {
            this.mXfermode = xfermode;
            this.mColorMod = true;
            applyColorMod();
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return this.mDrawable == drawable || super.verifyDrawable(drawable);
    }

    @RemotableViewMethod
    public final void setColorFilter(int i2) {
        setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mColorFilter != colorFilter) {
            this.mColorFilter = colorFilter;
            this.mHasColorFilter = true;
            this.mColorMod = true;
            applyColorMod();
            invalidate();
        }
    }

    public ImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ImageView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mResource = 0;
        this.mHaveFrame = false;
        this.mAdjustViewBounds = false;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mColorFilter = null;
        this.mHasColorFilter = false;
        this.mAlpha = 255;
        this.mViewAlphaScale = 256;
        this.mColorMod = false;
        this.mDrawable = null;
        this.mRecycleableBitmapDrawable = null;
        this.mDrawableTintList = null;
        this.mDrawableTintMode = null;
        this.mHasDrawableTint = false;
        this.mHasDrawableTintMode = false;
        this.mState = null;
        this.mMergeState = false;
        this.mLevel = 0;
        this.mDrawMatrix = null;
        this.mTempSrc = new RectF();
        this.mTempDst = new RectF();
        this.mBaseline = -1;
        this.mBaselineAlignBottom = false;
        initImageView();
        if (getImportantForAutofill() == 0) {
            setImportantForAutofill(2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ImageView, i2, i3);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setImageDrawable(drawable);
        }
        this.mBaselineAlignBottom = typedArrayObtainStyledAttributes.getBoolean(6, false);
        this.mBaseline = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, -1);
        setAdjustViewBounds(typedArrayObtainStyledAttributes.getBoolean(2, false));
        setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, Integer.MAX_VALUE));
        setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(4, Integer.MAX_VALUE));
        int i4 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i4 >= 0) {
            setScaleType(sScaleTypeArray[i4]);
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            this.mDrawableTintList = typedArrayObtainStyledAttributes.getColorStateList(5);
            this.mHasDrawableTint = true;
            this.mDrawableTintMode = PorterDuff.Mode.SRC_ATOP;
            this.mHasDrawableTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(9)) {
            this.mDrawableTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(9, -1), this.mDrawableTintMode);
            this.mHasDrawableTintMode = true;
        }
        applyImageTint();
        int i5 = typedArrayObtainStyledAttributes.getInt(10, 255);
        if (i5 != 255) {
            setImageAlpha(i5);
        }
        this.mCropToPadding = typedArrayObtainStyledAttributes.getBoolean(7, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
