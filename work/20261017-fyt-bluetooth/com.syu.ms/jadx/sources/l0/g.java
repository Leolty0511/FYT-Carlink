package l0;

import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class g extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13041c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f13042d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f13043e = 200;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static byte[] f13044f = new byte[201];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static byte[] f13045g = new byte[201];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f13046h;

    public static int g() {
        int i2 = f13041c;
        int i3 = f13042d;
        if (i2 > i3) {
            i3 += f13043e;
        }
        return i3 - i2;
    }

    public static byte h(int i2) {
        return f13044f[(f13041c + i2) % f13043e];
    }

    public static void i() {
        f13041c = 0;
        f13042d = 0;
    }

    @Override // l0.a
    public void b(byte[] bArr) {
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        for (byte b2 : bArr) {
            byte[] bArr2 = f13044f;
            int i2 = f13042d;
            int i3 = i2 + 1;
            f13042d = i3;
            bArr2[i2] = b2;
            if (i3 >= f13043e) {
                f13042d = 0;
            }
        }
        nt.f8639d.U2(bArr, 0, bArr.length);
    }

    @Override // l0.a
    public void f(int... iArr) {
    }
}
