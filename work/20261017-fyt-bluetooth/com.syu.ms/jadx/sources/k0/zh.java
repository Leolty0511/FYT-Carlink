package k0;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class zh extends lt {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f12800u = 15;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12802c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12803d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, -1}, new int[]{12, 0}, new int[]{13, 30}, new int[]{14, 31}, new int[]{15, 29}, new int[]{16, 1}, new int[]{17, 21}, new int[]{18, -1}, new int[]{19, 62}, new int[]{20, 5}, new int[]{21, 9}, new int[]{22, 18}, new int[]{24, 53}, new int[]{25, 22}, new int[]{26, 55}, new int[]{27, 38}, new int[]{28, 25}, new int[]{29, 6}, new int[]{30, 25}, new int[]{32, -1}, new int[]{33, 16}, new int[]{34, 29}, new int[]{35, 32}, new int[]{36, 33}, new int[]{37, 34}, new int[]{38, 35}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12804e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12805f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f12806g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12807h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12808i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f12809j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12810k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12811l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12812m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12813n = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12814o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12815p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f12816q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public o1.g0 f12817r = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f12818s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f12819t = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (zh.this.f12810k == u0.b.f17361t0 && zh.this.f12811l == u0.b.f17359s0) {
                return;
            }
            zh.this.f12810k = u0.b.f17361t0;
            zh.this.f12811l = u0.b.f17359s0;
            if (u0.b.X1 > 2) {
                if ((zh.this.f12810k & 32768) != 0) {
                    zh zhVar = zh.this;
                    zhVar.f12810k = (65536 - zhVar.f12810k) & 65535;
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                z.k.s(227, -121, 6, ((i2 << 1) & 2) | 1, (zh.this.f12811l >> 8) & 255, zh.this.f12811l & 255, (zh.this.f12810k >> 16) & 255, (zh.this.f12810k >> 8) & 255, zh.this.f12810k & 255);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 4, 38, 0, 0, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(zh.this.f12816q);
            zh.this.f12814o = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zh zhVar = zh.this;
            int i2 = zhVar.f12814o - 1;
            zhVar.f12814o = i2;
            if (i2 <= 0) {
                l0.b0.p0(zhVar.f12816q);
                zh.this.f12814o = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                zh zhVar2 = zh.this;
                zhVar2.i3(zhVar2.f12817r.b(1, 15));
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 133, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, (byte) time.weekDay);
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
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(4);
                return;
            }
            a3(5);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(6);
                return;
            } else {
                a3(7);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] <= 18) {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 36, 0);
                return;
            } else if (iArr[1] >= 32) {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 36, 127);
                return;
            } else {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 36, iArr[1] * 2);
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] <= 18) {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 37, 0);
                return;
            } else if (iArr[1] >= 32) {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 37, 127);
                return;
            } else {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 37, iArr[1] * 2);
                return;
            }
        }
        if (i2 == 59) {
            if (iArr[1] != 0) {
                a3(14);
                return;
            }
            return;
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(13);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(13);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(8);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(8);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(11);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(11);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(12);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(12);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(10);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(10);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(2);
                } else if (i3 == -1) {
                    a3(3);
                } else {
                    z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, 33, iArr[1]);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f12817r.a();
        int i2 = nt.f8633a;
        if (i2 == 8520133 || i2 == 13042117) {
            this.f7886a.f8306a = null;
        } else {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        if (App.c().getResources().getConfiguration().orientation != 1 || a.f.w() >= 1080) {
            this.f7886a.f8314i = 1;
        } else {
            this.f7886a.f8314i = 0;
        }
        qt.z(this.f12819t);
        qt.x(this.f12813n);
        u0.c.f17386m.a(this.f12815p, 1);
        o1.h.f16865a.a(this.f12812m, 1);
        o1.h.f16867c.a(this.f12812m, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 55, 56, 59, 60, 61, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (this.f12809j) {
                return;
            }
            qt.i(b3, b4, true, 540);
        }
        if (b2 == 39) {
            int i5 = bArr[i2 + 2] & 255;
            if (i5 < 88 || i5 > 213) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i5 * 10) - 280);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 50) {
            switch (bArr[i2 + 2] & 255) {
                case 1:
                    h3("蓄电池电压低，三分钟后将关闭多媒体系统");
                    break;
                case 2:
                    h3("请常按启动按钮启动");
                    break;
                case 3:
                    h3("请将档位切换至 P 档域");
                    break;
                case 4:
                    h3("请常按启动按钮退电");
                    break;
                case 5:
                    h3("请停止车辆再按启动按钮");
                    break;
                case 6:
                    h3("请将钥匙紧贴启动按钮");
                    break;
                case 7:
                    h3("请确认钥匙是否在车内");
                    break;
                case 8:
                    h3("为了您的爱车，请解除驻车制动");
                    break;
                case 9:
                    h3("请关好车门");
                    break;
                case 10:
                    h3("钥匙电池电量低，请及时更换");
                    break;
                case 11:
                    h3("请轻轻转动方向盘，再尝试启动");
                    break;
                case 12:
                    h3("请专心驾驶");
                    break;
                case 13:
                    h3("自动灯光已开启");
                    break;
                case 14:
                    h3("自动灯光已关闭");
                    break;
                case 15:
                    h3("疲劳预警系统已开启");
                    break;
                case 16:
                    h3("疲劳预警系统已关闭");
                    break;
                case 17:
                    h3("疲劳预警系统已进入演示模式");
                    break;
                case 18:
                    h3("疲劳预警系统已进入工作模式");
                    break;
                case 19:
                    h3("学习完毕");
                    break;
                case 20:
                    h3("为了您的安全，请系好安全带");
                    break;
                case 21:
                    h3("燃油不足，是否导航至加油站");
                    break;
                case 22:
                    h3("无法启动，请联系服务店维修其");
                    break;
            }
        }
        if (b2 == 125) {
            int i6 = bArr[i2 + 2] & 255;
            if (i6 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i7 = i2 + 3;
                    l0.c0.b((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
                    return;
                } else {
                    int i8 = i2 + 3;
                    l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    return;
                }
            }
            if (i6 == 3) {
                int i9 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i9);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i9}, null, null);
                return;
            } else {
                if (i6 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f12809j = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f12802c = b5 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f12803d;
                    if (i10 < iArr.length) {
                        int i11 = this.f12802c;
                        if (i11 != iArr[i10][0]) {
                            i10++;
                        } else if (i11 != 0) {
                            this.f12801b = i10;
                        }
                    }
                }
                int i12 = this.f12802c;
                if (i12 != 11) {
                    if (i12 != 12) {
                        if (i12 != 18) {
                            if (i12 != 23) {
                                if (i12 != 31) {
                                    if ((b6 & 255) == 0) {
                                        int i13 = this.f12801b;
                                        if (i13 < iArr.length && i13 != 255) {
                                            l0.b0.l0(iArr[i13][1], 1);
                                        }
                                        this.f12801b = 255;
                                    } else if (i10 < iArr.length) {
                                        l0.b0.l0(iArr[i10][1], 0);
                                    }
                                    break;
                                } else if (b6 == 1 && !o1.u.T(a.b.f37y)) {
                                    o1.u.i();
                                    break;
                                }
                            } else if (b6 == 1 && !o1.u.T(a.b.A)) {
                                o1.u.c1();
                                break;
                            }
                        } else if (b6 == 1 && u0.b.f17347o == 0) {
                            if (u0.b.f17332j == 1) {
                                l0.b0.l0(25, 0);
                                l0.b0.l0(25, 1);
                            }
                            if (!o1.u.T(a.b.C)) {
                                o1.u.v();
                            } else if (o1.u.T(a.b.C)) {
                                o1.u.k();
                            }
                            break;
                        }
                    } else {
                        if (this.f12805f != b6) {
                            this.f12805f = b6;
                            if (b6 == 1) {
                                this.f12804e = false;
                            } else if (b6 == 2) {
                                this.f12804e = true;
                                l0.b0.l0(25, 0);
                                l0.b0.l0(25, 1);
                            } else if (b6 == 0) {
                                if (this.f12804e) {
                                    this.f12804e = false;
                                } else if (u0.b.f17332j != 1) {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                } else {
                                    l0.b0.l0(25, 0);
                                    l0.b0.l0(25, 1);
                                }
                            }
                        }
                        break;
                    }
                } else if (b6 == 1 && u0.b.f17347o == 0) {
                    if (u0.b.f17332j == 1) {
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    }
                    if (!o1.u.T(a.b.O)) {
                        qt.t();
                    } else if (o1.u.T(a.b.O)) {
                        qt.f();
                    }
                    break;
                }
                break;
            case 33:
                int i14 = bArr[i2 + 2] & 255;
                int i15 = bArr[i2 + 3] & 255;
                int i16 = i2 + 4;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                qt.y0(10, (i14 >> 7) & 1);
                qt.y0(11, (i14 >> 6) & 1);
                qt.y0(12, (i14 >> 5) & 1);
                qt.y0(13, (i14 >> 3) & 1);
                qt.y0(14, (i14 >> 2) & 1);
                qt.y0(65, (i14 >> 1) & 1);
                qt.y0(16, i14 & 1);
                qt.y0(18, (i15 >> 7) & 1);
                qt.y0(19, (i15 >> 6) & 1);
                qt.y0(20, (i15 >> 5) & 1);
                qt.y0(21, i15 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i17 = bArr[i18] & 255;
                    i19 = bArr[i16] & 255;
                }
                int i20 = -3;
                if (i17 == 0) {
                    i4 = -2;
                } else if (i17 != 127) {
                    i4 = (i17 < 1 || i17 > 126) ? -1 : i17 * 5;
                } else {
                    i4 = -3;
                }
                qt.y0(27, i4);
                if (i19 == 0) {
                    i20 = -2;
                } else if (i19 != 127) {
                    i20 = (i19 < 1 || i19 > 126) ? -1 : 5 * i19;
                }
                qt.y0(28, i20);
                break;
            case 34:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 4];
                byte b10 = bArr[i2 + 5];
                u0.d.R2(l0.c0.E0(b7 & 255));
                u0.d.S2(l0.c0.E0(b8 & 255));
                u0.d.T2(l0.c0.E0(b9 & 255));
                u0.d.U2(l0.c0.E0(b10 & 255));
                break;
            case 35:
                int i21 = bArr[i2 + 2] & 255;
                int i22 = bArr[i2 + 3] & 255;
                int i23 = bArr[i2 + 4] & 255;
                int i24 = bArr[i2 + 5] & 255;
                if (i21 == 0 && i22 == 0 && i23 == 0 && i24 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i22 || l0.c0.f13015i != i23 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i21;
                l0.c0.f13014h = i22;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i24;
                u0.d.D2(l0.c0.E0(i21 & 255));
                u0.d.E2(l0.c0.E0(i22 & 255));
                u0.d.F2(l0.c0.E0(i23 & 255));
                u0.d.G2(l0.c0.E0(i24 & 255));
                break;
            case 36:
                byte b11 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b11 >> 7) & 1);
                    qt.y0(2, (b11 >> 6) & 1);
                } else {
                    qt.y0(1, (b11 >> 6) & 1);
                    qt.y0(2, (b11 >> 7) & 1);
                }
                qt.y0(3, (b11 >> 4) & 1);
                qt.y0(4, (b11 >> 5) & 1);
                qt.y0(5, (b11 >> 3) & 1);
                break;
            default:
                switch (b2) {
                    case 41:
                        int i25 = bArr[i2 + 2] & 255;
                        qt.y0(107, (i25 >> 4) & 1);
                        qt.y0(108, (i25 >> 5) & 1);
                        qt.y0(109, (i25 >> 6) & 1);
                        qt.y0(110, (i25 >> 7) & 1);
                        int i26 = i2 + 4;
                        qt.y0(135, (bArr[i26] >> 5) & 7);
                        qt.y0(136, (bArr[i26] >> 4) & 1);
                        qt.y0(137, (bArr[i26] >> 3) & 1);
                        qt.y0(138, (bArr[i26] >> 2) & 1);
                        qt.y0(139, (bArr[i26] >> 1) & 1);
                        qt.y0(140, (bArr[i26] >> 0) & 1);
                        int i27 = i2 + 5;
                        qt.y0(146, (bArr[i27] >> 4) & 1);
                        qt.y0(147, (bArr[i27] >> 3) & 1);
                        qt.y0(141, (bArr[i27] >> 0) & 7);
                        int i28 = i2 + 6;
                        qt.y0(148, (bArr[i28] >> 4) & 7);
                        qt.y0(149, (bArr[i28] >> 0) & 15);
                        int i29 = (i25 >> 1) & 1;
                        if (this.f12808i != i29) {
                            this.f12808i = i29;
                            if (u0.b.f17347o == 0) {
                                if (i29 != 0) {
                                    if (!o1.u.T(a.b.O)) {
                                        qt.t();
                                    }
                                } else if (o1.u.T(a.b.O)) {
                                    qt.f();
                                }
                            }
                        }
                        int i30 = bArr[i2 + 3] & 255 & 15;
                        if (this.f12807h != i30) {
                            this.f12807h = i30;
                            if (!qt.k0()) {
                                if (i30 > 1 && i30 <= 5) {
                                    qt.a(1);
                                } else {
                                    qt.a(0);
                                }
                                break;
                            } else if (i30 == 0) {
                                if (o1.u.S("com.syu.fourcamera2") && this.f12806g) {
                                    c.e.d().c(614);
                                    break;
                                }
                            } else if (i30 == 2) {
                                if (!o1.u.S("com.syu.fourcamera2")) {
                                    this.f12806g = true;
                                }
                                c.e.d().c(591);
                                break;
                            } else if (i30 == 3) {
                                if (!o1.u.S("com.syu.fourcamera2")) {
                                    this.f12806g = true;
                                }
                                c.e.d().c(592);
                                break;
                            } else if (i30 == 4) {
                                if (!o1.u.S("com.syu.fourcamera2")) {
                                    this.f12806g = true;
                                }
                                c.e.d().c(595);
                                break;
                            } else if (i30 == 5) {
                                if (!o1.u.S("com.syu.fourcamera2")) {
                                    this.f12806g = true;
                                }
                                c.e.d().c(596);
                                break;
                            }
                        }
                        break;
                    case 42:
                        int i31 = bArr[i2 + 2] & 255;
                        int i32 = bArr[i2 + 3] & 255;
                        int i33 = bArr[i2 + 4] & 255;
                        int i34 = bArr[i2 + 5] & 255;
                        int i35 = bArr[i2 + 6] & 255;
                        int i36 = bArr[i2 + 7] & 255;
                        int i37 = bArr[i2 + 8] & 255;
                        qt.y0(105, i31);
                        qt.y0(101, (i32 & 255) | ((i33 & 15) << 8));
                        qt.y0(102, (i34 & 255) | ((i35 & 255) << 8));
                        qt.y0(103, i36 & 7);
                        qt.y0(104, (i36 >> 3) & 7);
                        qt.y0(113, (i36 >> 6) & 15);
                        qt.y0(114, (i36 >> 7) & 15);
                        qt.y0(115, i37 & 7);
                        break;
                    case 43:
                        int i38 = i2 + 2;
                        qt.y0(142, (bArr[i38] >> 3) & 1);
                        qt.y0(143, (bArr[i38] >> 2) & 1);
                        qt.y0(144, (bArr[i38] >> 0) & 3);
                        qt.y0(145, (bArr[i2 + 3] >> 0) & 255);
                        int i39 = i2 + 4;
                        qt.y0(150, (bArr[i39] >> 1) & 1);
                        qt.y0(151, (bArr[i39] >> 0) & 3);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12817r.j();
        u0.c.f17386m.d(this.f12815p);
        qt.q0(this.f12819t);
        l0.b0.p0(l0.c0.f13021o);
        qt.o0(this.f12813n);
        o1.h.f16865a.d(this.f12812m);
        o1.h.f16867c.d(this.f12812m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 152) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, 145, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                z.k.s(227, 146, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 1)) {
                z.k.s(227, 144, 4, iArr[0], iArr[1], iArr[2], iArr[3]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 1)) {
                z.k.s(227, 147, 2, iArr[0], iArr[1]);
            }
        } else if (i2 == 5) {
            l0.b0.l0(6, 0);
            l0.b0.l0(6, 1);
        } else if (i2 == 6 && T2(iArr, 2)) {
            if (iArr[0] == 4) {
                i3(iArr[1]);
            } else {
                z.k.s(227, 148, 2, iArr[0], iArr[1]);
            }
        }
    }

    public final void a3(int i2) {
        z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, i2, 0);
    }

    public final void h3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void i3(int i2) {
        f12800u = i2;
        qt.y0(145, i2);
        z.k.s(227, 148, 2, 4, i2);
        int iB = this.f12817r.b(1, 0);
        int i3 = f12800u;
        if (iB != i3) {
            this.f12817r.g(1, i3);
        }
    }
}
