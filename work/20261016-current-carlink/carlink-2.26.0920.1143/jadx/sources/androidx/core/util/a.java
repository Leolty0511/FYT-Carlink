package androidx.core.util;

import androidx.core.content.IntentSanitizer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f324b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a(Predicate predicate, Predicate predicate2, int i2) {
        this.f323a = i2;
        this.f324b = predicate;
        this.c = predicate2;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f323a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f323a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f323a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int i2 = this.f323a;
        Predicate predicate = this.f324b;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                return c.f(predicate, (Predicate) obj2, obj);
            case 1:
                return c.d(predicate, (Predicate) obj2, obj);
            default:
                return IntentSanitizer.Builder.lambda$allowExtra$13((Class) obj2, predicate, obj);
        }
    }

    public /* synthetic */ a(Class cls, Predicate predicate) {
        this.f323a = 2;
        this.c = cls;
        this.f324b = predicate;
    }
}
