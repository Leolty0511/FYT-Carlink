package e0;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f799a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z.l f800b;
    public final Object c;

    public f(g gVar, z.l lVar) {
        t.b.h(lVar, "transformer");
        this.c = gVar;
        this.f800b = lVar;
    }

    @Override // e0.g
    public final Iterator iterator() {
        switch (this.f799a) {
            case 0:
                return new e(this);
            default:
                return new l(this);
        }
    }

    public f(z.a aVar, z.l lVar) {
        t.b.h(lVar, "getNextValue");
        this.c = aVar;
        this.f800b = lVar;
    }
}
