package o1;

/* JADX INFO: loaded from: classes2.dex */
public class f<E> implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f16848e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f16850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f16851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f16852d;

    public f() {
        this(10);
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized f<E> clone() {
        f<E> fVar;
        f<E> fVar2 = null;
        try {
            fVar = (f) super.clone();
            try {
                fVar.f16850b = (int[]) this.f16850b.clone();
                fVar.f16851c = (Object[]) this.f16851c.clone();
            } catch (CloneNotSupportedException unused) {
                fVar2 = fVar;
                fVar = fVar2;
            }
        } catch (CloneNotSupportedException unused2) {
        }
        return fVar;
    }

    public final void b() {
        int i2 = this.f16852d;
        int[] iArr = this.f16850b;
        Object[] objArr = this.f16851c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f16848e) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f16849a = false;
        this.f16852d = i3;
    }

    public synchronized E c(int i2) {
        return d(i2, null);
    }

    public synchronized E d(int i2, E e2) {
        int iA = g.a(this.f16850b, this.f16852d, i2);
        if (iA >= 0) {
            Object[] objArr = this.f16851c;
            if (objArr[iA] != f16848e) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public synchronized int e(int i2) {
        if (this.f16849a) {
            b();
        }
        return this.f16850b[i2];
    }

    public synchronized void f(int i2, E e2) {
        int iA = g.a(this.f16850b, this.f16852d, i2);
        if (iA >= 0) {
            this.f16851c[iA] = e2;
        } else {
            int i3 = ~iA;
            int i4 = this.f16852d;
            if (i3 < i4) {
                Object[] objArr = this.f16851c;
                if (objArr[i3] == f16848e) {
                    this.f16850b[i3] = i2;
                    objArr[i3] = e2;
                    return;
                }
            }
            if (this.f16849a && i4 >= this.f16850b.length) {
                b();
                i3 = ~g.a(this.f16850b, this.f16852d, i2);
            }
            int i5 = this.f16852d;
            if (i5 >= this.f16850b.length) {
                int iB = b.b(i5 + 1);
                int[] iArr = new int[iB];
                Object[] objArr2 = new Object[iB];
                int[] iArr2 = this.f16850b;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                Object[] objArr3 = this.f16851c;
                System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
                this.f16850b = iArr;
                this.f16851c = objArr2;
            }
            int i6 = this.f16852d;
            if (i6 - i3 != 0) {
                int[] iArr3 = this.f16850b;
                int i7 = i3 + 1;
                System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
                Object[] objArr4 = this.f16851c;
                System.arraycopy(objArr4, i3, objArr4, i7, this.f16852d - i3);
            }
            this.f16850b[i3] = i2;
            this.f16851c[i3] = e2;
            this.f16852d++;
        }
    }

    public synchronized int g() {
        if (this.f16849a) {
            b();
        }
        return this.f16852d;
    }

    public synchronized E h(int i2) {
        if (this.f16849a) {
            b();
        }
        return (E) this.f16851c[i2];
    }

    public synchronized String toString() {
        if (g() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f16852d * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f16852d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(e(i2));
            sb.append('=');
            E eH = h(i2);
            if (eH != this) {
                sb.append(eH);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public f(int i2) {
        this.f16849a = false;
        if (i2 == 0) {
            this.f16850b = g.f16857a;
            this.f16851c = g.f16859c;
        } else {
            int iB = b.b(i2);
            this.f16850b = new int[iB];
            this.f16851c = new Object[iB];
        }
        this.f16852d = 0;
    }
}
