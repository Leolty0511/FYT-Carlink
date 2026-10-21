package android.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.MathUtils;
import android.util.Pools;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewHierarchyEncoder;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class ProgressBar extends View {
    private static final int MAX_LEVEL = 10000;
    private static final int PROGRESS_ANIM_DURATION = 80;
    private static final DecelerateInterpolator PROGRESS_ANIM_INTERPOLATOR = new DecelerateInterpolator();
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
    private final FloatProperty<ProgressBar> VISUAL_PROGRESS;
    private AccessibilityEventSender mAccessibilityEventSender;
    private boolean mAggregatedIsVisible;
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
    int mMaxHeight;
    private boolean mMaxInitialized;
    int mMaxWidth;
    private int mMin;
    int mMinHeight;
    private boolean mMinInitialized;
    int mMinWidth;
    boolean mMirrorForRtl;
    private boolean mNoInvalidate;
    private boolean mOnlyIndeterminate;
    private int mProgress;
    private Drawable mProgressDrawable;
    private ProgressTintInfo mProgressTintInfo;
    private final ArrayList<RefreshData> mRefreshData;
    private boolean mRefreshIsPosted;
    private RefreshProgressRunnable mRefreshProgressRunnable;
    int mSampleWidth;
    private int mSecondaryProgress;
    private boolean mShouldStartAnimationDrawable;
    private Transformation mTransformation;
    private long mUiThreadId;
    private float mVisualProgress;

    public class AccessibilityEventSender implements Runnable {
        private AccessibilityEventSender() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar.this.sendAccessibilityEvent(4);
        }
    }

    public static class ProgressTintInfo {
        boolean mHasIndeterminateTint;
        boolean mHasIndeterminateTintMode;
        boolean mHasProgressBackgroundTint;
        boolean mHasProgressBackgroundTintMode;
        boolean mHasProgressTint;
        boolean mHasProgressTintMode;
        boolean mHasSecondaryProgressTint;
        boolean mHasSecondaryProgressTintMode;
        ColorStateList mIndeterminateTintList;
        PorterDuff.Mode mIndeterminateTintMode;
        ColorStateList mProgressBackgroundTintList;
        PorterDuff.Mode mProgressBackgroundTintMode;
        ColorStateList mProgressTintList;
        PorterDuff.Mode mProgressTintMode;
        ColorStateList mSecondaryProgressTintList;
        PorterDuff.Mode mSecondaryProgressTintMode;

        private ProgressTintInfo() {
        }
    }

    public static class RefreshData {
        private static final int POOL_MAX = 24;
        private static final Pools.SynchronizedPool<RefreshData> sPool = new Pools.SynchronizedPool<>(24);
        public boolean animate;
        public boolean fromUser;
        public int id;
        public int progress;

        private RefreshData() {
        }

        public static RefreshData obtain(int i2, int i3, boolean z2, boolean z3) {
            RefreshData refreshDataAcquire = sPool.acquire();
            if (refreshDataAcquire == null) {
                refreshDataAcquire = new RefreshData();
            }
            refreshDataAcquire.id = i2;
            refreshDataAcquire.progress = i3;
            refreshDataAcquire.fromUser = z2;
            refreshDataAcquire.animate = z3;
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
                    ProgressBar.this.doRefreshProgress(refreshData.id, refreshData.progress, refreshData.fromUser, true, refreshData.animate);
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
        int progress;
        int secondaryProgress;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
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

    private void applyIndeterminateTint() {
        ProgressTintInfo progressTintInfo;
        Drawable drawable = this.mIndeterminateDrawable;
        if (drawable == null || (progressTintInfo = this.mProgressTintInfo) == null) {
            return;
        }
        if (progressTintInfo.mHasIndeterminateTint || progressTintInfo.mHasIndeterminateTintMode) {
            Drawable drawableMutate = drawable.mutate();
            this.mIndeterminateDrawable = drawableMutate;
            if (progressTintInfo.mHasIndeterminateTint) {
                drawableMutate.setTintList(progressTintInfo.mIndeterminateTintList);
            }
            if (progressTintInfo.mHasIndeterminateTintMode) {
                this.mIndeterminateDrawable.setTintMode(progressTintInfo.mIndeterminateTintMode);
            }
            if (this.mIndeterminateDrawable.isStateful()) {
                this.mIndeterminateDrawable.setState(getDrawableState());
            }
        }
    }

    private void applyPrimaryProgressTint() {
        Drawable tintTarget;
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if ((progressTintInfo.mHasProgressTint || progressTintInfo.mHasProgressTintMode) && (tintTarget = getTintTarget(16908301, true)) != null) {
            ProgressTintInfo progressTintInfo2 = this.mProgressTintInfo;
            if (progressTintInfo2.mHasProgressTint) {
                tintTarget.setTintList(progressTintInfo2.mProgressTintList);
            }
            ProgressTintInfo progressTintInfo3 = this.mProgressTintInfo;
            if (progressTintInfo3.mHasProgressTintMode) {
                tintTarget.setTintMode(progressTintInfo3.mProgressTintMode);
            }
            if (tintTarget.isStateful()) {
                tintTarget.setState(getDrawableState());
            }
        }
    }

    private void applyProgressBackgroundTint() {
        Drawable tintTarget;
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if ((progressTintInfo.mHasProgressBackgroundTint || progressTintInfo.mHasProgressBackgroundTintMode) && (tintTarget = getTintTarget(16908288, false)) != null) {
            ProgressTintInfo progressTintInfo2 = this.mProgressTintInfo;
            if (progressTintInfo2.mHasProgressBackgroundTint) {
                tintTarget.setTintList(progressTintInfo2.mProgressBackgroundTintList);
            }
            ProgressTintInfo progressTintInfo3 = this.mProgressTintInfo;
            if (progressTintInfo3.mHasProgressBackgroundTintMode) {
                tintTarget.setTintMode(progressTintInfo3.mProgressBackgroundTintMode);
            }
            if (tintTarget.isStateful()) {
                tintTarget.setState(getDrawableState());
            }
        }
    }

    private void applyProgressTints() {
        if (this.mProgressDrawable == null || this.mProgressTintInfo == null) {
            return;
        }
        applyPrimaryProgressTint();
        applyProgressBackgroundTint();
        applySecondaryProgressTint();
    }

    private void applySecondaryProgressTint() {
        Drawable tintTarget;
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if ((progressTintInfo.mHasSecondaryProgressTint || progressTintInfo.mHasSecondaryProgressTintMode) && (tintTarget = getTintTarget(16908303, false)) != null) {
            ProgressTintInfo progressTintInfo2 = this.mProgressTintInfo;
            if (progressTintInfo2.mHasSecondaryProgressTint) {
                tintTarget.setTintList(progressTintInfo2.mSecondaryProgressTintList);
            }
            ProgressTintInfo progressTintInfo3 = this.mProgressTintInfo;
            if (progressTintInfo3.mHasSecondaryProgressTintMode) {
                tintTarget.setTintMode(progressTintInfo3.mSecondaryProgressTintMode);
            }
            if (tintTarget.isStateful()) {
                tintTarget.setState(getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doRefreshProgress(int i2, int i3, boolean z2, boolean z3, boolean z4) {
        int i4 = this.mMax;
        int i5 = this.mMin;
        int i6 = i4 - i5;
        float f2 = i6 > 0 ? (i3 - i5) / i6 : 0.0f;
        boolean z5 = i2 == 16908301;
        if (z5 && z4) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, this.VISUAL_PROGRESS, f2);
            objectAnimatorOfFloat.setAutoCancel(true);
            objectAnimatorOfFloat.setDuration(80L);
            objectAnimatorOfFloat.setInterpolator(PROGRESS_ANIM_INTERPOLATOR);
            objectAnimatorOfFloat.start();
        } else {
            setVisualProgress(i2, f2);
        }
        if (z5 && z3) {
            onProgressRefresh(f2, z2, i3);
        }
    }

    private Drawable getTintTarget(int i2, boolean z2) {
        Drawable drawable = this.mProgressDrawable;
        Drawable drawableFindDrawableByLayerId = null;
        if (drawable != null) {
            this.mProgressDrawable = drawable.mutate();
            drawableFindDrawableByLayerId = drawable instanceof LayerDrawable ? ((LayerDrawable) drawable).findDrawableByLayerId(i2) : null;
            if (z2 && drawableFindDrawableByLayerId == null) {
                return drawable;
            }
        }
        return drawableFindDrawableByLayerId;
    }

    private void initProgressBar() {
        this.mMin = 0;
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

    private static boolean needsTileify(Drawable drawable) {
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                if (needsTileify(layerDrawable.getDrawable(i2))) {
                    return true;
                }
            }
            return false;
        }
        if (!(drawable instanceof StateListDrawable)) {
            return drawable instanceof BitmapDrawable;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) drawable;
        int stateCount = stateListDrawable.getStateCount();
        for (int i3 = 0; i3 < stateCount; i3++) {
            if (needsTileify(stateListDrawable.getStateDrawable(i3))) {
                return true;
            }
        }
        return false;
    }

    private synchronized void refreshProgress(int i2, int i3, boolean z2, boolean z3) {
        if (this.mUiThreadId == Thread.currentThread().getId()) {
            doRefreshProgress(i2, i3, z2, true, z3);
        } else {
            if (this.mRefreshProgressRunnable == null) {
                this.mRefreshProgressRunnable = new RefreshProgressRunnable();
            }
            this.mRefreshData.add(RefreshData.obtain(i2, i3, z2, z3));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setVisualProgress(int i2, float f2) {
        this.mVisualProgress = f2;
        Drawable drawableFindDrawableByLayerId = this.mCurrentDrawable;
        if ((drawableFindDrawableByLayerId instanceof LayerDrawable) && (drawableFindDrawableByLayerId = ((LayerDrawable) drawableFindDrawableByLayerId).findDrawableByLayerId(i2)) == null) {
            drawableFindDrawableByLayerId = this.mCurrentDrawable;
        }
        if (drawableFindDrawableByLayerId != null) {
            drawableFindDrawableByLayerId.setLevel((int) (10000.0f * f2));
        } else {
            invalidate();
        }
        onVisualProgressChanged(i2, f2);
    }

    private void swapCurrentDrawable(Drawable drawable) {
        Drawable drawable2 = this.mCurrentDrawable;
        this.mCurrentDrawable = drawable;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setVisible(false, false);
            }
            Drawable drawable3 = this.mCurrentDrawable;
            if (drawable3 != null) {
                drawable3.setVisible(getWindowVisibility() == 0 && isShown(), false);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable] */
    private Drawable tileify(Drawable drawable, boolean z2) {
        int i2 = 0;
        if (!(drawable instanceof LayerDrawable)) {
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
            if (drawable instanceof BitmapDrawable) {
                drawable = (BitmapDrawable) drawable.getConstantState().newDrawable(getResources());
                drawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
                if (this.mSampleWidth <= 0) {
                    this.mSampleWidth = drawable.getIntrinsicWidth();
                }
                if (z2) {
                    return new ClipDrawable((Drawable) drawable, 3, 1);
                }
            }
            return drawable;
        }
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
            layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
            layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
            layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
            layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
            layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
            layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
            layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
            layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
            layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
            i2++;
        }
        return layerDrawable2;
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
                    int i11 = (int) ((1.0f / intrinsicWidth) * f2);
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
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
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
    public void drawTrack(Canvas canvas) {
        Drawable drawable = this.mCurrentDrawable;
        if (drawable != 0) {
            int iSave = canvas.save();
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
            canvas.restoreToCount(iSave);
            if (this.mShouldStartAnimationDrawable && (drawable instanceof Animatable)) {
                ((Animatable) drawable).start();
                this.mShouldStartAnimationDrawable = false;
            }
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawable drawable = this.mProgressDrawable;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 != null) {
            drawable2.setHotspot(f2, f3);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    @Override // android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("progress:max", getMax());
        viewHierarchyEncoder.addProperty("progress:progress", getProgress());
        viewHierarchyEncoder.addProperty("progress:secondaryProgress", getSecondaryProgress());
        viewHierarchyEncoder.addProperty("progress:indeterminate", isIndeterminate());
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return ProgressBar.class.getName();
    }

    Drawable getCurrentDrawable() {
        return this.mCurrentDrawable;
    }

    public Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    public Drawable getIndeterminateDrawable() {
        return this.mIndeterminateDrawable;
    }

    public ColorStateList getIndeterminateTintList() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mIndeterminateTintList;
        }
        return null;
    }

    public PorterDuff.Mode getIndeterminateTintMode() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mIndeterminateTintMode;
        }
        return null;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMax() {
        return this.mMax;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMin() {
        return this.mMin;
    }

    public boolean getMirrorForRtl() {
        return this.mMirrorForRtl;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getProgress() {
        return this.mIndeterminate ? 0 : this.mProgress;
    }

    public ColorStateList getProgressBackgroundTintList() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mProgressBackgroundTintList;
        }
        return null;
    }

    public PorterDuff.Mode getProgressBackgroundTintMode() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mProgressBackgroundTintMode;
        }
        return null;
    }

    public Drawable getProgressDrawable() {
        return this.mProgressDrawable;
    }

    public ColorStateList getProgressTintList() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mProgressTintList;
        }
        return null;
    }

    public PorterDuff.Mode getProgressTintMode() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mProgressTintMode;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getSecondaryProgress() {
        return this.mIndeterminate ? 0 : this.mSecondaryProgress;
    }

    public ColorStateList getSecondaryProgressTintList() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mSecondaryProgressTintList;
        }
        return null;
    }

    public PorterDuff.Mode getSecondaryProgressTintMode() {
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        if (progressTintInfo != null) {
            return progressTintInfo.mSecondaryProgressTintMode;
        }
        return null;
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

    public boolean isAnimating() {
        return isIndeterminate() && getWindowVisibility() == 0 && isShown();
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
                    doRefreshProgress(refreshData.id, refreshData.progress, refreshData.fromUser, true, refreshData.animate);
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
            this.mRefreshIsPosted = false;
        }
        AccessibilityEventSender accessibilityEventSender = this.mAccessibilityEventSender;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        super.onDetachedFromWindow();
        this.mAttached = false;
    }

    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawTrack(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setItemCount(this.mMax - this.mMin);
        accessibilityEvent.setCurrentItemIndex(this.mProgress);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (isIndeterminate()) {
            return;
        }
        accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(0, 0.0f, getMax(), getProgress()));
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
        setMeasuredDimension(View.resolveSizeAndState(this.mPaddingLeft + this.mPaddingRight + iMax2, i2, 0), View.resolveSizeAndState(this.mPaddingTop + this.mPaddingBottom + iMax, i3, 0));
    }

    public void onProgressRefresh(float f2, boolean z2, int i2) {
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
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        if (z2 != this.mAggregatedIsVisible) {
            this.mAggregatedIsVisible = z2;
            if (this.mIndeterminate) {
                if (z2) {
                    startAnimation();
                } else {
                    stopAnimation();
                }
            }
            Drawable drawable = this.mCurrentDrawable;
            if (drawable != null) {
                drawable.setVisible(z2, false);
            }
        }
    }

    public void onVisualProgressChanged(int i2, float f2) {
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
                swapCurrentDrawable(this.mIndeterminateDrawable);
                startAnimation();
            } else {
                swapCurrentDrawable(this.mProgressDrawable);
                stopAnimation();
            }
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.mIndeterminateDrawable);
            }
            this.mIndeterminateDrawable = drawable;
            if (drawable != null) {
                drawable.setCallback(this);
                drawable.setLayoutDirection(getLayoutDirection());
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                applyIndeterminateTint();
            }
            if (this.mIndeterminate) {
                swapCurrentDrawable(drawable);
                postInvalidate();
            }
        }
    }

    public void setIndeterminateDrawableTiled(Drawable drawable) {
        if (drawable != null) {
            drawable = tileifyIndeterminate(drawable);
        }
        setIndeterminateDrawable(drawable);
    }

    @RemotableViewMethod
    public void setIndeterminateTintList(ColorStateList colorStateList) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mIndeterminateTintList = colorStateList;
        progressTintInfo.mHasIndeterminateTint = true;
        applyIndeterminateTint();
    }

    public void setIndeterminateTintMode(PorterDuff.Mode mode) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mIndeterminateTintMode = mode;
        progressTintInfo.mHasIndeterminateTintMode = true;
        applyIndeterminateTint();
    }

    public void setInterpolator(Context context, int i2) {
        setInterpolator(AnimationUtils.loadInterpolator(context, i2));
    }

    @RemotableViewMethod
    public synchronized void setMax(int i2) {
        int i3;
        boolean z2 = this.mMinInitialized;
        if (z2 && i2 < (i3 = this.mMin)) {
            i2 = i3;
        }
        this.mMaxInitialized = true;
        if (!z2 || i2 == this.mMax) {
            this.mMax = i2;
        } else {
            this.mMax = i2;
            postInvalidate();
            if (this.mProgress > i2) {
                this.mProgress = i2;
            }
            refreshProgress(16908301, this.mProgress, false, false);
        }
    }

    @RemotableViewMethod
    public synchronized void setMin(int i2) {
        int i3;
        boolean z2 = this.mMaxInitialized;
        if (z2 && i2 > (i3 = this.mMax)) {
            i2 = i3;
        }
        this.mMinInitialized = true;
        if (!z2 || i2 == this.mMin) {
            this.mMin = i2;
        } else {
            this.mMin = i2;
            postInvalidate();
            if (this.mProgress < i2) {
                this.mProgress = i2;
            }
            refreshProgress(16908301, this.mProgress, false, false);
        }
    }

    @RemotableViewMethod
    public synchronized void setProgress(int i2) {
        setProgressInternal(i2, false, false);
    }

    @RemotableViewMethod
    public void setProgressBackgroundTintList(ColorStateList colorStateList) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mProgressBackgroundTintList = colorStateList;
        progressTintInfo.mHasProgressBackgroundTint = true;
        if (this.mProgressDrawable != null) {
            applyProgressBackgroundTint();
        }
    }

    public void setProgressBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mProgressBackgroundTintMode = mode;
        progressTintInfo.mHasProgressBackgroundTintMode = true;
        if (this.mProgressDrawable != null) {
            applyProgressBackgroundTint();
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        Drawable drawable2 = this.mProgressDrawable;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.mProgressDrawable);
            }
            this.mProgressDrawable = drawable;
            if (drawable != null) {
                drawable.setCallback(this);
                drawable.setLayoutDirection(getLayoutDirection());
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (this.mMaxHeight < minimumHeight) {
                    this.mMaxHeight = minimumHeight;
                    requestLayout();
                }
                applyProgressTints();
            }
            if (!this.mIndeterminate) {
                swapCurrentDrawable(drawable);
                postInvalidate();
            }
            updateDrawableBounds(getWidth(), getHeight());
            updateDrawableState();
            doRefreshProgress(16908301, this.mProgress, false, false, false);
            doRefreshProgress(16908303, this.mSecondaryProgress, false, false, false);
        }
    }

    public void setProgressDrawableTiled(Drawable drawable) {
        if (drawable != null) {
            drawable = tileify(drawable, false);
        }
        setProgressDrawable(drawable);
    }

    @RemotableViewMethod
    public synchronized boolean setProgressInternal(int i2, boolean z2, boolean z3) {
        if (this.mIndeterminate) {
            return false;
        }
        int iConstrain = MathUtils.constrain(i2, this.mMin, this.mMax);
        if (iConstrain == this.mProgress) {
            return false;
        }
        this.mProgress = iConstrain;
        refreshProgress(16908301, iConstrain, z2, z3);
        return true;
    }

    @RemotableViewMethod
    public void setProgressTintList(ColorStateList colorStateList) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mProgressTintList = colorStateList;
        progressTintInfo.mHasProgressTint = true;
        if (this.mProgressDrawable != null) {
            applyPrimaryProgressTint();
        }
    }

    public void setProgressTintMode(PorterDuff.Mode mode) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mProgressTintMode = mode;
        progressTintInfo.mHasProgressTintMode = true;
        if (this.mProgressDrawable != null) {
            applyPrimaryProgressTint();
        }
    }

    @RemotableViewMethod
    public synchronized void setSecondaryProgress(int i2) {
        if (this.mIndeterminate) {
            return;
        }
        int i3 = this.mMin;
        if (i2 < i3) {
            i2 = i3;
        }
        int i4 = this.mMax;
        if (i2 > i4) {
            i2 = i4;
        }
        if (i2 != this.mSecondaryProgress) {
            this.mSecondaryProgress = i2;
            refreshProgress(16908303, i2, false, false);
        }
    }

    public void setSecondaryProgressTintList(ColorStateList colorStateList) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mSecondaryProgressTintList = colorStateList;
        progressTintInfo.mHasSecondaryProgressTint = true;
        if (this.mProgressDrawable != null) {
            applySecondaryProgressTint();
        }
    }

    public void setSecondaryProgressTintMode(PorterDuff.Mode mode) {
        if (this.mProgressTintInfo == null) {
            this.mProgressTintInfo = new ProgressTintInfo();
        }
        ProgressTintInfo progressTintInfo = this.mProgressTintInfo;
        progressTintInfo.mSecondaryProgressTintMode = mode;
        progressTintInfo.mHasSecondaryProgressTintMode = true;
        if (this.mProgressDrawable != null) {
            applySecondaryProgressTint();
        }
    }

    public void startAnimation() {
        if (getVisibility() == 0 && getWindowVisibility() == 0) {
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
        this(context, attributeSet, 16842871);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public ProgressBar(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void setProgress(int i2, boolean z2) {
        setProgressInternal(i2, false, z2);
    }

    public ProgressBar(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mSampleWidth = 0;
        this.mMirrorForRtl = false;
        this.mRefreshData = new ArrayList<>();
        this.VISUAL_PROGRESS = new FloatProperty<ProgressBar>("visual_progress") { // from class: android.widget.ProgressBar.1
            @Override // android.util.Property
            public Float get(ProgressBar progressBar) {
                return Float.valueOf(progressBar.mVisualProgress);
            }

            @Override // android.util.FloatProperty
            public void setValue(ProgressBar progressBar, float f2) {
                progressBar.setVisualProgress(16908301, f2);
                progressBar.mVisualProgress = f2;
            }
        };
        this.mUiThreadId = Thread.currentThread().getId();
        initProgressBar();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ProgressBar, i2, i3);
        this.mNoInvalidate = true;
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(8);
        if (drawable != null) {
            if (needsTileify(drawable)) {
                setProgressDrawableTiled(drawable);
            } else {
                setProgressDrawable(drawable);
            }
        }
        this.mDuration = typedArrayObtainStyledAttributes.getInt(9, this.mDuration);
        this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, this.mMinWidth);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, this.mMaxWidth);
        this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, this.mMinHeight);
        this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, this.mMaxHeight);
        this.mBehavior = typedArrayObtainStyledAttributes.getInt(10, this.mBehavior);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(13, 17432587);
        if (resourceId > 0) {
            setInterpolator(context, resourceId);
        }
        setMin(typedArrayObtainStyledAttributes.getInt(26, this.mMin));
        setMax(typedArrayObtainStyledAttributes.getInt(2, this.mMax));
        setProgress(typedArrayObtainStyledAttributes.getInt(3, this.mProgress));
        setSecondaryProgress(typedArrayObtainStyledAttributes.getInt(4, this.mSecondaryProgress));
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(7);
        if (drawable2 != null) {
            if (needsTileify(drawable2)) {
                setIndeterminateDrawableTiled(drawable2);
            } else {
                setIndeterminateDrawable(drawable2);
            }
        }
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(6, this.mOnlyIndeterminate);
        this.mOnlyIndeterminate = z2;
        this.mNoInvalidate = false;
        setIndeterminate(z2 || typedArrayObtainStyledAttributes.getBoolean(5, this.mIndeterminate));
        this.mMirrorForRtl = typedArrayObtainStyledAttributes.getBoolean(15, this.mMirrorForRtl);
        if (typedArrayObtainStyledAttributes.hasValue(17)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mProgressTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(17, -1), null);
            this.mProgressTintInfo.mHasProgressTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(16)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mProgressTintList = typedArrayObtainStyledAttributes.getColorStateList(16);
            this.mProgressTintInfo.mHasProgressTint = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(19)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mProgressBackgroundTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(19, -1), null);
            this.mProgressTintInfo.mHasProgressBackgroundTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(18)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mProgressBackgroundTintList = typedArrayObtainStyledAttributes.getColorStateList(18);
            this.mProgressTintInfo.mHasProgressBackgroundTint = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mSecondaryProgressTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(21, -1), null);
            this.mProgressTintInfo.mHasSecondaryProgressTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(20)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mSecondaryProgressTintList = typedArrayObtainStyledAttributes.getColorStateList(20);
            this.mProgressTintInfo.mHasSecondaryProgressTint = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(23)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mIndeterminateTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(23, -1), null);
            this.mProgressTintInfo.mHasIndeterminateTintMode = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(22)) {
            if (this.mProgressTintInfo == null) {
                this.mProgressTintInfo = new ProgressTintInfo();
            }
            this.mProgressTintInfo.mIndeterminateTintList = typedArrayObtainStyledAttributes.getColorStateList(22);
            this.mProgressTintInfo.mHasIndeterminateTint = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        applyProgressTints();
        applyIndeterminateTint();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
