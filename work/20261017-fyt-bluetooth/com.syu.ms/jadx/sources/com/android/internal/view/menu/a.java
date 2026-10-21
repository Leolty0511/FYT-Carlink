package com.android.internal.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f1326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f1327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LayoutInflater f1328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LayoutInflater f1329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f.a f1330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f1333i;

    public a(Context context, int i2, int i3) {
        this.f1325a = context;
        this.f1328d = LayoutInflater.from(context);
        this.f1331g = i2;
        this.f1332h = i3;
    }

    @Override // com.android.internal.view.menu.f
    public boolean a(c cVar, d dVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.internal.view.menu.f
    public void b(boolean z2) {
        ViewGroup viewGroup = (ViewGroup) this.f1333i;
        if (viewGroup == null) {
            return;
        }
        c cVar = this.f1327c;
        int i2 = 0;
        if (cVar != null) {
            cVar.p();
            ArrayList<d> arrayListY = this.f1327c.y();
            int size = arrayListY.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                d dVar = arrayListY.get(i4);
                if (n(i3, dVar)) {
                    View childAt = viewGroup.getChildAt(i3);
                    d itemData = childAt instanceof g.a ? ((g.a) childAt).getItemData() : null;
                    View viewL = l(dVar, childAt, viewGroup);
                    if (dVar != itemData) {
                        viewL.setPressed(false);
                        viewL.jumpDrawablesToCurrentState();
                    }
                    if (viewL != childAt) {
                        g(viewL, i3);
                    }
                    i3++;
                }
            }
            i2 = i3;
        }
        while (i2 < viewGroup.getChildCount()) {
            if (!j(viewGroup, i2)) {
                i2++;
            }
        }
    }

    @Override // com.android.internal.view.menu.f
    public boolean d(h hVar) {
        f.a aVar = this.f1330f;
        if (aVar != null) {
            return aVar.onOpenSubMenu(hVar);
        }
        return false;
    }

    @Override // com.android.internal.view.menu.f
    public void e(Context context, c cVar) {
        this.f1326b = context;
        this.f1329e = LayoutInflater.from(context);
        this.f1327c = cVar;
    }

    @Override // com.android.internal.view.menu.f
    public boolean f(c cVar, d dVar) {
        return false;
    }

    public void g(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f1333i).addView(view, i2);
    }

    public abstract void h(d dVar, g.a aVar);

    public g.a i(ViewGroup viewGroup) {
        return (g.a) this.f1328d.inflate(this.f1332h, viewGroup, false);
    }

    public boolean j(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    public f.a k() {
        return this.f1330f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View l(d dVar, View view, ViewGroup viewGroup) {
        g.a aVarI = view instanceof g.a ? (g.a) view : i(viewGroup);
        h(dVar, aVarI);
        return (View) aVarI;
    }

    public g m(ViewGroup viewGroup) {
        if (this.f1333i == null) {
            g gVar = (g) this.f1328d.inflate(this.f1331g, viewGroup, false);
            this.f1333i = gVar;
            gVar.g(this.f1327c);
            b(true);
        }
        return this.f1333i;
    }

    public abstract boolean n(int i2, d dVar);

    @Override // com.android.internal.view.menu.f
    public void onCloseMenu(c cVar, boolean z2) {
        f.a aVar = this.f1330f;
        if (aVar != null) {
            aVar.onCloseMenu(cVar, z2);
        }
    }
}
