package com.android.internal.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class e implements AdapterView.OnItemClickListener, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, PopupWindow.OnDismissListener, View.OnAttachStateChangeListener, f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutInflater f1386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f1387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f1388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f1391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ListPopupWindow f1392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ViewTreeObserver f1393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f.a f1394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ViewGroup f1396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1397m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1398n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1399o;

    public class a extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c f1400a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1401b = -1;

        public a(c cVar) {
            this.f1400a = cVar;
            b();
        }

        public void b() {
            d dVarS = e.this.f1387c.s();
            if (dVarS != null) {
                ArrayList<d> arrayListT = e.this.f1387c.t();
                int size = arrayListT.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (arrayListT.get(i2) == dVarS) {
                        this.f1401b = i2;
                        return;
                    }
                }
            }
            this.f1401b = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public d getItem(int i2) {
            ArrayList<d> arrayListT = e.this.f1389e ? this.f1400a.t() : this.f1400a.y();
            int i3 = this.f1401b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayListT.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ArrayList<d> arrayListT = e.this.f1389e ? this.f1400a.t() : this.f1400a.y();
            return this.f1401b < 0 ? arrayListT.size() : arrayListT.size() - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = e.this.f1386b.inflate(17367152, viewGroup, false);
            }
            g.a aVar = (g.a) view;
            if (e.this.f1395k) {
                ((ListMenuItemView) view).setForceShowIcon(true);
            }
            aVar.b(getItem(i2), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            b();
            super.notifyDataSetChanged();
        }
    }

    public e(Context context, c cVar) {
        this(context, cVar, null, false);
    }

    @Override // com.android.internal.view.menu.f
    public boolean a(c cVar, d dVar) {
        return false;
    }

    @Override // com.android.internal.view.menu.f
    public void b(boolean z2) {
        this.f1397m = false;
        a aVar = this.f1388d;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // com.android.internal.view.menu.f
    public boolean c() {
        return false;
    }

    @Override // com.android.internal.view.menu.f
    public boolean d(h hVar) {
        boolean z2;
        if (hVar.hasVisibleItems()) {
            e eVar = new e(this.f1385a, hVar, this.f1391g, false);
            eVar.o(this.f1394j);
            int size = hVar.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z2 = false;
                    break;
                }
                MenuItem item = hVar.getItem(i2);
                if (item.isVisible() && item.getIcon() != null) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            eVar.p(z2);
            if (eVar.s()) {
                f.a aVar = this.f1394j;
                if (aVar != null) {
                    aVar.onOpenSubMenu(hVar);
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.android.internal.view.menu.f
    public void e(Context context, c cVar) {
    }

    @Override // com.android.internal.view.menu.f
    public boolean f(c cVar, d dVar) {
        return false;
    }

    public void j() {
        if (l()) {
            this.f1392h.dismiss();
        }
    }

    public ListPopupWindow k() {
        return this.f1392h;
    }

    public boolean l() {
        ListPopupWindow listPopupWindow = this.f1392h;
        return listPopupWindow != null && listPopupWindow.isShowing();
    }

    public final int m() {
        a aVar = this.f1388d;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = aVar.getCount();
        int i2 = 0;
        int i3 = 0;
        View view = null;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = aVar.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (this.f1396l == null) {
                this.f1396l = new FrameLayout(this.f1385a);
            }
            view = aVar.getView(i4, view, this.f1396l);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            int i5 = this.f1390f;
            if (measuredWidth >= i5) {
                return i5;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    public void n(View view) {
        this.f1391g = view;
    }

    public void o(f.a aVar) {
        this.f1394j = aVar;
    }

    @Override // com.android.internal.view.menu.f
    public void onCloseMenu(c cVar, boolean z2) {
        if (cVar != this.f1387c) {
            return;
        }
        j();
        f.a aVar = this.f1394j;
        if (aVar != null) {
            aVar.onCloseMenu(cVar, z2);
        }
    }

    public void onDismiss() {
        this.f1392h = null;
        this.f1387c.close();
        ViewTreeObserver viewTreeObserver = this.f1393i;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1393i = this.f1391g.getViewTreeObserver();
            }
            this.f1393i.removeGlobalOnLayoutListener(this);
            this.f1393i = null;
        }
        this.f1391g.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (l()) {
            View view = this.f1391g;
            if (view == null || !view.isShown()) {
                j();
            } else if (l()) {
                this.f1392h.show();
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        a aVar = this.f1388d;
        aVar.f1400a.E(aVar.getItem(i2), 0);
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        j();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f1393i;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1393i = view.getViewTreeObserver();
            }
            this.f1393i.removeGlobalOnLayoutListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
    }

    public void p(boolean z2) {
        this.f1395k = z2;
    }

    public void q(int i2) {
        this.f1399o = i2;
    }

    public void r() {
        if (!s()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean s() {
        ListPopupWindow listPopupWindow = new ListPopupWindow(this.f1385a, null, R.attr.popupMenuStyle);
        this.f1392h = listPopupWindow;
        listPopupWindow.setOnDismissListener(this);
        this.f1392h.setOnItemClickListener(this);
        this.f1392h.setAdapter(this.f1388d);
        this.f1392h.setModal(true);
        View view = this.f1391g;
        if (view == null) {
            return false;
        }
        boolean z2 = this.f1393i == null;
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        this.f1393i = viewTreeObserver;
        if (z2) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        view.addOnAttachStateChangeListener(this);
        this.f1392h.setAnchorView(view);
        this.f1392h.setDropDownGravity(this.f1399o);
        if (!this.f1397m) {
            this.f1398n = m();
            this.f1397m = true;
        }
        this.f1392h.setContentWidth(this.f1398n);
        this.f1392h.setInputMethodMode(2);
        this.f1392h.show();
        this.f1392h.getListView().setOnKeyListener(this);
        return true;
    }

    public e(Context context, c cVar, View view) {
        this(context, cVar, view, false);
    }

    public e(Context context, c cVar, View view, boolean z2) {
        this.f1399o = 0;
        this.f1385a = context;
        this.f1386b = LayoutInflater.from(context);
        this.f1387c = cVar;
        this.f1388d = new a(cVar);
        this.f1389e = z2;
        Resources resources = context.getResources();
        this.f1390f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(17104903));
        this.f1391g = view;
        cVar.b(this);
    }
}
