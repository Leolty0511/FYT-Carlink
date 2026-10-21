package o;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1084a = "conn";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1085b;

    public a(boolean z2) {
        this.f1085b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return t.b.a(this.f1084a, aVar.f1084a) && this.f1085b == aVar.f1085b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final int hashCode() {
        int iHashCode = this.f1084a.hashCode() * 31;
        boolean z2 = this.f1085b;
        ?? r1 = z2;
        if (z2) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final String toString() {
        return "ConnEvent(type=" + this.f1084a + ", success=" + this.f1085b + ')';
    }
}
