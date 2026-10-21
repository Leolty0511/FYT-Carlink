package com.android.internal.widget;

import android.R;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.app.ActionBar;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class g extends HorizontalScrollView implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final TimeInterpolator f1517l = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f1518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f1519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f1520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Spinner f1521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1524g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Animator f1527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final e f1528k;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f1529a;

        public a(View view) {
            this.f1529a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.smoothScrollTo(this.f1529a.getLeft() - ((g.this.getWidth() - this.f1529a.getWidth()) / 2), 0);
            g.this.f1518a = null;
        }
    }

    public class b extends BaseAdapter {
        public b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return g.this.f1520c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return ((d) g.this.f1520c.getChildAt(i2)).i();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                return g.this.p((ActionBar.Tab) getItem(i2), true);
            }
            ((d) view).h((ActionBar.Tab) getItem(i2));
            return view;
        }

        public /* synthetic */ b(g gVar, a aVar) {
            this();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).i().select();
            int childCount = g.this.f1520c.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = g.this.f1520c.getChildAt(i2);
                childAt.setSelected(childAt == view);
            }
        }

        public /* synthetic */ c(g gVar, a aVar) {
            this();
        }
    }

    public class d extends LinearLayout implements View.OnLongClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ActionBar.Tab f1533a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f1534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f1535c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f1536d;

        public d(Context context, ActionBar.Tab tab, boolean z2) {
            super(context, null, R.attr.actionBarTabStyle);
            this.f1533a = tab;
            if (z2) {
                setGravity(8388627);
            }
            update();
        }

        public void h(ActionBar.Tab tab) {
            this.f1533a = tab;
            update();
        }

        public ActionBar.Tab i() {
            return this.f1533a;
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i2 = context.getResources().getDisplayMetrics().widthPixels;
            Toast toastMakeText = Toast.makeText(context, this.f1533a.getContentDescription(), 0);
            toastMakeText.setGravity(49, (iArr[0] + (width / 2)) - (i2 / 2), height);
            toastMakeText.show();
            return true;
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (g.this.f1523f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i4 = g.this.f1523f;
                if (measuredWidth > i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z2) {
            boolean z3 = isSelected() != z2;
            super.setSelected(z2);
            if (z3 && z2) {
                sendAccessibilityEvent(4);
            }
        }

        public void update() {
            ActionBar.Tab tab = this.f1533a;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.f1536d = customView;
                TextView textView = this.f1534b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1535c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1535c.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1536d;
            if (view != null) {
                removeView(view);
                this.f1536d = null;
            }
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.f1535c == null) {
                    ImageView imageView2 = new ImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    imageView2.setLayoutParams(layoutParams);
                    addView(imageView2, 0);
                    this.f1535c = imageView2;
                }
                this.f1535c.setImageDrawable(icon);
                this.f1535c.setVisibility(0);
            } else {
                ImageView imageView3 = this.f1535c;
                if (imageView3 != null) {
                    imageView3.setVisibility(8);
                    this.f1535c.setImageDrawable(null);
                }
            }
            boolean z2 = !TextUtils.isEmpty(text);
            if (z2) {
                if (this.f1534b == null) {
                    TextView textView2 = new TextView(getContext(), null, R.attr.actionBarTabTextStyle);
                    textView2.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    textView2.setLayoutParams(layoutParams2);
                    addView(textView2);
                    this.f1534b = textView2;
                }
                this.f1534b.setText(text);
                this.f1534b.setVisibility(0);
            } else {
                TextView textView3 = this.f1534b;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                    this.f1534b.setText((CharSequence) null);
                }
            }
            ImageView imageView4 = this.f1535c;
            if (imageView4 != null) {
                imageView4.setContentDescription(tab.getContentDescription());
            }
            if (!z2 && !TextUtils.isEmpty(tab.getContentDescription())) {
                setOnLongClickListener(this);
            } else {
                setOnLongClickListener(null);
                setLongClickable(false);
            }
        }
    }

    public class e implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1538a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1539b;

        public e() {
        }

        public e a(int i2) {
            this.f1539b = i2;
            return this;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1538a = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1538a) {
                return;
            }
            g gVar = g.this;
            gVar.f1527j = null;
            gVar.setVisibility(this.f1539b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.setVisibility(0);
            g.this.f1527j = animator;
            this.f1538a = false;
        }
    }

    public g(Context context) {
        super(context);
        this.f1528k = new e();
        setHorizontalScrollBarEnabled(false);
        v.a aVarB = v.a.b(context);
        setContentHeight(aVarB.f());
        this.f1524g = aVarB.e();
        LinearLayout linearLayoutO = o();
        this.f1520c = linearLayoutO;
        addView(linearLayoutO, new ViewGroup.LayoutParams(-2, -1));
    }

    public void j(ActionBar.Tab tab, int i2, boolean z2) {
        d dVarP = p(tab, false);
        this.f1520c.addView(dVarP, i2, new LinearLayout.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1521d;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z2) {
            dVarP.setSelected(true);
        }
        if (this.f1522e) {
            requestLayout();
        }
    }

    public void k(ActionBar.Tab tab, boolean z2) {
        d dVarP = p(tab, false);
        this.f1520c.addView(dVarP, new LinearLayout.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1521d;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z2) {
            dVarP.setSelected(true);
        }
        if (this.f1522e) {
            requestLayout();
        }
    }

    public void l(int i2) {
        View childAt = this.f1520c.getChildAt(i2);
        Runnable runnable = this.f1518a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f1518a = aVar;
        post(aVar);
    }

    public void m(int i2) {
        Animator animator = this.f1527j;
        if (animator != null) {
            animator.cancel();
        }
        if (i2 != 0) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f);
            objectAnimatorOfFloat.setDuration(200L);
            objectAnimatorOfFloat.setInterpolator(f1517l);
            objectAnimatorOfFloat.addListener(this.f1528k.a(i2));
            objectAnimatorOfFloat.start();
            return;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "alpha", 1.0f);
        objectAnimatorOfFloat2.setDuration(200L);
        objectAnimatorOfFloat2.setInterpolator(f1517l);
        objectAnimatorOfFloat2.addListener(this.f1528k.a(i2));
        objectAnimatorOfFloat2.start();
    }

    public final Spinner n() {
        Spinner spinner = new Spinner(getContext(), null, R.attr.actionDropDownStyle);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        spinner.setOnItemClickListenerInt(this);
        return spinner;
    }

    public final LinearLayout o() {
        LinearLayout linearLayout = new LinearLayout(getContext(), null, R.attr.actionBarTabBarStyle);
        linearLayout.setMeasureWithLargestChildEnabled(true);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        return linearLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1518a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        v.a aVarB = v.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f1524g = aVarB.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1518a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ((d) view).i().select();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f1520c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1523f = -1;
        } else {
            if (childCount > 2) {
                this.f1523f = (int) (View.MeasureSpec.getSize(i2) * 0.4f);
            } else {
                this.f1523f = View.MeasureSpec.getSize(i2) / 2;
            }
            this.f1523f = Math.min(this.f1523f, this.f1524g);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1525h, 1073741824);
        if (!z2 && this.f1522e) {
            this.f1520c.measure(0, iMakeMeasureSpec);
            if (this.f1520c.getMeasuredWidth() > View.MeasureSpec.getSize(i2)) {
                r();
            } else {
                s();
            }
        } else {
            s();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z2 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1526i);
    }

    public final d p(ActionBar.Tab tab, boolean z2) {
        d dVar = new d(getContext(), tab, z2);
        a aVar = null;
        if (z2) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1525h));
        } else {
            dVar.setFocusable(true);
            if (this.f1519b == null) {
                this.f1519b = new c(this, aVar);
            }
            dVar.setOnClickListener(this.f1519b);
        }
        return dVar;
    }

    public final boolean q() {
        Spinner spinner = this.f1521d;
        return spinner != null && spinner.getParent() == this;
    }

    public final void r() {
        if (q()) {
            return;
        }
        if (this.f1521d == null) {
            this.f1521d = n();
        }
        removeView(this.f1520c);
        addView(this.f1521d, new ViewGroup.LayoutParams(-2, -1));
        a aVar = null;
        if (this.f1521d.getAdapter() == null) {
            this.f1521d.setAdapter((SpinnerAdapter) new b(this, aVar));
        }
        Runnable runnable = this.f1518a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1518a = null;
        }
        this.f1521d.setSelection(this.f1526i);
    }

    public final boolean s() {
        if (!q()) {
            return false;
        }
        removeView(this.f1521d);
        addView(this.f1520c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1521d.getSelectedItemPosition());
        return false;
    }

    public void setAllowCollapse(boolean z2) {
        this.f1522e = z2;
    }

    public void setContentHeight(int i2) {
        this.f1525h = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.f1526i = i2;
        int childCount = this.f1520c.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.f1520c.getChildAt(i3);
            boolean z2 = i3 == i2;
            childAt.setSelected(z2);
            if (z2) {
                l(i2);
            }
            i3++;
        }
        Spinner spinner = this.f1521d;
        if (spinner == null || i2 < 0) {
            return;
        }
        spinner.setSelection(i2);
    }

    public void t() {
        this.f1520c.removeAllViews();
        Spinner spinner = this.f1521d;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1522e) {
            requestLayout();
        }
    }

    public void u(int i2) {
        this.f1520c.removeViewAt(i2);
        Spinner spinner = this.f1521d;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1522e) {
            requestLayout();
        }
    }

    public void v(int i2) {
        ((d) this.f1520c.getChildAt(i2)).update();
        Spinner spinner = this.f1521d;
        if (spinner != null) {
            ((b) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1522e) {
            requestLayout();
        }
    }
}
