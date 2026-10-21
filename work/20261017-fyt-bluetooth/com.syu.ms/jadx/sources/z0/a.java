package z0;

import android.os.RemoteException;
import o1.n;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n f18273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18274c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f18272a = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18275d = -1;

    public a(n nVar, int i2) {
        this.f18274c = 108;
        this.f18273b = nVar;
        this.f18274c = i2;
    }

    public boolean a(int i2, y.b bVar) {
        return false;
    }

    public abstract void b();

    public abstract void c(boolean z2);

    public abstract void d();

    public void e(y.b bVar, int i2, int... iArr) {
        f(bVar, i2, iArr, null, null);
    }

    public final void f(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (bVar != null) {
            synchronized (bVar) {
                try {
                    bVar.H0(i2, iArr, fArr, strArr);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
