package o1;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<p> f17017a;

    public synchronized void a(p pVar) {
        if (pVar == null) {
            return;
        }
        if (this.f17017a == null) {
            this.f17017a = new ArrayList<>();
        }
        if (!this.f17017a.contains(pVar)) {
            this.f17017a.add(pVar);
        }
    }

    public synchronized int b() {
        ArrayList<p> arrayList;
        arrayList = this.f17017a;
        return arrayList == null ? 0 : arrayList.size();
    }

    public synchronized void c(Object obj) {
        ArrayList<p> arrayList = this.f17017a;
        if (arrayList != null) {
            Iterator<p> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().d(obj);
            }
        }
    }

    public synchronized void d(p pVar) {
        if (pVar == null) {
            return;
        }
        ArrayList<p> arrayList = this.f17017a;
        if (arrayList != null) {
            arrayList.remove(pVar);
            if (b() == 0) {
                this.f17017a = null;
            }
        }
    }
}
