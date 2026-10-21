package e0;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f797b;
    public int c = -2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f f798d;

    public e(f fVar) {
        this.f798d = fVar;
    }

    public final void a() {
        Object objInvoke;
        int i2 = this.c;
        f fVar = this.f798d;
        if (i2 == -2) {
            objInvoke = ((z.a) fVar.c).invoke();
        } else {
            z.l lVar = fVar.f800b;
            Object obj = this.f797b;
            t.b.e(obj);
            objInvoke = lVar.invoke(obj);
        }
        this.f797b = objInvoke;
        this.c = objInvoke == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.c < 0) {
            a();
        }
        return this.c == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.c < 0) {
            a();
        }
        if (this.c == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f797b;
        t.b.f(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
        this.c = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
