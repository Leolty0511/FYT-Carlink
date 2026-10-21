package kotlin.coroutines;

import java.io.Serializable;
import kotlin.jvm.internal.Ref$IntRef;
import s.c;
import u.e;
import u.f;
import u.g;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class CombinedContext implements g, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f996b;
    public final e c;

    public static final class Serialized implements Serializable {
        public static final a Companion = new a();
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g[] f997b;

        public Serialized(g[] gVarArr) {
            t.b.h(gVarArr, "elements");
            this.f997b = gVarArr;
        }

        private final Object readResolve() {
            g gVarPlus = EmptyCoroutineContext.INSTANCE;
            for (g gVar : this.f997b) {
                gVarPlus = gVarPlus.plus(gVar);
            }
            return gVarPlus;
        }
    }

    public CombinedContext(g gVar, e eVar) {
        t.b.h(gVar, "left");
        t.b.h(eVar, "element");
        this.f996b = gVar;
        this.c = eVar;
    }

    private final Object writeReplace() {
        int iA = a();
        final g[] gVarArr = new g[iA];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        fold(c.f1105a, new p() { // from class: kotlin.coroutines.CombinedContext.writeReplace.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // z.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((c) obj, (e) obj2);
                return c.f1105a;
            }

            public final void invoke(c cVar, e eVar) {
                t.b.h(cVar, "<anonymous parameter 0>");
                t.b.h(eVar, "element");
                Ref$IntRef ref$IntRef2 = ref$IntRef;
                int i2 = ref$IntRef2.element;
                ref$IntRef2.element = i2 + 1;
                gVarArr[i2] = eVar;
            }
        });
        if (ref$IntRef.element == iA) {
            return new Serialized(gVarArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final int a() {
        int i2 = 2;
        CombinedContext combinedContext = this;
        while (true) {
            g gVar = combinedContext.f996b;
            combinedContext = gVar instanceof CombinedContext ? (CombinedContext) gVar : null;
            if (combinedContext == null) {
                return i2;
            }
            i2++;
        }
    }

    public boolean equals(Object obj) {
        boolean zA;
        if (this != obj) {
            if (!(obj instanceof CombinedContext)) {
                return false;
            }
            CombinedContext combinedContext = (CombinedContext) obj;
            if (combinedContext.a() != a()) {
                return false;
            }
            CombinedContext combinedContext2 = this;
            while (true) {
                e eVar = combinedContext2.c;
                if (!t.b.a(combinedContext.get(eVar.getKey()), eVar)) {
                    zA = false;
                    break;
                }
                g gVar = combinedContext2.f996b;
                if (!(gVar instanceof CombinedContext)) {
                    t.b.f(gVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    e eVar2 = (e) gVar;
                    zA = t.b.a(combinedContext.get(eVar2.getKey()), eVar2);
                    break;
                }
                combinedContext2 = (CombinedContext) gVar;
            }
            if (!zA) {
                return false;
            }
        }
        return true;
    }

    @Override // u.g
    public <R> R fold(R r2, p pVar) {
        t.b.h(pVar, "operation");
        return (R) pVar.invoke(this.f996b.fold(r2, pVar), this.c);
    }

    @Override // u.g
    public <E extends e> E get(f fVar) {
        t.b.h(fVar, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e2 = (E) combinedContext.c.get(fVar);
            if (e2 != null) {
                return e2;
            }
            g gVar = combinedContext.f996b;
            if (!(gVar instanceof CombinedContext)) {
                return (E) gVar.get(fVar);
            }
            combinedContext = (CombinedContext) gVar;
        }
    }

    public int hashCode() {
        return this.c.hashCode() + this.f996b.hashCode();
    }

    @Override // u.g
    public g minusKey(f fVar) {
        t.b.h(fVar, "key");
        e eVar = this.c;
        e eVar2 = eVar.get(fVar);
        g gVar = this.f996b;
        if (eVar2 != null) {
            return gVar;
        }
        g gVarMinusKey = gVar.minusKey(fVar);
        if (gVarMinusKey == gVar) {
            return this;
        }
        return gVarMinusKey == EmptyCoroutineContext.INSTANCE ? eVar : new CombinedContext(gVarMinusKey, eVar);
    }

    @Override // u.g
    public g plus(g gVar) {
        return b.a(this, gVar);
    }

    public String toString() {
        return "[" + ((String) fold("", new p() { // from class: kotlin.coroutines.CombinedContext.toString.1
            @Override // z.p
            public final String invoke(String str, e eVar) {
                t.b.h(str, "acc");
                t.b.h(eVar, "element");
                if (str.length() == 0) {
                    return eVar.toString();
                }
                return str + ", " + eVar;
            }
        })) + ']';
    }
}
