package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f1003b;
    public int c;

    public a(Object[] objArr) {
        t.b.h(objArr, "array");
        this.f1003b = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.f1003b.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            Object[] objArr = this.f1003b;
            int i2 = this.c;
            this.c = i2 + 1;
            return objArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.c--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
