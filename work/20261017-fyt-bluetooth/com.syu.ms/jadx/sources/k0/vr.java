package k0;

import android.content.Intent;
import android.text.Spanned;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class vr extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f11508o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11510c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11511d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11512e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11513f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f11514g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11515h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f11516i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f11517j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11518k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f11519l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11520m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11521n = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vr.this.f11515h);
            vr.this.f11513f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vr vrVar = vr.this;
            int i2 = vrVar.f11513f - 1;
            vrVar.f11513f = i2;
            if (i2 <= 0) {
                l0.b0.p0(vrVar.f11515h);
                vr.this.f11513f = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int unused = vr.f11508o = vr.this.f11517j.b(1, 0);
                qt.y0(126, vr.f11508o);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            qt.y0(127, time.hour);
            qt.y0(128, time.minute);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f11517j.a();
        u0.c.f17386m.a(this.f11514g, 1);
        qt.z(this.f11516i);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8317l = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            int i6 = bArr[i2 + 3] & 255;
            this.f11510c = bArr[i2 + 2] & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f11511d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f11510c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f11509b = i7;
                    break;
                }
                i7++;
            }
            int i9 = i6 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f11509b;
                    if (i10 < iArr.length) {
                        i4 = 255;
                        if (i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f11509b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 41) {
            int i11 = i2 + 2;
            qt.y0(11, (bArr[i11] >> 6) & 1);
            qt.y0(13, (bArr[i11] >> 5) & 1);
            qt.y0(16, (bArr[i11] >> 4) & 1);
            qt.y0(65, (bArr[i11] >> 3) & 1);
            qt.y0(20, (bArr[i11] >> 2) & 1);
            qt.y0(19, (bArr[i11] >> 1) & 1);
            qt.y0(12, (bArr[i11] >> 0) & 1);
            qt.y0(27, bArr[i2 + 3] & 255);
            qt.y0(21, bArr[i2 + 4] & 3);
            qt.y0(80, bArr[i2 + 5] & 255);
            u0.d.B3((bArr[i2 + 7] * 10) + 1000);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65 && nt.f8633a != 2884039) {
            int i12 = i2 + 2;
            byte b3 = bArr[i12];
            if (b3 == 1) {
                int i13 = i2 + 3;
                int i14 = i2 + 4;
                int i15 = i2 + 5;
                o1.x.C(nt.f8643f, 1049, new int[]{23, bArr[i12], bArr[i13], bArr[i14], bArr[i15]}, null, null);
                qt.y0(98, (bArr[i13] >> 7) & 1);
                qt.y0(120, (bArr[i13] >> 6) & 1);
                qt.y0(99, (bArr[i13] >> 0) & 15);
                qt.y0(100, (bArr[i14] >> 7) & 1);
                qt.y0(101, (bArr[i14] >> 6) & 1);
                qt.y0(102, (bArr[i14] >> 5) & 1);
                qt.y0(103, (bArr[i14] >> 4) & 1);
                qt.y0(104, (bArr[i15] >> 7) & 1);
                qt.y0(106, (bArr[i15] >> 5) & 1);
                qt.y0(107, (bArr[i15] >> 4) & 1);
                qt.y0(105, (bArr[i15] >> 6) & 1);
                qt.y0(108, (bArr[i15] >> 3) & 1);
                qt.y0(109, (bArr[i15] >> 2) & 1);
                qt.y0(110, (bArr[i15] >> 1) & 1);
                int i16 = (bArr[i13] >> 5) & 1;
                if (this.f11513f == 6) {
                    this.f11520m = i16;
                    if (i16 == 1) {
                        d3();
                        return;
                    } else {
                        if (qt.i0().equals("com.syu.carinfo.zhtd.bmw.ZH2PilotcarChargeCarinfoAct")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (b3 == 2) {
                int i17 = i2 + 3;
                int i18 = i2 + 4;
                int i19 = i2 + 5;
                int i20 = i2 + 6;
                int i21 = i2 + 7;
                int i22 = i2 + 8;
                int i23 = i2 + 9;
                int i24 = i2 + 10;
                o1.x.C(nt.f8643f, 1049, new int[]{23, bArr[i12], bArr[i17], bArr[i18], bArr[i19], bArr[i20], bArr[i21], bArr[i22], bArr[i23], bArr[i24]}, null, null);
                qt.y0(111, ((bArr[i17] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i18] << 8) & 65280) | (bArr[i19] & 255));
                qt.y0(112, ((bArr[i20] << 8) & 65280) | (bArr[i21] & 255));
                qt.y0(113, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
                qt.y0(114, bArr[i24] & 255);
                return;
            }
            if (b3 != 3) {
                if (b3 != 4) {
                    return;
                }
                int i25 = i2 + 3;
                int i26 = i2 + 4;
                int i27 = i2 + 5;
                int i28 = i2 + 6;
                int i29 = i2 + 7;
                int i30 = i2 + 8;
                int i31 = i2 + 9;
                int i32 = i2 + 10;
                o1.x.C(nt.f8643f, 1049, new int[]{23, bArr[i12], bArr[i25], bArr[i26], bArr[i27], bArr[i28], bArr[i29], bArr[i30], bArr[i31], bArr[i32]}, null, null);
                qt.y0(121, ((bArr[i25] << 8) & 65280) | (bArr[i26] & 255));
                qt.y0(122, ((bArr[i27] << 8) & 65280) | (bArr[i28] & 255));
                qt.y0(123, ((bArr[i29] << 8) & 65280) | (bArr[i30] & 255));
                qt.y0(124, bArr[i31] & 255);
                qt.y0(125, bArr[i32] & 255);
                return;
            }
            int i33 = i2 + 3;
            int i34 = i2 + 4;
            int i35 = i2 + 5;
            int i36 = i2 + 6;
            int i37 = i2 + 7;
            int i38 = i2 + 8;
            int i39 = i2 + 9;
            o1.x.C(nt.f8643f, 1049, new int[]{23, bArr[i12], bArr[i33], bArr[i34], bArr[i35], bArr[i36], bArr[i37], bArr[i38], bArr[i39]}, null, null);
            if (this.f11521n != (bArr[i33] & 255)) {
                int i40 = bArr[i33] & 255;
                this.f11521n = i40;
                if (i40 != 0 && i40 != 23 && i40 != 24) {
                    e3();
                } else if (qt.i0().equals("com.syu.carinfo.zhtd.bmw.ZH2PilotcarWARNCodeinfoAct")) {
                    l0.b0.l0(6, 0);
                    i5 = 1;
                    l0.b0.l0(6, 1);
                }
                i5 = 1;
            } else {
                i5 = 1;
            }
            int[] iArr2 = new int[i5];
            iArr2[0] = bArr[i33] & 255;
            qt.y0(115, iArr2);
            int[] iArr3 = new int[i5];
            iArr3[0] = bArr[i34] & 255;
            qt.y0(116, iArr3);
            int[] iArr4 = new int[i5];
            iArr4[0] = ((bArr[i35] << 8) & 65280) | (bArr[i36] & 255);
            qt.y0(117, iArr4);
            int[] iArr5 = new int[i5];
            iArr5[0] = bArr[i37] & 255;
            qt.y0(118, iArr5);
            int[] iArr6 = new int[i5];
            iArr6[0] = (bArr[i39] & 255) | ((bArr[i38] << 8) & 65280);
            qt.y0(119, iArr6);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11517j.j();
        u0.c.f17386m.d(this.f11514g);
        l0.b0.p0(this.f11515h);
        qt.q0(this.f11516i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            l0.b0.l0(5, 0);
            l0.b0.l0(5, 1);
        } else if (i2 == 1) {
            f3();
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }

    public final void d3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.zhtd.bmw.ZH2PilotcarChargeCarinfoAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.zhtd.bmw.ZH2PilotcarChargeCarinfoAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void e3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.zhtd.bmw.ZH2PilotcarWARNCodeinfoAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.zhtd.bmw.ZH2PilotcarWARNCodeinfoAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void f3() {
        int i2 = nt.f8645g[111];
        f11508o = i2;
        qt.y0(126, i2);
        int iB = this.f11517j.b(1, 0);
        int i3 = f11508o;
        if (iB != i3) {
            this.f11517j.g(1, i3);
        }
    }
}
