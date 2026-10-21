package u;

import z.l;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f1113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f1114b;

    public b(f fVar, l lVar) {
        t.b.h(fVar, "baseKey");
        t.b.h(lVar, "safeCast");
        this.f1113a = lVar;
        this.f1114b = fVar instanceof b ? ((b) fVar).f1114b : fVar;
    }
}
