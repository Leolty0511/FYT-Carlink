package k0;

import android.os.Process;

/* JADX INFO: loaded from: classes2.dex */
public class a extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f3052b = new RunnableC0064a();

    /* JADX INFO: renamed from: k0.a$a, reason: collision with other inner class name */
    public class RunnableC0064a implements Runnable {
        public RunnableC0064a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.J == 0 && l0.o.f13088g == -1 && nt.f8633a == 0) {
                z.k.s(227, 144, 1, 217);
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8316k = 0;
        int i2 = n0.j4.f16464b;
        if (i2 == 112 || i2 == 140) {
            qt.y(this.f3052b);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (n0.j4.f16464b != 143) {
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i4] = bArr[i2 + i4];
            }
            Y2(Process.DRM_UID, iArr);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.p0(this.f3052b);
    }
}
