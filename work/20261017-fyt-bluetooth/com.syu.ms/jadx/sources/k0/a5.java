package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class a5 extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int[] f3157n = new int[11];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3159c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3160d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 12}, new int[]{5, 4}, new int[]{6, 3}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3161e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3162f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3163g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3164h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3165i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f3166j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3167k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3168l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3169m = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(a5.this.f3163g);
            a5.this.f3161e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a5 a5Var = a5.this;
            int i2 = a5Var.f3161e - 1;
            a5Var.f3161e = i2;
            if (i2 <= 0) {
                l0.b0.p0(a5Var.f3163g);
                a5.this.f3161e = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, -1, 1, 127);
            z.k.s(227, -1, 1, 8);
            z.k.s(227, -1, 1, 9);
            z.k.s(227, -1, 1, 10);
            z.k.s(227, -1, 1, 12);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -120, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a5.a3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a5.this.f3166j = u0.b.f17359s0;
            if (a5.this.f3166j > 360.0f) {
                a5.f3(a5.this, 360.0f);
            }
            if (a5.this.f3166j < 0.0f) {
                a5.f3(a5.this, 360.0f);
                a5 a5Var = a5.this;
                a5Var.f3166j = 360.0f - Math.abs(a5Var.f3166j);
            }
            if (a5.this.f3168l != a5.this.f3167k) {
                z.k.s(227, -122, 8, 1, 0, a5.this.f3168l & 255, (a5.this.f3168l >> 8) & 255, 0, 0, 0, 0);
                a5 a5Var2 = a5.this;
                a5Var2.f3167k = a5Var2.f3168l;
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 135;
        iArr[1] = 8;
        iArr[2] = b3();
        int i3 = u0.b.D;
        if (i3 == 1) {
            iArr[3] = 1;
        } else if (i3 == 8 || i3 == 9 || i3 == 4 || i3 == 5 || i3 == 6) {
            iArr[3] = 16;
        } else {
            iArr[3] = 0;
        }
        if (i3 == 1) {
            iArr[4] = c3();
        } else {
            iArr[4] = 0;
        }
        if (u0.b.D == 1) {
            int i4 = w0.d.f17797i;
            iArr[6] = i4 >> 8;
            iArr[5] = i4 & 255;
        } else {
            iArr[5] = 0;
            iArr[6] = 0;
        }
        iArr[7] = 0;
        iArr[8] = 0;
        iArr[9] = 0;
        f3157n[0] = 227;
        boolean z2 = false;
        while (i2 < 10) {
            int[] iArr2 = f3157n;
            int i5 = i2 + 1;
            if (iArr2[i5] != iArr[i2]) {
                iArr2[i5] = iArr[i2];
                z2 = true;
            }
            i2 = i5;
        }
        if (z2) {
            z.k.s(f3157n);
        }
    }

    public static byte b3() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            return (byte) 1;
        }
        if (i2 == 2 || i2 == 3) {
            return (byte) 5;
        }
        if (i2 == 4) {
            int i3 = o0.e.H;
            if (i3 == 1) {
                return (byte) 2;
            }
            if (i3 == 2) {
                return (byte) 9;
            }
            if (i3 != 3) {
                return (byte) 0;
            }
        } else {
            if (i2 == 5) {
                return (byte) 7;
            }
            if (i2 != 8 && i2 != 9) {
                return DhcpPacket.DHCP_HOST_NAME;
            }
        }
        return (byte) 8;
    }

    public static byte c3() {
        int i2 = w0.d.f17796h;
        return (i2 - 65536 == 0 || 1 == i2 - 65536 || 2 == i2 - 65536 || (i2 + 0 != 0 && 1 != i2 - 0)) ? (byte) 0 : (byte) 16;
    }

    public static /* synthetic */ float f3(a5 a5Var, float f2) {
        float f3 = a5Var.f3166j % f2;
        a5Var.f3166j = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        o1.h.f16865a.a(this.f3169m, 1);
        qt.z(this.f3164h);
        qt.z(this.f3165i);
        w0.e.f17815a.a(this.f3165i, 1);
        w0.e.f17819e.a(this.f3165i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3159c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f3160d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f3159c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f3158b = i4;
                        break;
                    }
                    i4++;
                }
                if ((b4 & 255) != 0) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i6 = this.f3158b;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f3158b = 255;
                }
            }
            return;
        }
        if (b2 == 3) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 7];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 5) & 3);
            qt.y0(13, (b5 >> 4) & 1);
            qt.y0(65, (b5 >> 3) & 1);
            qt.y0(16, (b5 >> 2) & 1);
            qt.y0(14, (b5 >> 1) & 1);
            qt.y0(12, b5 & 1);
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            qt.y0(53, (b6 >> 4) & 1);
            qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                qt.y0(27, b8 & 255);
                qt.y0(28, 255 & b7);
            } else {
                qt.y0(27, b7 & 255);
                qt.y0(28, 255 & b8);
            }
            qt.y0(58, (b9 >> 4) & 1);
            qt.y0(30, (b9 >> 2) & 3);
            qt.y0(29, b9 & 3);
            return;
        }
        if (b2 == 6) {
            int i7 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i7 >> 7) & 1);
                qt.y0(2, (i7 >> 6) & 1);
            } else {
                qt.y0(1, (i7 >> 6) & 1);
                qt.y0(2, (i7 >> 7) & 1);
            }
            qt.y0(3, (i7 >> 4) & 1);
            qt.y0(4, (i7 >> 5) & 1);
            qt.y0(5, (i7 >> 3) & 1);
            qt.y0(0, (i7 >> 2) & 1);
            return;
        }
        if (b2 == 12) {
            int i8 = i2 + 2;
            qt.y0(125, 3 & (bArr[i8] >> 6));
            qt.y0(126, (bArr[i8] >> 0) & 15);
            int i9 = i2 + 3;
            qt.y0(127, (bArr[i9] >> 4) & 15);
            qt.y0(128, (bArr[i9] >> 0) & 1);
            qt.y0(129, (bArr[i2 + 4] << 24) | (bArr[i2 + 5] << 16) | (bArr[i2 + 6] << 8) | bArr[i2 + 7]);
            qt.y0(130, bArr[i2 + 8] & 255);
            qt.y0(131, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 8:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                qt.y0(98, (b10 >> 0) & 1);
                qt.y0(99, (b10 >> 1) & 1);
                qt.y0(100, (b10 >> 2) & 3);
                qt.y0(101, (b11 >> 0) & 1);
                byte b12 = bArr[i2 + 4];
                qt.y0(102, (b12 >> 3) & 1);
                qt.y0(103, (b12 >> 7) & 1);
                qt.y0(105, (b12 >> 1) & 1);
                qt.y0(104, (b12 >> 0) & 1);
                break;
            case 9:
                byte b13 = bArr[i2 + 2];
                byte b14 = bArr[i2 + 3];
                byte b15 = bArr[i2 + 4];
                qt.y0(106, (b13 & 31) * 10);
                qt.y0(107, (b13 >> 5) & 3);
                qt.y0(108, b14 & 31);
                qt.y0(109, b15 & 31);
                qt.y0(110, (b14 >> 5) & 3);
                break;
            case 10:
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                byte b18 = bArr[i2 + 4];
                qt.y0(111, (b16 >> 2) & 1);
                qt.y0(112, (b16 >> 3) & 1);
                qt.y0(113, (b16 >> 4) & 1);
                qt.y0(114, (b16 >> 0) & 1);
                qt.y0(115, (b17 >> 3) & 1);
                qt.y0(116, (b17 >> 4) & 1);
                qt.y0(123, (b17 >> 7) & 1);
                qt.y0(124, (b17 >> 6) & 1);
                qt.y0(117, (b18 >> 7) & 1);
                qt.y0(118, (b18 >> 6) & 1);
                qt.y0(119, (b16 >> 6) & 3);
                qt.y0(120, (b16 >> 1) & 1);
                qt.y0(121, (b17 >> 5) & 1);
                qt.y0(122, b17 & 3);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.h.f16865a.d(this.f3169m);
        qt.q0(this.f3164h);
        qt.q0(this.f3165i);
        w0.e.f17815a.d(this.f3165i);
        w0.e.f17819e.d(this.f3165i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 132) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -125, 2, iArr[0], 0);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, -1, 1, iArr[0]);
        } else if (i2 == 4 && iArr != null && iArr.length > 1) {
            z.k.s(227, -119, 8, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
        }
    }
}
