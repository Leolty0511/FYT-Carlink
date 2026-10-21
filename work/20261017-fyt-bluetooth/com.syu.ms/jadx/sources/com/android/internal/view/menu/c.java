package com.android.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c implements Menu {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f1334x = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f1336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f1339e;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ContextMenu.ContextMenuInfo f1347m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f1348n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Drawable f1349o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f1350p;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public d f1357w;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1346l = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1351q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1352r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1353s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1354t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList<d> f1355u = new ArrayList<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public CopyOnWriteArrayList<WeakReference<f>> f1356v = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList<d> f1340f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList<d> f1341g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1342h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<d> f1343i = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList<d> f1344j = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1345k = true;

    public interface a {
        boolean onMenuItemSelected(c cVar, MenuItem menuItem);

        void onMenuModeChange(c cVar);
    }

    public interface b {
        boolean d(d dVar);
    }

    public c(Context context) {
        this.f1335a = context;
        this.f1336b = context.getResources();
        R(true);
    }

    public static int l(ArrayList<d> arrayList, int i2) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i2) {
                return size + 1;
            }
        }
        return 0;
    }

    public static int v(int i2) {
        int i3 = ((-65536) & i2) >> 16;
        if (i3 >= 0) {
            int[] iArr = f1334x;
            if (i3 < iArr.length) {
                return (i2 & 65535) | (iArr[i3] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    public boolean A() {
        return this.f1338d;
    }

    public void B(d dVar) {
        this.f1345k = true;
        D(true);
    }

    public void C(d dVar) {
        this.f1342h = true;
        D(true);
    }

    public void D(boolean z2) {
        if (this.f1351q) {
            this.f1352r = true;
            return;
        }
        if (z2) {
            this.f1342h = true;
            this.f1345k = true;
        }
        g(z2);
    }

    public boolean E(MenuItem menuItem, int i2) {
        return F(menuItem, null, i2);
    }

    public boolean F(MenuItem menuItem, f fVar, int i2) {
        d dVar = (d) menuItem;
        if (dVar == null || !dVar.isEnabled()) {
            return false;
        }
        boolean zH = dVar.h();
        ActionProvider actionProvider = menuItem.getActionProvider();
        boolean z2 = actionProvider != null && actionProvider.hasSubMenu();
        if (dVar.g()) {
            zH |= dVar.expandActionView();
            if (zH) {
                d(true);
            }
        } else if (dVar.hasSubMenu() || z2) {
            d(false);
            if (!dVar.hasSubMenu()) {
                dVar.q(new h(r(), this, dVar));
            }
            h hVar = (h) dVar.getSubMenu();
            if (z2) {
                actionProvider.onPrepareSubMenu(hVar);
            }
            zH |= h(hVar, fVar);
            if (!zH) {
                d(true);
            }
        } else if ((i2 & 1) == 0) {
            d(true);
        }
        return zH;
    }

    public final void G(int i2, boolean z2) {
        if (i2 < 0 || i2 >= this.f1340f.size()) {
            return;
        }
        this.f1340f.remove(i2);
        if (z2) {
            D(true);
        }
    }

    public void H(a aVar) {
        this.f1339e = aVar;
    }

    public void I(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f1347m = contextMenuInfo;
    }

    public c J(int i2) {
        this.f1346l = i2;
        return this;
    }

    public void K(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f1340f.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = this.f1340f.get(i2);
            if (dVar.getGroupId() == groupId && dVar.j() && dVar.isCheckable()) {
                dVar.m(dVar == menuItem);
            }
        }
    }

    public c L(int i2) {
        N(0, null, i2, null, null);
        return this;
    }

    public c M(Drawable drawable) {
        N(0, null, 0, drawable, null);
        return this;
    }

    public final void N(int i2, CharSequence charSequence, int i3, Drawable drawable, View view) {
        Resources resourcesW = w();
        if (view != null) {
            this.f1350p = view;
            this.f1348n = null;
            this.f1349o = null;
        } else {
            if (i2 > 0) {
                this.f1348n = resourcesW.getText(i2);
            } else if (charSequence != null) {
                this.f1348n = charSequence;
            }
            if (i3 > 0) {
                this.f1349o = resourcesW.getDrawable(i3);
            } else if (drawable != null) {
                this.f1349o = drawable;
            }
            this.f1350p = null;
        }
        D(false);
    }

    public c O(int i2) {
        N(i2, null, 0, null, null);
        return this;
    }

    public c P(CharSequence charSequence) {
        N(0, charSequence, 0, null, null);
        return this;
    }

    public c Q(View view) {
        N(0, null, 0, null, view);
        return this;
    }

    public final void R(boolean z2) {
        this.f1338d = z2 && this.f1336b.getConfiguration().keyboard != 1 && this.f1336b.getBoolean(17891390);
    }

    public void S() {
        this.f1351q = false;
        if (this.f1352r) {
            this.f1352r = false;
            D(true);
        }
    }

    public void T() {
        if (this.f1351q) {
            return;
        }
        this.f1351q = true;
        this.f1352r = false;
    }

    public final MenuItem a(int i2, int i3, int i4, CharSequence charSequence) {
        int iV = v(i4);
        d dVar = new d(this, i2, i3, i4, iV, charSequence, this.f1346l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f1347m;
        if (contextMenuInfo != null) {
            dVar.p(contextMenuInfo);
        }
        ArrayList<d> arrayList = this.f1340f;
        arrayList.add(l(arrayList, iV), dVar);
        D(true);
        return dVar;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        int i6;
        PackageManager packageManager = this.f1335a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i7);
            int i8 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i8 < 0 ? intent : intentArr[i8]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i2, i3, i4, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i6 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i6] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(f fVar) {
        this.f1356v.add(new WeakReference<>(fVar));
        fVar.e(this.f1335a, this);
        this.f1345k = true;
    }

    public void c() {
        a aVar = this.f1339e;
        if (aVar != null) {
            aVar.onMenuModeChange(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        d dVar = this.f1357w;
        if (dVar != null) {
            e(dVar);
        }
        this.f1340f.clear();
        D(true);
    }

    public void clearHeader() {
        this.f1349o = null;
        this.f1348n = null;
        this.f1350p = null;
        D(false);
    }

    @Override // android.view.Menu
    public void close() {
        d(true);
    }

    public final void d(boolean z2) {
        if (this.f1354t) {
            return;
        }
        this.f1354t = true;
        for (WeakReference<f> weakReference : this.f1356v) {
            f fVar = weakReference.get();
            if (fVar == null) {
                this.f1356v.remove(weakReference);
            } else {
                fVar.onCloseMenu(this, z2);
            }
        }
        this.f1354t = false;
    }

    public boolean e(d dVar) {
        boolean zA = false;
        if (!this.f1356v.isEmpty() && this.f1357w == dVar) {
            T();
            for (WeakReference<f> weakReference : this.f1356v) {
                f fVar = weakReference.get();
                if (fVar != null) {
                    zA = fVar.a(this, dVar);
                    if (zA) {
                        break;
                    }
                } else {
                    this.f1356v.remove(weakReference);
                }
            }
            S();
            if (zA) {
                this.f1357w = null;
            }
        }
        return zA;
    }

    public boolean f(c cVar, MenuItem menuItem) {
        a aVar = this.f1339e;
        return aVar != null && aVar.onMenuItemSelected(cVar, menuItem);
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = this.f1340f.get(i3);
            if (dVar.getItemId() == i2) {
                return dVar;
            }
            if (dVar.hasSubMenu() && (menuItemFindItem = dVar.getSubMenu().findItem(i2)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final void g(boolean z2) {
        if (this.f1356v.isEmpty()) {
            return;
        }
        T();
        for (WeakReference<f> weakReference : this.f1356v) {
            f fVar = weakReference.get();
            if (fVar == null) {
                this.f1356v.remove(weakReference);
            } else {
                fVar.b(z2);
            }
        }
        S();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return this.f1340f.get(i2);
    }

    public final boolean h(h hVar, f fVar) {
        if (this.f1356v.isEmpty()) {
            return false;
        }
        boolean zD = fVar != null ? fVar.d(hVar) : false;
        for (WeakReference<f> weakReference : this.f1356v) {
            f fVar2 = weakReference.get();
            if (fVar2 == null) {
                this.f1356v.remove(weakReference);
            } else if (!zD) {
                zD = fVar2.d(hVar);
            }
        }
        return zD;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f1340f.get(i2).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean i(d dVar) {
        boolean zF = false;
        if (this.f1356v.isEmpty()) {
            return false;
        }
        T();
        for (WeakReference<f> weakReference : this.f1356v) {
            f fVar = weakReference.get();
            if (fVar != null) {
                zF = fVar.f(this, dVar);
                if (zF) {
                    break;
                }
            } else {
                this.f1356v.remove(weakReference);
            }
        }
        S();
        if (zF) {
            this.f1357w = dVar;
        }
        return zF;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return n(i2, keyEvent) != null;
    }

    public int j(int i2) {
        return k(i2, 0);
    }

    public int k(int i2, int i3) {
        int size = size();
        if (i3 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.f1340f.get(i3).getGroupId() == i2) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public int m(int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            if (this.f1340f.get(i3).getItemId() == i2) {
                return i3;
            }
        }
        return -1;
    }

    public d n(int i2, KeyEvent keyEvent) {
        ArrayList<d> arrayList = this.f1355u;
        arrayList.clear();
        o(arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean z2 = z();
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = arrayList.get(i3);
            char alphabeticShortcut = z2 ? dVar.getAlphabeticShortcut() : dVar.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (z2 && alphabeticShortcut == '\b' && i2 == 67))) {
                return dVar;
            }
        }
        return null;
    }

    public void o(List<d> list, int i2, KeyEvent keyEvent) {
        boolean z2 = z();
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            int size = this.f1340f.size();
            for (int i3 = 0; i3 < size; i3++) {
                d dVar = this.f1340f.get(i3);
                if (dVar.hasSubMenu()) {
                    ((c) dVar.getSubMenu()).o(list, i2, keyEvent);
                }
                char alphabeticShortcut = z2 ? dVar.getAlphabeticShortcut() : dVar.getNumericShortcut();
                if ((metaState & 5) == 0 && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (z2 && alphabeticShortcut == '\b' && i2 == 67)) && dVar.isEnabled()) {
                        list.add(dVar);
                    }
                }
            }
        }
    }

    public void p() {
        ArrayList<d> arrayListY = y();
        if (this.f1345k) {
            boolean zC = false;
            for (WeakReference<f> weakReference : this.f1356v) {
                f fVar = weakReference.get();
                if (fVar == null) {
                    this.f1356v.remove(weakReference);
                } else {
                    zC |= fVar.c();
                }
            }
            if (zC) {
                this.f1343i.clear();
                this.f1344j.clear();
                int size = arrayListY.size();
                for (int i2 = 0; i2 < size; i2++) {
                    d dVar = arrayListY.get(i2);
                    if (dVar.i()) {
                        this.f1343i.add(dVar);
                    } else {
                        this.f1344j.add(dVar);
                    }
                }
            } else {
                this.f1343i.clear();
                this.f1344j.clear();
                this.f1344j.addAll(y());
            }
            this.f1345k = false;
        }
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i3) {
        return E(findItem(i2), i3);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        d dVarN = n(i2, keyEvent);
        boolean zE = dVarN != null ? E(dVarN, i3) : false;
        if ((i3 & 2) != 0) {
            d(true);
        }
        return zE;
    }

    public ArrayList<d> q() {
        p();
        return this.f1343i;
    }

    public Context r() {
        return this.f1335a;
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        int iJ = j(i2);
        if (iJ >= 0) {
            int size = this.f1340f.size() - iJ;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= size || this.f1340f.get(iJ).getGroupId() != i2) {
                    break;
                }
                G(iJ, false);
                i3 = i4;
            }
            D(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        G(m(i2), true);
    }

    public d s() {
        return this.f1357w;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z2, boolean z3) {
        int size = this.f1340f.size();
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = this.f1340f.get(i3);
            if (dVar.getGroupId() == i2) {
                dVar.n(z3);
                dVar.setCheckable(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z2) {
        int size = this.f1340f.size();
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = this.f1340f.get(i3);
            if (dVar.getGroupId() == i2) {
                dVar.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z2) {
        int size = this.f1340f.size();
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = this.f1340f.get(i3);
            if (dVar.getGroupId() == i2 && dVar.r(z2)) {
                z3 = true;
            }
        }
        if (z3) {
            D(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f1337c = z2;
        D(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1340f.size();
    }

    public ArrayList<d> t() {
        p();
        return this.f1344j;
    }

    public boolean u() {
        return this.f1353s;
    }

    public Resources w() {
        return this.f1336b;
    }

    public c x() {
        return this;
    }

    public ArrayList<d> y() {
        if (!this.f1342h) {
            return this.f1341g;
        }
        this.f1341g.clear();
        int size = this.f1340f.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = this.f1340f.get(i2);
            if (dVar.isVisible()) {
                this.f1341g.add(dVar);
            }
        }
        this.f1342h = false;
        this.f1345k = true;
        return this.f1341g;
    }

    public boolean z() {
        return this.f1337c;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return a(0, 0, 0, this.f1336b.getString(i2));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, this.f1336b.getString(i2));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return a(i2, i3, i4, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        d dVar = (d) a(i2, i3, i4, charSequence);
        h hVar = new h(this.f1335a, this, dVar);
        dVar.q(hVar);
        return hVar;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, int i5) {
        return a(i2, i3, i4, this.f1336b.getString(i5));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return addSubMenu(i2, i3, i4, this.f1336b.getString(i5));
    }
}
