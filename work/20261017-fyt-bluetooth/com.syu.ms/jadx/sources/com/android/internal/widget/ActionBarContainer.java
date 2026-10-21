package com.android.internal.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f1415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionBarView f1416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f1417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f1418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f1419f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1420g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1421h;

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1417d;
        if (drawable != null && drawable.isStateful()) {
            this.f1417d.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1418e;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1418e.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1419f;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f1419f.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f1415b;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1417d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1418e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1419f;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.f1420g) {
            Drawable drawable = this.f1419f;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = this.f1417d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = this.f1418e;
        if (drawable3 == null || !this.f1421h) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1416c = (ActionBarView) findViewById(16909093);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1414a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        super.onLayout(z2, i2, i3, i4, i5);
        View view = this.f1415b;
        boolean z4 = true;
        boolean z5 = false;
        boolean z6 = (view == null || view.getVisibility() == 8) ? false : true;
        View view2 = this.f1415b;
        if (view2 != null && view2.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            this.f1415b.layout(i2, measuredHeight - this.f1415b.getMeasuredHeight(), i4, measuredHeight);
        }
        if (this.f1420g) {
            Drawable drawable = this.f1419f;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z4 = false;
            }
        } else {
            Drawable drawable2 = this.f1417d;
            if (drawable2 != null) {
                drawable2.setBounds(this.f1416c.getLeft(), this.f1416c.getTop(), this.f1416c.getRight(), this.f1416c.getBottom());
                z3 = true;
            } else {
                z3 = false;
            }
            if (z6 && this.f1418e != null) {
                z5 = true;
            }
            this.f1421h = z5;
            if (z5) {
                this.f1418e.setBounds(this.f1415b.getLeft(), this.f1415b.getTop(), this.f1415b.getRight(), this.f1415b.getBottom());
            } else {
                z4 = z3;
            }
        }
        if (z4) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int measuredHeight;
        super.onMeasure(i2, i3);
        ActionBarView actionBarView = this.f1416c;
        if (actionBarView == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) actionBarView.getLayoutParams();
        if (this.f1416c.r()) {
            measuredHeight = 0;
        } else {
            measuredHeight = layoutParams.bottomMargin + this.f1416c.getMeasuredHeight() + layoutParams.topMargin;
        }
        View view = this.f1415b;
        if (view == null || view.getVisibility() == 8 || View.MeasureSpec.getMode(i3) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(measuredHeight + this.f1415b.getMeasuredHeight(), View.MeasureSpec.getSize(i3)));
    }

    @Override // android.view.View
    public void onResolveDrawables(int i2) {
        super.onResolveDrawables(i2);
        Drawable drawable = this.f1417d;
        if (drawable != null) {
            drawable.setLayoutDirection(i2);
        }
        Drawable drawable2 = this.f1418e;
        if (drawable2 != null) {
            drawable2.setLayoutDirection(i2);
        }
        Drawable drawable3 = this.f1419f;
        if (drawable3 != null) {
            drawable3.setLayoutDirection(i2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1417d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1417d);
        }
        this.f1417d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            ActionBarView actionBarView = this.f1416c;
            if (actionBarView != null) {
                this.f1417d.setBounds(actionBarView.getLeft(), this.f1416c.getTop(), this.f1416c.getRight(), this.f1416c.getBottom());
            }
        }
        boolean z2 = true;
        if (!this.f1420g ? this.f1417d != null || this.f1418e != null : this.f1419f != null) {
            z2 = false;
        }
        setWillNotDraw(z2);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1419f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1419f);
        }
        this.f1419f = drawable;
        boolean z2 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1420g && (drawable2 = this.f1419f) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f1420g ? !(this.f1417d != null || this.f1418e != null) : this.f1419f == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1418e;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1418e);
        }
        this.f1418e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1421h && (drawable2 = this.f1418e) != null) {
                drawable2.setBounds(this.f1415b.getLeft(), this.f1415b.getTop(), this.f1415b.getRight(), this.f1415b.getBottom());
            }
        }
        boolean z2 = true;
        if (!this.f1420g ? this.f1417d != null || this.f1418e != null : this.f1419f != null) {
            z2 = false;
        }
        setWillNotDraw(z2);
        invalidate();
    }

    public void setTabContainer(g gVar) {
        View view = this.f1415b;
        if (view != null) {
            removeView(view);
        }
        this.f1415b = gVar;
        if (gVar != null) {
            addView(gVar);
            ViewGroup.LayoutParams layoutParams = gVar.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            gVar.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z2) {
        this.f1414a = z2;
        setDescendantFocusability(z2 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        Drawable drawable = this.f1417d;
        if (drawable != null) {
            drawable.setVisible(z2, false);
        }
        Drawable drawable2 = this.f1418e;
        if (drawable2 != null) {
            drawable2.setVisible(z2, false);
        }
        Drawable drawable3 = this.f1419f;
        if (drawable3 != null) {
            drawable3.setVisible(z2, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f1417d && !this.f1420g) || (drawable == this.f1418e && this.f1421h) || ((drawable == this.f1419f && this.f1420g) || super.verifyDrawable(drawable));
    }
}
