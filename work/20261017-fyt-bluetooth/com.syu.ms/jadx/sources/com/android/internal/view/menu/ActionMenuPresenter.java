package com.android.internal.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.ActionProvider;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageButton;
import android.widget.ListPopupWindow;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuPresenter extends com.android.internal.view.menu.a implements ActionProvider.SubUiVisibilityListener {
    public int A;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1268k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1269l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1270m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1271n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1274q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1275r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1276s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1277t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final SparseBooleanArray f1278u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public View f1279v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public e f1280w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public b f1281x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public c f1282y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final f f1283z;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1284a;

        public static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f1284a);
        }

        public SavedState(Parcel parcel) {
            this.f1284a = parcel.readInt();
        }
    }

    public class a extends ListPopupWindow.ForwardingListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.android.internal.view.menu.d f1285a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view, com.android.internal.view.menu.d dVar) {
            super(view);
            this.f1285a = dVar;
        }

        @Override // android.widget.ListPopupWindow.ForwardingListener
        public ListPopupWindow getPopup() {
            if (ActionMenuPresenter.this.f1281x != null) {
                return ActionMenuPresenter.this.f1281x.k();
            }
            return null;
        }

        @Override // android.widget.ListPopupWindow.ForwardingListener
        public boolean onForwardingStarted() {
            return ActionMenuPresenter.this.d((h) this.f1285a.getSubMenu());
        }

        @Override // android.widget.ListPopupWindow.ForwardingListener
        public boolean onForwardingStopped() {
            return ActionMenuPresenter.this.v();
        }
    }

    public class b extends com.android.internal.view.menu.e {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public h f1287p;

        public b(Context context, h hVar) {
            super(context, hVar);
            this.f1287p = hVar;
            if (!((com.android.internal.view.menu.d) hVar.getItem()).i()) {
                n(ActionMenuPresenter.this.f1267j == null ? (View) ActionMenuPresenter.this.f1333i : ActionMenuPresenter.this.f1267j);
            }
            o(ActionMenuPresenter.this.f1283z);
            int size = hVar.size();
            boolean z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = hVar.getItem(i2);
                if (item.isVisible() && item.getIcon() != null) {
                    z2 = true;
                    break;
                }
            }
            p(z2);
        }

        @Override // com.android.internal.view.menu.e, android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.f1281x = null;
            ActionMenuPresenter.this.A = 0;
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e f1289a;

        public c(e eVar) {
            this.f1289a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuPresenter.this.f1327c.c();
            View view = (View) ActionMenuPresenter.this.f1333i;
            if (view != null && view.getWindowToken() != null && this.f1289a.s()) {
                ActionMenuPresenter.this.f1280w = this.f1289a;
            }
            ActionMenuPresenter.this.f1282y = null;
        }
    }

    public class d extends ImageButton implements ActionMenuView.a {

        public class a extends ListPopupWindow.ForwardingListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ ActionMenuPresenter f1292a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
                this.f1292a = actionMenuPresenter;
            }

            @Override // android.widget.ListPopupWindow.ForwardingListener
            public ListPopupWindow getPopup() {
                if (ActionMenuPresenter.this.f1280w == null) {
                    return null;
                }
                return ActionMenuPresenter.this.f1280w.k();
            }

            @Override // android.widget.ListPopupWindow.ForwardingListener
            public boolean onForwardingStarted() {
                ActionMenuPresenter.this.F();
                return true;
            }

            @Override // android.widget.ListPopupWindow.ForwardingListener
            public boolean onForwardingStopped() {
                if (ActionMenuPresenter.this.f1282y != null) {
                    return false;
                }
                ActionMenuPresenter.this.x();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // com.android.internal.view.menu.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // com.android.internal.view.menu.ActionMenuView.a
        public boolean c() {
            return false;
        }

        @Override // android.widget.ImageButton, android.widget.ImageView, android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setCanOpenPopup(true);
        }

        @Override // android.widget.ImageView, android.view.View
        public void onMeasure(int i2, int i3) throws Throwable {
            if (View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE) {
                i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824);
            }
            super.onMeasure(i2, i3);
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.F();
            return true;
        }
    }

    public class e extends com.android.internal.view.menu.e {
        public e(Context context, com.android.internal.view.menu.c cVar, View view, boolean z2) {
            super(context, cVar, view, z2);
            q(Gravity.END);
            o(ActionMenuPresenter.this.f1283z);
        }

        @Override // com.android.internal.view.menu.e, android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.f1327c.close();
            ActionMenuPresenter.this.f1280w = null;
        }
    }

    public class f implements com.android.internal.view.menu.f.a {
        public f() {
        }

        @Override // com.android.internal.view.menu.f.a
        public void onCloseMenu(com.android.internal.view.menu.c cVar, boolean z2) {
            if (cVar instanceof h) {
                ((h) cVar).x().d(false);
            }
            com.android.internal.view.menu.f.a aVarK = ActionMenuPresenter.this.k();
            if (aVarK != null) {
                aVarK.onCloseMenu(cVar, z2);
            }
        }

        @Override // com.android.internal.view.menu.f.a
        public boolean onOpenSubMenu(com.android.internal.view.menu.c cVar) {
            if (cVar == null) {
                return false;
            }
            ActionMenuPresenter.this.A = ((h) cVar).getItem().getItemId();
            com.android.internal.view.menu.f.a aVarK = ActionMenuPresenter.this.k();
            if (aVarK != null) {
                return aVarK.onOpenSubMenu(cVar);
            }
            return false;
        }

        public /* synthetic */ f(ActionMenuPresenter actionMenuPresenter, a aVar) {
            this();
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, 17367068, 17367067);
        this.f1278u = new SparseBooleanArray();
        this.f1283z = new f(this, null);
    }

    public void A(Configuration configuration) {
        if (!this.f1273p) {
            this.f1272o = this.f1326b.getResources().getInteger(17694794);
        }
        com.android.internal.view.menu.c cVar = this.f1327c;
        if (cVar != null) {
            cVar.D(true);
        }
    }

    public void B(boolean z2) {
        this.f1276s = z2;
    }

    public void C(int i2) {
        this.f1272o = i2;
        this.f1273p = true;
    }

    public void D(boolean z2) {
        this.f1268k = z2;
        this.f1269l = true;
    }

    public void E(int i2, boolean z2) {
        this.f1270m = i2;
        this.f1274q = z2;
        this.f1275r = true;
    }

    public boolean F() {
        com.android.internal.view.menu.c cVar;
        if (!this.f1268k || z() || (cVar = this.f1327c) == null || this.f1333i == null || this.f1282y != null || cVar.t().isEmpty()) {
            return false;
        }
        c cVar2 = new c(new e(this.f1326b, this.f1327c, this.f1267j, true));
        this.f1282y = cVar2;
        ((View) this.f1333i).post(cVar2);
        super.d(null);
        return true;
    }

    @Override // com.android.internal.view.menu.a, com.android.internal.view.menu.f
    public void b(boolean z2) {
        ViewGroup viewGroup = (ViewGroup) ((View) this.f1333i).getParent();
        if (viewGroup != null) {
            t.a.a(viewGroup);
        }
        super.b(z2);
        ((View) this.f1333i).requestLayout();
        com.android.internal.view.menu.c cVar = this.f1327c;
        boolean z3 = false;
        if (cVar != null) {
            ArrayList<com.android.internal.view.menu.d> arrayListQ = cVar.q();
            int size = arrayListQ.size();
            for (int i2 = 0; i2 < size; i2++) {
                ActionProvider actionProvider = arrayListQ.get(i2).getActionProvider();
                if (actionProvider != null) {
                    actionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        com.android.internal.view.menu.c cVar2 = this.f1327c;
        ArrayList<com.android.internal.view.menu.d> arrayListT = cVar2 != null ? cVar2.t() : null;
        if (this.f1268k && arrayListT != null) {
            int size2 = arrayListT.size();
            if (size2 == 1) {
                z3 = !arrayListT.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.f1267j == null) {
                this.f1267j = new d(this.f1325a);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f1267j.getParent();
            if (viewGroup2 != this.f1333i) {
                if (viewGroup2 != null) {
                    viewGroup2.removeView(this.f1267j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f1333i;
                actionMenuView.addView(this.f1267j, actionMenuView.k());
            }
        } else {
            View view = this.f1267j;
            if (view != null) {
                Object parent = view.getParent();
                Object obj = this.f1333i;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f1267j);
                }
            }
        }
        ((ActionMenuView) this.f1333i).setOverflowReserved(this.f1268k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [com.android.internal.view.menu.d] */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.android.internal.view.menu.ActionMenuPresenter, com.android.internal.view.menu.a] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [int] */
    /* JADX WARN: Type inference failed for: r5v10 */
    @Override // com.android.internal.view.menu.f
    public boolean c() {
        int i2;
        int iL;
        ?? r2;
        ArrayList<com.android.internal.view.menu.d> arrayListY = this.f1327c.y();
        int size = arrayListY.size();
        int i3 = this.f1272o;
        int i4 = this.f1271n;
        ?? r5 = 0;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f1333i;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            com.android.internal.view.menu.d dVar = arrayListY.get(i7);
            if (dVar.l()) {
                i5++;
            } else if (dVar.k()) {
                i6++;
            } else {
                z2 = true;
            }
            if (this.f1276s && dVar.isActionViewExpanded()) {
                i3 = 0;
            }
        }
        if (this.f1268k && (z2 || i6 + i5 > i3)) {
            i3--;
        }
        int i8 = i3 - i5;
        SparseBooleanArray sparseBooleanArray = this.f1278u;
        sparseBooleanArray.clear();
        if (this.f1274q) {
            int i9 = this.f1277t;
            iL = i4 / i9;
            i2 = i9 + ((i4 % i9) / iL);
        } else {
            i2 = 0;
            iL = 0;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            com.android.internal.view.menu.d dVar2 = arrayListY.get(i10);
            if (dVar2.l()) {
                View viewL = l(dVar2, this.f1279v, viewGroup);
                if (this.f1279v == null) {
                    this.f1279v = viewL;
                }
                if (this.f1274q) {
                    iL -= ActionMenuView.l(viewL, i2, iL, iMakeMeasureSpec, r5);
                } else {
                    viewL.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewL.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                int groupId = dVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                dVar2.o(true);
                r2 = r5;
            } else if (dVar2.k()) {
                int groupId2 = dVar2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i8 > 0 || z3) && i4 > 0 && (!this.f1274q || iL > 0);
                if (z4) {
                    View viewL2 = l(dVar2, this.f1279v, viewGroup);
                    if (this.f1279v == null) {
                        this.f1279v = viewL2;
                    }
                    if (this.f1274q) {
                        int iL2 = ActionMenuView.l(viewL2, i2, iL, iMakeMeasureSpec, 0);
                        iL -= iL2;
                        if (iL2 == 0) {
                            z4 = false;
                        }
                    } else {
                        viewL2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    int measuredWidth2 = viewL2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    z4 &= !this.f1274q ? i4 + i11 <= 0 : i4 < 0;
                }
                if (z4 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i12 = 0; i12 < i10; i12++) {
                        com.android.internal.view.menu.d dVar3 = arrayListY.get(i12);
                        if (dVar3.getGroupId() == groupId2) {
                            if (dVar3.i()) {
                                i8++;
                            }
                            dVar3.o(false);
                        }
                    }
                }
                i8 = i8;
                if (z4) {
                    i8--;
                }
                dVar2.o(z4);
                r2 = 0;
            } else {
                r2 = r5;
                dVar2.o(r2);
            }
            i10++;
            r5 = r2;
            size = size;
        }
        return true;
    }

    @Override // com.android.internal.view.menu.a, com.android.internal.view.menu.f
    public boolean d(h hVar) {
        if (!hVar.hasVisibleItems()) {
            return false;
        }
        h hVar2 = hVar;
        while (hVar2.U() != this.f1327c) {
            hVar2 = (h) hVar2.U();
        }
        View viewW = w(hVar2.getItem());
        if (viewW == null && (viewW = this.f1267j) == null) {
            return false;
        }
        this.A = hVar.getItem().getItemId();
        b bVar = new b(this.f1326b, hVar);
        this.f1281x = bVar;
        bVar.n(viewW);
        this.f1281x.r();
        super.d(hVar);
        return true;
    }

    @Override // com.android.internal.view.menu.a, com.android.internal.view.menu.f
    public void e(Context context, com.android.internal.view.menu.c cVar) {
        super.e(context, cVar);
        Resources resources = context.getResources();
        v.a aVarB = v.a.b(context);
        if (!this.f1269l) {
            this.f1268k = aVarB.h();
        }
        if (!this.f1275r) {
            this.f1270m = aVarB.c();
        }
        if (!this.f1273p) {
            this.f1272o = aVarB.d();
        }
        int measuredWidth = this.f1270m;
        if (this.f1268k) {
            if (this.f1267j == null) {
                this.f1267j = new d(this.f1325a);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1267j.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f1267j.getMeasuredWidth();
        } else {
            this.f1267j = null;
        }
        this.f1271n = measuredWidth;
        this.f1277t = (int) (resources.getDisplayMetrics().density * 56.0f);
        this.f1279v = null;
    }

    @Override // com.android.internal.view.menu.a
    public void h(com.android.internal.view.menu.d dVar, g.a aVar) {
        aVar.b(dVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f1333i);
        if (dVar.hasSubMenu()) {
            actionMenuItemView.setOnTouchListener(new a(actionMenuItemView, dVar));
        } else {
            actionMenuItemView.setOnTouchListener(null);
        }
    }

    @Override // com.android.internal.view.menu.a
    public boolean j(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.f1267j) {
            return false;
        }
        return super.j(viewGroup, i2);
    }

    @Override // com.android.internal.view.menu.a
    public View l(com.android.internal.view.menu.d dVar, View view, ViewGroup viewGroup) {
        View actionView = dVar.getActionView();
        if (actionView == null || dVar.g()) {
            actionView = super.l(dVar, view, viewGroup);
        }
        actionView.setVisibility(dVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // com.android.internal.view.menu.a
    public g m(ViewGroup viewGroup) {
        g gVarM = super.m(viewGroup);
        ((ActionMenuView) gVarM).setPresenter(this);
        return gVarM;
    }

    @Override // com.android.internal.view.menu.a
    public boolean n(int i2, com.android.internal.view.menu.d dVar) {
        return dVar.i();
    }

    @Override // com.android.internal.view.menu.a, com.android.internal.view.menu.f
    public void onCloseMenu(com.android.internal.view.menu.c cVar, boolean z2) {
        v();
        super.onCloseMenu(cVar, z2);
    }

    @Override // android.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z2) {
        if (z2) {
            super.d(null);
        } else {
            this.f1327c.d(false);
        }
    }

    public boolean v() {
        return x() | y();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View w(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f1333i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof g.a) && ((g.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean x() {
        Object obj;
        c cVar = this.f1282y;
        if (cVar != null && (obj = this.f1333i) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.f1282y = null;
            return true;
        }
        e eVar = this.f1280w;
        if (eVar == null) {
            return false;
        }
        eVar.j();
        return true;
    }

    public boolean y() {
        b bVar = this.f1281x;
        if (bVar == null) {
            return false;
        }
        bVar.j();
        return true;
    }

    public boolean z() {
        e eVar = this.f1280w;
        return eVar != null && eVar.l();
    }
}
