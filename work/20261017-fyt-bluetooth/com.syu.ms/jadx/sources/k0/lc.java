package k0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public class lc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f7578b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f7579c = new b(Looper.getMainLooper());

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7580a = false;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                this.f7580a = true;
                lc.this.b3();
            } else {
                if (this.f7580a) {
                    qt.t();
                }
                this.f7580a = false;
            }
        }
    }

    public class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                qt.f();
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8313h = 1;
        mtVar.f8320o = 0;
        u0.c.f17379f.a(this.f7578b, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (bArr[i2 + 1] != -16) {
            return;
        }
        qt.L(new String(bArr, i2 + 2, i3 - 2));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17379f.d(this.f7578b);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003 && u0.b.f17347o == 0) {
            if (!o1.u.T(a.b.O)) {
                qt.t();
            } else if (o1.u.T(a.b.O)) {
                qt.f();
            }
        }
    }

    public final void b3() {
        this.f7579c.removeMessages(0);
    }
}
