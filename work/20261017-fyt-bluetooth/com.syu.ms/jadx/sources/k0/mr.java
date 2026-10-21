package k0;

import android.drm.DrmManagerClient;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class mr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8281b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8284e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8282c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8283d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 2}, new int[]{5, 18}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8285f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8286g = {new int[]{1, 5}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f8287h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8288i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8289j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8290k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f8291l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8292m = new e();

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0022  */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = u0.b.f17359s0;
            double d2 = i3;
            if ((d2 <= 22.5d && i3 >= 0) || (d2 >= 337.5d && i3 <= 360)) {
                i2 = 0;
            } else if (d2 > 22.5d && d2 < 67.5d) {
                i2 = 1;
            } else if (d2 >= 67.5d && d2 <= 112.5d) {
                i2 = 2;
            } else if (d2 > 112.5d && d2 < 157.5d) {
                i2 = 3;
            } else if (d2 >= 157.5d && d2 <= 202.5d) {
                i2 = 4;
            } else if (d2 > 202.5d && d2 < 247.5d) {
                i2 = 5;
            } else if (d2 >= 247.5d && d2 <= 292.5d) {
                i2 = 6;
            } else if (d2 <= 292.5d || d2 >= 337.5d) {
                i2 = 0;
            } else {
                i2 = 7;
            }
            z.k.s(227, 167, 3, i2, i3 & 255, (i3 >> 8) & 255);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mr.this.b3((byte) 2, u0.b.i3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mr.this.b3((byte) 3, u0.b.j3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mr.this.b3((byte) 4, u0.b.k3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -58, 7, 80, (byte) time.hour, (byte) time.minute, (byte) time.second, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay);
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
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f8292m);
        qt.z(this.f8288i);
        u0.c.f17388o.a(this.f8289j, 1);
        u0.c.f17389p.a(this.f8290k, 1);
        u0.c.f17390q.a(this.f8291l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == -47) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i4 = i2 + 3;
                l0.c0.b((bArr[i4] >> 7) & 1, (bArr[i4] >> 6) & 1, 0);
                return;
            } else {
                int i5 = i2 + 3;
                l0.c0.a((bArr[i5] >> 7) & 1, (bArr[i5] >> 6) & 1, 0);
            }
        }
        if (b2 == -46) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            int i6 = i2 + 6;
            qt.y0(102, (bArr[i6] >> 4) & 3);
            qt.y0(103, (bArr[i6] >> 6) & 3);
            qt.y0(104, (bArr[i6] >> 0) & 3);
            qt.y0(105, (bArr[i6] >> 2) & 3);
            return;
        }
        if (b2 == 36) {
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
        if (b2 == 41) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            if (this.f8287h) {
                return;
            }
            qt.i(i8, i9, true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 50) {
            int i10 = i2 + 2;
            qt.y0(107, (bArr[i10] >> 7) & 1);
            qt.y0(108, (bArr[i10] >> 6) & 1);
            qt.y0(109, (bArr[i10] >> 0) & 15);
            int i11 = i2 + 3;
            qt.y0(110, (bArr[i11] >> 4) & 15);
            qt.y0(111, (bArr[i11] >> 0) & 15);
            int i12 = i2 + 4;
            qt.y0(112, (bArr[i12] >> 6) & 3);
            qt.y0(113, (bArr[i12] >> 5) & 1);
            qt.y0(114, (bArr[i12] >> 4) & 1);
            qt.y0(115, (bArr[i12] >> 2) & 3);
            qt.y0(116, (bArr[i12] >> 1) & 1);
            qt.y0(117, (bArr[i2 + 5] >> 0) & 255);
            qt.y0(118, (bArr[i2 + 6] >> 0) & 255);
            int i13 = i2 + 7;
            qt.y0(119, (bArr[i13] >> 7) & 1);
            qt.y0(120, (bArr[i13] >> 5) & 3);
            return;
        }
        if (b2 == 64) {
            qt.y0(121, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(122, bArr[i2 + 11] & 255);
            qt.y0(123, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(124, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            int i14 = bArr[i2 + 26] & 255;
            if (i14 == 0 || i14 == 255) {
                u0.d.B3(0);
            } else {
                u0.d.B3((i14 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
            qt.y0(125, bArr[i2 + 27] & 255);
            qt.y0(126, ((bArr[i2 + 29] << 8) & 65280) | (bArr[i2 + 30] & 255));
            qt.y0(127, (bArr[i2 + 32] & 255) | ((bArr[i2 + 31] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i16 = i2 + 3;
                    l0.c0.b((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                } else {
                    int i17 = i2 + 3;
                    l0.c0.a((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                    return;
                }
            }
            if (i15 == 3) {
                int i18 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i18);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i18}, null, null);
                return;
            } else {
                if (i15 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8287h = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8282c = b3 & 255;
                int i19 = 0;
                while (true) {
                    iArr = this.f8283d;
                    if (i19 < iArr.length) {
                        int i20 = this.f8282c;
                        if (i20 != iArr[i19][0]) {
                            i19++;
                        } else if (i20 != 0) {
                            this.f8281b = i19;
                        }
                    }
                }
                int i21 = this.f8282c;
                if (i21 == 3) {
                    if ((b4 & 255) == 1) {
                        int i22 = h0.c.E;
                        if (i22 == 3 || i22 == 4 || i22 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                } else if (i21 != 4) {
                    int i23 = b4 & 255;
                    if (i23 != 1) {
                        if (i23 == 0) {
                            int i24 = this.f8281b;
                            if (i24 < iArr.length && i24 != 255) {
                                l0.b0.l0(iArr[i24][1], 1);
                            }
                            this.f8281b = 255;
                        }
                    } else if (i19 < iArr.length) {
                        l0.b0.l0(iArr[i19][1], 0);
                    }
                } else if ((b4 & 255) == 1) {
                    if (h0.c.E == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f8285f = b5 & 255;
                int i25 = 0;
                while (true) {
                    iArr2 = this.f8286g;
                    if (i25 < iArr2.length) {
                        int i26 = this.f8285f;
                        if (i26 != iArr2[i25][0]) {
                            i25++;
                        } else if (i26 != 0) {
                            this.f8284e = i25;
                        }
                    }
                }
                int i27 = b6 & 255;
                if (i27 != 1) {
                    if (i27 == 0) {
                        int i28 = this.f8284e;
                        if (i28 < iArr2.length && i28 != 255) {
                            l0.b0.l0(iArr2[i28][1], 1);
                        }
                        this.f8284e = 255;
                    }
                } else if (i25 < iArr2.length) {
                    l0.b0.l0(iArr2[i25][1], 0);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2]));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3]));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4]));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5]));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f8292m);
        qt.q0(this.f8288i);
        l0.b0.p0(l0.c0.f13021o);
        u0.c.f17388o.d(this.f8289j);
        u0.c.f17389p.d(this.f8290k);
        u0.c.f17390q.d(this.f8291l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, 144, 1, iArr[0]);
        }
    }

    public final void b3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 32 ? bytes.length : 32;
        int[] iArr = new int[36];
        for (int i2 = 0; i2 < 36; i2++) {
            iArr[i2] = 0;
        }
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 4] = bytes[i3];
        }
        z.k.s(iArr);
    }
}
