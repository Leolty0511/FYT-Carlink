package com.android.internal.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int[] f1438r = {R.attr.actionBarSize, R.attr.windowContentOverlay};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j.a f1440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f1442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f1443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ActionBarContainer f1444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ActionBarView f1445g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f1446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1447i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1448j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1449k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Rect f1450l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Rect f1451m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Rect f1452n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f1453o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Rect f1454p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Rect f1455q;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1446h == null || this.f1447i) {
            return;
        }
        int bottom = this.f1444f.getVisibility() == 0 ? (int) (this.f1444f.getBottom() + this.f1444f.getTranslationY() + 0.5f) : 0;
        this.f1446h.setBounds(0, bottom, getWidth(), this.f1446h.getIntrinsicHeight() + bottom);
        this.f1446h.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean fitSystemWindows(Rect rect) {
        k();
        getWindowSystemUiVisibility();
        boolean zH = h(this.f1444f, rect, true, true, false, true);
        View view = this.f1443e;
        if (view != null) {
            zH |= h(view, rect, true, false, true, true);
        }
        this.f1453o.set(rect);
        computeFitSystemWindows(this.f1453o, this.f1450l);
        if (!this.f1451m.equals(this.f1450l)) {
            this.f1451m.set(this.f1450l);
            zH = true;
        }
        if (zH) {
            requestLayout();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final boolean h(View view, Rect rect, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (z2) {
            int i2 = layoutParams.leftMargin;
            int i3 = rect.left;
            if (i2 != i3) {
                layoutParams.leftMargin = i3;
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        if (z3) {
            int i4 = layoutParams.topMargin;
            int i5 = rect.top;
            if (i4 != i5) {
                layoutParams.topMargin = i5;
                z6 = true;
            }
        }
        if (z5) {
            int i6 = layoutParams.rightMargin;
            int i7 = rect.right;
            if (i6 != i7) {
                layoutParams.rightMargin = i7;
                z6 = true;
            }
        }
        if (z4) {
            int i8 = layoutParams.bottomMargin;
            int i9 = rect.bottom;
            if (i8 != i9) {
                layoutParams.bottomMargin = i9;
                return true;
            }
        }
        return z6;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void k() {
        if (this.f1442d == null) {
            this.f1442d = findViewById(16908290);
            this.f1444f = (ActionBarContainer) findViewById(16909092);
            this.f1445g = (ActionBarView) findViewById(16909093);
            this.f1443e = findViewById(16909095);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i5 - i3) - getPaddingBottom();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = layoutParams.leftMargin + paddingLeft;
                int i8 = childAt == this.f1443e ? (paddingBottom - measuredHeight) - layoutParams.bottomMargin : paddingTop + layoutParams.topMargin;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int measuredHeight;
        View view;
        k();
        measureChildWithMargins(this.f1444f, i2, 0, i3, 0);
        LayoutParams layoutParams = (LayoutParams) this.f1444f.getLayoutParams();
        int measuredHeight2 = 0;
        int iMax = Math.max(0, this.f1444f.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int iMax2 = Math.max(0, this.f1444f.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1444f.getMeasuredState());
        View view2 = this.f1443e;
        if (view2 != null) {
            measureChildWithMargins(view2, i2, 0, i3, 0);
            LayoutParams layoutParams2 = (LayoutParams) this.f1443e.getLayoutParams();
            iMax = Math.max(iMax, this.f1443e.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
            iMax2 = Math.max(iMax2, this.f1443e.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin);
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1443e.getMeasuredState());
        }
        boolean z2 = (getWindowSystemUiVisibility() & 256) != 0;
        if (z2) {
            measuredHeight = this.f1439a;
            j.a aVar = this.f1440b;
            if (aVar != null && aVar.y() && this.f1444f.getTabContainer() != null) {
                measuredHeight += this.f1439a;
            }
        } else {
            measuredHeight = this.f1444f.getVisibility() == 0 ? this.f1444f.getMeasuredHeight() : 0;
        }
        if (this.f1445g.s() && (view = this.f1443e) != null) {
            measuredHeight2 = z2 ? this.f1439a : view.getMeasuredHeight();
        }
        this.f1452n.set(this.f1450l);
        this.f1454p.set(this.f1453o);
        if (this.f1448j || z2) {
            Rect rect = this.f1454p;
            rect.top += measuredHeight;
            rect.bottom += measuredHeight2;
        } else {
            Rect rect2 = this.f1452n;
            rect2.top += measuredHeight;
            rect2.bottom += measuredHeight2;
        }
        h(this.f1442d, this.f1452n, true, true, true, true);
        if (!this.f1455q.equals(this.f1454p)) {
            this.f1455q.set(this.f1454p);
            super.fitSystemWindows(this.f1454p);
        }
        measureChildWithMargins(this.f1442d, i2, 0, i3, 0);
        LayoutParams layoutParams3 = (LayoutParams) this.f1442d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f1442d.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin);
        int iMax4 = Math.max(iMax2, this.f1442d.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1442d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i2) {
        super.onWindowSystemUiVisibilityChanged(i2);
        k();
        int i3 = this.f1449k ^ i2;
        this.f1449k = i2;
        boolean z2 = (i2 & 4) == 0;
        j.a aVar = this.f1440b;
        if (aVar != null) {
            aVar.C();
        }
        boolean z3 = (i2 & 256) != 0;
        j.a aVar2 = this.f1440b;
        if (aVar2 != null) {
            aVar2.w(!z3);
            if (z2 || !z3) {
                this.f1440b.J();
            } else {
                this.f1440b.A();
            }
        }
        if ((i3 & 256) == 0 || this.f1440b == null) {
            return;
        }
        requestFitSystemWindows();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f1441c = i2;
        j.a aVar = this.f1440b;
        if (aVar != null) {
            aVar.H(i2);
        }
    }

    public void setActionBar(j.a aVar) {
        this.f1440b = aVar;
        if (getWindowToken() != null) {
            this.f1440b.H(this.f1441c);
            int i2 = this.f1449k;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                requestFitSystemWindows();
            }
        }
    }

    public void setOverlayMode(boolean z2) {
        this.f1448j = z2;
        this.f1447i = z2 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z2) {
        if (!z2) {
            setDisabledSystemUiVisibility(0);
        } else if ((getWindowSystemUiVisibility() & 1280) == 1280) {
            setDisabledSystemUiVisibility(4);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
