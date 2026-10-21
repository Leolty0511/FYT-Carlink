package x0;

import android.util.Log;
import android.util.SparseArray;
import o1.h0;
import y.f;

/* JADX INFO: loaded from: classes2.dex */
public class c extends base.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static c f17891h;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public SparseArray<d> f17892g = new SparseArray<>();

    public c() {
        P2("Sensors_local");
    }

    public static synchronized c X2() {
        if (f17891h == null) {
            f17891h = new c();
        }
        return f17891h;
    }

    @Override // base.b
    public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        this.f331f.s(i2, iArr, fArr, strArr);
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        d dVar;
        synchronized (this) {
            int size = this.f17892g.size();
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = this.f17892g.keyAt(i3);
                if (iKeyAt >= 0 && (dVar = this.f17892g.get(iKeyAt, null)) != null && dVar.f(i2, iArr, fArr, strArr)) {
                    break;
                }
            }
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        this.f331f.p(bVar, i2);
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
        d dVar;
        synchronized (this) {
            int size = this.f17892g.size();
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.f17892g.keyAt(i2);
                if (iKeyAt >= 0 && (dVar = this.f17892g.get(iKeyAt, null)) != null) {
                    dVar.i(h0Var);
                }
            }
        }
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        d dVar;
        this.f331f.m(bVar, i2);
        if (i3 == 1) {
            synchronized (this) {
                int size = this.f17892g.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int iKeyAt = this.f17892g.keyAt(i4);
                    if (iKeyAt >= 0 && (dVar = this.f17892g.get(iKeyAt, null)) != null && dVar.c(i2, bVar)) {
                        break;
                    }
                }
            }
        }
    }

    public void Y2(String str) {
        int size = this.f17892g.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f17892g.valueAt(i2).g(str);
        }
    }

    public void Z2(int i2) {
        d aVar = this.f17892g.get(i2, null);
        if (aVar != null) {
            return;
        }
        if (i2 == 1) {
            aVar = new a("/dev/i2c-2", 53);
            Log.e("Gyro", "-------- TZY Load Create sensor: " + aVar);
        } else if (i2 == 2) {
            aVar = new e(i2);
        } else if (i2 == 3) {
            aVar = new b(i2);
        }
        if (aVar != null) {
            this.f17892g.put(i2, aVar);
            aVar.h();
        }
    }

    public void a3(int i2, int... iArr) {
        this.f331f.s(i2, iArr, null, null);
    }
}
