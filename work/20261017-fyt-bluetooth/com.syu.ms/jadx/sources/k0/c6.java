package k0;

import android.os.Process;

/* JADX INFO: loaded from: classes2.dex */
public class c6 extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f3916d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f3917b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3918c = 1;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3917b.a();
        a3(this.f3917b.b(1, 0));
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (bArr[i2 + 1] != -111) {
            return;
        }
        int i4 = bArr[i2 + 2] & 255;
        if (i4 == 1) {
            qt.y0(Process.MEDIA_UID, 0);
            return;
        }
        if (i4 == 2) {
            qt.y0(Process.MEDIA_UID, 2);
            return;
        }
        if (i4 == 4) {
            qt.y0(Process.MEDIA_UID, 1);
        } else if (i4 == 5) {
            qt.y0(Process.MEDIA_UID, 3);
        } else {
            if (i4 != 6) {
                return;
            }
            qt.y0(Process.MEDIA_UID, 4);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3917b.j();
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            if (i3 == 0) {
                a3(1);
                return;
            }
            if (i3 == 1) {
                a3(4);
                return;
            }
            if (i3 == 2) {
                a3(2);
            } else if (i3 == 3) {
                a3(5);
            } else {
                if (i3 != 4) {
                    return;
                }
                a3(6);
            }
        }
    }

    public final void a3(int i2) {
        f3916d = i2;
        z.k.s(227, 4, -112, (byte) i2, 0, 0, 0);
        int iB = this.f3917b.b(1, 0);
        int i3 = f3916d;
        if (iB != i3) {
            this.f3917b.g(1, i3);
        }
    }
}
