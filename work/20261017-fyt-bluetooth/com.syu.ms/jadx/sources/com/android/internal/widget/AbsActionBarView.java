package com.android.internal.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.android.internal.view.menu.ActionMenuPresenter;
import com.android.internal.view.menu.ActionMenuView;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsActionBarView extends ViewGroup {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final TimeInterpolator f1405h = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActionMenuView f1406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ActionMenuPresenter f1407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionBarContainer f1408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1411f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Animator f1412g;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbsActionBarView.this.n();
        }
    }

    public static int k(int i2, int i3, boolean z2) {
        return z2 ? i2 - i3 : i2 + i3;
    }

    public int getAnimatedVisibility() {
        if (this.f1412g == null) {
            return getVisibility();
        }
        throw null;
    }

    public int getContentHeight() {
        return this.f1411f;
    }

    public void h(int i2) {
        ActionMenuView actionMenuView;
        Animator animator = this.f1412g;
        if (animator != null) {
            animator.cancel();
        }
        if (i2 != 0) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f);
            objectAnimatorOfFloat.setDuration(200L);
            objectAnimatorOfFloat.setInterpolator(f1405h);
            if (this.f1408c == null || this.f1406a == null) {
                throw null;
            }
            new AnimatorSet();
            ObjectAnimator.ofFloat(this.f1406a, "alpha", 0.0f).setDuration(200L);
            throw null;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
            if (this.f1408c != null && (actionMenuView = this.f1406a) != null) {
                actionMenuView.setAlpha(0.0f);
            }
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "alpha", 1.0f);
        objectAnimatorOfFloat2.setDuration(200L);
        objectAnimatorOfFloat2.setInterpolator(f1405h);
        if (this.f1408c == null || this.f1406a == null) {
            throw null;
        }
        new AnimatorSet();
        ObjectAnimator.ofFloat(this.f1406a, "alpha", 1.0f).setDuration(200L);
        throw null;
    }

    public boolean i() {
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.z();
        }
        return false;
    }

    public int j(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    public int l(View view, int i2, int i3, int i4, boolean z2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i3 + ((i4 - measuredHeight) / 2);
        if (z2) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z2 ? -measuredWidth : measuredWidth;
    }

    public void m() {
        post(new a());
    }

    public boolean n() {
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.F();
        }
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, i.a.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(4, 0));
        typedArrayObtainStyledAttributes.recycle();
        if (this.f1410e) {
            setSplitActionBar(getContext().getResources().getBoolean(17891334));
        }
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.A(configuration);
        }
    }

    public void setContentHeight(int i2) {
        this.f1411f = i2;
        ActionMenuView actionMenuView = this.f1406a;
        if (actionMenuView != null) {
            actionMenuView.setMaxItemHeight(i2);
        }
        requestLayout();
    }

    public void setSplitActionBar(boolean z2) {
        this.f1409d = z2;
    }

    public void setSplitView(ActionBarContainer actionBarContainer) {
        this.f1408c = actionBarContainer;
    }

    public void setSplitWhenNarrow(boolean z2) {
        this.f1410e = z2;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            Animator animator = this.f1412g;
            if (animator != null) {
                animator.end();
            }
            super.setVisibility(i2);
        }
    }
}
