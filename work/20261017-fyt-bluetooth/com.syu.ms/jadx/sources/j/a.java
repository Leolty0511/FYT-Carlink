package j;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Property;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.SpinnerAdapter;
import com.android.internal.widget.ActionBarContainer;
import com.android.internal.widget.ActionBarContextView;
import com.android.internal.widget.ActionBarOverlayLayout;
import com.android.internal.widget.ActionBarView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class a extends ActionBar {
    public boolean A;
    public boolean B;
    public Animator D;
    public boolean E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f2884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f2885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Activity f2886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Dialog f2887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionBarOverlayLayout f2888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ActionBarContainer f2889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ActionBarView f2890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ActionBarContextView f2891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ActionBarContainer f2892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f2893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.android.internal.widget.g f2894k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public e f2896m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2898o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public d f2899p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ActionMode f2900q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ActionMode.Callback f2901r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2902s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2904u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2905v;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2909z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList<e> f2895l = new ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2897n = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ArrayList<ActionBar.OnMenuVisibilityListener> f2903t = new ArrayList<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Handler f2906w = new Handler();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2907x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2908y = true;
    public boolean C = true;
    public final Animator.AnimatorListener F = new C0054a();
    public final Animator.AnimatorListener G = new b();
    public final ValueAnimator.AnimatorUpdateListener H = new c();

    /* JADX INFO: renamed from: j.a$a, reason: collision with other inner class name */
    public class C0054a extends AnimatorListenerAdapter {
        public C0054a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f2908y && a.this.f2893j != null) {
                a.this.f2893j.setTranslationY(0.0f);
                a.this.f2889f.setTranslationY(0.0f);
            }
            if (a.this.f2892i != null && a.this.f2904u == 1) {
                a.this.f2892i.setVisibility(8);
            }
            a.this.f2889f.setVisibility(8);
            a.this.f2889f.setTransitioning(false);
            a.this.D = null;
            a.this.r();
            if (a.this.f2888e != null) {
                a.this.f2888e.requestFitSystemWindows();
            }
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.D = null;
            a.this.f2889f.requestLayout();
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((View) a.this.f2889f.getParent()).invalidate();
        }
    }

    public class d extends ActionMode implements com.android.internal.view.menu.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ActionMode.Callback f2913a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.android.internal.view.menu.c f2914b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference<View> f2915c;

        public d(ActionMode.Callback callback) {
            this.f2913a = callback;
            com.android.internal.view.menu.c cVarJ = new com.android.internal.view.menu.c(a.this.getThemedContext()).J(1);
            this.f2914b = cVarJ;
            cVarJ.H(this);
        }

        public boolean dispatchOnCreate() {
            this.f2914b.T();
            try {
                return this.f2913a.onCreateActionMode(this, this.f2914b);
            } finally {
                this.f2914b.S();
            }
        }

        @Override // android.view.ActionMode
        public void finish() {
            a aVar = a.this;
            if (aVar.f2899p != this) {
                return;
            }
            if (a.p(aVar.f2909z, a.this.A, false)) {
                this.f2913a.onDestroyActionMode(this);
            } else {
                a aVar2 = a.this;
                aVar2.f2900q = this;
                aVar2.f2901r = this.f2913a;
            }
            this.f2913a = null;
            a.this.o(false);
            a.this.f2891h.o();
            a.this.f2890g.sendAccessibilityEvent(32);
            a.this.f2899p = null;
        }

        @Override // android.view.ActionMode
        public View getCustomView() {
            WeakReference<View> weakReference = this.f2915c;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // android.view.ActionMode
        public Menu getMenu() {
            return this.f2914b;
        }

        @Override // android.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new MenuInflater(a.this.getThemedContext());
        }

        @Override // android.view.ActionMode
        public CharSequence getSubtitle() {
            return a.this.f2891h.getSubtitle();
        }

        @Override // android.view.ActionMode
        public CharSequence getTitle() {
            return a.this.f2891h.getTitle();
        }

        @Override // android.view.ActionMode
        public void invalidate() {
            this.f2914b.T();
            try {
                this.f2913a.onPrepareActionMode(this, this.f2914b);
            } finally {
                this.f2914b.S();
            }
        }

        @Override // android.view.ActionMode
        public boolean isTitleOptional() {
            return a.this.f2891h.s();
        }

        @Override // com.android.internal.view.menu.c.a
        public boolean onMenuItemSelected(com.android.internal.view.menu.c cVar, MenuItem menuItem) {
            ActionMode.Callback callback = this.f2913a;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // com.android.internal.view.menu.c.a
        public void onMenuModeChange(com.android.internal.view.menu.c cVar) {
            if (this.f2913a == null) {
                return;
            }
            invalidate();
            a.this.f2891h.n();
        }

        @Override // android.view.ActionMode
        public void setCustomView(View view) {
            a.this.f2891h.setCustomView(view);
            this.f2915c = new WeakReference<>(view);
        }

        @Override // android.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            a.this.f2891h.setSubtitle(charSequence);
        }

        @Override // android.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            a.this.f2891h.setTitle(charSequence);
        }

        @Override // android.view.ActionMode
        public void setTitleOptionalHint(boolean z2) {
            super.setTitleOptionalHint(z2);
            a.this.f2891h.setTitleOptional(z2);
        }

        @Override // android.view.ActionMode
        public void setSubtitle(int i2) {
            setSubtitle(a.this.f2884a.getResources().getString(i2));
        }

        @Override // android.view.ActionMode
        public void setTitle(int i2) {
            setTitle(a.this.f2884a.getResources().getString(i2));
        }
    }

    public class e extends ActionBar.Tab {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ActionBar.TabListener f2917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f2918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Drawable f2919c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public CharSequence f2920d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CharSequence f2921e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2922f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f2923g;

        public e() {
        }

        public ActionBar.TabListener a() {
            return this.f2917a;
        }

        public void b(int i2) {
            this.f2922f = i2;
        }

        @Override // android.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.f2921e;
        }

        @Override // android.app.ActionBar.Tab
        public View getCustomView() {
            return this.f2923g;
        }

        @Override // android.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.f2919c;
        }

        @Override // android.app.ActionBar.Tab
        public int getPosition() {
            return this.f2922f;
        }

        @Override // android.app.ActionBar.Tab
        public Object getTag() {
            return this.f2918b;
        }

        @Override // android.app.ActionBar.Tab
        public CharSequence getText() {
            return this.f2920d;
        }

        @Override // android.app.ActionBar.Tab
        public void select() {
            a.this.selectTab(this);
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i2) {
            return setContentDescription(a.this.f2884a.getResources().getText(i2));
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.f2923g = view;
            if (this.f2922f >= 0) {
                a.this.f2894k.v(this.f2922f);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.f2919c = drawable;
            if (this.f2922f >= 0) {
                a.this.f2894k.v(this.f2922f);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.f2917a = tabListener;
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.f2918b = obj;
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.f2920d = charSequence;
            if (this.f2922f >= 0) {
                a.this.f2894k.v(this.f2922f);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.f2921e = charSequence;
            if (this.f2922f >= 0) {
                a.this.f2894k.v(this.f2922f);
            }
            return this;
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i2) {
            return setCustomView(LayoutInflater.from(a.this.getThemedContext()).inflate(i2, (ViewGroup) null));
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i2) {
            return setIcon(a.this.f2884a.getResources().getDrawable(i2));
        }

        @Override // android.app.ActionBar.Tab
        public ActionBar.Tab setText(int i2) {
            return setText(a.this.f2884a.getResources().getText(i2));
        }
    }

    public a(Activity activity) {
        this.f2886c = activity;
        View decorView = activity.getWindow().getDecorView();
        boolean zHasFeature = this.f2886c.getWindow().hasFeature(9);
        B(decorView);
        if (zHasFeature) {
            return;
        }
        this.f2893j = decorView.findViewById(16908290);
    }

    public static boolean p(boolean z2, boolean z3, boolean z4) {
        if (z4) {
            return true;
        }
        return (z2 || z3) ? false : true;
    }

    public void A() {
        if (this.A) {
            return;
        }
        this.A = true;
        L(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B(View view) {
        ActionBarContextView actionBarContextView;
        this.f2884a = view.getContext();
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(16909091);
        this.f2888e = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBar(this);
        }
        this.f2890g = (ActionBarView) view.findViewById(16909093);
        this.f2891h = (ActionBarContextView) view.findViewById(16909094);
        this.f2889f = (ActionBarContainer) view.findViewById(16909092);
        this.f2892i = (ActionBarContainer) view.findViewById(16909095);
        ActionBarView actionBarView = this.f2890g;
        if (actionBarView == null || (actionBarContextView = this.f2891h) == null || this.f2889f == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        actionBarView.setContextView(actionBarContextView);
        this.f2904u = this.f2890g.s() ? 1 : 0;
        Object[] objArr = (this.f2890g.getDisplayOptions() & 4) != 0;
        if (objArr != false) {
            this.f2898o = true;
        }
        v.a aVarB = v.a.b(this.f2884a);
        setHomeButtonEnabled(aVarB.a() || objArr == true);
        F(aVarB.g());
    }

    public boolean C() {
        return !this.A;
    }

    public void D(Configuration configuration) {
        F(v.a.b(this.f2884a).g());
    }

    public void E(boolean z2) {
        if (this.f2898o) {
            return;
        }
        setDisplayHomeAsUpEnabled(z2);
    }

    public final void F(boolean z2) {
        this.f2905v = z2;
        if (z2) {
            this.f2889f.setTabContainer(null);
            this.f2890g.setEmbeddedTabView(this.f2894k);
        } else {
            this.f2890g.setEmbeddedTabView(null);
            this.f2889f.setTabContainer(this.f2894k);
        }
        boolean z3 = getNavigationMode() == 2;
        com.android.internal.widget.g gVar = this.f2894k;
        if (gVar != null) {
            if (z3) {
                gVar.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f2888e;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.requestFitSystemWindows();
                }
            } else {
                gVar.setVisibility(8);
            }
        }
        this.f2890g.setCollapsable(!this.f2905v && z3);
    }

    public void G(boolean z2) {
        Animator animator;
        this.E = z2;
        if (z2 || (animator = this.D) == null) {
            return;
        }
        animator.end();
    }

    public void H(int i2) {
        this.f2907x = i2;
    }

    public final void I() {
        if (this.B) {
            return;
        }
        this.B = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2888e;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        L(false);
    }

    public void J() {
        if (this.A) {
            this.A = false;
            L(true);
        }
    }

    public ActionMode K(ActionMode.Callback callback) {
        d dVar = this.f2899p;
        if (dVar != null) {
            dVar.finish();
        }
        this.f2891h.t();
        d dVar2 = new d(callback);
        if (!dVar2.dispatchOnCreate()) {
            return null;
        }
        dVar2.invalidate();
        this.f2891h.q(dVar2);
        o(true);
        ActionBarContainer actionBarContainer = this.f2892i;
        if (actionBarContainer != null && this.f2904u == 1 && actionBarContainer.getVisibility() != 0) {
            this.f2892i.setVisibility(0);
            ActionBarOverlayLayout actionBarOverlayLayout = this.f2888e;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.requestFitSystemWindows();
            }
        }
        this.f2891h.sendAccessibilityEvent(32);
        this.f2899p = dVar2;
        return dVar2;
    }

    public final void L(boolean z2) {
        if (p(this.f2909z, this.A, this.B)) {
            if (this.C) {
                return;
            }
            this.C = true;
            v(z2);
            return;
        }
        if (this.C) {
            this.C = false;
            u(z2);
        }
    }

    @Override // android.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f2903t.add(onMenuVisibilityListener);
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.f2895l.isEmpty());
    }

    @Override // android.app.ActionBar
    public View getCustomView() {
        return this.f2890g.getCustomNavigationView();
    }

    @Override // android.app.ActionBar
    public int getDisplayOptions() {
        return this.f2890g.getDisplayOptions();
    }

    @Override // android.app.ActionBar
    public int getHeight() {
        return this.f2889f.getHeight();
    }

    @Override // android.app.ActionBar
    public int getNavigationItemCount() {
        int navigationMode = this.f2890g.getNavigationMode();
        if (navigationMode != 1) {
            if (navigationMode != 2) {
                return 0;
            }
            return this.f2895l.size();
        }
        SpinnerAdapter dropdownAdapter = this.f2890g.getDropdownAdapter();
        if (dropdownAdapter != null) {
            return dropdownAdapter.getCount();
        }
        return 0;
    }

    @Override // android.app.ActionBar
    public int getNavigationMode() {
        return this.f2890g.getNavigationMode();
    }

    @Override // android.app.ActionBar
    public int getSelectedNavigationIndex() {
        e eVar;
        int navigationMode = this.f2890g.getNavigationMode();
        if (navigationMode == 1) {
            return this.f2890g.getDropdownSelectedPosition();
        }
        if (navigationMode == 2 && (eVar = this.f2896m) != null) {
            return eVar.getPosition();
        }
        return -1;
    }

    @Override // android.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.f2896m;
    }

    @Override // android.app.ActionBar
    public CharSequence getSubtitle() {
        return this.f2890g.getSubtitle();
    }

    @Override // android.app.ActionBar
    public ActionBar.Tab getTabAt(int i2) {
        return this.f2895l.get(i2);
    }

    @Override // android.app.ActionBar
    public int getTabCount() {
        return this.f2895l.size();
    }

    @Override // android.app.ActionBar
    public Context getThemedContext() {
        if (this.f2885b == null) {
            TypedValue typedValue = new TypedValue();
            this.f2884a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 == 0 || this.f2884a.getThemeResId() == i2) {
                this.f2885b = this.f2884a;
            } else {
                this.f2885b = new ContextThemeWrapper(this.f2884a, i2);
            }
        }
        return this.f2885b;
    }

    @Override // android.app.ActionBar
    public CharSequence getTitle() {
        return this.f2890g.getTitle();
    }

    @Override // android.app.ActionBar
    public void hide() {
        if (this.f2909z) {
            return;
        }
        this.f2909z = true;
        L(false);
    }

    @Override // android.app.ActionBar
    public boolean isShowing() {
        return this.C;
    }

    @Override // android.app.ActionBar
    public boolean isTitleTruncated() {
        ActionBarView actionBarView = this.f2890g;
        return actionBarView != null && actionBarView.t();
    }

    @Override // android.app.ActionBar
    public ActionBar.Tab newTab() {
        return new e();
    }

    public void o(boolean z2) {
        if (z2) {
            I();
        } else {
            z();
        }
        this.f2890g.h(z2 ? 8 : 0);
        this.f2891h.h(z2 ? 0 : 8);
        if (this.f2894k == null || this.f2890g.p() || !this.f2890g.r()) {
            return;
        }
        this.f2894k.m(z2 ? 8 : 0);
    }

    public final void q() {
        if (this.f2896m != null) {
            selectTab(null);
        }
        this.f2895l.clear();
        com.android.internal.widget.g gVar = this.f2894k;
        if (gVar != null) {
            gVar.t();
        }
        this.f2897n = -1;
    }

    public void r() {
        ActionMode.Callback callback = this.f2901r;
        if (callback != null) {
            callback.onDestroyActionMode(this.f2900q);
            this.f2900q = null;
            this.f2901r = null;
        }
    }

    @Override // android.app.ActionBar
    public void removeAllTabs() {
        q();
    }

    @Override // android.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f2903t.remove(onMenuVisibilityListener);
    }

    @Override // android.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // android.app.ActionBar
    public void removeTabAt(int i2) {
        if (this.f2894k == null) {
            return;
        }
        e eVar = this.f2896m;
        int position = eVar != null ? eVar.getPosition() : this.f2897n;
        this.f2894k.u(i2);
        e eVarRemove = this.f2895l.remove(i2);
        if (eVarRemove != null) {
            eVarRemove.b(-1);
        }
        int size = this.f2895l.size();
        for (int i3 = i2; i3 < size; i3++) {
            this.f2895l.get(i3).b(i3);
        }
        if (position == i2) {
            selectTab(this.f2895l.isEmpty() ? null : this.f2895l.get(Math.max(0, i2 - 1)));
        }
    }

    public final void s(ActionBar.Tab tab, int i2) {
        e eVar = (e) tab;
        if (eVar.a() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        eVar.b(i2);
        this.f2895l.add(i2, eVar);
        int size = this.f2895l.size();
        while (true) {
            i2++;
            if (i2 >= size) {
                return;
            } else {
                this.f2895l.get(i2).b(i2);
            }
        }
    }

    @Override // android.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        if (getNavigationMode() != 2) {
            this.f2897n = tab != null ? tab.getPosition() : -1;
            return;
        }
        FragmentTransaction fragmentTransactionDisallowAddToBackStack = this.f2886c.getFragmentManager().beginTransaction().disallowAddToBackStack();
        e eVar = this.f2896m;
        if (eVar != tab) {
            this.f2894k.setTabSelected(tab != null ? tab.getPosition() : -1);
            e eVar2 = this.f2896m;
            if (eVar2 != null) {
                eVar2.a().onTabUnselected(this.f2896m, fragmentTransactionDisallowAddToBackStack);
            }
            e eVar3 = (e) tab;
            this.f2896m = eVar3;
            if (eVar3 != null) {
                eVar3.a().onTabSelected(this.f2896m, fragmentTransactionDisallowAddToBackStack);
            }
        } else if (eVar != null) {
            eVar.a().onTabReselected(this.f2896m, fragmentTransactionDisallowAddToBackStack);
            this.f2894k.l(tab.getPosition());
        }
        if (fragmentTransactionDisallowAddToBackStack.isEmpty()) {
            return;
        }
        fragmentTransactionDisallowAddToBackStack.commit();
    }

    @Override // android.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.f2889f.setPrimaryBackground(drawable);
    }

    @Override // android.app.ActionBar
    public void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i2, (ViewGroup) this.f2890g, false));
    }

    @Override // android.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z2) {
        setDisplayOptions(z2 ? 4 : 0, 4);
    }

    @Override // android.app.ActionBar
    public void setDisplayOptions(int i2) {
        if ((i2 & 4) != 0) {
            this.f2898o = true;
        }
        this.f2890g.setDisplayOptions(i2);
    }

    @Override // android.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z2) {
        setDisplayOptions(z2 ? 16 : 0, 16);
    }

    @Override // android.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z2) {
        setDisplayOptions(z2 ? 2 : 0, 2);
    }

    @Override // android.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z2) {
        setDisplayOptions(z2 ? 8 : 0, 8);
    }

    @Override // android.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z2) {
        setDisplayOptions(z2 ? 1 : 0, 1);
    }

    @Override // android.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f2890g.setHomeActionContentDescription(charSequence);
    }

    @Override // android.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f2890g.setHomeAsUpIndicator(drawable);
    }

    @Override // android.app.ActionBar
    public void setHomeButtonEnabled(boolean z2) {
        this.f2890g.setHomeButtonEnabled(z2);
    }

    @Override // android.app.ActionBar
    public void setIcon(int i2) {
        this.f2890g.setIcon(i2);
    }

    @Override // android.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.f2890g.setDropdownAdapter(spinnerAdapter);
        this.f2890g.setCallback(onNavigationListener);
    }

    @Override // android.app.ActionBar
    public void setLogo(int i2) {
        this.f2890g.setLogo(i2);
    }

    @Override // android.app.ActionBar
    public void setNavigationMode(int i2) {
        ActionBarOverlayLayout actionBarOverlayLayout;
        int navigationMode = this.f2890g.getNavigationMode();
        if (navigationMode == 2) {
            this.f2897n = getSelectedNavigationIndex();
            selectTab(null);
            this.f2894k.setVisibility(8);
        }
        if (navigationMode != i2 && !this.f2905v && (actionBarOverlayLayout = this.f2888e) != null) {
            actionBarOverlayLayout.requestFitSystemWindows();
        }
        this.f2890g.setNavigationMode(i2);
        boolean z2 = false;
        if (i2 == 2) {
            x();
            this.f2894k.setVisibility(0);
            int i3 = this.f2897n;
            if (i3 != -1) {
                setSelectedNavigationItem(i3);
                this.f2897n = -1;
            }
        }
        ActionBarView actionBarView = this.f2890g;
        if (i2 == 2 && !this.f2905v) {
            z2 = true;
        }
        actionBarView.setCollapsable(z2);
    }

    @Override // android.app.ActionBar
    public void setSelectedNavigationItem(int i2) {
        int navigationMode = this.f2890g.getNavigationMode();
        if (navigationMode == 1) {
            this.f2890g.setDropdownSelectedPosition(i2);
        } else {
            if (navigationMode != 2) {
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
            }
            selectTab(this.f2895l.get(i2));
        }
    }

    @Override // android.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
        ActionBarContainer actionBarContainer = this.f2892i;
        if (actionBarContainer != null) {
            actionBarContainer.setSplitBackground(drawable);
        }
    }

    @Override // android.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.f2889f.setStackedBackground(drawable);
    }

    @Override // android.app.ActionBar
    public void setSubtitle(int i2) {
        setSubtitle(this.f2884a.getString(i2));
    }

    @Override // android.app.ActionBar
    public void setTitle(int i2) {
        setTitle(this.f2884a.getString(i2));
    }

    @Override // android.app.ActionBar
    public void show() {
        if (this.f2909z) {
            this.f2909z = false;
            L(false);
        }
    }

    public void t(boolean z2) {
        if (z2 == this.f2902s) {
            return;
        }
        this.f2902s = z2;
        int size = this.f2903t.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2903t.get(i2).onMenuVisibilityChanged(z2);
        }
    }

    public void u(boolean z2) {
        View view;
        Animator animator = this.D;
        if (animator != null) {
            animator.end();
        }
        if (this.f2907x != 0 || (!this.E && !z2)) {
            this.F.onAnimationEnd(null);
            return;
        }
        this.f2889f.setAlpha(1.0f);
        this.f2889f.setTransitioning(true);
        AnimatorSet animatorSet = new AnimatorSet();
        float f2 = -this.f2889f.getHeight();
        if (z2) {
            int[] iArr = {0, 0};
            this.f2889f.getLocationInWindow(iArr);
            f2 -= iArr[1];
        }
        ActionBarContainer actionBarContainer = this.f2889f;
        Property<View, Float> property = View.TRANSLATION_Y;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionBarContainer, (Property<ActionBarContainer, Float>) property, f2);
        objectAnimatorOfFloat.addUpdateListener(this.H);
        AnimatorSet.Builder builderPlay = animatorSet.play(objectAnimatorOfFloat);
        if (this.f2908y && (view = this.f2893j) != null) {
            builderPlay.with(ObjectAnimator.ofFloat(view, property, 0.0f, f2));
        }
        ActionBarContainer actionBarContainer2 = this.f2892i;
        if (actionBarContainer2 != null && actionBarContainer2.getVisibility() == 0) {
            this.f2892i.setAlpha(1.0f);
            ActionBarContainer actionBarContainer3 = this.f2892i;
            builderPlay.with(ObjectAnimator.ofFloat(actionBarContainer3, (Property<ActionBarContainer, Float>) property, actionBarContainer3.getHeight()));
        }
        animatorSet.setInterpolator(AnimationUtils.loadInterpolator(this.f2884a, R.interpolator.accelerate_cubic));
        animatorSet.setDuration(250L);
        animatorSet.addListener(this.F);
        this.D = animatorSet;
        animatorSet.start();
    }

    public void v(boolean z2) {
        View view;
        View view2;
        Animator animator = this.D;
        if (animator != null) {
            animator.end();
        }
        this.f2889f.setVisibility(0);
        if (this.f2907x == 0 && (this.E || z2)) {
            this.f2889f.setTranslationY(0.0f);
            float f2 = -this.f2889f.getHeight();
            if (z2) {
                int[] iArr = {0, 0};
                this.f2889f.getLocationInWindow(iArr);
                f2 -= iArr[1];
            }
            this.f2889f.setTranslationY(f2);
            AnimatorSet animatorSet = new AnimatorSet();
            ActionBarContainer actionBarContainer = this.f2889f;
            Property<View, Float> property = View.TRANSLATION_Y;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionBarContainer, (Property<ActionBarContainer, Float>) property, 0.0f);
            objectAnimatorOfFloat.addUpdateListener(this.H);
            AnimatorSet.Builder builderPlay = animatorSet.play(objectAnimatorOfFloat);
            if (this.f2908y && (view2 = this.f2893j) != null) {
                builderPlay.with(ObjectAnimator.ofFloat(view2, property, f2, 0.0f));
            }
            ActionBarContainer actionBarContainer2 = this.f2892i;
            if (actionBarContainer2 != null && this.f2904u == 1) {
                actionBarContainer2.setTranslationY(actionBarContainer2.getHeight());
                this.f2892i.setVisibility(0);
                builderPlay.with(ObjectAnimator.ofFloat(this.f2892i, (Property<ActionBarContainer, Float>) property, 0.0f));
            }
            animatorSet.setInterpolator(AnimationUtils.loadInterpolator(this.f2884a, R.interpolator.decelerate_cubic));
            animatorSet.setDuration(250L);
            animatorSet.addListener(this.G);
            this.D = animatorSet;
            animatorSet.start();
        } else {
            this.f2889f.setAlpha(1.0f);
            this.f2889f.setTranslationY(0.0f);
            if (this.f2908y && (view = this.f2893j) != null) {
                view.setTranslationY(0.0f);
            }
            ActionBarContainer actionBarContainer3 = this.f2892i;
            if (actionBarContainer3 != null && this.f2904u == 1) {
                actionBarContainer3.setAlpha(1.0f);
                this.f2892i.setTranslationY(0.0f);
                this.f2892i.setVisibility(0);
            }
            this.G.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2888e;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.requestFitSystemWindows();
        }
    }

    public void w(boolean z2) {
        this.f2908y = z2;
    }

    public final void x() {
        if (this.f2894k != null) {
            return;
        }
        com.android.internal.widget.g gVar = new com.android.internal.widget.g(this.f2884a);
        if (this.f2905v) {
            gVar.setVisibility(0);
            this.f2890g.setEmbeddedTabView(gVar);
        } else {
            if (getNavigationMode() == 2) {
                gVar.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f2888e;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.requestFitSystemWindows();
                }
            } else {
                gVar.setVisibility(8);
            }
            this.f2889f.setTabContainer(gVar);
        }
        this.f2894k = gVar;
    }

    public boolean y() {
        return !this.f2905v && getNavigationMode() == 2;
    }

    public final void z() {
        if (this.B) {
            this.B = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f2888e;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            L(false);
        }
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2) {
        addTab(tab, i2, this.f2895l.isEmpty());
    }

    @Override // android.app.ActionBar
    public void setCustomView(View view) {
        this.f2890g.setCustomNavigationView(view);
    }

    @Override // android.app.ActionBar
    public void setHomeActionContentDescription(int i2) {
        this.f2890g.setHomeActionContentDescription(i2);
    }

    @Override // android.app.ActionBar
    public void setHomeAsUpIndicator(int i2) {
        this.f2890g.setHomeAsUpIndicator(i2);
    }

    @Override // android.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.f2890g.setIcon(drawable);
    }

    @Override // android.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.f2890g.setLogo(drawable);
    }

    @Override // android.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.f2890g.setSubtitle(charSequence);
    }

    @Override // android.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.f2890g.setTitle(charSequence);
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z2) {
        x();
        this.f2894k.k(tab, z2);
        s(tab, this.f2895l.size());
        if (z2) {
            selectTab(tab);
        }
    }

    @Override // android.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.f2890g.setCustomNavigationView(view);
    }

    @Override // android.app.ActionBar
    public void setDisplayOptions(int i2, int i3) {
        int displayOptions = this.f2890g.getDisplayOptions();
        if ((i3 & 4) != 0) {
            this.f2898o = true;
        }
        this.f2890g.setDisplayOptions((i2 & i3) | ((~i3) & displayOptions));
    }

    @Override // android.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i2, boolean z2) {
        x();
        this.f2894k.j(tab, i2, z2);
        s(tab, i2);
        if (z2) {
            selectTab(tab);
        }
    }

    public a(Dialog dialog) {
        this.f2887d = dialog;
        B(dialog.getWindow().getDecorView());
    }
}
