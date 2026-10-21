package g;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f880b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f882e;

    public a(int i2, int i3, int i4, String str, String str2, int i5) {
        i2 = (i5 & 1) != 0 ? 0 : i2;
        i3 = (i5 & 2) != 0 ? -1 : i3;
        i4 = (i5 & 4) != 0 ? -1 : i4;
        str = (i5 & 8) != 0 ? "" : str;
        str2 = (i5 & 16) != 0 ? "" : str2;
        this.f879a = i2;
        this.f880b = i3;
        this.c = i4;
        this.f881d = str;
        this.f882e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f879a == aVar.f879a && this.f880b == aVar.f880b && this.c == aVar.c && t.b.a(this.f881d, aVar.f881d) && t.b.a(this.f882e, aVar.f882e);
    }

    public final int hashCode() {
        int i2 = ((((this.f879a * 31) + this.f880b) * 31) + this.c) * 31;
        String str = this.f881d;
        int iHashCode = (i2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f882e;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "[linkType: " + this.f879a + "] [stateType: " + this.f880b + "] [value: " + this.c + "] [name: " + this.f881d + "] [msg: " + this.f882e + ']';
    }
}
