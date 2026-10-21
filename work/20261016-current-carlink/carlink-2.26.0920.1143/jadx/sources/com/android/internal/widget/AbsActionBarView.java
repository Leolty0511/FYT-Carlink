package com.android.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.app.m;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Property;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ActionMenuPresenter;
import android.widget.ActionMenuView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbsActionBarView extends ViewGroup {
    private static final int FADE_DURATION = 200;
    private static final TimeInterpolator sAlphaInterpolator = new DecelerateInterpolator();
    protected ActionMenuPresenter mActionMenuPresenter;
    protected int mContentHeight;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    protected ActionMenuView mMenuView;
    protected final Context mPopupContext;
    protected boolean mSplitActionBar;
    protected ViewGroup mSplitView;
    protected boolean mSplitWhenNarrow;
    protected final VisibilityAnimListener mVisAnimListener;
    protected Animator mVisibilityAnim;

    public class VisibilityAnimListener implements Animator.AnimatorListener {
        private boolean mCanceled = false;
        int mFinalVisibility;

        public VisibilityAnimListener() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final /* synthetic */ void onAnimationEnd(Animator animator, boolean z2) {
            android.animation.a.a(this, animator, z2);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final /* synthetic */ void onAnimationStart(Animator animator, boolean z2) {
            android.animation.a.b(this, animator, z2);
        }

        public VisibilityAnimListener withFinalVisibility(int i2) {
            this.mFinalVisibility = i2;
            return this;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionMenuView actionMenuView;
            if (this.mCanceled) {
                return;
            }
            AbsActionBarView absActionBarView = AbsActionBarView.this;
            absActionBarView.mVisibilityAnim = null;
            absActionBarView.setVisibility(this.mFinalVisibility);
            AbsActionBarView absActionBarView2 = AbsActionBarView.this;
            if (absActionBarView2.mSplitView == null || (actionMenuView = absActionBarView2.mMenuView) == null) {
                return;
            }
            actionMenuView.setVisibility(this.mFinalVisibility);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            AbsActionBarView.this.setVisibility(0);
            AbsActionBarView.this.mVisibilityAnim = animator;
            this.mCanceled = false;
        }
    }

    public AbsActionBarView(Context context) {
        this(context, null);
    }

    public static int next(int i2, int i3, boolean z2) {
        return z2 ? i2 - i3 : i2 + i3;
    }

    public void animateToVisibility(int i2) {
        setupAnimatorToVisibility(i2, 200L).start();
    }

    public boolean canShowOverflowMenu() {
        return isOverflowReserved() && getVisibility() == 0;
    }

    public void dismissPopupMenus() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.dismissPopupMenus();
        }
    }

    public int getAnimatedVisibility() {
        return this.mVisibilityAnim != null ? this.mVisAnimListener.mFinalVisibility : getVisibility();
    }

    public int getContentHeight() {
        return this.mContentHeight;
    }

    public boolean hideOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.hideOverflowMenu();
        }
        return false;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.isOverflowMenuShowPending();
        }
        return false;
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.isOverflowMenuShowing();
        }
        return false;
    }

    public boolean isOverflowReserved() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.isOverflowReserved();
    }

    public int measureChildView(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, 16843470, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(4, 0));
        typedArrayObtainStyledAttributes.recycle();
        if (this.mSplitWhenNarrow) {
            setSplitToolbar(getContext().getResources().getBoolean(R.bool.split_action_bar_is_narrow));
        }
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.onConfigurationChanged(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.mEatingHover = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.mEatingHover = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.mEatingTouch = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mEatingTouch = false;
        }
        return true;
    }

    public int positionChild(View view, int i2, int i3, int i4, boolean z2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int iB = m.b(i4, measuredHeight, 2, i3);
        if (z2) {
            view.layout(i2 - measuredWidth, iB, i2, measuredHeight + iB);
        } else {
            view.layout(i2, iB, i2 + measuredWidth, measuredHeight + iB);
        }
        return z2 ? -measuredWidth : measuredWidth;
    }

    public void postShowOverflowMenu() {
        post(new Runnable() { // from class: com.android.internal.widget.AbsActionBarView.1
            @Override // java.lang.Runnable
            public void run() {
                AbsActionBarView.this.showOverflowMenu();
            }
        });
    }

    public void setContentHeight(int i2) {
        this.mContentHeight = i2;
        requestLayout();
    }

    public void setSplitToolbar(boolean z2) {
        this.mSplitActionBar = z2;
    }

    public void setSplitView(ViewGroup viewGroup) {
        this.mSplitView = viewGroup;
    }

    public void setSplitWhenNarrow(boolean z2) {
        this.mSplitWhenNarrow = z2;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            Animator animator = this.mVisibilityAnim;
            if (animator != null) {
                animator.end();
            }
            super.setVisibility(i2);
        }
    }

    public Animator setupAnimatorToVisibility(int i2, long j2) {
        ActionMenuView actionMenuView;
        Animator animator = this.mVisibilityAnim;
        if (animator != null) {
            animator.cancel();
        }
        if (i2 != 0) {
            Property<View, Float> property = View.ALPHA;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<AbsActionBarView, Float>) property, 0.0f);
            objectAnimatorOfFloat.setDuration(j2);
            objectAnimatorOfFloat.setInterpolator(sAlphaInterpolator);
            if (this.mSplitView == null || this.mMenuView == null) {
                objectAnimatorOfFloat.addListener(this.mVisAnimListener.withFinalVisibility(i2));
                return objectAnimatorOfFloat;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.mMenuView, (Property<ActionMenuView, Float>) property, 0.0f);
            objectAnimatorOfFloat2.setDuration(j2);
            animatorSet.addListener(this.mVisAnimListener.withFinalVisibility(i2));
            animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
            return animatorSet;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
            if (this.mSplitView != null && (actionMenuView = this.mMenuView) != null) {
                actionMenuView.setAlpha(0.0f);
            }
        }
        Property<View, Float> property2 = View.ALPHA;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, (Property<AbsActionBarView, Float>) property2, 1.0f);
        objectAnimatorOfFloat3.setDuration(j2);
        objectAnimatorOfFloat3.setInterpolator(sAlphaInterpolator);
        if (this.mSplitView == null || this.mMenuView == null) {
            objectAnimatorOfFloat3.addListener(this.mVisAnimListener.withFinalVisibility(i2));
            return objectAnimatorOfFloat3;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.mMenuView, (Property<ActionMenuView, Float>) property2, 1.0f);
        objectAnimatorOfFloat4.setDuration(j2);
        animatorSet2.addListener(this.mVisAnimListener.withFinalVisibility(i2));
        animatorSet2.play(objectAnimatorOfFloat3).with(objectAnimatorOfFloat4);
        return animatorSet2;
    }

    public boolean showOverflowMenu() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.showOverflowMenu();
        }
        return false;
    }

    public AbsActionBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbsActionBarView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public AbsActionBarView(Context context, AttributeSet attributeSet, int i2, int i3) {
        int i4;
        super(context, attributeSet, i2, i3);
        this.mVisAnimListener = new VisibilityAnimListener();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(16843917, typedValue, true) && (i4 = typedValue.resourceId) != 0) {
            this.mPopupContext = new ContextThemeWrapper(context, i4);
        } else {
            this.mPopupContext = context;
        }
    }
}
