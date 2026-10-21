package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends u.a implements u.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f1012b = new a();

    public b() {
        super(e.b.f754d);
    }

    public abstract void a(u.g gVar, Runnable runnable);

    public boolean b() {
        return !(this instanceof g);
    }

    @Override // u.a, u.g
    public final u.e get(u.f fVar) {
        t.b.h(fVar, "key");
        if (fVar instanceof u.b) {
            u.b bVar = (u.b) fVar;
            u.f key = getKey();
            t.b.h(key, "key");
            if (key == bVar || bVar.f1114b == key) {
                u.e eVar = (u.e) bVar.f1113a.invoke(this);
                if (eVar instanceof u.e) {
                    return eVar;
                }
            }
        } else if (e.b.f754d == fVar) {
            return this;
        }
        return null;
    }

    @Override // u.a, u.g
    public final u.g minusKey(u.f fVar) {
        t.b.h(fVar, "key");
        if (fVar instanceof u.b) {
            u.b bVar = (u.b) fVar;
            u.f key = getKey();
            t.b.h(key, "key");
            if ((key == bVar || bVar.f1114b == key) && ((u.e) bVar.f1113a.invoke(this)) != null) {
                return EmptyCoroutineContext.INSTANCE;
            }
        } else if (e.b.f754d == fVar) {
            return EmptyCoroutineContext.INSTANCE;
        }
        return this;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
