package u;

import kotlin.coroutines.EmptyCoroutineContext;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements e {
    private final f key;

    public a(f fVar) {
        this.key = fVar;
    }

    @Override // u.g
    public <R> R fold(R r2, p pVar) {
        t.b.h(pVar, "operation");
        return (R) pVar.invoke(r2, this);
    }

    @Override // u.g
    public <E extends e> E get(f fVar) {
        t.b.h(fVar, "key");
        if (t.b.a(getKey(), fVar)) {
            return this;
        }
        return null;
    }

    @Override // u.e
    public f getKey() {
        return this.key;
    }

    @Override // u.g
    public g minusKey(f fVar) {
        t.b.h(fVar, "key");
        return t.b.a(getKey(), fVar) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // u.g
    public g plus(g gVar) {
        t.b.h(gVar, "context");
        return kotlin.coroutines.b.a(this, gVar);
    }
}
