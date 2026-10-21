package com.android.internal.widget;

import android.R;
import android.app.ActionBar;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.internal.view.menu.ActionMenuPresenter;
import com.android.internal.view.menu.ActionMenuView;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarView extends AbsActionBarView {
    public int A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public ActionBarContextView G;
    public SpinnerAdapter H;
    public ActionBar.OnNavigationListener I;
    public Runnable J;
    public View K;
    public Window.Callback L;
    public final AdapterView.OnItemSelectedListener M;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1456i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1457j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1458k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f1459l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f1460m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f1461n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f1462o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1463p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public HomeView f1464q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LinearLayout f1465r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f1466s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f1467t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ViewGroup f1468u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Spinner f1469v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public LinearLayout f1470w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public g f1471x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public View f1472y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1473z;

    public static class HomeView extends FrameLayout {
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1475b;

        public static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f1474a);
            parcel.writeInt(this.f1475b ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f1474a = parcel.readInt();
            this.f1475b = parcel.readInt() != 0;
        }
    }

    public class a implements AdapterView.OnItemSelectedListener {
    }

    private void setTitleImpl(CharSequence charSequence) {
        t.a.a(this);
        this.f1458k = charSequence;
        TextView textView = this.f1466s;
        if (textView != null) {
            textView.setText(charSequence);
            this.f1465r.setVisibility(this.K == null && (this.f1457j & 8) != 0 && (!TextUtils.isEmpty(this.f1458k) || !TextUtils.isEmpty(this.f1459l)) ? 0 : 8);
        }
        v(this.f1468u.isEnabled());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ActionBar.LayoutParams(8388627);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBar.LayoutParams(getContext(), attributeSet);
    }

    public View getCustomNavigationView() {
        return this.f1472y;
    }

    public int getDisplayOptions() {
        return this.f1457j;
    }

    public SpinnerAdapter getDropdownAdapter() {
        return this.H;
    }

    public int getDropdownSelectedPosition() {
        return this.f1469v.getSelectedItemPosition();
    }

    public int getNavigationMode() {
        return this.f1456i;
    }

    public CharSequence getSubtitle() {
        return this.f1459l;
    }

    public CharSequence getTitle() {
        return this.f1458k;
    }

    public final CharSequence o() {
        CharSequence text = this.f1462o;
        if (text == null) {
            text = (this.f1457j & 4) != 0 ? this.mContext.getResources().getText(17040662) : this.mContext.getResources().getText(17040661);
        }
        CharSequence title = getTitle();
        CharSequence subtitle = getSubtitle();
        if (TextUtils.isEmpty(title)) {
            return text;
        }
        return !TextUtils.isEmpty(subtitle) ? getResources().getString(17040665, title, subtitle, text) : getResources().getString(17040664, title, text);
    }

    @Override // com.android.internal.widget.AbsActionBarView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1466s = null;
        this.f1467t = null;
        LinearLayout linearLayout = this.f1465r;
        if (linearLayout != null) {
            ViewParent parent = linearLayout.getParent();
            ViewGroup viewGroup = this.f1468u;
            if (parent == viewGroup) {
                viewGroup.removeView(this.f1465r);
            }
        }
        this.f1465r = null;
        if ((this.f1457j & 8) != 0) {
            q();
        }
        int i2 = this.f1463p;
        if (i2 != 0) {
            setHomeActionContentDescription(i2);
        }
        g gVar = this.f1471x;
        if (gVar == null || !this.C) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = gVar.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -2;
            layoutParams.height = -1;
        }
        this.f1471x.setAllowCollapse(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.J);
        ActionMenuPresenter actionMenuPresenter = this.f1407b;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.x();
            this.f1407b.y();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        ViewParent parent;
        super.onFinishInflate();
        this.f1468u.addView(this.f1464q, 0);
        addView(this.f1468u);
        View view = this.f1472y;
        if (view == null || (this.f1457j & 16) == 0 || (parent = view.getParent()) == this) {
            return;
        }
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f1472y);
        }
        addView(this.f1472y);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (((i5 - i3) - getPaddingTop()) - getPaddingBottom() <= 0) {
            return;
        }
        boolean zIsLayoutRtl = isLayoutRtl();
        if (zIsLayoutRtl) {
            getPaddingLeft();
        } else {
            getPaddingRight();
        }
        if (zIsLayoutRtl) {
            getPaddingRight();
        } else {
            getPaddingLeft();
        }
        getPaddingTop();
        LinearLayout linearLayout = this.f1465r;
        if (linearLayout != null && linearLayout.getVisibility() != 8) {
            int i6 = this.f1457j & 8;
        }
        throw null;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        ActionMenuView actionMenuView;
        int childCount = getChildCount();
        if (this.D) {
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8 && ((childAt != (actionMenuView = this.f1406a) || actionMenuView.getChildCount() != 0) && childAt != this.f1468u)) {
                    i4++;
                }
            }
            int childCount2 = this.f1468u.getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                if (this.f1468u.getChildAt(i6).getVisibility() != 8) {
                    i4++;
                }
            }
            if (i4 == 0) {
                setMeasuredDimension(0, 0);
                this.E = true;
                return;
            }
        }
        this.E = false;
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i3) != Integer.MIN_VALUE) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.f1411f;
        if (size2 < 0) {
            size2 = View.MeasureSpec.getSize(i3);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i7 = size2 - paddingTop;
        View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
        int i8 = ((size - paddingLeft) - paddingRight) / 2;
        LinearLayout linearLayout = this.f1465r;
        if (linearLayout != null && linearLayout.getVisibility() != 8) {
            int i9 = this.f1457j & 8;
        }
        throw null;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.f1474a;
        if (savedState.f1475b) {
            m();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1475b = i();
        return savedState;
    }

    public boolean p() {
        return this.C;
    }

    public final void q() {
        if (this.f1465r == null) {
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(17367065, (ViewGroup) this, false);
            this.f1465r = linearLayout;
            this.f1466s = (TextView) linearLayout.findViewById(16908917);
            this.f1467t = (TextView) this.f1465r.findViewById(16908918);
            int i2 = this.f1473z;
            if (i2 != 0) {
                this.f1466s.setTextAppearance(this.mContext, i2);
            }
            CharSequence charSequence = this.f1458k;
            if (charSequence != null) {
                this.f1466s.setText(charSequence);
            }
            int i3 = this.A;
            if (i3 != 0) {
                this.f1467t.setTextAppearance(this.mContext, i3);
            }
            CharSequence charSequence2 = this.f1459l;
            if (charSequence2 != null) {
                this.f1467t.setText(charSequence2);
                this.f1467t.setVisibility(0);
            }
        }
        t.a.a(this);
        this.f1468u.addView(this.f1465r);
        if (this.K != null || (TextUtils.isEmpty(this.f1458k) && TextUtils.isEmpty(this.f1459l))) {
            this.f1465r.setVisibility(8);
        } else {
            this.f1465r.setVisibility(0);
        }
    }

    public boolean r() {
        return this.E;
    }

    public boolean s() {
        return this.f1409d;
    }

    public void setCallback(ActionBar.OnNavigationListener onNavigationListener) {
        this.I = onNavigationListener;
    }

    public void setCollapsable(boolean z2) {
        this.D = z2;
    }

    public void setContextView(ActionBarContextView actionBarContextView) {
        this.G = actionBarContextView;
    }

    public void setCustomNavigationView(View view) {
        boolean z2 = (this.f1457j & 16) != 0;
        if (z2) {
            t.a.a(this);
        }
        View view2 = this.f1472y;
        if (view2 != null && z2) {
            removeView(view2);
        }
        this.f1472y = view;
        if (view == null || !z2) {
            return;
        }
        addView(view);
    }

    public void setDisplayOptions(int i2) {
        int i3 = this.f1457j;
        int i4 = i3 != -1 ? i2 ^ i3 : -1;
        this.f1457j = i2;
        if ((i4 & 63) == 0) {
            invalidate();
            v(this.f1468u.isEnabled());
            return;
        }
        t.a.a(this);
        if ((i4 & 4) != 0) {
            throw null;
        }
        if ((i4 & 1) != 0) {
            if (this.f1461n == null) {
                throw null;
            }
            int i5 = i2 & 1;
            throw null;
        }
        if ((i4 & 8) != 0) {
            if ((i2 & 8) != 0) {
                q();
            } else {
                this.f1468u.removeView(this.f1465r);
            }
        }
        if ((i2 & 2) != 0) {
        }
        if ((this.f1457j & 4) == 0) {
            throw null;
        }
        throw null;
    }

    public void setDropdownAdapter(SpinnerAdapter spinnerAdapter) {
        this.H = spinnerAdapter;
        Spinner spinner = this.f1469v;
        if (spinner != null) {
            spinner.setAdapter(spinnerAdapter);
        }
    }

    public void setDropdownSelectedPosition(int i2) {
        this.f1469v.setSelection(i2);
    }

    public void setEmbeddedTabView(g gVar) {
        g gVar2 = this.f1471x;
        if (gVar2 != null) {
            removeView(gVar2);
        }
        this.f1471x = gVar;
        boolean z2 = gVar != null;
        this.C = z2;
        if (z2 && this.f1456i == 2) {
            addView(gVar);
            ViewGroup.LayoutParams layoutParams = this.f1471x.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            gVar.setAllowCollapse(true);
        }
    }

    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f1462o = charSequence;
        v(this.f1468u.isEnabled());
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        throw null;
    }

    public void setHomeButtonEnabled(boolean z2) {
        u(z2, true);
    }

    public void setIcon(Drawable drawable) {
        this.f1460m = drawable;
        if (drawable != null && ((this.f1457j & 1) == 0 || this.f1461n == null)) {
            throw null;
        }
        if (this.K == null) {
            return;
        }
        drawable.getConstantState().newDrawable(getResources());
        throw null;
    }

    public void setLogo(Drawable drawable) {
        this.f1461n = drawable;
        if (drawable != null && (this.f1457j & 1) != 0) {
            throw null;
        }
    }

    public void setNavigationMode(int i2) {
        g gVar;
        g gVar2;
        int i3 = this.f1456i;
        if (i2 != i3) {
            t.a.a(this);
            if (i3 == 1) {
                LinearLayout linearLayout = this.f1470w;
                if (linearLayout != null) {
                    removeView(linearLayout);
                }
            } else if (i3 == 2 && (gVar2 = this.f1471x) != null && this.C) {
                removeView(gVar2);
            }
            if (i2 == 1) {
                if (this.f1469v == null) {
                    Spinner spinner = new Spinner(this.mContext, null, R.attr.actionDropDownStyle);
                    this.f1469v = spinner;
                    spinner.setId(16908913);
                    this.f1470w = new LinearLayout(this.mContext, null, R.attr.actionBarTabBarStyle);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                    layoutParams.gravity = 17;
                    this.f1470w.addView(this.f1469v, layoutParams);
                }
                SpinnerAdapter adapter = this.f1469v.getAdapter();
                SpinnerAdapter spinnerAdapter = this.H;
                if (adapter != spinnerAdapter) {
                    this.f1469v.setAdapter(spinnerAdapter);
                }
                this.f1469v.setOnItemSelectedListener(this.M);
                addView(this.f1470w);
            } else if (i2 == 2 && (gVar = this.f1471x) != null && this.C) {
                addView(gVar);
            }
            this.f1456i = i2;
            requestLayout();
        }
    }

    @Override // com.android.internal.widget.AbsActionBarView
    public void setSplitActionBar(boolean z2) {
        if (this.f1409d != z2) {
            ActionMenuView actionMenuView = this.f1406a;
            if (actionMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) actionMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1406a);
                }
                if (z2) {
                    ActionBarContainer actionBarContainer = this.f1408c;
                    if (actionBarContainer != null) {
                        actionBarContainer.addView(this.f1406a);
                    }
                    this.f1406a.getLayoutParams().width = -1;
                } else {
                    addView(this.f1406a);
                    this.f1406a.getLayoutParams().width = -2;
                }
                this.f1406a.requestLayout();
            }
            ActionBarContainer actionBarContainer2 = this.f1408c;
            if (actionBarContainer2 != null) {
                actionBarContainer2.setVisibility(z2 ? 0 : 8);
            }
            ActionMenuPresenter actionMenuPresenter = this.f1407b;
            if (actionMenuPresenter != null) {
                if (z2) {
                    actionMenuPresenter.B(false);
                    this.f1407b.E(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    this.f1407b.C(Integer.MAX_VALUE);
                } else {
                    actionMenuPresenter.B(getResources().getBoolean(17891337));
                }
            }
            super.setSplitActionBar(z2);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        t.a.a(this);
        this.f1459l = charSequence;
        TextView textView = this.f1467t;
        if (textView != null) {
            textView.setText(charSequence);
            this.f1467t.setVisibility(charSequence != null ? 0 : 8);
            this.f1465r.setVisibility(this.K == null && (this.f1457j & 8) != 0 && (!TextUtils.isEmpty(this.f1458k) || !TextUtils.isEmpty(this.f1459l)) ? 0 : 8);
        }
        v(this.f1468u.isEnabled());
    }

    public void setTitle(CharSequence charSequence) {
        this.B = true;
        setTitleImpl(charSequence);
    }

    public void setWindowCallback(Window.Callback callback) {
        this.L = callback;
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (this.B) {
            return;
        }
        setTitleImpl(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public boolean t() {
        Layout layout;
        TextView textView = this.f1466s;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (layout.getEllipsisCount(i2) > 0) {
                return true;
            }
        }
        return false;
    }

    public final void u(boolean z2, boolean z3) {
        if (z3) {
            this.F = z2;
        }
        if (this.K != null) {
            return;
        }
        this.f1468u.setEnabled(z2);
        this.f1468u.setFocusable(z2);
        v(z2);
    }

    public final void v(boolean z2) {
        if (z2) {
            this.f1468u.setImportantForAccessibility(0);
            this.f1468u.setContentDescription(o());
        } else {
            this.f1468u.setContentDescription(null);
            this.f1468u.setImportantForAccessibility(2);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams == null ? generateDefaultLayoutParams() : layoutParams;
    }

    public void setHomeAsUpIndicator(int i2) {
        throw null;
    }

    public void setHomeActionContentDescription(int i2) {
        this.f1463p = i2;
        this.f1462o = i2 != 0 ? getResources().getText(i2) : null;
        v(this.f1468u.isEnabled());
    }

    public void setLogo(int i2) {
        setLogo(i2 != 0 ? this.mContext.getResources().getDrawable(i2) : null);
    }

    public void setIcon(int i2) {
        setIcon(i2 != 0 ? this.mContext.getResources().getDrawable(i2) : null);
    }
}
