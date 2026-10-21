package kotlin.coroutines;

import java.io.Serializable;
import u.e;
import u.f;
import u.g;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class EmptyCoroutineContext implements g, Serializable {
    public static final EmptyCoroutineContext INSTANCE = new EmptyCoroutineContext();
    private static final long serialVersionUID = 0;

    private final Object readResolve() {
        return INSTANCE;
    }

    @Override // u.g
    public <R> R fold(R r2, p pVar) {
        t.b.h(pVar, "operation");
        return r2;
    }

    @Override // u.g
    public <E extends e> E get(f fVar) {
        t.b.h(fVar, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // u.g
    public g minusKey(f fVar) {
        t.b.h(fVar, "key");
        return this;
    }

    @Override // u.g
    public g plus(g gVar) {
        t.b.h(gVar, "context");
        return gVar;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
