package o;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f1087b;
    public final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float[] f1088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f1089e;

    public b(int i2, Integer num, int[] iArr, float[] fArr, String[] strArr) {
        this.f1086a = i2;
        this.f1087b = num;
        this.c = iArr;
        this.f1088d = fArr;
        this.f1089e = strArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1086a == bVar.f1086a && t.b.a(this.f1087b, bVar.f1087b) && t.b.a(this.c, bVar.c) && t.b.a(this.f1088d, bVar.f1088d) && t.b.a(this.f1089e, bVar.f1089e);
    }

    public final int hashCode() {
        int i2 = this.f1086a * 31;
        Integer num = this.f1087b;
        int iHashCode = (i2 + (num == null ? 0 : num.hashCode())) * 31;
        int[] iArr = this.c;
        int iHashCode2 = (iHashCode + (iArr == null ? 0 : Arrays.hashCode(iArr))) * 31;
        float[] fArr = this.f1088d;
        int iHashCode3 = (iHashCode2 + (fArr == null ? 0 : Arrays.hashCode(fArr))) * 31;
        String[] strArr = this.f1089e;
        return iHashCode3 + (strArr != null ? Arrays.hashCode(strArr) : 0);
    }

    public final String toString() {
        return "Message(module=" + this.f1086a + ", updateCode=" + this.f1087b + ", ints=" + Arrays.toString(this.c) + ", flts=" + Arrays.toString(this.f1088d) + ", strs=" + Arrays.toString(this.f1089e) + ')';
    }
}
