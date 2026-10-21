package e0;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterator f806b;
    public final /* synthetic */ f c;

    public l(f fVar) {
        this.c = fVar;
        this.f806b = ((g) fVar.c).iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f806b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.c.f800b.invoke(this.f806b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
