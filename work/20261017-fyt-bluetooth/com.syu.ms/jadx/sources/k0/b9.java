package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class b9 extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f3583r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f3584s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3588e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f3589f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 54}, new int[]{9, 18}, new int[]{16, 13}, new int[]{17, 9}, new int[]{18, 6}, new int[]{19, 5}, new int[]{20, 62}, new int[]{21, 63}, new int[]{22, 12}, new int[]{31, 2}, new int[]{32, 32}, new int[]{33, 33}, new int[]{50, 1}, new int[]{128, 25}, new int[]{129, 7}, new int[]{130, 8}, new int[]{10, 27}, new int[]{11, 28}, new int[]{14, 34}, new int[]{15, 35}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3590g = {new int[]{1, 4}, new int[]{2, 3}, new int[]{3, 7}, new int[]{4, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 54}, new int[]{9, 18}, new int[]{16, 13}, new int[]{17, 9}, new int[]{18, 6}, new int[]{19, 5}, new int[]{20, 62}, new int[]{21, 63}, new int[]{22, 12}, new int[]{31, 2}, new int[]{32, 32}, new int[]{33, 33}, new int[]{50, 1}, new int[]{128, 25}, new int[]{129, 7}, new int[]{130, 8}, new int[]{10, 27}, new int[]{11, 28}, new int[]{14, 34}, new int[]{15, 35}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3591h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3592i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3593j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f3594k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3595l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3596m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f3597n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3598o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3599p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3600q = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b9 b9Var = b9.this;
            b9Var.f3597n = (byte) 5;
            l0.b0.b(b9Var.f3599p);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b9 b9Var = b9.this;
            byte b2 = (byte) (b9Var.f3597n - 1);
            b9Var.f3597n = b2;
            if (b2 <= 0) {
                l0.b0.p0(b9Var.f3599p);
                b9.this.f3597n = (byte) 5;
                return;
            }
            int i2 = nt.f8637c;
            if (i2 == 23 || i2 == 32 || i2 == 39) {
                b9Var.j3(b9Var.f3594k.b(1, 0));
            }
            b9 b9Var2 = b9.this;
            b9Var2.i3(b9Var2.f3594k.b(2, 0));
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 3, 39, 0, 0);
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
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            z.k.s(227, -90, 5, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) & 128) | ((byte) time.hour)), (byte) time.minute);
            switch (nt.f8637c) {
                case 0:
                    z.k.s(-29, -18, 2, 80, 1);
                    break;
                case 1:
                    z.k.s(-29, -18, 2, 80, 3);
                    break;
                case 2:
                case 4:
                case 26:
                case 36:
                    z.k.s(-29, -18, 2, 81, 6);
                    break;
                case 3:
                case 9:
                case 10:
                case 11:
                case 12:
                case 27:
                    break;
                case 5:
                    z.k.s(-29, -18, 2, 81, 1);
                    break;
                case 6:
                    z.k.s(-29, -18, 2, 81, 2);
                    break;
                case 7:
                    z.k.s(-29, -18, 2, 81, 3);
                    break;
                case 8:
                    z.k.s(-29, -18, 2, 80, 0);
                    break;
                case 13:
                case 16:
                    z.k.s(-29, -18, 2, 80, 2);
                    break;
                case 14:
                case 17:
                    z.k.s(-29, -18, 2, 81, 4);
                    break;
                case 15:
                case 18:
                    z.k.s(-29, -18, 2, 81, 5);
                    break;
                case 19:
                    z.k.s(-29, -18, 2, 80, 4);
                    break;
                case 20:
                    z.k.s(-29, -18, 2, 81, 7);
                    break;
                case 21:
                case 22:
                    z.k.s(-29, -18, 2, 80, 5);
                    break;
                case 23:
                case 32:
                case 39:
                    z.k.s(-29, -18, 2, 80, 6);
                    break;
                case 24:
                    z.k.s(-29, -18, 2, 81, 8);
                    break;
                case 25:
                    z.k.s(-29, -18, 2, 81, 9);
                    break;
                case 28:
                case 31:
                    z.k.s(-29, -18, 2, 80, 7);
                    break;
                case 29:
                case 30:
                    z.k.s(-29, -18, 2, 81, 10);
                    break;
                case 33:
                    z.k.s(-29, -18, 2, 80, 9);
                    break;
                case 34:
                    z.k.s(-29, -18, 2, 80, 10);
                    break;
                case 35:
                    z.k.s(-29, -18, 2, 80, 11);
                    break;
                case 37:
                    z.k.s(-29, -18, 2, 81, 11);
                    break;
                case 38:
                    z.k.s(-29, -18, 2, 80, 12);
                    break;
                default:
                    z.k.s(-29, -18, 2, 81, 0);
                    break;
            }
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
                a3(1, 1);
                a.i.a0(200L);
                a3(1, 0);
                return;
            } else {
                a3(1, 2);
                a.i.a0(200L);
                a3(1, 0);
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(21, 1);
                a.i.a0(200L);
                a3(21, 0);
                return;
            } else {
                a3(21, 2);
                a.i.a0(200L);
                a3(21, 0);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] < 16) {
                z.k.s(227, -118, 2, 38, 0);
                return;
            } else if (iArr[1] > 28) {
                z.k.s(227, -118, 2, 38, 255);
                return;
            } else {
                z.k.s(227, -118, 2, 38, iArr[1]);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -58, 3, 9, 1, 10);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -58, 3, 9, 1, 0);
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, -58, 3, 9, 2, 2);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -58, 3, 9, 2, 3);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -58, 3, 9, 4, 2);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -58, 3, 9, 4, 3);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -58, 3, 9, 3, 2);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -58, 3, 9, 3, 3);
                return;
            } else if (iArr[1] == 7) {
                z.k.s(227, -58, 3, 9, 5, 2);
                return;
            } else {
                if (iArr[1] == 8) {
                    z.k.s(227, -58, 3, 9, 5, 3);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(5, 1);
                        a.i.a0(200L);
                        a3(5, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(5, 1);
                    a.i.a0(200L);
                    a3(5, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(8, 1);
                        a.i.a0(200L);
                        a3(8, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(8, 1);
                    a.i.a0(200L);
                    a3(8, 0);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(9, 1);
                        a.i.a0(200L);
                        a3(9, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(9, 1);
                    a.i.a0(200L);
                    a3(9, 0);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(6, 1);
                        a.i.a0(200L);
                        a3(6, 0);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(6, 1);
                    a.i.a0(200L);
                    a3(6, 0);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(7, 1);
                        a.i.a0(200L);
                        a3(7, 0);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(7, 1);
                    a.i.a0(200L);
                    a3(7, 0);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(3, 1);
                        a.i.a0(200L);
                        a3(3, 0);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(3, 1);
                    a.i.a0(200L);
                    a3(3, 0);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(4, 2);
                    a.i.a0(200L);
                    a3(4, 0);
                } else if (i3 == -1) {
                    a3(4, 1);
                    a.i.a0(200L);
                    a3(4, 0);
                } else {
                    z.k.s(227, -118, 2, 39, iArr[1]);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f3594k.a();
        u0.c.f17386m.a(this.f3598o, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        qt.z(this.f3600q);
        switch (nt.f8637c) {
            case 4:
            case 36:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 1;
                mtVar2.f8314i = 0;
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 18:
            case 19:
            case 27:
            default:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 1;
                mtVar3.f8312g = 1;
                mtVar3.f8314i = 0;
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8310e = 1;
                mtVar4.f8311f = 1;
                mtVar4.f8312g = 0;
                mtVar4.f8314i = 0;
                break;
            case 13:
            case 16:
            case 23:
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8310e = 1;
                mtVar5.f8311f = 1;
                mtVar5.f8312g = 1;
                mtVar5.f8314i = 1;
                mtVar5.f8317l = 1;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8314i = 0;
                }
                break;
            case 14:
            case 15:
            case 17:
            case 20:
            case 21:
            case 22:
            case 25:
            case 26:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 37:
            case 38:
            case 39:
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8312g = 1;
                mtVar6.f8314i = 1;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8314i = 0;
                }
                break;
            case 24:
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = new String[]{"com.syu.canbus"};
                mtVar7.f8310e = 1;
                mtVar7.f8311f = 0;
                mtVar7.f8312g = 1;
                mtVar7.f8314i = 0;
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            qt.y0(44, bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(40, bArr[i2 + 3] & 255);
            int i11 = bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i11 != 0) {
                if (i11 == 1) {
                    i5 = 1;
                } else if (i11 != 2) {
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                }
                i4 = i5;
            } else {
                i4 = 0;
                i5 = 1;
            }
            qt.y0(46, i5);
            qt.y0(47, i4);
            int i12 = i2 + 5;
            qt.y0(42, (bArr[i12] >> 7) & 1);
            qt.y0(43, (bArr[i12] >> 6) & 1);
        }
        if (b2 == 39) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                u0.d.A3((b3 & 128) != 0 ? 1000 - ((b3 & 127) * 10) : ((b3 & 127) * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 41) {
            if (this.f3591h) {
                return;
            }
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 32768, false, 7763);
            return;
        }
        if (b2 == 57) {
            switch (bArr[i2 + 2] & 255) {
                case 1:
                    byte b4 = bArr[i2 + 3];
                    if (b4 == 2) {
                        qt.y0(100, bArr[i2 + 4] & 255);
                        break;
                    } else if (b4 == 3) {
                        qt.y0(101, bArr[i2 + 4] & 255);
                        break;
                    } else if (b4 == 4) {
                        qt.y0(102, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 2:
                    if (bArr[i2 + 3] == 4) {
                        qt.y0(155, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 3:
                    byte b5 = bArr[i2 + 3];
                    if (b5 == 1) {
                        qt.y0(141, bArr[i2 + 4] & 255);
                        break;
                    } else if (b5 == 2) {
                        qt.y0(115, bArr[i2 + 4] & 255);
                        break;
                    } else if (b5 == 4) {
                        qt.y0(140, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 4:
                    byte b6 = bArr[i2 + 3];
                    if (b6 == 2) {
                        qt.y0(125, bArr[i2 + 4] & 255);
                        break;
                    } else if (b6 == 3) {
                        qt.y0(130, bArr[i2 + 4] & 255);
                        break;
                    } else if (b6 == 4) {
                        qt.y0(146, bArr[i2 + 4] & 255);
                        break;
                    } else if (b6 == 5) {
                        qt.y0(198, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 5:
                    byte b7 = bArr[i2 + 3];
                    if (b7 == 4) {
                        qt.y0(195, bArr[i2 + 4] & 255);
                        break;
                    } else if (b7 == 5) {
                        qt.y0(202, bArr[i2 + 4] & 255);
                        break;
                    } else if (b7 == 6) {
                        qt.y0(203, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 6:
                    switch (bArr[i2 + 3]) {
                        case 2:
                            qt.y0(131, bArr[i2 + 4] & 255);
                            break;
                        case 3:
                            qt.y0(132, bArr[i2 + 4] & 255);
                            break;
                        case 6:
                            qt.y0(135, bArr[i2 + 4] & 255);
                            break;
                        case 7:
                            qt.y0(136, bArr[i2 + 4] & 255);
                            break;
                        case 8:
                            qt.y0(137, bArr[i2 + 4] & 255);
                            break;
                        case 9:
                            qt.y0(138, bArr[i2 + 4] & 255);
                            break;
                        case 12:
                            qt.y0(150, bArr[i2 + 4] & 255);
                            break;
                        case 13:
                            qt.y0(151, bArr[i2 + 4] & 255);
                            break;
                        case 14:
                            qt.y0(152, bArr[i2 + 4] & 255);
                            break;
                        case 15:
                            qt.y0(153, bArr[i2 + 4] & 255);
                            break;
                        case 16:
                            qt.y0(154, bArr[i2 + 4] & 255);
                            break;
                        case 17:
                            qt.y0(156, bArr[i2 + 4] & 255);
                            break;
                        case 18:
                            qt.y0(157, bArr[i2 + 4] & 255);
                            break;
                        case 19:
                            qt.y0(158, bArr[i2 + 4] & 255);
                            break;
                        case 20:
                            qt.y0(159, bArr[i2 + 4] & 255);
                            break;
                        case 21:
                            qt.y0(173, bArr[i2 + 4] & 255);
                            break;
                        case 22:
                            qt.y0(174, bArr[i2 + 4] & 255);
                            break;
                        case 23:
                            qt.y0(204, bArr[i2 + 4] & 255);
                            break;
                    }
                    break;
                case 8:
                    byte b8 = bArr[i2 + 3];
                    if (b8 == 1) {
                        qt.y0(129, bArr[i2 + 4] & 255);
                        break;
                    } else if (b8 == 2) {
                        qt.y0(197, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 9:
                    byte b9 = bArr[i2 + 3];
                    if (b9 == 1) {
                        qt.y0(142, bArr[i2 + 4] & 255);
                        break;
                    } else if (b9 == 6) {
                        qt.y0(175, bArr[i2 + 4] & 255);
                        break;
                    } else if (b9 == 7) {
                        qt.y0(196, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 10:
                    if (bArr[i2 + 3] == 1) {
                        qt.y0(201, bArr[i2 + 4] & 255);
                        break;
                    }
                    break;
                case 11:
                    qt.y0(176, bArr[i2 + 3] & 255);
                    qt.y0(177, bArr[i2 + 4] & 255);
                    break;
                case 12:
                    qt.y0(224, bArr[i2 + 3] & 255);
                    break;
                case 13:
                    switch (bArr[i2 + 3]) {
                        case 1:
                            qt.y0(205, bArr[i2 + 4] & 255);
                            break;
                        case 2:
                            qt.y0(206, bArr[i2 + 4] & 255);
                            break;
                        case 3:
                            qt.y0(207, bArr[i2 + 4] & 255);
                            break;
                        case 4:
                            qt.y0(208, bArr[i2 + 4] & 255);
                            break;
                        case 5:
                            qt.y0(209, bArr[i2 + 4] & 255);
                            break;
                        case 6:
                            qt.y0(210, bArr[i2 + 4] & 255);
                            break;
                        case 7:
                            qt.y0(211, bArr[i2 + 4] & 255);
                            break;
                        case 8:
                            qt.y0(212, bArr[i2 + 4] & 255);
                            break;
                        case 9:
                            qt.y0(213, bArr[i2 + 4] & 255);
                            break;
                        case 10:
                            qt.y0(214, bArr[i2 + 4] & 255);
                            break;
                        case 11:
                            qt.y0(215, bArr[i2 + 4] & 255);
                            break;
                        case 12:
                            qt.y0(216, bArr[i2 + 4] & 255);
                            break;
                    }
                    break;
            }
        }
        if (b2 == 112) {
            qt.y0(200, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i13 = bArr[i2 + 2] & 255;
            if (i13 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i14 = i2 + 3;
                    l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                    return;
                } else {
                    int i15 = i2 + 3;
                    l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                    return;
                }
            }
            if (i13 == 3) {
                int i16 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i16);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                return;
            }
            if (i13 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f3591h = true;
                return;
            }
            if (i13 == 240) {
                qt.y0(218, bArr[i2 + 3] & 255);
                qt.y0(219, bArr[i2 + 4] & 255);
                qt.y0(220, bArr[i2 + 5] & 255);
                qt.y0(221, bArr[i2 + 6] & 255);
                qt.y0(222, bArr[i2 + 7] & 255);
                qt.y0(223, bArr[i2 + 8] & 255);
                return;
            }
            if (i13 == 241 && this.f3592i != (i6 = bArr[i2 + 3] & 255)) {
                this.f3592i = i6;
                if (i6 == 17) {
                    if (o1.u.V()) {
                        return;
                    }
                    this.f3593j = true;
                    o1.u.j();
                    return;
                }
                if (i6 == 1 && this.f3593j && o1.u.V()) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b10 = bArr[i2 + 2];
                    byte b11 = bArr[i2 + 3];
                    this.f3588e = b10 & 255;
                    if (f3583r != 1) {
                        int i17 = 0;
                        while (true) {
                            iArr = this.f3589f;
                            if (i17 < iArr.length) {
                                int i18 = this.f3588e;
                                if (i18 != iArr[i17][0]) {
                                    i17++;
                                } else if (i18 != 0) {
                                    this.f3587d = i17;
                                }
                            }
                        }
                        int i19 = this.f3588e;
                        if (i19 == 6) {
                            if ((b11 & 255) == 1) {
                                int i20 = h0.c.E;
                                if (i20 != 3) {
                                    if (i20 == 4) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    } else if (i20 != 5) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                }
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            }
                            break;
                        } else if (i19 != 23 && i19 != 127) {
                            if (i19 != 129) {
                                if (i19 != 130) {
                                    switch (i19) {
                                        case 31:
                                            if ((b11 & 255) == 1) {
                                                if (!qt.k0()) {
                                                    l0.b0.l0(2, 0);
                                                    l0.b0.l0(2, 1);
                                                } else if (o1.u.S("com.syu.fourcamera2")) {
                                                    c.e.d().c(614);
                                                } else {
                                                    c.e.d().c(590);
                                                }
                                            }
                                            break;
                                        case 32:
                                            break;
                                        case 33:
                                            break;
                                        default:
                                            if ((b11 & 255) == 1 && i17 < iArr.length) {
                                                l0.b0.l0(iArr[this.f3587d][1], 0);
                                                l0.b0.l0(this.f3589f[this.f3587d][1], 1);
                                                break;
                                            }
                                            break;
                                    }
                                }
                                for (int i21 = 0; i21 < (b11 & 255); i21++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            }
                            for (int i22 = 0; i22 < (b11 & 255); i22++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (nt.f8637c != 21 && (b11 & 255) == 1) {
                            int i23 = u0.b.f17347o;
                            if (i23 == 0) {
                                z.k.s(227, -126, 1, 1);
                                qt.a(1);
                            } else if (i23 == 1) {
                                qt.a(0);
                                z.k.s(227, -126, 1, 0);
                            }
                        }
                    } else {
                        int i24 = 0;
                        while (true) {
                            iArr2 = this.f3590g;
                            if (i24 < iArr2.length) {
                                int i25 = this.f3588e;
                                if (i25 != iArr2[i24][0]) {
                                    i24++;
                                } else if (i25 != 0) {
                                    this.f3587d = i24;
                                }
                            }
                        }
                        int i26 = this.f3588e;
                        if (i26 == 6) {
                            if ((b11 & 255) == 1) {
                                int i27 = h0.c.E;
                                if (i27 != 3) {
                                    if (i27 == 4) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    } else if (i27 != 5) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                }
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            }
                            break;
                        } else if (i26 != 23 && i26 != 127) {
                            if (i26 != 32) {
                                if (i26 == 33 || i26 == 129) {
                                    for (int i28 = 0; i28 < (b11 & 255); i28++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                } else if (i26 != 130) {
                                    if ((b11 & 255) == 1 && i24 < iArr2.length) {
                                        l0.b0.l0(iArr2[this.f3587d][1], 0);
                                        l0.b0.l0(this.f3590g[this.f3587d][1], 1);
                                        break;
                                    }
                                }
                            }
                            for (int i29 = 0; i29 < (b11 & 255); i29++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        } else if (nt.f8637c != 21 && (b11 & 255) == 1) {
                            int i30 = u0.b.f17347o;
                            if (i30 == 0) {
                                z.k.s(227, -126, 1, 1);
                                qt.a(1);
                            } else if (i30 == 1) {
                                qt.a(0);
                                z.k.s(227, -126, 1, 0);
                            }
                        }
                    }
                }
                break;
            case 33:
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                qt.y0(10, (b12 >> 7) & 1);
                qt.y0(11, (b12 >> 6) & 1);
                qt.y0(13, (b12 >> 4) & 1);
                qt.y0(14, (b12 >> 3) & 1);
                if (f3584s == 1) {
                    qt.y0(12, (b12 >> 5) & 1);
                } else {
                    int i31 = (b12 >> 1) & 3;
                    if (i31 == 0) {
                        qt.y0(12, 1);
                    } else if (i31 == 1) {
                        qt.y0(12, 0);
                    } else {
                        qt.y0(12, 2);
                    }
                }
                qt.y0(190, (b12 >> 0) & 1);
                int i32 = (b13 >> 4) & 15;
                if (i32 != 0) {
                    if (i32 == 1) {
                        i7 = 0;
                        i8 = 0;
                        i10 = 1;
                    } else if (i32 == 2) {
                        i7 = 0;
                        i8 = 0;
                        i10 = 0;
                        i9 = 1;
                    } else if (i32 == 3) {
                        i7 = 0;
                        i10 = 0;
                        i8 = 1;
                        i9 = 1;
                    } else if (i32 == 4) {
                        i7 = 0;
                        i10 = 0;
                        i9 = 0;
                        i8 = 1;
                    } else if (i32 != 15) {
                        i7 = 0;
                        i8 = 0;
                        i10 = 0;
                    } else {
                        i8 = 0;
                        i10 = 0;
                        i9 = 0;
                        i7 = 1;
                    }
                    i9 = i10;
                } else {
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                }
                qt.y0(49, i7);
                qt.y0(18, i8);
                qt.y0(19, i10);
                qt.y0(20, i9);
                qt.y0(21, b13 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i33 = i2 + 4;
                byte b14 = bArr[i33];
                byte b15 = bArr[i2 + 5];
                int i34 = i2 + 6;
                byte b16 = bArr[i34];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b14 = bArr[i34];
                    b16 = bArr[i33];
                }
                if (b14 == 0) {
                    qt.y0(27, -2);
                } else if (b14 != 15) {
                    if (b14 >= 1 && b14 <= 12) {
                        qt.y0(27, (b14 & DhcpPacket.DHCP_DOMAIN_NAME) + 16);
                    }
                    if (b14 == 16) {
                        qt.y0(27, 16);
                    }
                } else {
                    qt.y0(27, -3);
                }
                qt.y0(65, (b15 >> 7) & 1);
                qt.y0(16, (b15 >> 6) & 1);
                qt.y0(52, (b15 >> 5) & 1);
                qt.y0(29, (b15 >> 3) & 3);
                qt.y0(30, (b15 >> 1) & 3);
                if (b16 == 0) {
                    qt.y0(28, -2);
                } else if (b16 != 15) {
                    if (b16 >= 1 && b16 <= 12) {
                        qt.y0(28, (b16 & DhcpPacket.DHCP_DOMAIN_NAME) + 16);
                    }
                    if (b16 == 16) {
                        qt.y0(28, 16);
                    }
                } else {
                    qt.y0(28, -3);
                }
                int i35 = i2 + 7;
                qt.y0(62, (bArr[i35] >> 6) & 1);
                qt.y0(67, (bArr[i35] >> 7) & 1);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                int i36 = i2 + 2;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 3;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 4;
                int i41 = bArr[i40] & 255;
                int i42 = i2 + 5;
                int i43 = bArr[i42] & 255;
                if (i37 == 0 && i39 == 0 && i41 == 0 && i43 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i37 || l0.c0.f13014h != i39 || l0.c0.f13015i != i41 || l0.c0.f13016j != i43) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i37;
                l0.c0.f13014h = i39;
                l0.c0.f13015i = i41;
                l0.c0.f13016j = i43;
                u0.d.D2(l0.c0.Q0(bArr[i36] & 255));
                u0.d.E2(l0.c0.Q0(bArr[i38] & 255));
                u0.d.F2(l0.c0.Q0(bArr[i40] & 255));
                u0.d.G2(l0.c0.Q0(bArr[i42] & 255));
                break;
            case 36:
                byte b17 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b17 >> 7) & 1);
                    qt.y0(2, (b17 >> 6) & 1);
                } else {
                    qt.y0(2, (b17 >> 7) & 1);
                    qt.y0(1, (b17 >> 6) & 1);
                }
                qt.y0(4, (b17 >> 5) & 1);
                qt.y0(3, (b17 >> 4) & 1);
                qt.y0(5, (b17 >> 3) & 1);
                break;
            default:
                switch (b2) {
                    case 64:
                        if (nt.f8633a != 2228497) {
                            byte b18 = bArr[i2 + 2];
                            byte b19 = bArr[i2 + 3];
                            byte b20 = bArr[i2 + 4];
                            qt.y0(99, (b18 >> 7) & 1);
                            qt.y0(100, (b18 >> 6) & 1);
                            qt.y0(101, (b18 >> 5) & 1);
                            qt.y0(102, (b18 >> 4) & 1);
                            int i44 = b19 & DhcpPacket.DHCP_DOMAIN_NAME;
                            this.f3585b = i44;
                            qt.y0(103, (b19 >> 7) & 1);
                            qt.y0(104, (b19 >> 6) & 1);
                            qt.y0(105, (b19 >> 5) & 1);
                            qt.y0(106, i44);
                            int i45 = b20 & DhcpPacket.DHCP_DOMAIN_NAME;
                            this.f3586c = i45;
                            qt.y0(107, (b20 >> 7) & 1);
                            qt.y0(108, (b20 >> 6) & 1);
                            qt.y0(109, (b20 >> 5) & 1);
                            qt.y0(110, i45);
                            break;
                        }
                        break;
                    case 65:
                        if (nt.f8633a != 2228497) {
                            byte b21 = bArr[i2 + 2];
                            byte b22 = bArr[i2 + 3];
                            byte b23 = bArr[i2 + 4];
                            qt.y0(116, (b21 >> 7) & 1);
                            qt.y0(115, (b21 >> 6) & 1);
                            qt.y0(114, (b21 >> 4) & 3);
                            qt.y0(101, (b21 >> 3) & 1);
                            qt.y0(102, (b21 >> 2) & 1);
                            qt.y0(129, (b21 >> 1) & 1);
                            qt.y0(149, (b21 >> 0) & 1);
                            qt.y0(122, (b22 >> 7) & 1);
                            qt.y0(123, (b22 >> 5) & 3);
                            qt.y0(124, (b22 >> 3) & 3);
                            qt.y0(121, (b23 >> 7) & 1);
                            qt.y0(125, (b23 >> 6) & 1);
                            qt.y0(130, (b23 >> 5) & 1);
                            qt.y0(146, (b23 >> 4) & 1);
                            int i46 = i2 + 6;
                            qt.y0(126, (bArr[i46] >> 7) & 1);
                            qt.y0(147, (bArr[i46] >> 6) & 1);
                            qt.y0(148, (bArr[i46] >> 5) & 1);
                            qt.y0(127, bArr[i2 + 7] & 255);
                            int i47 = i2 + 8;
                            qt.y0(131, (bArr[i47] >> 7) & 1);
                            qt.y0(132, (bArr[i47] >> 5) & 3);
                            qt.y0(133, (bArr[i47] >> 4) & 1);
                            qt.y0(134, (bArr[i47] >> 2) & 3);
                            qt.y0(135, (bArr[i47] >> 1) & 1);
                            qt.y0(150, (bArr[i47] >> 0) & 1);
                            int i48 = i2 + 9;
                            qt.y0(136, (bArr[i48] >> 7) & 1);
                            qt.y0(137, (bArr[i48] >> 6) & 1);
                            qt.y0(138, (bArr[i48] >> 4) & 3);
                            qt.y0(151, (bArr[i48] >> 3) & 1);
                            qt.y0(152, (bArr[i48] >> 2) & 1);
                            qt.y0(153, (bArr[i48] >> 1) & 1);
                            qt.y0(154, (bArr[i48] >> 0) & 1);
                            int i49 = i2 + 10;
                            qt.y0(139, (bArr[i49] >> 7) & 1);
                            int i50 = nt.f8637c;
                            if (i50 == 14 || i50 == 21 || i50 == 22) {
                                qt.y0(140, (bArr[i49] >> 5) & 3);
                            }
                            int i51 = nt.f8637c;
                            if (i51 == 14 || i51 == 15 || i51 == 20 || i51 == 21 || i51 == 22) {
                                qt.y0(141, (bArr[i49] >> 3) & 3);
                            }
                            qt.y0(155, (bArr[i49] >> 1) & 3);
                            qt.y0(142, bArr[i2 + 11] & 255);
                            int i52 = i2 + 12;
                            qt.y0(156, (bArr[i52] >> 7) & 1);
                            qt.y0(157, (bArr[i52] >> 5) & 3);
                            qt.y0(158, (bArr[i52] >> 3) & 3);
                            qt.y0(159, (bArr[i52] >> 2) & 1);
                            qt.y0(201, bArr[i2 + 13] & 255);
                            break;
                        }
                        break;
                    case 66:
                        int i53 = nt.f8637c;
                        if (i53 == 2 || i53 == 4 || i53 == 18 || i53 == 36) {
                            byte b24 = bArr[i2 + 2];
                            byte b25 = bArr[i2 + 3];
                            qt.y0(117, (b24 >> 7) & 1);
                            qt.y0(118, (b24 >> 6) & 1);
                            qt.y0(119, (b24 >> 5) & 1);
                            qt.y0(120, (b24 >> 4) & 1);
                            qt.y0(121, (b25 >> 7) & 1);
                        }
                        break;
                    case 67:
                        break;
                    default:
                        switch (b2) {
                            case 80:
                                int i54 = i2 + 2;
                                qt.y0(144, (bArr[i54] >> 4) & 1);
                                qt.y0(145, (bArr[i54] >> 2) & 3);
                                int i55 = nt.f8637c;
                                if (i55 == 16 && i55 == 17 && i55 == 22 && i55 == 30 && !qt.k0()) {
                                    if ((bArr[i54] & 1) == 1) {
                                        qt.a(1);
                                    } else if ((bArr[i54] & 1) == 0) {
                                        qt.a(0);
                                    }
                                    break;
                                }
                                break;
                            case 81:
                                int i56 = i2 + 2;
                                int i57 = (i2 + i3) - 1;
                                for (int i58 = i56; i58 < i57; i58 += 2) {
                                    byte b26 = bArr[i58];
                                    byte b27 = bArr[i58 + 1];
                                }
                                qt.x0(111, new String(bArr, i56, i3 - 2));
                                break;
                            case 82:
                                int i59 = i2 + 2;
                                qt.y0(168, (bArr[i59] >> 4) & 15);
                                qt.y0(169, (bArr[i59] >> 0) & 15);
                                int i60 = i2 + 3;
                                qt.y0(170, (bArr[i60] >> 4) & 15);
                                qt.y0(171, 15 & (bArr[i60] >> 0));
                                qt.y0(160, bArr[i2 + 4] & 255);
                                qt.y0(161, bArr[i2 + 5] & 255);
                                qt.y0(162, bArr[i2 + 6] & 255);
                                qt.y0(163, bArr[i2 + 7] & 255);
                                qt.y0(164, bArr[i2 + 8] & 255);
                                qt.y0(165, bArr[i2 + 9] & 255);
                                qt.y0(166, bArr[i2 + 10] & 255);
                                qt.y0(167, bArr[i2 + 11] & 255);
                                qt.y0(172, bArr[i2 + 12] & 255);
                                break;
                            case 83:
                                qt.y0(176, (bArr[i2 + 2] + 1) & 255);
                                qt.y0(177, bArr[i2 + 3] & 255);
                                qt.y0(191, bArr[i2 + 4] & 255);
                                qt.y0(192, bArr[i2 + 5] & 255);
                                qt.y0(193, bArr[i2 + 6] & 255);
                                qt.y0(194, bArr[i2 + 7] & 255);
                                break;
                            case 84:
                                qt.y0(178, (bArr[i2 + 2] + 1) & 255);
                                break;
                            default:
                                switch (b2) {
                                    case 96:
                                        qt.y0(179, bArr[i2 + 2] & 255);
                                        qt.y0(180, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        qt.y0(181, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                        qt.y0(182, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                                        qt.y0(183, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                                        qt.y0(184, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                                        break;
                                    case 97:
                                        qt.y0(185, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                                        break;
                                    case 98:
                                        qt.y0(186, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                                        qt.y0(187, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                                        break;
                                    case 99:
                                        for (int i61 = 0; i61 < 50; i61++) {
                                            o1.x.C(nt.f8643f, 188, new int[]{i61, bArr[i2 + i61 + 2] & 255}, null, null);
                                        }
                                        break;
                                    case 100:
                                        for (int i62 = 0; i62 < 50; i62++) {
                                            o1.x.C(nt.f8643f, 189, new int[]{i62, bArr[i2 + i62 + 2] & 255}, null, null);
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                qt.y0(143, bArr[i2 + 2] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f3600q);
        u0.c.f17386m.d(this.f3598o);
        l0.b0.p0(this.f3599p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 225) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:77:0x019e A[PHI: r1
  0x019e: PHI (r1v35 int) = 
  (r1v33 int)
  (r1v33 int)
  (r1v33 int)
  (r1v33 int)
  (r1v48 int)
  (r1v50 int)
  (r1v53 int)
  (r1v55 int)
  (r1v33 int)
  (r1v58 int)
  (r1v60 int)
 binds: [B:75:0x0199, B:35:0x0125, B:55:0x0161, B:58:0x0167, B:53:0x015a, B:52:0x0155, B:49:0x014c, B:48:0x0147, B:40:0x012f, B:45:0x013d, B:44:0x0137] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3 = 0;
        if (i2 == 49) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            }
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 0) {
                z.k.s(227, -126, 1, 1);
                qt.a(1);
                return;
            } else {
                z.k.s(227, -126, 1, 0);
                qt.a(0);
                return;
            }
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            switch (iArr[0]) {
                case 1:
                    z.k.s(227, -126, 1, 4);
                    break;
                case 2:
                    z.k.s(227, -126, 1, 8);
                    break;
                case 3:
                    z.k.s(227, -126, 1, 6);
                    break;
                case 4:
                    z.k.s(227, -126, 1, 10);
                    break;
                case 5:
                    z.k.s(227, -126, 1, 4);
                    break;
                case 6:
                    z.k.s(227, -126, 1, 8);
                    break;
                case 7:
                    z.k.s(227, -126, 1, 6);
                    break;
                case 8:
                    z.k.s(227, -126, 1, 10);
                    break;
                case 9:
                    z.k.s(227, -126, 1, 5);
                    break;
                case 10:
                    z.k.s(227, -126, 1, 7);
                    break;
                case 11:
                    z.k.s(227, -126, 1, 11);
                    break;
                case 12:
                    z.k.s(227, -126, 1, 9);
                    break;
                case 13:
                    z.k.s(227, -126, 1, 2);
                    break;
                case 14:
                    z.k.s(227, -126, 1, 3);
                    break;
            }
        }
        switch (i2) {
            case 2:
                if (h3(iArr, 1)) {
                    int i4 = iArr[0];
                    if (i4 != 21) {
                        switch (i4) {
                            case 0:
                                if (iArr.length >= 2) {
                                    f3(1, iArr[1]);
                                    a.i.a0(50L);
                                    f3(1, 0);
                                }
                                break;
                            case 1:
                                f3(2, 1);
                                a.i.a0(50L);
                                f3(2, 0);
                                break;
                            case 2:
                                f3(3, 1);
                                a.i.a0(50L);
                                f3(3, 0);
                                break;
                            case 3:
                                if (iArr.length >= 2) {
                                    f3(4, iArr[1]);
                                    a.i.a0(50L);
                                    f3(4, 0);
                                }
                                break;
                            case 4:
                                f3(5, 1);
                                a.i.a0(50L);
                                f3(5, 0);
                                break;
                            case 5:
                                f3(6, 1);
                                a.i.a0(50L);
                                f3(6, 0);
                                break;
                            case 6:
                                f3(7, 1);
                                a.i.a0(50L);
                                f3(7, 0);
                                break;
                            case 7:
                                f3(8, 1);
                                a.i.a0(50L);
                                f3(8, 0);
                                break;
                            case 8:
                                f3(9, 1);
                                a.i.a0(50L);
                                f3(9, 0);
                                break;
                        }
                    } else {
                        f3(21, iArr[1]);
                        a.i.a0(50L);
                        f3(21, 0);
                        break;
                    }
                }
                break;
            case 3:
                if (h3(iArr, 3)) {
                    int i5 = iArr[2];
                    if (iArr[0] == 1) {
                        g3(1, iArr[1], iArr[2]);
                    } else if (iArr[0] != 2) {
                        g3(iArr[0], iArr[1], iArr[2]);
                    } else {
                        if (iArr[1] == 2 || iArr[1] == 4) {
                            if (i5 > 0) {
                                if (i5 >= 9) {
                                    i3 = 9;
                                } else {
                                    i3 = i5;
                                }
                            }
                        } else if (iArr.length < 4) {
                            i3 = i5;
                        } else {
                            if (iArr[1] == 1) {
                                if (i5 == 1) {
                                    i5 = iArr[3] == 0 ? this.f3585b & 112 : this.f3585b | 128;
                                } else if (i5 == 2) {
                                    i5 = iArr[3] == 0 ? this.f3585b & 176 : this.f3585b | 64;
                                } else if (i5 == 3) {
                                    i5 = iArr[3] == 0 ? this.f3585b & 208 : this.f3585b | 32;
                                }
                            } else if (iArr[1] == 3) {
                                if (i5 == 1) {
                                    i3 = iArr[3] == 0 ? this.f3586c & 112 : this.f3586c | 128;
                                } else if (i5 == 2) {
                                    i3 = iArr[3] == 0 ? this.f3586c & 176 : this.f3586c | 64;
                                } else if (i5 == 3) {
                                    i3 = iArr[3] == 0 ? this.f3586c & 208 : this.f3586c | 32;
                                }
                            }
                            i3 = i5;
                        }
                        g3(2, iArr[1], i3);
                    }
                }
                break;
            case 4:
                if (iArr[0] == 255) {
                    j3(iArr[1]);
                } else if (iArr[0] != 254) {
                    z.k.s(-29, -58, 3, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2]);
                    a.i.a0(100L);
                    z.k.s(227, -112, 3, 57, iArr[0], 255);
                } else {
                    i3(iArr[1]);
                }
                break;
            case 5:
                z.k.s(-29, -118, 2, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 6:
                z.k.s(-29, -126, 1, (byte) iArr[0]);
                break;
            case 7:
                z.k.s(-29, -112, 3, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2]);
                break;
            case 8:
                z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
                break;
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, -118, 2, i2, i3);
    }

    public final void f3(int i2, int i3) {
        z.k.s(-29, -118, 2, (byte) i2, (byte) i3);
    }

    public final void g3(int i2, int i3, int i4) {
        z.k.s(-29, -58, 3, (byte) i2, (byte) i3, (byte) i4);
    }

    public final boolean h3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void i3(int i2) {
        f3584s = i2;
        qt.y0(217, i2);
        int iB = this.f3594k.b(2, 0);
        int i3 = f3584s;
        if (iB != i3) {
            this.f3594k.g(2, i3);
        }
    }

    public final void j3(int i2) {
        f3583r = i2;
        qt.y0(199, i2);
        int iB = this.f3594k.b(1, 0);
        int i3 = f3583r;
        if (iB != i3) {
            this.f3594k.g(1, i3);
        }
    }
}
