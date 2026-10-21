package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class pq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9312c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9313d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{49, 5}, new int[]{50, 1}, new int[]{51, 5}, new int[]{52, 1}, new int[]{53, 58}, new int[]{54, 18}, new int[]{55, 62}, new int[]{56, 6}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 67}, new int[]{61, 68}, new int[]{62, 21}, new int[]{63, 25}, new int[]{64, 38}, new int[]{65, 8}, new int[]{66, 7}, new int[]{67, 30}, new int[]{68, 31}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9314e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9315f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9316g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9317h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(pq.this.f9316g);
            pq.this.f9314e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pq pqVar = pq.this;
            int i2 = pqVar.f9314e - 1;
            pqVar.f9314e = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                z.k.s(227, 133, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(pqVar.f9316g);
                pq.this.f9314e = 5;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pq.this.a3();
        }
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
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(this.f9315f, 1);
        l0.b0.b(this.f9317h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 != 36) {
                return;
            }
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
            }
            qt.y0(3, (b3 >> 2) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            qt.y0(5, (b3 >> 4) & 1);
            qt.y0(0, (b3 >> 5) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f9312c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f9313d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f9312c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f9311b = i4;
                break;
            }
            i4++;
        }
        switch (this.f9312c) {
            case 65:
                for (int i6 = 0; i6 < (b5 & 255); i6++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                break;
            case 66:
                for (int i7 = 0; i7 < (b5 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                break;
            case 67:
                for (int i8 = 0; i8 < (b5 & 255); i8++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                break;
            case 68:
                for (int i9 = 0; i9 < (b5 & 255); i9++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                break;
            default:
                int i10 = b5 & 255;
                if (i10 == 1) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                    }
                } else if (i10 == 0) {
                    int i11 = this.f9311b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f9311b = 255;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9315f);
        l0.b0.p0(this.f9316g);
        l0.b0.p0(this.f9317h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && T2(iArr, 2)) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3() {
        String str;
        String str2;
        int i2 = u0.b.D;
        if (i2 != 1) {
            if (i2 == 2) {
                c3(h0.c.f2437h);
                return;
            }
            if (i2 == 3) {
                c3(h0.c.f2445l);
                return;
            }
            if (i2 == 5) {
                z.k.s(227, 192, 1, 7);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    c3(u0.b.i3);
                    break;
                default:
                    z.k.s(227, 192, 1, 4);
                    break;
            }
        }
        int i3 = w0.d.f17796h;
        if (i3 == 65536) {
            str = "FM1";
        } else if (i3 == 65537) {
            str = "FM2";
        } else if (i3 == 65538) {
            str = "FM3";
        } else if (i3 == 0) {
            str = "AM1";
        } else {
            str = i3 == 1 ? "AM2" : ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (i3 < 65536 || i3 > 65538) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            int i4 = w0.d.f17797i;
            sb.append(i4 / 10000 == 0 ? 32 : i4 / 10000);
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            int i5 = w0.d.f17797i;
            sb2.append((i5 % 10000) / 1000 != 0 ? (i5 % 10000) / 1000 : 32);
            str2 = ((sb2.toString() + ((w0.d.f17797i % 1000) / 100)) + ((w0.d.f17797i % 100) / 10)) + (w0.d.f17797i % 10);
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            int i6 = w0.d.f17797i;
            sb3.append(i6 / 10000 != 0 ? i6 / 10000 : 32);
            str2 = ((((sb3.toString() + ((w0.d.f17797i % 10000) / 1000)) + ((w0.d.f17797i % 1000) / 100)) + '.') + ((w0.d.f17797i % 100) / 10)) + (w0.d.f17797i % 10);
        }
        c3(str2);
    }

    public final void c3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        if (length > 19) {
            length = 19;
        }
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4 + 1] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[i5 + 4] = bArr[i5];
        }
        z.k.s(iArr);
    }
}
