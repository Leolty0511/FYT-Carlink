package x0;

import android.util.Log;
import o1.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h0 f17894b = null;

    public d(int i2) {
        this.f17893a = i2;
    }

    public void a(boolean z2) {
    }

    public abstract void b();

    public boolean c(int i2, y.b bVar) {
        return false;
    }

    public float[] d(int i2, float[] fArr) {
        float[] fArrF = this.f17894b.f(i2);
        return (fArrF != null || fArr == null) ? fArrF : fArr;
    }

    public int[] e(int i2, int[] iArr) {
        int[] iArrI = this.f17894b.i(i2);
        return (iArrI != null || iArr == null) ? iArrI : iArr;
    }

    public boolean f(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return false;
    }

    public void g(String str) {
    }

    public void h() {
        u0.c.f17381h.a(this, 1);
    }

    public void i(h0 h0Var) {
        this.f17894b = h0Var;
    }

    public abstract void j();

    @Override // java.lang.Runnable
    public void run() {
        Log.e("Gyro", "-------- Init Load/deInit DataMain.sSleepWakeup: " + u0.b.n4);
        if (u0.b.n4 == 1) {
            j();
        } else {
            b();
        }
    }
}
