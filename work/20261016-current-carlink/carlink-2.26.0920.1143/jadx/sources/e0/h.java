package e0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes4.dex */
public final class h extends i implements Iterator, u.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f801b;
    public Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Iterator f802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public u.c f803e;

    public final RuntimeException b() {
        int i2 = this.f801b;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f801b);
    }

    @Override // u.c
    public final u.g getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i2 = this.f801b;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        return true;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    throw b();
                }
                Iterator it = this.f802d;
                t.b.e(it);
                if (it.hasNext()) {
                    this.f801b = 2;
                    return true;
                }
                this.f802d = null;
            }
            this.f801b = 5;
            u.c cVar = this.f803e;
            t.b.e(cVar);
            this.f803e = null;
            cVar.resumeWith(Result.m64constructorimpl(s.c.f1105a));
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f801b;
        if (i2 == 0 || i2 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i2 == 2) {
            this.f801b = 1;
            Iterator it = this.f802d;
            t.b.e(it);
            return it.next();
        }
        if (i2 != 3) {
            throw b();
        }
        this.f801b = 0;
        Object obj = this.c;
        this.c = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // u.c
    public final void resumeWith(Object obj) {
        kotlin.a.d(obj);
        this.f801b = 4;
    }
}
