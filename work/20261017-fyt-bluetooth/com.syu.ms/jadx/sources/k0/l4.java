package k0;

import android.drm.DrmManagerClient;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class l4 extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f7526m = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7529d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f7527b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7528c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7530e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f7531f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 33}, new int[]{4, 32}, new int[]{5, 0}, new int[]{6, 29}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7532g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Handler f7533h = new a(Looper.getMainLooper());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f7534i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7535j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7536k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7537l = new d();

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                qt.f();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(l4.this.f7536k);
            l4.this.f7534i = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l4 l4Var = l4.this;
            byte b2 = (byte) (l4Var.f7534i - 1);
            l4Var.f7534i = b2;
            if (b2 > 0) {
                l4Var.h3(l4Var.f7527b.b(1, 1));
            } else {
                l0.b0.p0(l4Var.f7536k);
                l4.this.f7534i = (byte) 5;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            z.k.s(227, 115, 8, 0, 128, (byte) time.weekDay, ((byte) time.minute) | 128, (byte) time.hour, b4 | 128, b3, b2 | 128);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 34:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[103] & 3) == 2) {
                        c3(8);
                    }
                } else if ((nt.f8645g[103] & 3) == 1) {
                    c3(8);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[104] & 1) == 1) {
                        c3(1);
                    }
                } else if ((nt.f8645g[104] & 1) == 0) {
                    c3(1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[103] >> 5) & 1) == 1) {
                        c3(5);
                    }
                } else if (((nt.f8645g[103] >> 5) & 1) == 0) {
                    c3(5);
                }
                break;
            case 38:
                if (iArr[1] != 1) {
                    if (iArr[1] == 0) {
                        int[] iArr2 = nt.f8645g;
                        if (((iArr2[103] >> 2) & 3) == 2 || ((iArr2[103] >> 2) & 3) == 3) {
                            c3(3);
                        }
                    }
                } else if (((nt.f8645g[103] >> 2) & 3) == 1) {
                    c3(3);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    c3(6);
                } else {
                    c3(7);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    c3(13);
                } else {
                    c3(12);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    c3(15);
                } else {
                    c3(14);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f7527b.a();
        qt.z(this.f7537l);
        int i2 = (nt.f8633a >> 16) & 65535;
        this.f7532g = i2;
        if (i2 == 3) {
            h3(this.f7527b.b(1, 1));
            if (App.c().getResources().getConfiguration().orientation == 1) {
                mt mtVar = this.f7886a;
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 0;
            } else {
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = null;
                mtVar2.f8314i = 1;
            }
            mt mtVar3 = this.f7886a;
            mtVar3.f8312g = 1;
            mtVar3.f8318m = new int[]{34, 35, 37, 38, 39, 41, 42};
        } else if (i2 != 4) {
            mt mtVar4 = this.f7886a;
            mtVar4.f8306a = null;
            mtVar4.f8312g = 0;
        } else {
            h3(this.f7527b.b(1, 1));
            mt mtVar5 = this.f7886a;
            mtVar5.f8306a = new String[]{"com.syu.canbus"};
            mtVar5.f8312g = 1;
            mtVar5.f8314i = 1;
            mtVar5.f8318m = new int[]{34, 35, 37, 38, 39, 41, 42};
        }
        u0.c.f17386m.a(this.f7535j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -79) {
            byte b3 = bArr[i2 + 2];
            int i7 = i2 + 3;
            byte b4 = bArr[i7];
            int i8 = i2 + 4;
            byte b5 = bArr[i8];
            int i9 = i2 + 5;
            byte b6 = bArr[i9];
            int i10 = i2 + 6;
            byte b7 = bArr[i10];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            qt.y0(100, b3 & 255);
            qt.y0(101, b4 & 255);
            qt.y0(102, b5 & 255);
            qt.y0(103, b6 & 255);
            qt.y0(104, b7 & 255);
            qt.y0(105, b8 & 255);
            qt.y0(106, b9 & 255);
            qt.y0(21, (bArr[i7] >> 0) & 7);
            int i11 = (bArr[i7] >> 3) & 7;
            if (i11 != 1) {
                if (i11 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i11 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i11 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i11 != 5) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                }
                i5 = i6;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(65, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                qt.y0(28, ((bArr[i7] >> 2) & 16) | ((bArr[i8] >> 0) & 15));
                qt.y0(27, ((bArr[i9] >> 2) & 16) | ((bArr[i8] >> 4) & 15));
            } else {
                qt.y0(27, ((bArr[i7] >> 2) & 16) | ((bArr[i8] >> 0) & 15));
                qt.y0(28, ((bArr[i9] >> 2) & 16) | ((bArr[i8] >> 4) & 15));
            }
            qt.y0(11, (bArr[i9] >> 0) & 3);
            qt.y0(12, (bArr[i9] >> 2) & 3);
            qt.y0(14, (bArr[i9] >> 4) & 1);
            qt.y0(16, (bArr[i9] >> 5) & 1);
            qt.y0(13, (bArr[i10] >> 0) & 1);
            return;
        }
        if (b2 == -16) {
            byte b10 = bArr[i2 + 2];
            if (b10 == 1 || b10 == 2 || b10 == 3 || b10 == 4) {
                qt.L(new String(bArr, i2 + 3, 7));
                return;
            } else {
                if (b10 != 5) {
                    return;
                }
                if ((bArr[i2 + 3] & 127) == 1) {
                    qt.y0(107, 1);
                    return;
                } else {
                    qt.y0(107, 0);
                    return;
                }
            }
        }
        if (b2 == 2) {
            if (nt.a()) {
                byte b11 = bArr[i2 + 7];
                int i12 = b11 & 255;
                u0.d.A3((b11 & 128) != 0 ? 1000 - ((((~i12) + 1) & 127) * 10) : (i12 * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 != 6) {
            if (b2 == 118) {
                qt.y0(98, bArr[i2 + 2] & 255);
                if (n0.j4.f16464b != 9 && this.f7532g == 4) {
                    byte b12 = bArr[i2 + 5];
                    if (b12 == 1 || b12 == 2) {
                        qt.t();
                    } else {
                        qt.f();
                    }
                }
                o1.b0.h(bArr, i2, i3);
                return;
            }
            if (b2 != 50) {
                if (b2 != 51) {
                    return;
                }
                qt.m(bArr[i2 + 2], bArr[i2 + 3], 7760, true, 5240);
                return;
            } else {
                if (nt.a()) {
                    int i13 = i2 + 2;
                    u0.d.D2(a3(bArr[i13]));
                    u0.d.E2(a3(bArr[i13]));
                    int i14 = i2 + 3;
                    u0.d.F2(a3(bArr[i14] & 127));
                    u0.d.G2(a3(bArr[i14] & 127));
                    u0.d.R2(a3(bArr[i2 + 4]));
                    u0.d.S2(b3(bArr[i2 + 5] & 127));
                    u0.d.T2(b3(bArr[i2 + 6]));
                    u0.d.U2(a3(bArr[i2 + 7] & 127));
                    return;
                }
                return;
            }
        }
        byte b13 = bArr[i2 + 2];
        byte b14 = bArr[i2 + 3];
        this.f7530e = b13 & 255;
        int i15 = 0;
        while (true) {
            iArr = this.f7531f;
            if (i15 >= iArr.length) {
                break;
            }
            int i16 = this.f7530e;
            if (i16 == iArr[i15][0]) {
                if (i16 == 0) {
                    break;
                }
                this.f7529d = i15;
                break;
            }
            i15++;
        }
        int i17 = this.f7530e;
        if (i17 == 1) {
            for (int i18 = 0; i18 < (b14 & 255); i18++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (i17 == 2) {
            for (int i19 = 0; i19 < (b14 & 255); i19++) {
                l0.b0.l0(8, 0);
            }
            l0.b0.l0(8, 1);
            return;
        }
        if (i17 == 3) {
            for (int i20 = 0; i20 < (b14 & 255); i20++) {
                l0.b0.l0(31, 0);
            }
            l0.b0.l0(31, 1);
            return;
        }
        if (i17 == 4) {
            for (int i21 = 0; i21 < (b14 & 255); i21++) {
                l0.b0.l0(30, 0);
            }
            l0.b0.l0(30, 1);
            return;
        }
        int i22 = b14 & 255;
        if (i22 == 1) {
            if (i15 < iArr.length) {
                l0.b0.l0(iArr[i15][1], 0);
            }
        } else if (i22 == 0) {
            int i23 = this.f7529d;
            if (i23 < iArr.length && i23 != 255) {
                l0.b0.l0(iArr[i23][1], 1);
            }
            this.f7529d = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7527b.j();
        qt.q0(this.f7537l);
        u0.c.f17386m.d(this.f7535j);
        l0.b0.p0(this.f7536k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 109) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 1) {
            if (iArr[1] != 255) {
                h3(iArr[1]);
            } else {
                g3(iArr[0], iArr[1]);
            }
        }
    }

    public final int a3(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 10 : 5;
        }
        return 3;
    }

    public final int b3(int i2) {
        if (i2 == 1) {
            return 3;
        }
        if (i2 != 2) {
            return i2 != 3 ? 10 : 9;
        }
        return 5;
    }

    public final void c3(int i2) {
        Z0(0, new int[]{i2, 1}, null, null);
        Z0(0, new int[]{i2, 0}, null, null);
    }

    public void g3(int i2, int i3) {
        z.k.s(227, i.a.Theme_preferenceFragmentStyle, 8, u0.b.f17306a0 == 1 ? 1 : 16, i2, i3, 128, 0, 128, 0, 128);
    }

    public final void h3(int i2) {
        f7526m = i2;
        qt.y0(108, i2);
        int iB = this.f7527b.b(1, 1);
        int i3 = f7526m;
        if (iB != i3) {
            this.f7527b.g(1, i3);
        }
        g3(255, f7526m);
    }
}
