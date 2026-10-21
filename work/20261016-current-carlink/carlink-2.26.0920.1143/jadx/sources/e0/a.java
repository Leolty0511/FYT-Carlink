package e0;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f790a;

    public a(j jVar) {
        this.f790a = new AtomicReference(jVar);
    }

    @Override // e0.g
    public final Iterator iterator() {
        g gVar = (g) this.f790a.getAndSet(null);
        if (gVar != null) {
            return gVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
