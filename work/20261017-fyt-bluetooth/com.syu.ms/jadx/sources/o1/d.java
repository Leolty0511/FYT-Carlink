package o1;

import java.lang.Comparable;

/* JADX INFO: loaded from: classes2.dex */
public class d<K extends Comparable<K>, V> implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f16833e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f16835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f16836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f16837d;

    public d() {
        this(10);
    }

    public synchronized void a(K k2, V v2) {
        int i2 = this.f16837d;
        if (i2 != 0 && k2.compareTo((Comparable) this.f16835b[i2 - 1]) <= 0) {
            h(k2, v2);
            return;
        }
        if (this.f16834a && this.f16837d >= this.f16835b.length) {
            d();
        }
        int i3 = this.f16837d;
        if (i3 >= this.f16835b.length) {
            int iB = b.b(i3 + 1);
            Object[] objArr = new Object[iB];
            Object[] objArr2 = new Object[iB];
            Object[] objArr3 = this.f16835b;
            System.arraycopy(objArr3, 0, objArr, 0, objArr3.length);
            Object[] objArr4 = this.f16836c;
            System.arraycopy(objArr4, 0, objArr2, 0, objArr4.length);
            this.f16835b = objArr;
            this.f16836c = objArr2;
        }
        this.f16835b[i3] = k2;
        this.f16836c[i3] = v2;
        this.f16837d = i3 + 1;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized d<K, V> clone() {
        d<K, V> dVar;
        d<K, V> dVar2 = null;
        try {
            dVar = (d) super.clone();
            try {
                dVar.f16835b = (Object[]) this.f16835b.clone();
                dVar.f16836c = (Object[]) this.f16836c.clone();
            } catch (CloneNotSupportedException unused) {
                dVar2 = dVar;
                dVar = dVar2;
            }
        } catch (CloneNotSupportedException unused2) {
        }
        return dVar;
    }

    public synchronized void c(K k2) {
        int iB = g.b(this.f16835b, this.f16837d, k2);
        if (iB >= 0) {
            Object[] objArr = this.f16836c;
            Object obj = objArr[iB];
            Object obj2 = f16833e;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f16834a = true;
            }
        }
    }

    public final void d() {
        int i2 = this.f16837d;
        Object[] objArr = this.f16835b;
        Object[] objArr2 = this.f16836c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr2[i4];
            if (obj != f16833e) {
                if (i4 != i3) {
                    objArr[i3] = objArr[i4];
                    objArr[i4] = null;
                    objArr2[i3] = obj;
                    objArr2[i4] = null;
                }
                i3++;
            }
        }
        this.f16834a = false;
        this.f16837d = i3;
    }

    public synchronized V e(K k2) {
        return f(k2, null);
    }

    public synchronized V f(K k2, V v2) {
        int iB = g.b(this.f16835b, this.f16837d, k2);
        if (iB >= 0) {
            Object[] objArr = this.f16836c;
            if (objArr[iB] != f16833e) {
                return (V) objArr[iB];
            }
        }
        return v2;
    }

    public synchronized K g(int i2) {
        if (this.f16834a) {
            d();
        }
        return (K) this.f16835b[i2];
    }

    public synchronized void h(K k2, V v2) {
        int iB = g.b(this.f16835b, this.f16837d, k2);
        if (iB >= 0) {
            this.f16836c[iB] = v2;
        } else {
            int i2 = ~iB;
            int i3 = this.f16837d;
            if (i2 < i3) {
                Object[] objArr = this.f16836c;
                if (objArr[i2] == f16833e) {
                    this.f16835b[i2] = k2;
                    objArr[i2] = v2;
                    return;
                }
            }
            if (this.f16834a && i3 >= this.f16835b.length) {
                d();
                i2 = ~g.b(this.f16835b, this.f16837d, k2);
            }
            int i4 = this.f16837d;
            if (i4 >= this.f16835b.length) {
                int iB2 = b.b(i4 + 1);
                Object[] objArr2 = new Object[iB2];
                Object[] objArr3 = new Object[iB2];
                Object[] objArr4 = this.f16835b;
                System.arraycopy(objArr4, 0, objArr2, 0, objArr4.length);
                Object[] objArr5 = this.f16836c;
                System.arraycopy(objArr5, 0, objArr3, 0, objArr5.length);
                this.f16835b = objArr2;
                this.f16836c = objArr3;
            }
            int i5 = this.f16837d;
            if (i5 - i2 != 0) {
                Object[] objArr6 = this.f16835b;
                int i6 = i2 + 1;
                System.arraycopy(objArr6, i2, objArr6, i6, i5 - i2);
                Object[] objArr7 = this.f16836c;
                System.arraycopy(objArr7, i2, objArr7, i6, this.f16837d - i2);
            }
            this.f16835b[i2] = k2;
            this.f16836c[i2] = v2;
            this.f16837d++;
        }
    }

    public synchronized void i(K k2) {
        c(k2);
    }

    public synchronized int j() {
        if (this.f16834a) {
            d();
        }
        return this.f16837d;
    }

    public synchronized V k(int i2) {
        if (this.f16834a) {
            d();
        }
        return (V) this.f16836c[i2];
    }

    public synchronized String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f16837d * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f16837d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(g(i2));
            sb.append('=');
            V vK = k(i2);
            if (vK != this) {
                sb.append(vK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i2) {
        this.f16834a = false;
        if (i2 == 0) {
            Object[] objArr = g.f16859c;
            this.f16835b = objArr;
            this.f16836c = objArr;
        } else {
            int iB = b.b(i2);
            this.f16835b = new Object[iB];
            this.f16836c = new Object[iB];
        }
        this.f16837d = 0;
    }
}
