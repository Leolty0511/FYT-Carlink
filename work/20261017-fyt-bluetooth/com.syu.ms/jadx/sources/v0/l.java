package v0;

import o1.q;

/* JADX INFO: loaded from: classes2.dex */
public class l extends m implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f17774a = new byte[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17775b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17776c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f17777d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f17778e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f17779f = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.I2;
            if (i2 <= 20 && i2 >= 0) {
                l.this.f17776c = 20 - i2;
            } else if (i2 <= 40 && i2 > 20) {
                l.this.f17776c = (i2 - 20) | 128;
            }
            l.this.M2();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.M2();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o != 0) {
                l.this.M2();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l lVar = l.this;
            lVar.P2(lVar.f17774a);
        }
    }

    @Override // v0.m
    public void K2() {
        u0.c.I.a(this.f17777d, 0);
        u0.c.f17386m.a(this.f17778e, 0);
        u0.c.f17379f.a(this.f17779f, 1);
        byte[] bArr = this.f17774a;
        bArr[0] = 33;
        bArr[1] = 8;
        bArr[2] = 6;
    }

    @Override // v0.m
    public void L2() {
        u0.c.I.d(this.f17777d);
        u0.c.f17386m.d(this.f17778e);
        u0.c.f17379f.d(this.f17779f);
    }

    public void M2() {
        int i2 = u0.b.f17306a0;
        int i3 = 0;
        this.f17775b = 0;
        byte[] bArr = this.f17774a;
        bArr[3] = (byte) (i2 & 255);
        bArr[4] = 2;
        bArr[5] = 1;
        bArr[6] = (byte) this.f17776c;
        bArr[7] = 0;
        bArr[8] = 0;
        while (true) {
            byte[] bArr2 = this.f17774a;
            if (i3 >= bArr2.length - 1) {
                bArr2[9] = (byte) this.f17775b;
                P2(bArr2);
                o1.l.a().postDelayed(new d(), 2000L);
                return;
            } else {
                this.f17775b = bArr2[i3] ^ this.f17775b;
                i3++;
            }
        }
    }

    public synchronized void P2(byte[] bArr) {
        if (bArr != null) {
            z.a.f18156g.i(bArr);
        }
    }

    @Override // v0.m, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        super.Y1(bVar, i2, i3);
    }

    @Override // v0.m, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            byte[] bArr = new byte[iArr.length];
            for (int i3 = 0; i3 < iArr.length; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
            P2(bArr);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
    }
}
