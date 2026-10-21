package kotlin;

import java.io.Serializable;
import t.b;

/* JADX INFO: loaded from: classes4.dex */
public final class Pair<A, B> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f993b;
    public final Object c;

    public Pair(A a2, B b2) {
        this.f993b = a2;
        this.c = b2;
    }

    public final A component1() {
        return (A) this.f993b;
    }

    public final B component2() {
        return (B) this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return b.a(this.f993b, pair.f993b) && b.a(this.c, pair.c);
    }

    public final A getFirst() {
        return (A) this.f993b;
    }

    public final B getSecond() {
        return (B) this.c;
    }

    public int hashCode() {
        Object obj = this.f993b;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.c;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "(" + this.f993b + ", " + this.c + ')';
    }
}
