package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f1005b;

    public f(Class cls) {
        t.b.h(cls, "jClass");
        this.f1005b = cls;
    }

    @Override // kotlin.jvm.internal.b
    public final Class a() {
        return this.f1005b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            if (t.b.a(this.f1005b, ((f) obj).f1005b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f1005b.hashCode();
    }

    public final String toString() {
        return this.f1005b.toString() + " (Kotlin reflection is not available)";
    }
}
