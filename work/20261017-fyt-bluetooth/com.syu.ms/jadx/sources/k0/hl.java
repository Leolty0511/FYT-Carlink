package k0;

import android.content.pm.PackageManager;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class hl extends lt {
    public static int C = 0;
    public static int D = 0;
    public static int E = 10;
    public static int F = 10;
    public static int G = 10;
    public static int H = 7;
    public static int I = 7;
    public static int J = 10;
    public static int K;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6050c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6051d = {new int[]{16, 12}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 0}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 21}, new int[]{28, 54}, new int[]{29, 18}, new int[]{30, 38}, new int[]{31, 3}, new int[]{32, 4}, new int[]{33, 1}, new int[]{34, 16}, new int[]{35, 64}, new int[]{36, 55}, new int[]{37, 29}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 38}, new int[]{41, 5}, new int[]{42, 74}, new int[]{43, 75}, new int[]{44, 55}, new int[]{45, 9}, new int[]{46, 6}, new int[]{47, 34}, new int[]{48, 13}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 35}, new int[]{53, 15}, new int[]{54, 53}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6052e = {new int[]{16, 12}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 12}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 74}, new int[]{28, 75}, new int[]{29, 54}, new int[]{30, 25}, new int[]{31, 4}, new int[]{32, 4}, new int[]{33, 3}, new int[]{34, 18}, new int[]{35, 25}, new int[]{36, 55}, new int[]{37, 24}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 38}, new int[]{41, 5}, new int[]{42, 24}, new int[]{43, 24}, new int[]{44, 55}, new int[]{45, 9}, new int[]{46, 54}, new int[]{47, 25}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 55}, new int[]{48, 13}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f6053f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6054g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6055h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6056i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f6057j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6058k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6059l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6060m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6061n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f6062o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f6063p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f6064q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6065r = new h();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.g0 f6066s = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f6067t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f6068u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f6069v = 3;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f6070w = 4;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f6071x = 5;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f6072y = 6;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f6073z = 7;
    public final int A = 9;
    public final int B = 10;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 7, 6, (byte) time.minute, (byte) time.hour, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (qt.k0()) {
                qt.y0(222, 0);
            } else if (u0.b.f17347o == 1) {
                qt.y0(222, 1);
            } else {
                qt.y0(222, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hl.this.f6057j = u0.b.f17359s0;
            if ((hl.this.f6057j <= 11.25d && hl.this.f6057j >= 0.0f) || (hl.this.f6057j >= 348.75d && hl.this.f6057j <= 360.0f)) {
                hl.this.f6059l = 0;
            } else if (hl.this.f6057j > 11.25d && hl.this.f6057j < 33.75d) {
                hl.this.f6059l = 15;
            } else if (hl.this.f6057j >= 33.75d && hl.this.f6057j <= 56.25d) {
                hl.this.f6059l = 14;
            } else if (hl.this.f6057j > 56.25d && hl.this.f6057j < 78.75d) {
                hl.this.f6059l = 13;
            } else if (hl.this.f6057j >= 78.75d && hl.this.f6057j <= 101.25d) {
                hl.this.f6059l = 12;
            } else if (hl.this.f6057j > 101.25d && hl.this.f6057j < 123.75d) {
                hl.this.f6059l = 11;
            } else if (hl.this.f6057j >= 123.75d && hl.this.f6057j <= 146.25d) {
                hl.this.f6059l = 10;
            } else if (hl.this.f6057j > 146.25d && hl.this.f6057j < 168.75d) {
                hl.this.f6059l = 9;
            } else if (hl.this.f6057j > 168.75d && hl.this.f6057j < 191.25d) {
                hl.this.f6059l = 8;
            } else if (hl.this.f6057j > 191.25d && hl.this.f6057j < 213.75d) {
                hl.this.f6059l = 7;
            } else if (hl.this.f6057j > 213.75d && hl.this.f6057j < 236.25d) {
                hl.this.f6059l = 6;
            } else if (hl.this.f6057j > 236.25d && hl.this.f6057j < 258.75d) {
                hl.this.f6059l = 5;
            } else if (hl.this.f6057j > 258.75d && hl.this.f6057j < 281.25d) {
                hl.this.f6059l = 4;
            } else if (hl.this.f6057j > 281.25d && hl.this.f6057j < 303.75d) {
                hl.this.f6059l = 3;
            } else if (hl.this.f6057j > 303.75d && hl.this.f6057j < 326.25d) {
                hl.this.f6059l = 2;
            } else if (hl.this.f6057j <= 326.25d || hl.this.f6057j >= 348.75d) {
                hl.this.f6059l = 0;
            } else {
                hl.this.f6059l = 1;
            }
            if (hl.this.f6059l != hl.this.f6058k) {
                z.k.s(227, 6, 134, hl.this.f6059l, 0);
                hl hlVar = hl.this;
                hlVar.f6058k = hlVar.f6059l;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hl.this.f6063p);
            hl.this.f6061n = 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hl hlVar = hl.this;
            int i2 = hlVar.f6061n - 1;
            hlVar.f6061n = i2;
            if (i2 <= 0) {
                l0.b0.p0(hlVar.f6063p);
                hl.this.f6061n = 5;
                return;
            }
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, 5, 4, 1);
                return;
            }
            hlVar.e3(hlVar.f6066s.b(1, 0));
            hl hlVar2 = hl.this;
            hlVar2.d3(hlVar2.f6066s.b(2, 0));
            z.k.s(227, 5, 4, 0);
            int i3 = nt.f8637c;
            if (i3 != 3 && i3 != 6 && i3 != 8 && i3 != 10 && i3 != 18 && i3 != 21) {
                switch (i3) {
                }
                return;
            }
            hl hlVar3 = hl.this;
            hlVar3.b3(hlVar3.f6066s.b(3, 10), hl.this.f6066s.b(4, 10), hl.this.f6066s.b(5, 10));
            hl hlVar4 = hl.this;
            hlVar4.a3(hlVar4.f6066s.b(6, 7), hl.this.f6066s.b(7, 7));
            hl hlVar5 = hl.this;
            hlVar5.c3(hlVar5.f6066s.b(9, 10));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 4:
                case 5:
                case 6:
                    z.k.s(227, 7, 238, 32, 6, 0);
                    break;
                case 7:
                case 8:
                    z.k.s(227, 7, 238, 32, 7, 0);
                    break;
                case 9:
                case 10:
                case 49:
                    z.k.s(227, 7, 238, 32, 8, 0);
                    break;
                case 12:
                    z.k.s(227, 7, 238, 32, 2, 0);
                    z.k.s(227, 6, 169, 255, 1);
                    break;
                case 13:
                    z.k.s(227, 7, 238, 32, 9, 0);
                    z.k.s(227, 6, 169, 255, 1);
                    break;
                case 14:
                    z.k.s(227, 7, 238, 32, 11, 0);
                    z.k.s(227, 6, 169, 255, 1);
                    break;
                case 15:
                    z.k.s(227, 7, 238, 32, 3, 0);
                    z.k.s(227, 6, 169, 255, 1);
                    break;
                case 16:
                    z.k.s(227, 7, 238, 32, 4, 0);
                    z.k.s(227, 6, 169, 255, 1);
                    break;
                case 17:
                case 18:
                case 50:
                    z.k.s(227, 7, 238, 32, 10, 0);
                    break;
                case 19:
                case 53:
                    z.k.s(227, 7, 238, 32, 13, 0);
                    break;
                case 20:
                case 21:
                case 22:
                    z.k.s(227, 7, 238, 32, 14, 0);
                    break;
                case 23:
                case 24:
                case 25:
                case 26:
                case 39:
                    z.k.s(227, 7, 238, 32, 18, 1);
                    break;
                case 27:
                case 28:
                case 29:
                case 30:
                case 40:
                    z.k.s(227, 7, 238, 32, 18, 2);
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                case 41:
                    z.k.s(227, 7, 238, 32, 18, 3);
                    break;
                case 35:
                case 36:
                case 37:
                case 38:
                    z.k.s(227, 7, 238, 32, 16, 0);
                    break;
                case 42:
                case 43:
                    z.k.s(227, 7, 238, 32, 21, 0);
                    break;
                case 44:
                case 45:
                case 54:
                case 55:
                    z.k.s(227, 7, 238, 32, 22, 0);
                    break;
                case 51:
                case 52:
                    z.k.s(227, 7, 238, 32, 12, 0);
                    break;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            int i4 = i3 > 4 ? 7 : 14;
            if (i3 == 0) {
                i2 = 5;
            } else if (i3 == 2) {
                i2 = 4;
            } else if (i3 == 3) {
                i2 = 3;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 2;
            } else {
                i2 = 1;
            }
            if (u0.b.D == 2) {
                z.k.s(227, 6, 9, i4, i2);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6066s.a();
        w0.e.f17815a.a(this.f6054g, 1);
        w0.e.f17819e.a(this.f6054g, 1);
        u0.c.f17392s.a(this.f6054g, 1);
        u0.c.f17393t.a(this.f6054g, 1);
        u0.c.f17374a.a(this.f6054g, 1);
        h0.d.f2462a.a(this.f6065r, 1);
        qt.z(this.f6064q);
        u0.c.f17386m.a(this.f6062o, 1);
        o1.h.f16865a.a(this.f6060m, 1);
        u0.c.f17379f.a(this.f6056i, 1);
        qt.z(this.f6055h);
        int i2 = nt.f8637c;
        if (i2 != 3 && i2 != 6 && i2 != 8 && i2 != 10 && i2 != 21 && i2 != 18) {
            if (i2 != 19) {
                switch (i2) {
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                        break;
                    default:
                        switch (i2) {
                            default:
                                switch (i2) {
                                    case 53:
                                        break;
                                    case 54:
                                    case 55:
                                        break;
                                    default:
                                        mt mtVar = this.f7886a;
                                        mtVar.f8306a = new String[]{"com.syu.canbus"};
                                        mtVar.f8310e = 1;
                                        mtVar.f8311f = 1;
                                        mtVar.f8312g = 1;
                                        mtVar.f8320o = 0;
                                        mtVar.f8307b = 0;
                                        mtVar.f8308c = 0;
                                        mtVar.f8309d = 0;
                                        break;
                                }
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                                mt mtVar2 = this.f7886a;
                                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                                mtVar2.f8310e = 1;
                                mtVar2.f8311f = 1;
                                mtVar2.f8312g = 1;
                                mtVar2.f8314i = 1;
                                mtVar2.f8320o = 0;
                                mtVar2.f8307b = 0;
                                mtVar2.f8308c = 0;
                                mtVar2.f8309d = 0;
                                break;
                        }
                }
            }
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = null;
            mtVar3.f8310e = 1;
            mtVar3.f8311f = 1;
            mtVar3.f8312g = 1;
            mtVar3.f8307b = 0;
            mtVar3.f8308c = 0;
            mtVar3.f8309d = 0;
            return;
        }
        mt mtVar4 = this.f7886a;
        mtVar4.f8306a = new String[]{"com.syu.canbus"};
        mtVar4.f8310e = 1;
        mtVar4.f8311f = 1;
        mtVar4.f8312g = 1;
        mtVar4.f8307b = 0;
        mtVar4.f8308c = 0;
        mtVar4.f8309d = 0;
    }

    /* JADX WARN: Code duplicated, block: B:153:0x0aa1  */
    /* JADX WARN: Code duplicated, block: B:154:0x0aac  */
    /* JADX WARN: Code duplicated, block: B:164:0x0ad9  */
    /* JADX WARN: Code duplicated, block: B:165:0x0ae4  */
    /* JADX WARN: Code duplicated, block: B:176:0x0b88  */
    /* JADX WARN: Code duplicated, block: B:177:0x0b91  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        int i5;
        int i6;
        byte b3 = bArr[i2 + 1];
        if (b3 == 96) {
            qt.y0(195, bArr[i2 + 2] + 1);
        }
        if (b3 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    return;
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                }
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            } else if (i7 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                if (i7 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
        }
        if (b3 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b3) {
            case 1:
                if (bArr[i2] >= 6) {
                    int i11 = i2 + 2;
                    if ((bArr[i11] & 255) != 255) {
                        int i12 = bArr[i11] & 128;
                        int i13 = bArr[i11] & 127;
                        u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? ((((i12 != 0 ? 1320 - ((i13 * 9) / 5) : ((i13 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : i12 != 0 ? 1000 - (i13 * 10) : (i13 * 10) + 1000);
                    } else {
                        int i14 = i2 + 3;
                        if ((bArr[i14] & 255) != 255) {
                            u0.d.B3(((((bArr[i14] & 255) * 10) + 1000) | 268435456) & (-1));
                        } else {
                            u0.d.A3(0);
                        }
                    }
                } else {
                    int i15 = i2 + 2;
                    int i16 = bArr[i15] & 128;
                    int i17 = bArr[i15] & 127;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? ((((i16 != 0 ? 1320 - ((i17 * 9) / 5) : ((i17 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : i16 != 0 ? 1000 - (i17 * 10) : (i17 * 10) + 1000);
                }
                break;
            case 2:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                int i18 = b4 & 255;
                this.f6050c = i18;
                if (nt.f8637c == 15) {
                    i4 = 0;
                    while (true) {
                        int[][] iArr = this.f6052e;
                        if (i4 < iArr.length) {
                            int i19 = this.f6050c;
                            if (i19 != iArr[i4][0]) {
                                i4++;
                            } else if (i19 != 0) {
                                this.f6049b = i4;
                            }
                        }
                    }
                } else {
                    i4 = 0;
                    while (true) {
                        int[][] iArr2 = this.f6051d;
                        if (i4 < iArr2.length) {
                            int i20 = this.f6050c;
                            if (i20 != iArr2[i4][0]) {
                                i4++;
                            } else if (i20 != 0) {
                                this.f6049b = i4;
                            }
                        }
                    }
                }
                if (bArr[i2] == 5) {
                    if (nt.f8637c == 15) {
                        if (i18 != 0) {
                            int[][] iArr3 = this.f6052e;
                            if (i4 < iArr3.length) {
                                l0.b0.l0(iArr3[i4][1], 0);
                            }
                        } else {
                            int i21 = this.f6049b;
                            int[][] iArr4 = this.f6052e;
                            if (i21 < iArr4.length && i21 != 255) {
                                l0.b0.l0(iArr4[i21][1], 1);
                            }
                            this.f6049b = 255;
                        }
                    } else if (i18 != 0) {
                        int[][] iArr5 = this.f6051d;
                        if (i4 < iArr5.length) {
                            l0.b0.l0(iArr5[i4][1], 0);
                        }
                    } else {
                        int i22 = this.f6049b;
                        int[][] iArr6 = this.f6051d;
                        if (i22 < iArr6.length && i22 != 255) {
                            l0.b0.l0(iArr6[i22][1], 1);
                        }
                        this.f6049b = 255;
                    }
                } else if (bArr[i2] == 6) {
                    int i23 = this.f6050c;
                    if (i23 != 25) {
                        if (i23 != 26) {
                            if (i23 == 38) {
                                for (int i24 = 0; i24 < (b5 & 255); i24++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            } else if (i23 == 39) {
                                for (int i25 = 0; i25 < (b5 & 255); i25++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            } else if (i23 != 132) {
                                if (i23 != 133) {
                                    if ((b5 & 255) == 0) {
                                        int i26 = this.f6049b;
                                        int[][] iArr7 = this.f6051d;
                                        if (i26 < iArr7.length && i26 != 255) {
                                            l0.b0.l0(iArr7[i26][1], 1);
                                            this.f6053f = (byte) 0;
                                        }
                                        this.f6049b = 255;
                                        break;
                                    } else {
                                        int[][] iArr8 = this.f6051d;
                                        if (i4 < iArr8.length && (b2 = this.f6053f) == 0) {
                                            this.f6053f = (byte) (b2 + 1);
                                            l0.b0.l0(iArr8[i4][1], 0);
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        for (int i27 = 0; i27 < (b5 & 255); i27++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    for (int i28 = 0; i28 < (b5 & 255); i28++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                }
                break;
            case 3:
                int i29 = i2 + 2;
                int i30 = bArr[i29] & 127;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 127;
                int i33 = bArr[i2 + 4] & 255;
                int i34 = bArr[i2 + 5] & 255;
                int i35 = bArr[i2 + 8] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i30 = bArr[i31] & 127;
                    i32 = bArr[i29] & 127;
                }
                qt.y0(37, (i30 < 50 || i30 > 100) ? 0 : 1);
                if (i30 == 0) {
                    qt.y0(27, -2);
                } else if (i30 == 30) {
                    qt.y0(27, -3);
                } else if (i30 == 127) {
                    qt.y0(27, -1);
                } else if (i30 == 39) {
                    qt.y0(27, -2);
                } else if (i30 != 40) {
                    qt.y0(27, i30);
                } else {
                    qt.y0(27, -3);
                }
                if (i32 == 0) {
                    qt.y0(28, -2);
                } else if (i32 == 30) {
                    qt.y0(28, -3);
                } else if (i32 == 127) {
                    qt.y0(28, -1);
                } else if (i32 == 39) {
                    qt.y0(28, -2);
                } else if (i32 != 40) {
                    qt.y0(28, i32);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(21, i33 & 255);
                qt.y0(12, (i34 >> 7) & 1);
                qt.y0(65, (i34 >> 6) & 1);
                qt.y0(16, (i34 >> 5) & 1);
                qt.y0(20, (i34 >> 4) & 1);
                qt.y0(19, (i34 >> 3) & 1);
                qt.y0(13, (i34 >> 2) & 1);
                qt.y0(62, (i34 >> 1) & 1);
                qt.y0(11, (i34 >> 0) & 1);
                qt.y0(44, bArr[i2 + 7] & 255);
                int i36 = bArr[i2 + 6] & 255;
                if (i36 == 0) {
                    qt.y0(40, -2);
                } else if (i36 == 30) {
                    qt.y0(40, -3);
                } else if (i36 == 255) {
                    qt.y0(40, -1);
                } else if (i36 == 39) {
                    qt.y0(40, -2);
                } else if (i36 != 40) {
                    qt.y0(40, i36);
                } else {
                    qt.y0(40, -3);
                }
                int i37 = nt.f8637c;
                if (i37 == 1 || i37 == 2 || i37 == 3) {
                    qt.y0(76, i35 & 255);
                } else {
                    qt.y0(76, (i35 >> 7) & 1);
                    qt.y0(67, (i35 >> 6) & 1);
                    qt.y0(43, (i35 >> 3) & 1);
                    int i38 = (i35 >> 4) & 3;
                    if (i38 != 1) {
                        if (i38 == 2) {
                            i6 = 1;
                        } else if (i38 != 3) {
                            i6 = 0;
                        } else {
                            i6 = 0;
                            i5 = 1;
                        }
                        i5 = i6;
                    } else {
                        i5 = 0;
                        i6 = 1;
                    }
                    qt.y0(46, i6);
                    qt.y0(47, i5);
                    qt.y0(18, (i35 >> 0) & 1);
                }
                break;
            case 4:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                u0.d.R2(l0.e0.n(((b7 & 192) >> 6) & 255, 1));
                int i39 = ((b7 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                u0.d.S2(l0.e0.n(i39, 2));
                u0.d.T2(l0.e0.n(i39, 2));
                u0.d.U2(l0.e0.n(b7 & 3 & 255, 1));
                u0.d.D2(l0.e0.n(((b6 & 192) >> 6) & 255, 1));
                int i40 = ((b6 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                u0.d.E2(l0.e0.n(i40, 2));
                u0.d.F2(l0.e0.n(i40, 2));
                u0.d.G2(l0.e0.n(3 & b6 & 255, 1));
                break;
            case 5:
                byte b8 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 1) & 1);
                    qt.y0(2, (b8 >> 0) & 1);
                    qt.y0(4, (b8 >> 2) & 1);
                    qt.y0(3, (b8 >> 3) & 1);
                } else {
                    qt.y0(1, (b8 >> 0) & 1);
                    qt.y0(2, (b8 >> 1) & 1);
                    qt.y0(4, (b8 >> 3) & 1);
                    qt.y0(3, (b8 >> 2) & 1);
                }
                qt.y0(5, (b8 >> 4) & 1);
                qt.y0(0, (b8 >> 5) & 1);
                break;
            case 6:
                qt.y0(80, bArr[i2 + 2] & 255);
                break;
            default:
                switch (b3) {
                    case 64:
                        int i41 = i2 + 2;
                        int i42 = bArr[i41] & 255;
                        if (i42 != 0) {
                            qt.a(1);
                        } else if (i42 == 0) {
                            qt.a(0);
                        }
                        if (nt.f8633a == 3604927) {
                            qt.y0(223, bArr[i41] & 255);
                            qt.y0(224, bArr[i2 + 3] & 255);
                        } else if (bArr[i41] == 1) {
                            qt.y0(Process.MEDIA_UID, 2);
                        } else if (bArr[i41] == 2) {
                            qt.y0(Process.MEDIA_UID, 1);
                        }
                        break;
                    case 65:
                        int i43 = i2 + 2;
                        qt.y0(104, (bArr[i43] >> 7) & 1);
                        qt.y0(105, (bArr[i43] >> 6) & 1);
                        qt.y0(220, (bArr[i43] >> 4) & 1);
                        qt.y0(221, (bArr[i43] >> 0) & 15);
                        qt.y0(106, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(107, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                        break;
                    case 66:
                        int i44 = bArr[i2 + 2] & 255;
                        if (i44 != 0) {
                            qt.a(1);
                        } else if (i44 == 0) {
                            qt.a(0);
                        }
                        break;
                    default:
                        switch (b3) {
                            case 82:
                                byte b9 = bArr[i2 + 2];
                                if (b9 == 80) {
                                    qt.y0(169, bArr[i2 + 3] & 255);
                                    break;
                                } else {
                                    switch (b9) {
                                        case -128:
                                            qt.y0(180, bArr[i2 + 3] & 255);
                                            break;
                                        case -127:
                                            qt.y0(181, bArr[i2 + 3] & 255);
                                            break;
                                        case -126:
                                            qt.y0(182, bArr[i2 + 3] & 255);
                                            break;
                                        case -125:
                                            qt.y0(183, bArr[i2 + 3] & 255);
                                            break;
                                        case -124:
                                            qt.y0(218, bArr[i2 + 3] & 255);
                                            break;
                                        default:
                                            switch (b9) {
                                                case -112:
                                                    qt.y0(184, bArr[i2 + 3] & 255);
                                                    break;
                                                case PackageManager.INSTALL_FAILED_USER_RESTRICTED /* -111 */:
                                                    qt.y0(185, bArr[i2 + 3] & 255);
                                                    break;
                                                case -110:
                                                    qt.y0(186, bArr[i2 + 3] & 255);
                                                    break;
                                                case PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY /* -109 */:
                                                    qt.y0(219, bArr[i2 + 3] & 255);
                                                    break;
                                                default:
                                                    switch (b9) {
                                                        case -96:
                                                            qt.y0(187, bArr[i2 + 3] & 255);
                                                            break;
                                                        case CameraBinderDecorator.EOPNOTSUPP /* -95 */:
                                                            qt.y0(188, bArr[i2 + 3] & 255);
                                                            break;
                                                        case -94:
                                                            qt.y0(189, bArr[i2 + 3] & 255);
                                                            break;
                                                        case -93:
                                                            qt.y0(190, bArr[i2 + 3] & 255);
                                                            break;
                                                        case -92:
                                                            qt.y0(191, bArr[i2 + 3] & 255);
                                                            break;
                                                        default:
                                                            switch (b9) {
                                                                case 1:
                                                                    qt.y0(108, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 2:
                                                                    qt.y0(109, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 3:
                                                                    qt.y0(110, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 4:
                                                                    qt.y0(111, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 5:
                                                                    qt.y0(112, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 6:
                                                                    qt.y0(113, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 7:
                                                                    qt.y0(114, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 8:
                                                                    qt.y0(115, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 9:
                                                                    qt.y0(116, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 10:
                                                                    qt.y0(117, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 11:
                                                                    qt.y0(118, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 12:
                                                                    qt.y0(119, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 13:
                                                                    qt.y0(120, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 14:
                                                                    qt.y0(121, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 15:
                                                                    qt.y0(122, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 16:
                                                                    qt.y0(173, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 17:
                                                                    qt.y0(174, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 18:
                                                                    qt.y0(175, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 19:
                                                                    qt.y0(192, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 20:
                                                                    qt.y0(183, bArr[i2 + 3] & 255);
                                                                    break;
                                                                default:
                                                                    switch (b9) {
                                                                        case 32:
                                                                            qt.y0(155, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 33:
                                                                            qt.y0(156, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 34:
                                                                            qt.y0(157, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 35:
                                                                            qt.y0(158, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 36:
                                                                            qt.y0(197, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 37:
                                                                            qt.y0(198, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 38:
                                                                            qt.y0(199, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 39:
                                                                            qt.y0(200, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 40:
                                                                            qt.y0(201, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 41:
                                                                            qt.y0(202, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 42:
                                                                            qt.y0(203, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 43:
                                                                            qt.y0(204, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 44:
                                                                            qt.y0(205, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 45:
                                                                            qt.y0(206, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 46:
                                                                            qt.y0(207, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        default:
                                                                            switch (b9) {
                                                                                case 48:
                                                                                    qt.y0(159, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 49:
                                                                                    qt.y0(160, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 50:
                                                                                    qt.y0(161, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 51:
                                                                                    qt.y0(162, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 52:
                                                                                    qt.y0(163, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 53:
                                                                                    qt.y0(164, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 54:
                                                                                    qt.y0(165, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 55:
                                                                                    qt.y0(166, (bArr[i2 + 4] & 65280) | ((bArr[i2 + 3] << 8) & 65280));
                                                                                    break;
                                                                                case 56:
                                                                                    qt.y0(167, (bArr[i2 + 4] & 65280) | ((bArr[i2 + 3] << 8) & 65280));
                                                                                    break;
                                                                                case 57:
                                                                                    qt.y0(208, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                case 58:
                                                                                    qt.y0(209, bArr[i2 + 3] & 255);
                                                                                    break;
                                                                                default:
                                                                                    switch (b9) {
                                                                                        case 64:
                                                                                            qt.y0(168, bArr[i2 + 3] & 255);
                                                                                            break;
                                                                                        case 65:
                                                                                            qt.y0(210, bArr[i2 + 3] & 255);
                                                                                            break;
                                                                                        case 66:
                                                                                            qt.y0(211, bArr[i2 + 3] & 255);
                                                                                            break;
                                                                                        case 67:
                                                                                            qt.y0(212, bArr[i2 + 3] & 255);
                                                                                            break;
                                                                                        case 68:
                                                                                            qt.y0(213, bArr[i2 + 3] & 255);
                                                                                            break;
                                                                                        case 69:
                                                                                            qt.y0(214, bArr[i2 + 3] & 255);
                                                                                            break;
                                                                                        default:
                                                                                            switch (b9) {
                                                                                                case 96:
                                                                                                    qt.y0(170, bArr[i2 + 3] & 255);
                                                                                                    break;
                                                                                                case 97:
                                                                                                    qt.y0(171, bArr[i2 + 3] & 255);
                                                                                                    break;
                                                                                                case 98:
                                                                                                    qt.y0(172, bArr[i2 + 3] & 255);
                                                                                                    break;
                                                                                                case 99:
                                                                                                    qt.y0(215, bArr[i2 + 3] & 255);
                                                                                                    break;
                                                                                                default:
                                                                                                    switch (b9) {
                                                                                                        case 112:
                                                                                                            qt.y0(176, bArr[i2 + 3] & 255);
                                                                                                            break;
                                                                                                        case 113:
                                                                                                            qt.y0(177, bArr[i2 + 3] & 255);
                                                                                                            break;
                                                                                                        case 114:
                                                                                                            qt.y0(178, bArr[i2 + 3] & 255);
                                                                                                            break;
                                                                                                        case 115:
                                                                                                            qt.y0(179, bArr[i2 + 3] & 255);
                                                                                                            break;
                                                                                                        case 116:
                                                                                                            qt.y0(216, bArr[i2 + 3] & 255);
                                                                                                            break;
                                                                                                        case 117:
                                                                                                            qt.y0(217, bArr[i2 + 3] & 255);
                                                                                                            break;
                                                                                                    }
                                                                                                    break;
                                                                                            }
                                                                                            break;
                                                                                    }
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                }
                                break;
                            case 83:
                                qt.y0(123, bArr[i2 + 2] & 255);
                                qt.y0(124, bArr[i2 + 3] & 255);
                                qt.y0(125, bArr[i2 + 4] & 255);
                                qt.y0(126, bArr[i2 + 5] & 255);
                                qt.y0(127, bArr[i2 + 6] & 255);
                                qt.y0(128, bArr[i2 + 7] & 255);
                                qt.y0(129, bArr[i2 + 8] & 255);
                                qt.y0(130, bArr[i2 + 9] & 255);
                                qt.y0(131, bArr[i2 + 10] & 255);
                                qt.y0(132, bArr[i2 + 11] & 255);
                                int i45 = i2 + 12;
                                qt.y0(133, (bArr[i45] >> 7) & 1);
                                qt.y0(134, (bArr[i45] >> 6) & 1);
                                qt.y0(135, (bArr[i45] >> 5) & 1);
                                qt.y0(136, (bArr[i45] >> 4) & 1);
                                qt.y0(137, (bArr[i45] >> 2) & 3);
                                qt.y0(138, (bArr[i45] >> 0) & 3);
                                qt.y0(139, bArr[i2 + 13] & 255);
                                break;
                            case 84:
                                qt.y0(140, bArr[i2 + 2] & 255);
                                qt.y0(141, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                qt.y0(142, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                qt.y0(143, bArr[i2 + 7] & 255);
                                qt.y0(144, bArr[i2 + 8] & 255);
                                qt.y0(145, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                                qt.y0(146, (bArr[i2 + 13] & 255) | ((bArr[i2 + 12] << 8) & 65280));
                                break;
                            case 85:
                                qt.y0(147, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                qt.y0(148, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                qt.y0(149, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                                qt.y0(150, bArr[i2 + 8] & 255);
                                qt.y0(151, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                qt.y0(152, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                                int i46 = i2 + 13;
                                qt.y0(153, (bArr[i46] >> 4) & 15);
                                qt.y0(154, (bArr[i46] >> 0) & 15);
                                break;
                            case 86:
                                qt.y0(225, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                qt.y0(226, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                qt.y0(227, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                                qt.y0(228, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                                qt.y0(229, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                                qt.y0(230, bArr[i2 + 12] & 255);
                                qt.y0(231, bArr[i2 + 13] & 255);
                                break;
                            case 87:
                                qt.y0(232, bArr[i2 + 2] & 255);
                                qt.y0(233, bArr[i2 + 3] & 255);
                                qt.y0(234, bArr[i2 + 4] & 255);
                                qt.y0(235, bArr[i2 + 5] & 255);
                                qt.y0(236, bArr[i2 + 6] & 255);
                                qt.y0(237, bArr[i2 + 7] & 255);
                                qt.y0(238, bArr[i2 + 8] & 255);
                                qt.y0(239, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                qt.y0(240, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6066s.j();
        qt.q0(this.f6054g);
        w0.e.f17815a.d(this.f6054g);
        w0.e.f17819e.d(this.f6054g);
        u0.c.f17392s.d(this.f6054g);
        u0.c.f17393t.d(this.f6054g);
        u0.c.f17374a.d(this.f6054g);
        h0.d.f2462a.d(this.f6065r);
        qt.q0(this.f6064q);
        o1.h.f16865a.d(this.f6060m);
        u0.c.f17386m.d(this.f6062o);
        l0.b0.p0(this.f6063p);
        u0.c.f17379f.d(this.f6056i);
        qt.q0(this.f6055h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 241) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 6, -125, 9, 1);
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE = " + iArr[0]);
            switch (nt.f8633a) {
                case 1311167:
                case 1573311:
                case 1638847:
                case 1704383:
                case 2556351:
                case 2752959:
                case 2884031:
                case 3539391:
                    r3(iArr[0]);
                    break;
                default:
                    if (iArr[0] == 9) {
                        z.k.s(227, 5, -124, 5);
                    } else if (iArr[0] == 10) {
                        z.k.s(227, 5, -124, 10);
                    } else if (iArr[0] < 5) {
                        z.k.s(227, 5, -124, iArr[0]);
                    } else {
                        z.k.s(227, 5, -124, iArr[0] + 1);
                    }
                    break;
            }
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, 6, -123, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, 6, -125, iArr[0], iArr[1]);
                    a.i.a0(100L);
                    z.k.s(227, -112, 2, 82, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 6, -112, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 6, -87, 1, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 8, -87, 2, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 5:
                if (iArr != null) {
                    b3(iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 6:
                if (iArr != null) {
                    a3(iArr[0], iArr[1]);
                }
                break;
            case 7:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, 7, -125, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 8:
                if (iArr != null) {
                    d3(iArr[0]);
                }
                break;
            case 9:
                if (iArr != null) {
                    c3(iArr[0]);
                }
                break;
            case 10:
                if (iArr != null && iArr.length >= 2) {
                    z.k.s(227, 6, -117, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 6, -125, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 5, -124, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 6, -87, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 8, -87, iArr[0], iArr[1], iArr[2], iArr[3]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length >= 1) {
                    z.k.s(227, 7, -87, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        H = i2;
        I = i3;
        z.k.s(227, 6, 7, i2, i3);
        qt.y0(102, I);
        int iB = this.f6066s.b(7, 7);
        int i4 = I;
        if (iB != i4) {
            this.f6066s.g(7, i4);
        }
        qt.y0(101, H);
        int iB2 = this.f6066s.b(6, 7);
        int i5 = H;
        if (iB2 != i5) {
            this.f6066s.g(6, i5);
        }
    }

    public final void b3(int i2, int i3, int i4) {
        E = i2;
        F = i3;
        G = i4;
        z.k.s(227, 7, 8, i2, i3, i4);
        qt.y0(98, E);
        int iB = this.f6066s.b(3, 10);
        int i5 = E;
        if (iB != i5) {
            this.f6066s.g(3, i5);
        }
        qt.y0(99, F);
        int iB2 = this.f6066s.b(4, 10);
        int i6 = F;
        if (iB2 != i6) {
            this.f6066s.g(4, i6);
        }
        qt.y0(100, G);
        int iB3 = this.f6066s.b(5, 10);
        int i7 = G;
        if (iB3 != i7) {
            this.f6066s.g(5, i7);
        }
    }

    public final void c3(int i2) {
        J = i2;
        z.k.s(227, 5, 5, i2);
        qt.y0(196, J);
        int iB = this.f6066s.b(9, 10);
        int i3 = J;
        if (iB != i3) {
            this.f6066s.g(9, i3);
        }
    }

    public final void d3(int i2) {
        D = i2;
        z.k.s(227, 6, 3, 1, i2);
        qt.y0(194, D);
        int iB = this.f6066s.b(2, 0);
        int i3 = D;
        if (iB != i3) {
            this.f6066s.g(2, i3);
        }
    }

    public final void e3(int i2) {
        C = i2;
        qt.y0(559, i2);
        int iB = this.f6066s.b(1, 0);
        int i3 = C;
        if (iB != i3) {
            this.f6066s.g(1, i3);
        }
    }

    public final void r3(int i2) {
        K = i2;
        if (i2 == 0) {
            z.k.s(227, 6, -125, 9, 5);
        } else if (i2 == 1) {
            z.k.s(227, 6, -125, 9, 3);
        } else if (i2 == 2) {
            z.k.s(227, 6, -125, 9, 4);
        }
        qt.y0(Process.MEDIA_UID, K);
        int iB = this.f6066s.b(10, 0);
        int i3 = K;
        if (iB != i3) {
            this.f6066s.g(10, i3);
        }
    }
}
