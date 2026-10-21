package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pools;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import i.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class ProgressBar extends View {
    private static final int MAX_LEVEL = 10000;
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
    private AccessibilityEventSender mAccessibilityEventSender;
    private AlphaAnimation mAnimation;
    private boolean mAttached;
    private int mBehavior;
    private Drawable mCurrentDrawable;
    private int mDuration;
    private boolean mHasAnimation;
    private boolean mInDrawing;
    private boolean mIndeterminate;
    private Drawable mIndeterminateDrawable;
    private Interpolator mInterpolator;
    private int mMax;
    public int mMaxHeight;
    public int mMaxWidth;
    public int mMinHeight;
    public int mMinWidth;
    public boolean mMirrorForRtl;
    private boolean mNoInvalidate;
    private boolean mOnlyIndeterminate;
    private int mProgress;
    private Drawable mProgressDrawable;
    private final ArrayList<RefreshData> mRefreshData;
    private boolean mRefreshIsPosted;
    private RefreshProgressRunnable mRefreshProgressRunnable;
    public Bitmap mSampleTile;
    private int mSecondaryProgress;
    private boolean mShouldStartAnimationDrawable;
    private Transformation mTransformation;
    private long mUiThreadId;

    public class AccessibilityEventSender implements Runnable {
        private AccessibilityEventSender() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar.this.sendAccessibilityEvent(4);
        }
    }

    public static class RefreshData {
        private static final int POOL_MAX = 24;
        private static final Pools.SynchronizedPool<RefreshData> sPool = new Pools.SynchronizedPool<>(24);
        public boolean fromUser;
        public int id;
        public int progress;

        private RefreshData() {
        }

        public static RefreshData obtain(int i2, int i3, boolean z2) {
            RefreshData refreshDataAcquire = sPool.acquire();
            if (refreshDataAcquire == null) {
                refreshDataAcquire = new RefreshData();
            }
            refreshDataAcquire.id = i2;
            refreshDataAcquire.progress = i3;
            refreshDataAcquire.fromUser = z2;
            return refreshDataAcquire;
        }

        public void recycle() {
            sPool.release(this);
        }
    }

    public class RefreshProgressRunnable implements Runnable {
        private RefreshProgressRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ProgressBar.this) {
                int size = ProgressBar.this.mRefreshData.size();
                for (int i2 = 0; i2 < size; i2++) {
                    RefreshData refreshData = (RefreshData) ProgressBar.this.mRefreshData.get(i2);
                    ProgressBar.this.doRefreshProgress(refreshData.id, refreshData.progress, refreshData.fromUser, true);
                    refreshData.recycle();
                }
                ProgressBar.this.mRefreshData.clear();
                ProgressBar.this.mRefreshIsPosted = false;
            }
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.ProgressBar.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public int progress;
        public int secondaryProgress;

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.progress);
            parcel.writeInt(this.secondaryProgress);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.progress = parcel.readInt();
            this.secondaryProgress = parcel.readInt();
        }
    }

    public ProgressBar(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doRefreshProgress(int i2, int i3, boolean z2, boolean z3) {
        int i4 = this.mMax;
        float f2 = i4 > 0 ? i3 / i4 : 0.0f;
        Drawable drawable = this.mCurrentDrawable;
        if (drawable != null) {
            Drawable drawableFindDrawableByLayerId = null;
            if ((drawable instanceof LayerDrawable) && (drawableFindDrawableByLayerId = ((LayerDrawable) drawable).findDrawableByLayerId(i2)) != null && canResolveLayoutDirection()) {
                drawableFindDrawableByLayerId.setLayoutDirection(getLayoutDirection());
            }
            int i5 = (int) (10000.0f * f2);
            if (drawableFindDrawableByLayerId != null) {
                drawable = drawableFindDrawableByLayerId;
            }
            drawable.setLevel(i5);
        } else {
            invalidate();
        }
        if (z3 && i2 == 16908301) {
            onProgressRefresh(f2, z2);
        }
    }

    private void initProgressBar() {
        this.mMax = 100;
        this.mProgress = 0;
        this.mSecondaryProgress = 0;
        this.mIndeterminate = false;
        this.mOnlyIndeterminate = false;
        this.mDuration = 4000;
        this.mBehavior = 1;
        this.mMinWidth = 24;
        this.mMaxWidth = 48;
        this.mMinHeight = 24;
        this.mMaxHeight = 48;
    }

    private synchronized void refreshProgress(int i2, int i3, boolean z2) {
        if (this.mUiThreadId == Thread.currentThread().getId()) {
            doRefreshProgress(i2, i3, z2, true);
        } else {
            if (this.mRefreshProgressRunnable == null) {
                this.mRefreshProgressRunnable = new RefreshProgressRunnable();
            }
            this.mRefreshData.add(RefreshData.obtain(i2, i3, z2));
            if (this.mAttached && !this.mRefreshIsPosted) {
                post(this.mRefreshProgressRunnable);
                this.mRefreshIsPosted = true;
            }
        }
    }

    private void scheduleAccessibilityEventSender() {
        AccessibilityEventSender accessibilityEventSender = this.mAccessibilityEventSender;
        if (accessibilityEventSender == null) {
            this.mAccessibilityEventSender = new AccessibilityEventSender();
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        postDelayed(this.mAccessibilityEventSender, 200L);
    }

    private Drawable tileify(Drawable drawable, boolean z2) {
        int i2 = 0;
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i3 = 0; i3 < numberOfLayers; i3++) {
                int id = layerDrawable.getId(i3);
                drawableArr[i3] = tileify(layerDrawable.getDrawable(i3), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            while (i2 < numberOfLayers) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
                i2++;
            }
            return layerDrawable2;
        }
        if (drawable instanceof StateListDrawable) {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            StateListDrawable stateListDrawable2 = new StateListDrawable();
            int stateCount = stateListDrawable.getStateCount();
            while (i2 < stateCount) {
                stateListDrawable2.addState(stateListDrawable.getStateSet(i2), tileify(stateListDrawable.getStateDrawable(i2), z2));
                i2++;
            }
            return stateListDrawable2;
        }
        if (!(drawable instanceof BitmapDrawable)) {
            return drawable;
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        if (this.mSampleTile == null) {
            this.mSampleTile = bitmap;
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(getDrawableShape());
        shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
        return z2 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
    }

    private Drawable tileifyIndeterminate(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i2 = 0; i2 < numberOfFrames; i2++) {
            Drawable drawableTileify = tileify(animationDrawable.getFrame(i2), true);
            drawableTileify.setLevel(10000);
            animationDrawable2.addFrame(drawableTileify, animationDrawable.getDuration(i2));
        }
        animationDrawable2.setLevel(10000);
        return animationDrawable2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004c  */
    private void updateDrawableBounds(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = i2 - (this.mPaddingRight + this.mPaddingLeft);
        int i8 = i3 - (this.mPaddingTop + this.mPaddingBottom);
        Drawable drawable = this.mIndeterminateDrawable;
        if (drawable != null) {
            if (!this.mOnlyIndeterminate || (drawable instanceof AnimationDrawable)) {
                i4 = i7;
                i5 = 0;
                i6 = 0;
            } else {
                float intrinsicWidth = drawable.getIntrinsicWidth() / this.mIndeterminateDrawable.getIntrinsicHeight();
                float f2 = i7;
                float f3 = i8;
                float f4 = f2 / f3;
                if (intrinsicWidth == f4) {
                    i4 = i7;
                    i5 = 0;
                    i6 = 0;
                } else if (f4 > intrinsicWidth) {
                    int i9 = (int) (f3 * intrinsicWidth);
                    int i10 = (i7 - i9) / 2;
                    i6 = i10;
                    i4 = i9 + i10;
                    i5 = 0;
                } else {
                    int i11 = (int) (f2 * (1.0f / intrinsicWidth));
                    int i12 = (i8 - i11) / 2;
                    int i13 = i11 + i12;
                    i4 = i7;
                    i6 = 0;
                    i5 = i12;
                    i8 = i13;
                }
            }
            if (isLayoutRtl() && this.mMirrorForRtl) {
                int i14 = i7 - i4;
                i7 -= i6;
                i6 = i14;
            } else {
                i7 = i4;
            }
            this.mIndeterminateDrawable.setBounds(i6, i5, i7, i8);
        }
        Drawable drawable2 = this.mProgressDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, i7, i8);
        }
    }

    private void updateDrawableState() {
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mProgressDrawable;
        if (drawable != null && drawable.isStateful()) {
            this.mProgressDrawable.setState(drawableState);
        }
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 == null || !drawable2.isStateful()) {
            return;
        }
        this.mIndeterminateDrawable.setState(drawableState);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    public Drawable getCurrentDrawable() {
        return this.mCurrentDrawable;
    }

    public Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    public Drawable getIndeterminateDrawable() {
        return this.mIndeterminateDrawable;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMax() {
        return this.mMax;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getProgress() {
        return this.mIndeterminate ? 0 : this.mProgress;
    }

    public Drawable getProgressDrawable() {
        return this.mProgressDrawable;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getSecondaryProgress() {
        return this.mIndeterminate ? 0 : this.mSecondaryProgress;
    }

    public final synchronized void incrementProgressBy(int i2) {
        setProgress(this.mProgress + i2);
    }

    public final synchronized void incrementSecondaryProgressBy(int i2) {
        setSecondaryProgress(this.mSecondaryProgress + i2);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (this.mInDrawing) {
            return;
        }
        if (!verifyDrawable(drawable)) {
            super.invalidateDrawable(drawable);
            return;
        }
        Rect bounds = drawable.getBounds();
        int i2 = this.mScrollX + this.mPaddingLeft;
        int i3 = this.mScrollY + this.mPaddingTop;
        invalidate(bounds.left + i2, bounds.top + i3, bounds.right + i2, bounds.bottom + i3);
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized boolean isIndeterminate() {
        return this.mIndeterminate;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mProgressDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIndeterminate) {
            startAnimation();
        }
        if (this.mRefreshData != null) {
            synchronized (this) {
                int size = this.mRefreshData.size();
                for (int i2 = 0; i2 < size; i2++) {
                    RefreshData refreshData = this.mRefreshData.get(i2);
                    doRefreshProgress(refreshData.id, refreshData.progress, refreshData.fromUser, true);
                    refreshData.recycle();
                }
                this.mRefreshData.clear();
            }
        }
        this.mAttached = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (this.mIndeterminate) {
            stopAnimation();
        }
        RefreshProgressRunnable refreshProgressRunnable = this.mRefreshProgressRunnable;
        if (refreshProgressRunnable != null) {
            removeCallbacks(refreshProgressRunnable);
        }
        RefreshProgressRunnable refreshProgressRunnable2 = this.mRefreshProgressRunnable;
        if (refreshProgressRunnable2 != null && this.mRefreshIsPosted) {
            removeCallbacks(refreshProgressRunnable2);
        }
        AccessibilityEventSender accessibilityEventSender = this.mAccessibilityEventSender;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        super.onDetachedFromWindow();
        this.mAttached = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.mCurrentDrawable;
        if (drawable != 0) {
            canvas.save();
            if (isLayoutRtl() && this.mMirrorForRtl) {
                canvas.translate(getWidth() - this.mPaddingRight, this.mPaddingTop);
                canvas.scale(-1.0f, 1.0f);
            } else {
                canvas.translate(this.mPaddingLeft, this.mPaddingTop);
            }
            long drawingTime = getDrawingTime();
            if (this.mHasAnimation) {
                this.mAnimation.getTransformation(drawingTime, this.mTransformation);
                float alpha = this.mTransformation.getAlpha();
                try {
                    this.mInDrawing = true;
                    drawable.setLevel((int) (alpha * 10000.0f));
                    this.mInDrawing = false;
                    postInvalidateOnAnimation();
                } catch (Throwable th) {
                    this.mInDrawing = false;
                    throw th;
                }
            }
            drawable.draw(canvas);
            canvas.restore();
            if (this.mShouldStartAnimationDrawable && (drawable instanceof Animatable)) {
                ((Animatable) drawable).start();
                this.mShouldStartAnimationDrawable = false;
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ProgressBar.class.getName());
        accessibilityEvent.setItemCount(this.mMax);
        accessibilityEvent.setCurrentItemIndex(this.mProgress);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ProgressBar.class.getName());
    }

    @Override // android.view.View
    public synchronized void onMeasure(int i2, int i3) {
        int iMax;
        int iMax2;
        Drawable drawable = this.mCurrentDrawable;
        if (drawable != null) {
            iMax2 = Math.max(this.mMinWidth, Math.min(this.mMaxWidth, drawable.getIntrinsicWidth()));
            iMax = Math.max(this.mMinHeight, Math.min(this.mMaxHeight, drawable.getIntrinsicHeight()));
        } else {
            iMax = 0;
            iMax2 = 0;
        }
        updateDrawableState();
        setMeasuredDimension(View.resolveSizeAndState(iMax2 + this.mPaddingLeft + this.mPaddingRight, i2, 0), View.resolveSizeAndState(iMax + this.mPaddingTop + this.mPaddingBottom, i3, 0));
    }

    public void onProgressRefresh(float f2, boolean z2) {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            scheduleAccessibilityEventSender();
        }
    }

    @Override // android.view.View
    public void onResolveDrawables(int i2) {
        Drawable drawable = this.mCurrentDrawable;
        if (drawable != null) {
            drawable.setLayoutDirection(i2);
        }
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 != null) {
            drawable2.setLayoutDirection(i2);
        }
        Drawable drawable3 = this.mProgressDrawable;
        if (drawable3 != null) {
            drawable3.setLayoutDirection(i2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setProgress(savedState.progress);
        setSecondaryProgress(savedState.secondaryProgress);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.progress = this.mProgress;
        savedState.secondaryProgress = this.mSecondaryProgress;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        updateDrawableBounds(i2, i3);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (this.mIndeterminate) {
            if (i2 == 8 || i2 == 4) {
                stopAnimation();
            } else {
                startAnimation();
            }
        }
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.mNoInvalidate) {
            return;
        }
        super.postInvalidate();
    }

    @RemotableViewMethod
    public synchronized void setIndeterminate(boolean z2) {
        if ((!this.mOnlyIndeterminate || !this.mIndeterminate) && z2 != this.mIndeterminate) {
            this.mIndeterminate = z2;
            if (z2) {
                this.mCurrentDrawable = this.mIndeterminateDrawable;
                startAnimation();
            } else {
                this.mCurrentDrawable = this.mProgressDrawable;
                stopAnimation();
            }
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.mIndeterminateDrawable = drawable;
        if (drawable != null && canResolveLayoutDirection()) {
            this.mIndeterminateDrawable.setLayoutDirection(getLayoutDirection());
        }
        if (this.mIndeterminate) {
            this.mCurrentDrawable = drawable;
            postInvalidate();
        }
    }

    public void setInterpolator(Context context, int i2) {
        setInterpolator(AnimationUtils.loadInterpolator(context, i2));
    }

    @RemotableViewMethod
    public synchronized void setMax(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 != this.mMax) {
            this.mMax = i2;
            postInvalidate();
            if (this.mProgress > i2) {
                this.mProgress = i2;
            }
            refreshProgress(R.id.progress, this.mProgress, false);
        }
    }

    @RemotableViewMethod
    public synchronized void setProgress(int i2) {
        setProgress(i2, false);
    }

    public void setProgressDrawable(Drawable drawable) {
        boolean z2;
        Drawable drawable2 = this.mProgressDrawable;
        if (drawable2 == null || drawable == drawable2) {
            z2 = false;
        } else {
            drawable2.setCallback(null);
            z2 = true;
        }
        if (drawable != null) {
            drawable.setCallback(this);
            if (canResolveLayoutDirection()) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (this.mMaxHeight < minimumHeight) {
                this.mMaxHeight = minimumHeight;
                requestLayout();
            }
        }
        this.mProgressDrawable = drawable;
        if (!this.mIndeterminate) {
            this.mCurrentDrawable = drawable;
            postInvalidate();
        }
        if (z2) {
            updateDrawableBounds(getWidth(), getHeight());
            updateDrawableState();
            doRefreshProgress(R.id.progress, this.mProgress, false, false);
            doRefreshProgress(R.id.secondaryProgress, this.mSecondaryProgress, false, false);
        }
    }

    @RemotableViewMethod
    public synchronized void setSecondaryProgress(int i2) {
        if (this.mIndeterminate) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.mMax;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i2 != this.mSecondaryProgress) {
            this.mSecondaryProgress = i2;
            refreshProgress(R.id.secondaryProgress, i2, false);
        }
    }

    @Override // android.view.View
    @RemotableViewMethod
    public void setVisibility(int i2) {
        if (getVisibility() != i2) {
            super.setVisibility(i2);
            if (this.mIndeterminate) {
                if (i2 == 8 || i2 == 4) {
                    stopAnimation();
                } else {
                    startAnimation();
                }
            }
        }
    }

    public void startAnimation() {
        if (getVisibility() != 0) {
            return;
        }
        if (this.mIndeterminateDrawable instanceof Animatable) {
            this.mShouldStartAnimationDrawable = true;
            this.mHasAnimation = false;
        } else {
            this.mHasAnimation = true;
            if (this.mInterpolator == null) {
                this.mInterpolator = new LinearInterpolator();
            }
            Transformation transformation = this.mTransformation;
            if (transformation == null) {
                this.mTransformation = new Transformation();
            } else {
                transformation.clear();
            }
            AlphaAnimation alphaAnimation = this.mAnimation;
            if (alphaAnimation == null) {
                this.mAnimation = new AlphaAnimation(0.0f, 1.0f);
            } else {
                alphaAnimation.reset();
            }
            this.mAnimation.setRepeatMode(this.mBehavior);
            this.mAnimation.setRepeatCount(-1);
            this.mAnimation.setDuration(this.mDuration);
            this.mAnimation.setInterpolator(this.mInterpolator);
            this.mAnimation.setStartTime(-1L);
        }
        postInvalidate();
    }

    public void stopAnimation() {
        this.mHasAnimation = false;
        Object obj = this.mIndeterminateDrawable;
        if (obj instanceof Animatable) {
            ((Animatable) obj).stop();
            this.mShouldStartAnimationDrawable = false;
        }
        postInvalidate();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mProgressDrawable || drawable == this.mIndeterminateDrawable || super.verifyDrawable(drawable);
    }

    public ProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.progressBarStyle);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public ProgressBar(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    @RemotableViewMethod
    public synchronized void setProgress(int i2, boolean z2) {
        if (this.mIndeterminate) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.mMax;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i2 != this.mProgress) {
            this.mProgress = i2;
            refreshProgress(R.id.progress, i2, z2);
        }
    }

    public ProgressBar(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.mMirrorForRtl = false;
        this.mRefreshData = new ArrayList<>();
        this.mUiThreadId = Thread.currentThread().getId();
        initProgressBar();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ProgressBar, i2, i3);
        this.mNoInvalidate = true;
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(8);
        if (drawable != null) {
            setProgressDrawable(tileify(drawable, false));
        }
        this.mDuration = typedArrayObtainStyledAttributes.getInt(9, this.mDuration);
        this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, this.mMinWidth);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, this.mMaxWidth);
        this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, this.mMinHeight);
        this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, this.mMaxHeight);
        this.mBehavior = typedArrayObtainStyledAttributes.getInt(10, this.mBehavior);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(13, R.anim.linear_interpolator);
        if (resourceId > 0) {
            setInterpolator(context, resourceId);
        }
        setMax(typedArrayObtainStyledAttributes.getInt(2, this.mMax));
        setProgress(typedArrayObtainStyledAttributes.getInt(3, this.mProgress));
        setSecondaryProgress(typedArrayObtainStyledAttributes.getInt(4, this.mSecondaryProgress));
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(7);
        if (drawable2 != null) {
            setIndeterminateDrawable(tileifyIndeterminate(drawable2));
        }
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(6, this.mOnlyIndeterminate);
        this.mOnlyIndeterminate = z2;
        this.mNoInvalidate = false;
        setIndeterminate(z2 || typedArrayObtainStyledAttributes.getBoolean(5, this.mIndeterminate));
        this.mMirrorForRtl = typedArrayObtainStyledAttributes.getBoolean(15, this.mMirrorForRtl);
        typedArrayObtainStyledAttributes.recycle();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
