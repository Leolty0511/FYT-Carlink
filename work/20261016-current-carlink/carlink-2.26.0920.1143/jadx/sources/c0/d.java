package c0;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends b implements a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f357e = new d(1, 0);

    public d(int i2, int i3) {
        super(i2, i3, 1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this.f352b == dVar.f352b) {
                    if (this.c == dVar.c) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // c0.a
    public final Comparable getEndInclusive() {
        return Integer.valueOf(this.c);
    }

    @Override // c0.a
    public final Comparable getStart() {
        return Integer.valueOf(this.f352b);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f352b * 31) + this.c;
    }

    public final boolean isEmpty() {
        return this.f352b > this.c;
    }

    public final String toString() {
        return this.f352b + ".." + this.c;
    }
}
