package androidx.core.util;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f326b;

    public /* synthetic */ b(Object obj, int i2) {
        this.f325a = i2;
        this.f326b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f325a) {
            case 0:
                break;
            default:
                break;
        }
        return c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f325a) {
            case 0:
                break;
            default:
                break;
        }
        return c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f325a) {
            case 0:
                break;
            default:
                break;
        }
        return c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int i2 = this.f325a;
        Object obj2 = this.f326b;
        switch (i2) {
            case 0:
                return obj2.equals(obj);
            default:
                return c.e((Predicate) obj2, obj);
        }
    }
}
