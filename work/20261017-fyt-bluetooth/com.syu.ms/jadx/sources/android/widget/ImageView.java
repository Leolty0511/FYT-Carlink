package android.widget;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class ImageView extends View {
    private boolean mAdjustViewBounds;
    private boolean mAdjustViewBoundsCompat;
    private int mAlpha;
    private int mBaseline;
    private boolean mBaselineAlignBottom;
    private ColorFilter mColorFilter;
    private boolean mColorMod;
    private boolean mCropToPadding;
    private Matrix mDrawMatrix;
    private Drawable mDrawable;
    private int mDrawableHeight;
    private int mDrawableWidth;
    private boolean mHaveFrame;
    private int mLevel;
    private Matrix mMatrix;
    private int mMaxHeight;
    private int mMaxWidth;
    private boolean mMergeState;
    private int mResource;
    private ScaleType mScaleType;
    private int[] mState;
    private RectF mTempDst;
    private RectF mTempSrc;
    private Uri mUri;
    private int mViewAlphaScale;
    private Xfermode mXfermode;
    private static final ScaleType[] sScaleTypeArray = {ScaleType.MATRIX, ScaleType.FIT_XY, ScaleType.FIT_START, ScaleType.FIT_CENTER, ScaleType.FIT_END, ScaleType.CENTER, ScaleType.CENTER_CROP, ScaleType.CENTER_INSIDE};
    private static final Matrix.ScaleToFit[] sS2FArray = {Matrix.ScaleToFit.FILL, Matrix.ScaleToFit.START, Matrix.ScaleToFit.CENTER, Matrix.ScaleToFit.END};

    public enum ScaleType {
        MATRIX(0),
        FIT_XY(1),
        FIT_START(2),
        FIT_CENTER(3),
        FIT_END(4),
        CENTER(5),
        CENTER_CROP(6),
        CENTER_INSIDE(7);

        public final int nativeInt;

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
        this.mAlpha = 255;
        this.mViewAlphaScale = 256;
        this.mColorMod = false;
        this.mDrawable = null;
        this.mState = null;
        this.mMergeState = false;
        this.mLevel = 0;
        this.mDrawMatrix = null;
        this.mTempSrc = new RectF();
        this.mTempDst = new RectF();
        this.mBaseline = -1;
        this.mBaselineAlignBottom = false;
        this.mAdjustViewBoundsCompat = false;
        initImageView();
    }

    private void applyColorMod() {
        Drawable drawable = this.mDrawable;
        if (drawable == null || !this.mColorMod) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.mDrawable = drawableMutate;
        drawableMutate.setColorFilter(this.mColorFilter);
        this.mDrawable.setXfermode(this.mXfermode);
        this.mDrawable.setAlpha((this.mAlpha * this.mViewAlphaScale) >> 8);
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
            matrix.setTranslate((int) (((width - i2) * 0.5f) + 0.5f), (int) (((height - i3) * 0.5f) + 0.5f));
            return;
        }
        float f4 = 0.0f;
        if (ScaleType.CENTER_CROP != scaleType2) {
            if (ScaleType.CENTER_INSIDE == scaleType2) {
                this.mDrawMatrix = this.mMatrix;
                float fMin = (i2 > width || i3 > height) ? Math.min(width / i2, height / i3) : 1.0f;
                this.mDrawMatrix.setScale(fMin, fMin);
                this.mDrawMatrix.postTranslate((int) (((width - (i2 * fMin)) * 0.5f) + 0.5f), (int) (((height - (i3 * fMin)) * 0.5f) + 0.5f));
                return;
            }
            this.mTempSrc.set(0.0f, 0.0f, i2, i3);
            this.mTempDst.set(0.0f, 0.0f, width, height);
            Matrix matrix2 = this.mMatrix;
            this.mDrawMatrix = matrix2;
            matrix2.setRectToRect(this.mTempSrc, this.mTempDst, scaleTypeToScaleToFit(this.mScaleType));
            return;
        }
        Matrix matrix3 = this.mMatrix;
        this.mDrawMatrix = matrix3;
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
        matrix3.setScale(f3, f3);
        this.mDrawMatrix.postTranslate((int) (f4 + 0.5f), (int) (f2 + 0.5f));
    }

    private void initImageView() {
        this.mMatrix = new Matrix();
        this.mScaleType = ScaleType.FIT_CENTER;
        this.mAdjustViewBoundsCompat = this.mContext.getApplicationInfo().targetSdkVersion <= 17;
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

    /* JADX WARN: Code duplicated, block: B:50:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:74:0x011c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x00f8, please report this as an issue */
    private void resolveUri() throws Throwable {
        Resources resources;
        Drawable drawable;
        InputStream inputStreamOpenInputStream;
        if (this.mDrawable == null && (resources = getResources()) != null) {
            int i2 = this.mResource;
            InputStream inputStream = null;
            Drawable drawable2 = null;
            if (i2 != 0) {
                try {
                    drawable2 = resources.getDrawable(i2);
                } catch (Exception e2) {
                    Log.w("ImageView", "Unable to find resource: " + this.mResource, e2);
                    this.mUri = null;
                }
            } else {
                Uri uri = this.mUri;
                if (uri == null) {
                    return;
                }
                String scheme = uri.getScheme();
                if (ContentResolver.SCHEME_ANDROID_RESOURCE.equals(scheme)) {
                    try {
                        ContentResolver.OpenResourceIdResult resourceId = this.mContext.getContentResolver().getResourceId(this.mUri);
                        drawable = resourceId.f125r.getDrawable(resourceId.id);
                    } catch (Exception e3) {
                        Log.w("ImageView", "Unable to open content: " + this.mUri, e3);
                        drawable = null;
                    }
                } else if ("content".equals(scheme) || ContentResolver.SCHEME_FILE.equals(scheme)) {
                    try {
                        inputStreamOpenInputStream = this.mContext.getContentResolver().openInputStream(this.mUri);
                        try {
                            try {
                                Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                                if (inputStreamOpenInputStream != null) {
                                    try {
                                        inputStreamOpenInputStream.close();
                                    } catch (IOException e4) {
                                        Log.w("ImageView", "Unable to close content: " + this.mUri, e4);
                                    }
                                }
                                drawable = drawableCreateFromStream;
                            } catch (Exception e5) {
                                e = e5;
                                Log.w("ImageView", "Unable to open content: " + this.mUri, e);
                                if (inputStreamOpenInputStream != null) {
                                    try {
                                        inputStreamOpenInputStream.close();
                                    } catch (IOException e6) {
                                        Log.w("ImageView", "Unable to close content: " + this.mUri, e6);
                                    }
                                }
                                drawable = null;
                                if (drawable == null) {
                                    System.out.println("resolveUri failed on bad bitmap uri: " + this.mUri);
                                    this.mUri = null;
                                }
                                drawable2 = drawable;
                                updateDrawable(drawable2);
                            }
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStreamOpenInputStream;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e7) {
                                    Log.w("ImageView", "Unable to close content: " + this.mUri, e7);
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        inputStreamOpenInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } else {
                    drawable = Drawable.createFromPath(this.mUri.toString());
                }
                if (drawable == null) {
                    System.out.println("resolveUri failed on bad bitmap uri: " + this.mUri);
                    this.mUri = null;
                }
                drawable2 = drawable;
            }
            updateDrawable(drawable2);
        }
    }

    private static Matrix.ScaleToFit scaleTypeToScaleToFit(ScaleType scaleType) {
        return sS2FArray[scaleType.nativeInt - 1];
    }

    private void updateDrawable(Drawable drawable) {
        Drawable drawable2 = this.mDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mDrawable);
        }
        this.mDrawable = drawable;
        if (drawable == null) {
            this.mDrawableHeight = -1;
            this.mDrawableWidth = -1;
            return;
        }
        drawable.setCallback(this);
        if (drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
        drawable.setLevel(this.mLevel);
        drawable.setLayoutDirection(getLayoutDirection());
        drawable.setVisible(getVisibility() == 0, true);
        this.mDrawableWidth = drawable.getIntrinsicWidth();
        this.mDrawableHeight = drawable.getIntrinsicHeight();
        applyColorMod();
        configureBounds();
    }

    public final void clearColorFilter() {
        setColorFilter((ColorFilter) null);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public boolean getAdjustViewBounds() {
        return this.mAdjustViewBounds;
    }

    @Override // android.view.View
    @ViewDebug.ExportedProperty(category = "layout")
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
        return this.mDrawable;
    }

    public int getImageAlpha() {
        return this.mAlpha;
    }

    public Matrix getImageMatrix() {
        Matrix matrix = this.mDrawMatrix;
        return matrix == null ? new Matrix(Matrix.IDENTITY_MATRIX) : matrix;
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
        if (drawable == this.mDrawable) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
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
        if (drawable != null) {
            drawable.setVisible(getVisibility() == 0, false);
        }
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
        if (drawable != null) {
            drawable.setVisible(false, false);
        }
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

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ImageView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ImageView.class.getName());
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
                        if (!z3 && !this.mAdjustViewBoundsCompat) {
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
                        if (!z2 && !this.mAdjustViewBoundsCompat) {
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
            int iMax = Math.max(i4 + i6 + i7, getSuggestedMinimumWidth());
            int iMax2 = Math.max(i5 + i8 + i9, getSuggestedMinimumHeight());
            iResolveSizeAndState = View.resolveSizeAndState(iMax, i2, 0);
            iResolveSizeAndState2 = View.resolveSizeAndState(iMax2, i3, 0);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
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
        setImageDrawable(new BitmapDrawable(this.mContext.getResources(), bitmap));
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

    @RemotableViewMethod
    public void setImageResource(int i2) throws Throwable {
        if (this.mUri == null && this.mResource == i2) {
            return;
        }
        updateDrawable(null);
        this.mResource = i2;
        this.mUri = null;
        int i3 = this.mDrawableWidth;
        int i4 = this.mDrawableHeight;
        resolveUri();
        if (i3 != this.mDrawableWidth || i4 != this.mDrawableHeight) {
            requestLayout();
        }
        invalidate();
    }

    public void setImageState(int[] iArr, boolean z2) {
        this.mState = iArr;
        this.mMergeState = z2;
        if (this.mDrawable != null) {
            refreshDrawableState();
            resizeFromDrawable();
        }
    }

    @RemotableViewMethod
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

    @RemotableViewMethod
    public void setMaxHeight(int i2) {
        this.mMaxHeight = i2;
    }

    @RemotableViewMethod
    public void setMaxWidth(int i2) {
        this.mMaxWidth = i2;
    }

    public void setScaleType(ScaleType scaleType) {
        Objects.requireNonNull(scaleType);
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
        if (drawable != null) {
            drawable.setVisible(i2 == 0, false);
        }
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
            this.mColorMod = true;
            applyColorMod();
            invalidate();
        }
    }

    public ImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mResource = 0;
        this.mHaveFrame = false;
        this.mAdjustViewBounds = false;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mAlpha = 255;
        this.mViewAlphaScale = 256;
        this.mColorMod = false;
        this.mDrawable = null;
        this.mState = null;
        this.mMergeState = false;
        this.mLevel = 0;
        this.mDrawMatrix = null;
        this.mTempSrc = new RectF();
        this.mTempDst = new RectF();
        this.mBaseline = -1;
        this.mBaselineAlignBottom = false;
        this.mAdjustViewBoundsCompat = false;
        initImageView();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ImageView, i2, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setImageDrawable(drawable);
        }
        this.mBaselineAlignBottom = typedArrayObtainStyledAttributes.getBoolean(6, false);
        this.mBaseline = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, -1);
        setAdjustViewBounds(typedArrayObtainStyledAttributes.getBoolean(2, false));
        setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, Integer.MAX_VALUE));
        setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(4, Integer.MAX_VALUE));
        int i3 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i3 >= 0) {
            setScaleType(sScaleTypeArray[i3]);
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(5, 0);
        if (i4 != 0) {
            setColorFilter(i4);
        }
        int i5 = typedArrayObtainStyledAttributes.getInt(9, 255);
        if (i5 != 255) {
            setAlpha(i5);
        }
        this.mCropToPadding = typedArrayObtainStyledAttributes.getBoolean(7, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
