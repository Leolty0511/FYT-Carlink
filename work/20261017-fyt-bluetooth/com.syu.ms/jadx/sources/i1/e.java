package i1;

import android.annotation.SuppressLint;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Integer f2619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f2620e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"UseSparseArrays"})
    public SparseArray<Boolean> f2616a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f2617b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f2618c = new int[512];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f2621f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f2622g = null;

    public abstract boolean a(int i2);

    public void b() {
        this.f2616a.clear();
        this.f2619d = null;
        this.f2621f = 0;
        this.f2620e = null;
    }

    public abstract boolean c(int i2);

    public boolean d() {
        return true;
    }

    public boolean e() {
        return false;
    }

    public abstract int[] f();

    public int g(int i2) {
        int i3 = i2 & 255;
        if (d()) {
            if (this.f2616a.size() != this.f2617b.length) {
                int size = this.f2616a.size();
                if ((this.f2617b[size] & 255) == i3) {
                    this.f2616a.put(size, Boolean.TRUE);
                    return 0;
                }
                if (this.f2616a.size() <= 0) {
                    return -2;
                }
                this.f2616a.clear();
                return g(i3);
            }
            if (j() && this.f2620e == null) {
                i(i3);
                return 0;
            }
            if (this.f2619d == null) {
                c(i3);
                return 0;
            }
            if (this.f2621f.intValue() < this.f2619d.intValue()) {
                int[] iArr = this.f2618c;
                Integer num = this.f2621f;
                this.f2621f = Integer.valueOf(num.intValue() + 1);
                iArr[num.intValue()] = i3;
                if (!e() || this.f2621f != this.f2619d) {
                    return 0;
                }
            } else if (!a(i3)) {
                b();
                return -1;
            }
        } else {
            if (this.f2621f.intValue() >= this.f2619d.intValue()) {
                return 0;
            }
            int[] iArr2 = this.f2618c;
            Integer num2 = this.f2621f;
            this.f2621f = Integer.valueOf(num2.intValue() + 1);
            iArr2[num2.intValue()] = i3;
            if (this.f2621f != this.f2619d) {
                return 0;
            }
        }
        return 1;
    }

    public void h() {
        this.f2617b = f();
    }

    public boolean i(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        this.f2620e = numValueOf;
        return numValueOf != null;
    }

    public boolean j() {
        return false;
    }
}
