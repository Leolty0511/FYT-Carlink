package com.android.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public final class d implements MenuItem {
    public static String A;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static String f1358w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static String f1359x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static String f1360y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static String f1361z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f1366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f1367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Intent f1368g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f1369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public char f1370i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f1371j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f1373l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public h f1374m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f1375n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f1376o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1378q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f1379r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ActionProvider f1380s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public MenuItem.OnActionExpandListener f1381t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ContextMenu.ContextMenuInfo f1383v;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1372k = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1377p = 16;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1382u = false;

    public class a implements ActionProvider.VisibilityListener {
        public a() {
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z2) {
            d.this.f1373l.C(d.this);
        }
    }

    public d(c cVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.f1378q = 0;
        String string = cVar.r().getResources().getConfiguration().locale.toString();
        if (f1359x == null || !string.equals(f1358w)) {
            f1358w = string;
            f1359x = cVar.r().getResources().getString(17040326);
            f1360y = cVar.r().getResources().getString(17040328);
            f1361z = cVar.r().getResources().getString(17040329);
            A = cVar.r().getResources().getString(17040327);
        }
        this.f1373l = cVar;
        this.f1362a = i3;
        this.f1363b = i2;
        this.f1364c = i4;
        this.f1365d = i5;
        this.f1366e = charSequence;
        this.f1378q = i6;
    }

    public void b() {
        this.f1373l.B(this);
    }

    public int c() {
        return this.f1365d;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f1378q & 8) == 0) {
            return false;
        }
        if (this.f1379r == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f1381t;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1373l.e(this);
        }
        return false;
    }

    public char d() {
        return this.f1373l.z() ? this.f1370i : this.f1369h;
    }

    public String e() {
        char cD = d();
        if (cD == 0) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        StringBuilder sb = new StringBuilder(f1359x);
        if (cD == '\b') {
            sb.append(f1361z);
        } else if (cD == '\n') {
            sb.append(f1360y);
        } else if (cD != ' ') {
            sb.append(cD);
        } else {
            sb.append(A);
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        if (!g()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f1381t;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1373l.i(this);
        }
        return false;
    }

    public CharSequence f(g.a aVar) {
        return (aVar == null || !aVar.e()) ? getTitle() : getTitleCondensed();
    }

    public boolean g() {
        ActionProvider actionProvider;
        if ((this.f1378q & 8) == 0) {
            return false;
        }
        if (this.f1379r == null && (actionProvider = this.f1380s) != null) {
            this.f1379r = actionProvider.onCreateActionView(this);
        }
        return this.f1379r != null;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        return this.f1380s;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View view = this.f1379r;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.f1380s;
        if (actionProvider == null) {
            return null;
        }
        View viewOnCreateActionView = actionProvider.onCreateActionView(this);
        this.f1379r = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1370i;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1363b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f1371j;
        if (drawable != null) {
            return drawable;
        }
        if (this.f1372k == 0) {
            return null;
        }
        Drawable drawable2 = this.f1373l.w().getDrawable(this.f1372k);
        this.f1372k = 0;
        this.f1371j = drawable2;
        return drawable2;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1368g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f1362a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1383v;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1369h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1364c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f1374m;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f1366e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1367f;
        return charSequence != null ? charSequence : this.f1366e;
    }

    public boolean h() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1376o;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        c cVar = this.f1373l;
        if (cVar.f(cVar.x(), this)) {
            return true;
        }
        Runnable runnable = this.f1375n;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1368g != null) {
            try {
                this.f1373l.r().startActivity(this.f1368g);
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
            }
        }
        ActionProvider actionProvider = this.f1380s;
        return actionProvider != null && actionProvider.onPerformDefaultAction();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1374m != null;
    }

    public boolean i() {
        return (this.f1377p & 32) == 32;
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f1382u;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f1377p & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f1377p & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f1377p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        ActionProvider actionProvider = this.f1380s;
        if (actionProvider == null || !actionProvider.overridesItemVisibility()) {
            return (this.f1377p & 8) == 0;
        }
        return (this.f1377p & 8) == 0 && this.f1380s.isVisible();
    }

    public boolean j() {
        return (this.f1377p & 4) != 0;
    }

    public boolean k() {
        return (this.f1378q & 1) == 1;
    }

    public boolean l() {
        return (this.f1378q & 2) == 2;
    }

    public void m(boolean z2) {
        int i2 = this.f1377p;
        int i3 = (z2 ? 2 : 0) | (i2 & (-3));
        this.f1377p = i3;
        if (i2 != i3) {
            this.f1373l.D(false);
        }
    }

    public void n(boolean z2) {
        this.f1377p = (z2 ? 4 : 0) | (this.f1377p & (-5));
    }

    public void o(boolean z2) {
        if (z2) {
            this.f1377p |= 32;
        } else {
            this.f1377p &= -33;
        }
    }

    public void p(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f1383v = contextMenuInfo;
    }

    public void q(h hVar) {
        this.f1374m = hVar;
        hVar.setHeaderTitle(getTitle());
    }

    public boolean r(boolean z2) {
        int i2 = this.f1377p;
        int i3 = (z2 ? 0 : 8) | (i2 & (-9));
        this.f1377p = i3;
        return i2 != i3;
    }

    public boolean s() {
        return this.f1373l.u();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.f1380s;
        if (actionProvider2 != null) {
            actionProvider2.setVisibilityListener(null);
        }
        this.f1379r = null;
        this.f1380s = actionProvider;
        this.f1373l.D(true);
        ActionProvider actionProvider3 = this.f1380s;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new a());
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        int i2;
        this.f1379r = view;
        this.f1380s = null;
        if (view != null && view.getId() == -1 && (i2 = this.f1362a) > 0) {
            view.setId(i2);
        }
        this.f1373l.B(this);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.f1370i == c2) {
            return this;
        }
        this.f1370i = Character.toLowerCase(c2);
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z2) {
        int i2 = this.f1377p;
        int i3 = (z2 ? 1 : 0) | (i2 & (-2));
        this.f1377p = i3;
        if (i2 != i3) {
            this.f1373l.D(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z2) {
        if ((this.f1377p & 4) != 0) {
            this.f1373l.K(this);
        } else {
            m(z2);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.f1377p |= 16;
        } else {
            this.f1377p &= -17;
        }
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1372k = 0;
        this.f1371j = drawable;
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1368g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        if (this.f1369h == c2) {
            return this;
        }
        this.f1369h = c2;
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1381t = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1376o = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f1369h = c2;
        this.f1370i = Character.toLowerCase(c3);
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1378q = i2;
        this.f1373l.B(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1366e = charSequence;
        this.f1373l.D(false);
        h hVar = this.f1374m;
        if (hVar != null) {
            hVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1367f = charSequence;
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z2) {
        if (r(z2)) {
            this.f1373l.C(this);
        }
        return this;
    }

    public boolean t() {
        return this.f1373l.A() && d() != 0;
    }

    public String toString() {
        return this.f1366e.toString();
    }

    public boolean u() {
        return (this.f1378q & 4) == 4;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f1371j = null;
        this.f1372k = i2;
        this.f1373l.D(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        return setTitle(this.f1373l.r().getString(i2));
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i2) {
        Context contextR = this.f1373l.r();
        setActionView(LayoutInflater.from(contextR).inflate(i2, (ViewGroup) new LinearLayout(contextR), false));
        return this;
    }
}
