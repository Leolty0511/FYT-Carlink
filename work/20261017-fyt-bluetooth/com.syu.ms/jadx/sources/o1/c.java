package o1;

import java.lang.Comparable;

/* JADX INFO: loaded from: classes2.dex */
public class c<K extends Comparable<K>> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f16828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f16829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16830e;

    public c(int i2) {
        this(10, i2);
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c<K> clone() {
        c<K> cVar = null;
        try {
            c<K> cVar2 = (c) super.clone();
            try {
                cVar2.f16828c = (Object[]) this.f16828c.clone();
                cVar2.f16829d = (int[]) this.f16829d.clone();
                return cVar2;
            } catch (CloneNotSupportedException unused) {
                cVar = cVar2;
                return cVar;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public void b(K k2) {
        int iB = g.b(this.f16828c, this.f16830e, k2);
        if (iB >= 0) {
            int[] iArr = this.f16829d;
            int i2 = iArr[iB];
            int i3 = this.f16826a;
            if (i2 != i3) {
                iArr[iB] = i3;
                this.f16827b = true;
            }
        }
    }

    public final void c() {
        int i2 = this.f16830e;
        Object[] objArr = this.f16828c;
        int[] iArr = this.f16829d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = iArr[i4];
            if (i5 != this.f16826a) {
                if (i4 != i3) {
                    objArr[i3] = objArr[i4];
                    objArr[i4] = null;
                    iArr[i3] = i5;
                }
                i3++;
            }
        }
        this.f16827b = false;
        this.f16830e = i3;
    }

    public int d(K k2, int i2) {
        int iB = g.b(this.f16828c, this.f16830e, k2);
        if (iB >= 0) {
            int[] iArr = this.f16829d;
            if (iArr[iB] != this.f16826a) {
                return iArr[iB];
            }
        }
        return i2;
    }

    public K e(int i2) {
        if (this.f16827b) {
            c();
        }
        return (K) this.f16828c[i2];
    }

    public int f(K k2, int i2) {
        int iB = g.b(this.f16828c, this.f16830e, k2);
        if (iB >= 0) {
            int[] iArr = this.f16829d;
            if (iArr[iB] == i2) {
                return 0;
            }
            iArr[iB] = i2;
            return 1;
        }
        int i3 = ~iB;
        int i4 = this.f16830e;
        if (i3 < i4) {
            int[] iArr2 = this.f16829d;
            if (iArr2[i3] == this.f16826a) {
                this.f16828c[i3] = k2;
                iArr2[i3] = i2;
                return 2;
            }
        }
        if (this.f16827b && i4 >= this.f16828c.length) {
            c();
            i3 = ~g.b(this.f16828c, this.f16830e, k2);
        }
        int i5 = this.f16830e;
        if (i5 >= this.f16828c.length) {
            int iB2 = b.b(i5 + 1);
            Object[] objArr = new Object[iB2];
            int[] iArr3 = new int[iB2];
            Object[] objArr2 = this.f16828c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            int[] iArr4 = this.f16829d;
            System.arraycopy(iArr4, 0, iArr3, 0, iArr4.length);
            this.f16828c = objArr;
            this.f16829d = iArr3;
        }
        int i6 = this.f16830e;
        if (i6 - i3 != 0) {
            Object[] objArr3 = this.f16828c;
            int i7 = i3 + 1;
            System.arraycopy(objArr3, i3, objArr3, i7, i6 - i3);
            int[] iArr5 = this.f16829d;
            System.arraycopy(iArr5, i3, iArr5, i7, this.f16830e - i3);
        }
        this.f16828c[i3] = k2;
        this.f16829d[i3] = i2;
        this.f16830e++;
        return 2;
    }

    public void g(K k2) {
        b(k2);
    }

    public int h() {
        if (this.f16827b) {
            c();
        }
        return this.f16830e;
    }

    public int i(int i2) {
        if (this.f16827b) {
            c();
        }
        return this.f16829d[i2];
    }

    public String toString() {
        if (h() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f16830e * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f16830e; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(e(i2));
            sb.append('=');
            Integer numValueOf = Integer.valueOf(i(i2));
            if (numValueOf != this) {
                sb.append(numValueOf);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public c(int i2, int i3) {
        this.f16827b = false;
        this.f16826a = i3;
        if (i2 == 0) {
            this.f16828c = g.f16859c;
            this.f16829d = g.f16857a;
        } else {
            int iB = b.b(i2);
            this.f16828c = new Object[iB];
            this.f16829d = new int[iB];
        }
        this.f16830e = 0;
    }
}
