package com.android.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.view.menu.ActionMenuPresenter;
import com.android.internal.view.menu.ActionMenuView;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView implements Animator.AnimatorListener {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f1422i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1423j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f1424k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f1425l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f1426m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1427n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1428o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1429p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1430q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Drawable f1431r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1432s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Animator f1433t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1434u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1435v;

    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ActionMode f1436a;

        public a(ActionMode actionMode) {
            this.f1436a = actionMode;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1436a.finish();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public CharSequence getSubtitle() {
        return this.f1423j;
    }

    public CharSequence getTitle() {
        return this.f1422i;
    }

    @Override // com.android.internal.widget.AbsActionBarView
    public boolean n() {
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.F();
        }
        return false;
    }

    public void o() {
        if (this.f1435v == 2) {
            return;
        }
        if (this.f1424k == null) {
            t();
            return;
        }
        p();
        this.f1435v = 2;
        Animator animatorV = v();
        this.f1433t = animatorV;
        animatorV.start();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f1435v == 2) {
            t();
        }
        this.f1435v = 0;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.x();
            this.f1407b.y();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f1422i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean zIsLayoutRtl = isLayoutRtl();
        int paddingRight = zIsLayoutRtl ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1424k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1424k.getLayoutParams();
            int i6 = zIsLayoutRtl ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = zIsLayoutRtl ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iK = AbsActionBarView.k(paddingRight, i6, zIsLayoutRtl);
            paddingRight = AbsActionBarView.k(iK + l(this.f1424k, iK, paddingTop, paddingTop2, zIsLayoutRtl), i7, zIsLayoutRtl);
            if (this.f1434u) {
                this.f1435v = 1;
                Animator animatorU = u();
                this.f1433t = animatorU;
                animatorU.start();
                this.f1434u = false;
            }
        }
        int iL = paddingRight;
        LinearLayout linearLayout = this.f1426m;
        if (linearLayout != null && this.f1425l == null && linearLayout.getVisibility() != 8) {
            iL += l(this.f1426m, iL, paddingTop, paddingTop2, zIsLayoutRtl);
        }
        int i8 = iL;
        View view2 = this.f1425l;
        if (view2 != null) {
            l(view2, i8, paddingTop, paddingTop2, zIsLayoutRtl);
        }
        int paddingLeft = zIsLayoutRtl ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1406a;
        if (actionMenuView != null) {
            l(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zIsLayoutRtl);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i3) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.f1411f;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i3);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f1424k;
        if (view != null) {
            int iJ = j(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1424k.getLayoutParams();
            paddingLeft = iJ - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1406a;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = j(this.f1406a, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.f1426m;
        if (linearLayout != null && this.f1425l == null) {
            if (this.f1432s) {
                this.f1426m.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f1426m.getMeasuredWidth();
                boolean z2 = measuredWidth <= paddingLeft;
                if (z2) {
                    paddingLeft -= measuredWidth;
                }
                this.f1426m.setVisibility(z2 ? 0 : 8);
            } else {
                paddingLeft = j(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.f1425l;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i4 = layoutParams.width;
            int i5 = i4 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i4 >= 0) {
                paddingLeft = Math.min(i4, paddingLeft);
            }
            int i6 = layoutParams.height;
            int i7 = i6 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i6 >= 0) {
                iMin = Math.min(i6, iMin);
            }
            this.f1425l.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i5), View.MeasureSpec.makeMeasureSpec(iMin, i7));
        }
        if (this.f1411f > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            int measuredHeight = getChildAt(i9).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i8) {
                i8 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i8);
    }

    public final void p() {
        Animator animator = this.f1433t;
        if (animator != null) {
            this.f1433t = null;
            animator.end();
        }
    }

    public void q(ActionMode actionMode) {
        View view = this.f1424k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(this.mContext).inflate(17367070, (ViewGroup) this, false);
            this.f1424k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f1424k);
        }
        this.f1424k.findViewById(16908919).setOnClickListener(new a(actionMode));
        com.android.internal.view.menu.c cVar = (com.android.internal.view.menu.c) actionMode.getMenu();
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.v();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(this.mContext);
        this.f1407b = actionMenuPresenter2;
        actionMenuPresenter2.D(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (this.f1409d) {
            this.f1407b.E(getContext().getResources().getDisplayMetrics().widthPixels, true);
            this.f1407b.C(Integer.MAX_VALUE);
            layoutParams.width = -1;
            layoutParams.height = this.f1411f;
            cVar.b(this.f1407b);
            ActionMenuView actionMenuView = (ActionMenuView) this.f1407b.m(this);
            this.f1406a = actionMenuView;
            actionMenuView.setBackgroundDrawable(this.f1431r);
            this.f1408c.addView(this.f1406a, layoutParams);
        } else {
            cVar.b(this.f1407b);
            ActionMenuView actionMenuView2 = (ActionMenuView) this.f1407b.m(this);
            this.f1406a = actionMenuView2;
            actionMenuView2.setBackgroundDrawable(null);
            addView(this.f1406a, layoutParams);
        }
        this.f1434u = true;
    }

    public final void r() {
        if (this.f1426m == null) {
            LayoutInflater.from(getContext()).inflate(17367065, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1426m = linearLayout;
            this.f1427n = (TextView) linearLayout.findViewById(16908917);
            this.f1428o = (TextView) this.f1426m.findViewById(16908918);
            int i2 = this.f1429p;
            if (i2 != 0) {
                this.f1427n.setTextAppearance(this.mContext, i2);
            }
            int i3 = this.f1430q;
            if (i3 != 0) {
                this.f1428o.setTextAppearance(this.mContext, i3);
            }
        }
        this.f1427n.setText(this.f1422i);
        this.f1428o.setText(this.f1423j);
        boolean z2 = !TextUtils.isEmpty(this.f1422i);
        boolean z3 = !TextUtils.isEmpty(this.f1423j);
        int i4 = 0;
        this.f1428o.setVisibility(z3 ? 0 : 8);
        LinearLayout linearLayout2 = this.f1426m;
        if (!z2 && !z3) {
            i4 = 8;
        }
        linearLayout2.setVisibility(i4);
        if (this.f1426m.getParent() == null) {
            addView(this.f1426m);
        }
    }

    public boolean s() {
        return this.f1432s;
    }

    @Override // com.android.internal.widget.AbsActionBarView
    public void setContentHeight(int i2) {
        this.f1411f = i2;
    }

    public void setCustomView(View view) {
        View view2 = this.f1425l;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1425l = view;
        LinearLayout linearLayout = this.f1426m;
        if (linearLayout != null) {
            removeView(linearLayout);
            this.f1426m = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    @Override // com.android.internal.widget.AbsActionBarView
    public void setSplitActionBar(boolean z2) {
        if (this.f1409d != z2) {
            if (this.f1407b != null) {
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
                if (z2) {
                    this.f1407b.E(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    this.f1407b.C(Integer.MAX_VALUE);
                    layoutParams.width = -1;
                    layoutParams.height = this.f1411f;
                    ActionMenuView actionMenuView = (ActionMenuView) this.f1407b.m(this);
                    this.f1406a = actionMenuView;
                    actionMenuView.setBackgroundDrawable(this.f1431r);
                    ViewGroup viewGroup = (ViewGroup) this.f1406a.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.f1406a);
                    }
                    this.f1408c.addView(this.f1406a, layoutParams);
                } else {
                    ActionMenuView actionMenuView2 = (ActionMenuView) this.f1407b.m(this);
                    this.f1406a = actionMenuView2;
                    actionMenuView2.setBackgroundDrawable(null);
                    ViewGroup viewGroup2 = (ViewGroup) this.f1406a.getParent();
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(this.f1406a);
                    }
                    addView(this.f1406a, layoutParams);
                }
            }
            super.setSplitActionBar(z2);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1423j = charSequence;
        r();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1422i = charSequence;
        r();
    }

    public void setTitleOptional(boolean z2) {
        if (z2 != this.f1432s) {
            requestLayout();
        }
        this.f1432s = z2;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void t() {
        p();
        removeAllViews();
        ActionBarContainer actionBarContainer = this.f1408c;
        if (actionBarContainer != null) {
            actionBarContainer.removeView(this.f1406a);
        }
        this.f1425l = null;
        this.f1406a = null;
        this.f1434u = false;
    }

    public final Animator u() {
        int childCount;
        View view = this.f1424k;
        view.setTranslationX((-view.getWidth()) - ((ViewGroup.MarginLayoutParams) this.f1424k.getLayoutParams()).leftMargin);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f1424k, "translationX", 0.0f);
        objectAnimatorOfFloat.setDuration(200L);
        objectAnimatorOfFloat.addListener(this);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet.Builder builderPlay = animatorSet.play(objectAnimatorOfFloat);
        ActionMenuView actionMenuView = this.f1406a;
        if (actionMenuView != null && (childCount = actionMenuView.getChildCount()) > 0) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = this.f1406a.getChildAt(i2);
                childAt.setScaleY(0.0f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(childAt, "scaleY", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(300L);
                builderPlay.with(objectAnimatorOfFloat2);
            }
        }
        return animatorSet;
    }

    public final Animator v() {
        View view = this.f1424k;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", (-view.getWidth()) - ((ViewGroup.MarginLayoutParams) this.f1424k.getLayoutParams()).leftMargin);
        objectAnimatorOfFloat.setDuration(200L);
        objectAnimatorOfFloat.addListener(this);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat);
        ActionMenuView actionMenuView = this.f1406a;
        if (actionMenuView != null) {
            actionMenuView.getChildCount();
        }
        return animatorSet;
    }
}
