package com.syu.carlink.base;

import android.util.SparseArray;
import e.h;
import g.c;
import java.util.ArrayList;
import java.util.Iterator;
import t.b;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final s.a c = kotlin.a.c(new z.a() { // from class: com.syu.carlink.base.EventManager$Companion$manager$2
        @Override // z.a
        public final a invoke() {
            return new a();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f669a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h f670b;

    public final void a(int i2, c cVar) {
        b.h(cVar, "handle");
        SparseArray sparseArray = this.f669a;
        ArrayList arrayList = (ArrayList) sparseArray.get(i2, null);
        if (arrayList == null) {
            arrayList = new ArrayList();
            sparseArray.put(i2, arrayList);
        }
        if (arrayList.contains(cVar)) {
            return;
        }
        arrayList.add(cVar);
    }

    public final void b(g.a aVar) {
        ArrayList arrayList = (ArrayList) this.f669a.get(aVar.f880b, null);
        StringBuilder sb = new StringBuilder(" EventManager dispatch  -------->>list size : ");
        sb.append(arrayList != null ? arrayList.size() : 0);
        sb.append("   evnt:: ");
        sb.append(aVar);
        n.b.a("HDL", sb.toString());
        if (arrayList != null) {
            Object objClone = arrayList.clone();
            b.f(objClone, "null cannot be cast to non-null type java.util.ArrayList<com.syu.carlink.base.EventManager.IEvent>{ kotlin.collections.TypeAliasesKt.ArrayList<com.syu.carlink.base.EventManager.IEvent> }");
            Iterator it = ((ArrayList) objClone).iterator();
            while (it.hasNext()) {
                ((c) it.next()).a(aVar);
            }
        }
    }
}
