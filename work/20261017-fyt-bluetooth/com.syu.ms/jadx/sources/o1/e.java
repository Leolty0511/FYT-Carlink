package o1;

import java.lang.Comparable;

/* JADX INFO: loaded from: classes2.dex */
public class e<K extends Comparable<K>> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f16841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f16842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16843e;

    public e(int i2) {
        this(10, i2);
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized e<K> clone() {
        e<K> eVar;
        e<K> eVar2 = null;
        try {
            eVar = (e) super.clone();
            try {
                eVar.f16841c = (Object[]) this.f16841c.clone();
                eVar.f16842d = (int[]) this.f16842d.clone();
            } catch (CloneNotSupportedException unused) {
                eVar2 = eVar;
                eVar = eVar2;
            }
        } catch (CloneNotSupportedException unused2) {
        }
        return eVar;
    }

    public final void b() {
        int i2 = this.f16843e;
        Object[] objArr = this.f16841c;
        int[] iArr = this.f16842d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = iArr[i4];
            if (i5 != this.f16839a) {
                if (i4 != i3) {
                    objArr[i3] = objArr[i4];
                    objArr[i4] = null;
                    iArr[i3] = i5;
                }
                i3++;
            }
        }
        this.f16840b = false;
        this.f16843e = i3;
    }

    public int c(K k2) {
        return d(k2, 0);
    }

    public synchronized int d(K k2, int i2) {
        int iB = g.b(this.f16841c, this.f16843e, k2);
        if (iB >= 0) {
            int[] iArr = this.f16842d;
            if (iArr[iB] != this.f16839a) {
                return iArr[iB];
            }
        }
        return i2;
    }

    public synchronized K e(int i2) {
        if (this.f16840b) {
            b();
        }
        return (K) this.f16841c[i2];
    }

    public synchronized int f(K k2, int i2) {
        int iB = g.b(this.f16841c, this.f16843e, k2);
        if (iB >= 0) {
            int[] iArr = this.f16842d;
            if (iArr[iB] == i2) {
                return 0;
            }
            iArr[iB] = i2;
            return 1;
        }
        int i3 = ~iB;
        int i4 = this.f16843e;
        if (i3 < i4) {
            int[] iArr2 = this.f16842d;
            if (iArr2[i3] == this.f16839a) {
                this.f16841c[i3] = k2;
                iArr2[i3] = i2;
                return 2;
            }
        }
        if (this.f16840b && i4 >= this.f16841c.length) {
            b();
            i3 = ~g.b(this.f16841c, this.f16843e, k2);
        }
        int i5 = this.f16843e;
        if (i5 >= this.f16841c.length) {
            int iB2 = b.b(i5 + 1);
            Object[] objArr = new Object[iB2];
            int[] iArr3 = new int[iB2];
            Object[] objArr2 = this.f16841c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            int[] iArr4 = this.f16842d;
            System.arraycopy(iArr4, 0, iArr3, 0, iArr4.length);
            this.f16841c = objArr;
            this.f16842d = iArr3;
        }
        int i6 = this.f16843e;
        if (i6 - i3 != 0) {
            Object[] objArr3 = this.f16841c;
            int i7 = i3 + 1;
            System.arraycopy(objArr3, i3, objArr3, i7, i6 - i3);
            int[] iArr5 = this.f16842d;
            System.arraycopy(iArr5, i3, iArr5, i7, this.f16843e - i3);
        }
        this.f16841c[i3] = k2;
        this.f16842d[i3] = i2;
        this.f16843e++;
        return 2;
    }

    public synchronized void g(K k2, int i2) {
        int iB = g.b(this.f16841c, this.f16843e, k2);
        if (iB >= 0) {
            int[] iArr = this.f16842d;
            iArr[iB] = i2 | iArr[iB];
        } else {
            int i3 = ~iB;
            int i4 = this.f16843e;
            if (i3 < i4) {
                int[] iArr2 = this.f16842d;
                if (iArr2[i3] == this.f16839a) {
                    this.f16841c[i3] = k2;
                    iArr2[i3] = i2;
                    return;
                }
            }
            if (this.f16840b && i4 >= this.f16841c.length) {
                b();
                i3 = ~g.b(this.f16841c, this.f16843e, k2);
            }
            int i5 = this.f16843e;
            if (i5 >= this.f16841c.length) {
                int iB2 = b.b(i5 + 1);
                Object[] objArr = new Object[iB2];
                int[] iArr3 = new int[iB2];
                Object[] objArr2 = this.f16841c;
                System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
                int[] iArr4 = this.f16842d;
                System.arraycopy(iArr4, 0, iArr3, 0, iArr4.length);
                this.f16841c = objArr;
                this.f16842d = iArr3;
            }
            int i6 = this.f16843e;
            if (i6 - i3 != 0) {
                Object[] objArr3 = this.f16841c;
                int i7 = i3 + 1;
                System.arraycopy(objArr3, i3, objArr3, i7, i6 - i3);
                int[] iArr5 = this.f16842d;
                System.arraycopy(iArr5, i3, iArr5, i7, this.f16843e - i3);
            }
            this.f16841c[i3] = k2;
            this.f16842d[i3] = i2;
            this.f16843e++;
        }
    }

    public synchronized int h() {
        if (this.f16840b) {
            b();
        }
        return this.f16843e;
    }

    public synchronized int i(int i2) {
        if (this.f16840b) {
            b();
        }
        return this.f16842d[i2];
    }

    public synchronized String toString() {
        if (h() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f16843e * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f16843e; i2++) {
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

    public e(int i2, int i3) {
        this.f16840b = false;
        this.f16839a = i3;
        if (i2 == 0) {
            this.f16841c = g.f16859c;
            this.f16842d = g.f16857a;
        } else {
            int iB = b.b(i2);
            this.f16841c = new Object[iB];
            this.f16842d = new int[iB];
        }
        this.f16843e = 0;
    }
}
