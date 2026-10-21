package kotlin.coroutines;

import u.d;
import u.e;
import u.g;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static g a(g gVar, g gVar2) {
        t.b.h(gVar2, "context");
        return gVar2 == EmptyCoroutineContext.INSTANCE ? gVar : (g) gVar2.fold(gVar, new p() { // from class: kotlin.coroutines.CoroutineContext$plus$1
            @Override // z.p
            public final g invoke(g gVar3, e eVar) {
                CombinedContext combinedContext;
                t.b.h(gVar3, "acc");
                t.b.h(eVar, "element");
                g gVarMinusKey = gVar3.minusKey(eVar.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                if (gVarMinusKey == emptyCoroutineContext) {
                    return eVar;
                }
                int i2 = d.f1115a;
                e.b bVar = e.b.f754d;
                d dVar = (d) gVarMinusKey.get(bVar);
                if (dVar == null) {
                    combinedContext = new CombinedContext(gVarMinusKey, eVar);
                } else {
                    g gVarMinusKey2 = gVarMinusKey.minusKey(bVar);
                    if (gVarMinusKey2 == emptyCoroutineContext) {
                        return new CombinedContext(eVar, dVar);
                    }
                    combinedContext = new CombinedContext(new CombinedContext(gVarMinusKey2, eVar), dVar);
                }
                return combinedContext;
            }
        });
    }
}
