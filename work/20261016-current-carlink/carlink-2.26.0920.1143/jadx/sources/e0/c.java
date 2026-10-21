package e0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterator f792b;
    public int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f794e;

    public c(d dVar) {
        this.f794e = dVar;
        this.f792b = dVar.f795a.iterator();
    }

    public final void a() {
        Object next;
        d dVar;
        do {
            Iterator it = this.f792b;
            if (!it.hasNext()) {
                this.c = 0;
                return;
            } else {
                next = it.next();
                dVar = this.f794e;
            }
        } while (((Boolean) dVar.c.invoke(next)).booleanValue() != dVar.f796b);
        this.f793d = next;
        this.c = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.c == -1) {
            a();
        }
        return this.c == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.c == -1) {
            a();
        }
        if (this.c == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f793d;
        this.f793d = null;
        this.c = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
