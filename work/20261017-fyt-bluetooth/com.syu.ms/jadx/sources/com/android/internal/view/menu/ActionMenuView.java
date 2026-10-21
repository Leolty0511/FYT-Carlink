package com.android.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends LinearLayout implements c.b, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f1296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionMenuPresenter f1298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1302g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1303h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1304i;

    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @ViewDebug.ExportedProperty(category = "layout")
        public boolean f1305a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @ViewDebug.ExportedProperty(category = "layout")
        public int f1306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty(category = "layout")
        public int f1307c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty(category = "layout")
        public boolean f1308d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @ViewDebug.ExportedProperty(category = "layout")
        public boolean f1309e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1310f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.f1305a = layoutParams.f1305a;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f1305a = false;
        }
    }

    public interface a {
        boolean a();

        boolean c();
    }

    public static int l(View view, int i2, int i3, int i4, int i5) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4) - i5, View.MeasureSpec.getMode(i4));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.h();
        int i6 = 2;
        if (i3 <= 0 || (z2 && i3 < 2)) {
            i6 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i3 * i2, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i7 = measuredWidth / i2;
            if (measuredWidth % i2 != 0) {
                i7++;
            }
            if (!z2 || i7 >= 2) {
                i6 = i7;
            }
        }
        layoutParams.f1308d = !layoutParams.f1305a && z2;
        layoutParams.f1306b = i6;
        view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i6, 1073741824), iMakeMeasureSpec);
        return i6;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    @Override // com.android.internal.view.menu.c.b
    public boolean d(d dVar) {
        return this.f1296a.E(dVar, 0);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // com.android.internal.view.menu.g
    public void g(c cVar) {
        this.f1296a = cVar;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    @Override // android.widget.LinearLayout
    public boolean hasDividerBeforeChildAt(int i2) {
        boolean zA = false;
        if (i2 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i2 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof a)) {
            zA = false | ((a) childAt).a();
        }
        return (i2 <= 0 || !(childAt2 instanceof a)) ? zA : zA | ((a) childAt2).c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.gravity <= 0) {
            layoutParams2.gravity = 16;
        }
        return layoutParams2;
    }

    public LayoutParams k() {
        LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.f1305a = true;
        return layoutParamsGenerateDefaultLayoutParams;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x010d  */
    /* JADX WARN: Type inference failed for: r15v10, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v9 */
    public final void m(int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z3;
        ?? r15;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iMakeMeasureSpec = mode == 1073741824 ? View.MeasureSpec.makeMeasureSpec(size2 - paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(Math.min(this.f1304i, size2 - paddingTop), Integer.MIN_VALUE);
        int i9 = size - paddingLeft;
        int i10 = this.f1301f;
        int i11 = i9 / i10;
        int i12 = i9 % i10;
        if (i11 == 0) {
            setMeasuredDimension(i9, 0);
            return;
        }
        int i13 = i10 + (i12 / i11);
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        int i14 = 0;
        boolean z4 = false;
        int i15 = 0;
        int i16 = 0;
        long j2 = 0;
        while (i14 < childCount) {
            View childAt = getChildAt(i14);
            int i17 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z5 = childAt instanceof ActionMenuItemView;
                int i18 = i15 + 1;
                if (z5) {
                    int i19 = this.f1302g;
                    r15 = 0;
                    childAt.setPadding(i19, 0, i19, 0);
                } else {
                    r15 = 0;
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.f1310f = r15;
                layoutParams.f1307c = r15;
                layoutParams.f1306b = r15;
                layoutParams.f1308d = r15;
                layoutParams.leftMargin = r15;
                layoutParams.rightMargin = r15;
                layoutParams.f1309e = z5 && ((ActionMenuItemView) childAt).h();
                int iL = l(childAt, i13, layoutParams.f1305a ? 1 : i11, iMakeMeasureSpec, paddingTop);
                iMax = Math.max(iMax, iL);
                if (layoutParams.f1308d) {
                    i16++;
                }
                if (layoutParams.f1305a) {
                    z4 = true;
                }
                i11 -= iL;
                iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
                if (iL == 1) {
                    j2 |= (long) (1 << i14);
                    i15 = i18;
                    iMax = iMax;
                } else {
                    i15 = i18;
                }
            }
            i14++;
            paddingTop = paddingTop;
            size2 = i17;
        }
        int i20 = size2;
        boolean z6 = z4 && i15 == 2;
        int i21 = i11;
        boolean z7 = false;
        while (true) {
            if (i16 <= 0 || i21 <= 0) {
                i4 = i9;
                z2 = z7;
                i5 = iMax2;
                i6 = mode;
                break;
            }
            int i22 = Integer.MAX_VALUE;
            int i23 = 0;
            int i24 = 0;
            long j3 = 0;
            while (i23 < childCount) {
                boolean z8 = z7;
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i23).getLayoutParams();
                int i25 = iMax2;
                if (layoutParams2.f1308d) {
                    int i26 = layoutParams2.f1306b;
                    if (i26 < i22) {
                        j3 = 1 << i23;
                        i22 = i26;
                        i24 = 1;
                    } else if (i26 == i22) {
                        j3 |= (long) (1 << i23);
                        i24++;
                    }
                }
                i23++;
                mode = mode;
                iMax2 = i25;
                z7 = z8;
                i9 = i9;
            }
            i4 = i9;
            z2 = z7;
            i5 = iMax2;
            int i27 = mode;
            j2 |= j3;
            if (i24 > i21) {
                i6 = i27;
                break;
            }
            int i28 = i22 + 1;
            int i29 = 0;
            while (i29 < childCount) {
                View childAt2 = getChildAt(i29);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                int i30 = i27;
                long j4 = 1 << i29;
                if ((j3 & j4) == 0) {
                    if (layoutParams3.f1306b == i28) {
                        j2 |= j4;
                    }
                    z6 = z6;
                } else {
                    if (z6 && layoutParams3.f1309e && i21 == 1) {
                        int i31 = this.f1302g;
                        childAt2.setPadding(i31 + i13, 0, i31, 0);
                    }
                    layoutParams3.f1306b++;
                    layoutParams3.f1310f = true;
                    i21--;
                }
                i29++;
                i27 = i30;
                z6 = z6;
            }
            mode = i27;
            iMax2 = i5;
            i9 = i4;
            z7 = true;
        }
        boolean z9 = !z4 && i15 == 1;
        if (i21 <= 0 || j2 == 0 || (i21 >= i15 - 1 && !z9 && iMax <= 1)) {
            i7 = 0;
            i8 = i21;
            z3 = z2;
        } else {
            float fBitCount = Long.bitCount(j2);
            if (z9) {
                i7 = 0;
            } else {
                i7 = 0;
                if ((j2 & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).f1309e) {
                    fBitCount -= 0.5f;
                }
                int i32 = childCount - 1;
                if ((j2 & ((long) (1 << i32))) != 0 && !((LayoutParams) getChildAt(i32).getLayoutParams()).f1309e) {
                    fBitCount -= 0.5f;
                }
            }
            int i33 = fBitCount > 0.0f ? (int) ((i21 * i13) / fBitCount) : i7;
            z3 = z2;
            for (int i34 = i7; i34 < childCount; i34++) {
                if ((j2 & ((long) (1 << i34))) != 0) {
                    View childAt3 = getChildAt(i34);
                    LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams4.f1307c = i33;
                        layoutParams4.f1310f = true;
                        if (i34 == 0 && !layoutParams4.f1309e) {
                            layoutParams4.leftMargin = (-i33) / 2;
                        }
                        z3 = true;
                    } else if (layoutParams4.f1305a) {
                        layoutParams4.f1307c = i33;
                        layoutParams4.f1310f = true;
                        layoutParams4.rightMargin = (-i33) / 2;
                        z3 = true;
                    } else {
                        if (i34 != 0) {
                            layoutParams4.leftMargin = i33 / 2;
                        }
                        if (i34 != childCount - 1) {
                            layoutParams4.rightMargin = i33 / 2;
                        }
                    }
                }
            }
            i8 = i7;
        }
        if (z3) {
            for (int i35 = i7; i35 < childCount; i35++) {
                View childAt4 = getChildAt(i35);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.f1310f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams5.f1306b * i13) + layoutParams5.f1307c, 1073741824), iMakeMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i4, i6 != 1073741824 ? i5 : i20);
        this.f1303h = i8 * i13;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1298c.b(false);
        ActionMenuPresenter actionMenuPresenter = this.f1298c;
        if (actionMenuPresenter == null || !actionMenuPresenter.z()) {
            return;
        }
        this.f1298c.x();
        this.f1298c.F();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1298c.v();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int width;
        int paddingLeft;
        if (!this.f1299d) {
            super.onLayout(z2, i2, i3, i4, i5);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i3 + i5) / 2;
        int dividerWidth = getDividerWidth();
        int i7 = i4 - i2;
        int paddingRight = (i7 - getPaddingRight()) - getPaddingLeft();
        boolean zIsLayoutRtl = isLayoutRtl();
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1305a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasDividerBeforeChildAt(i10)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zIsLayoutRtl) {
                        paddingLeft = getPaddingLeft() + layoutParams.leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i11 = i6 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i11, width, measuredHeight + i11);
                    paddingRight -= measuredWidth;
                    i8 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
                    hasDividerBeforeChildAt(i10);
                    i9++;
                }
            }
        }
        if (childCount == 1 && i8 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i12 = (i7 / 2) - (measuredWidth2 / 2);
            int i13 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i12, i13, measuredWidth2 + i12, measuredHeight2 + i13);
            return;
        }
        int i14 = i9 - (i8 ^ 1);
        int iMax = Math.max(0, i14 > 0 ? paddingRight / i14 : 0);
        if (zIsLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.f1305a) {
                    int i16 = width2 - layoutParams2.rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth3, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth3 + layoutParams2.leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt4 = getChildAt(i18);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.f1305a) {
                int i19 = paddingLeft2 + layoutParams3.leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth4, measuredHeight4 + i20);
                paddingLeft2 = i19 + measuredWidth4 + layoutParams3.rightMargin + iMax;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        c cVar;
        boolean z2 = this.f1299d;
        boolean z3 = View.MeasureSpec.getMode(i2) == 1073741824;
        this.f1299d = z3;
        if (z2 != z3) {
            this.f1300e = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.f1299d && (cVar = this.f1296a) != null && size != this.f1300e) {
            this.f1300e = size;
            cVar.D(true);
        }
        if (this.f1299d) {
            m(i2, i3);
            return;
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i4).getLayoutParams();
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
        }
        super.onMeasure(i2, i3);
    }

    public void setMaxItemHeight(int i2) {
        this.f1304i = i2;
        requestLayout();
    }

    public void setOverflowReserved(boolean z2) {
        this.f1297b = z2;
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f1298c = actionMenuPresenter;
    }
}
