package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.d;
import t.b;

/* JADX INFO: loaded from: classes4.dex */
final class SynchronizedLazyImpl<T> implements s.a, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z.a f994b;
    public volatile Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f995d;

    public SynchronizedLazyImpl(z.a aVar, Object obj) {
        b.h(aVar, "initializer");
        this.f994b = aVar;
        this.c = e.b.c;
        this.f995d = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // s.a
    public T getValue() {
        T t2;
        T t3 = (T) this.c;
        e.b bVar = e.b.c;
        if (t3 != bVar) {
            return t3;
        }
        synchronized (this.f995d) {
            t2 = (T) this.c;
            if (t2 == bVar) {
                z.a aVar = this.f994b;
                b.e(aVar);
                t2 = (T) aVar.invoke();
                this.c = t2;
                this.f994b = null;
            }
        }
        return t2;
    }

    public boolean isInitialized() {
        return this.c != e.b.c;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ SynchronizedLazyImpl(z.a aVar, Object obj, int i2, d dVar) {
        this(aVar, (i2 & 2) != 0 ? null : obj);
    }
}
