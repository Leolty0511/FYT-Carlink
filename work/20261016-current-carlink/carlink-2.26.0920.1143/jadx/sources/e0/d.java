package e0;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f796b = false;
    public final z.l c;

    public d(f fVar, z.l lVar) {
        this.f795a = fVar;
        this.c = lVar;
    }

    @Override // e0.g
    public final Iterator iterator() {
        return new c(this);
    }
}
