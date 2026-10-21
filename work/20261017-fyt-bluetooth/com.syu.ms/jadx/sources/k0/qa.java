package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qa extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f9464r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f9465s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f9466t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f9467u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9469c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9470d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 26}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 29}, new int[]{11, 3}, new int[]{12, 4}, new int[]{50, 1}, new int[]{128, 21}, new int[]{129, 5}, new int[]{130, 6}, new int[]{131, 54}, new int[]{132, 25}, new int[]{133, 3}, new int[]{134, 74}, new int[]{135, 25}, new int[]{136, 4}, new int[]{137, 75}, new int[]{138, 54}, new int[]{139, 18}, new int[]{140, 55}, new int[]{141, 38}, new int[]{142, -1}, new int[]{143, 1}, new int[]{144, 54}, new int[]{145, 5}, new int[]{146, 27}, new int[]{147, 28}, new int[]{148, 32}, new int[]{149, 33}, new int[]{150, 29}, new int[]{151, 12}, new int[]{152, 38}, new int[]{153, 16}, new int[]{i.a.Theme_actionModeShareDrawable, 32}, new int[]{i.a.Theme_actionModeFindDrawable, 33}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 32}, new int[]{i.a.Theme_actionModePopupWindowStyle, 33}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9471e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{11, 3}, new int[]{12, 4}, new int[]{16, 9}, new int[]{17, 6}, new int[]{18, 54}, new int[]{19, 25}, new int[]{20, 3}, new int[]{21, 4}, new int[]{22, 74}, new int[]{23, 25}, new int[]{24, 75}, new int[]{25, 54}, new int[]{26, 18}, new int[]{27, 55}, new int[]{28, 38}, new int[]{29, 34}, new int[]{30, 35}, new int[]{31, 32}, new int[]{32, 33}, new int[]{33, 29}, new int[]{34, 30}, new int[]{35, 31}, new int[]{36, -1}, new int[]{37, 1}, new int[]{38, 16}, new int[]{50, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9472f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9473g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9474h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9475i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9476j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9477k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9478l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.g0 f9479m = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f9480n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f9481o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9482p = 3;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f9483q = 4;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qa.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            int i2 = nt.f8637c;
            if (i2 == 34 || i2 == 35) {
                z.k.s(227, 178, 3, b5 & 255, b6 & 255, time.second & 255);
            } else {
                z.k.s(227, 178, 6, (time.second << 2) & 255, (b6 << 2) & 255, (b5 << 3) & 255, (b4 << 3) & 255, (b3 << 4) & 255, (b2 << 2) & 255);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(qa.this.f9477k);
            qa.this.f9475i = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qa qaVar = qa.this;
            int i2 = qaVar.f9475i - 1;
            qaVar.f9475i = i2;
            if (i2 <= 0) {
                l0.b0.p0(qaVar.f9477k);
                qa.this.f9475i = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (nt.f8637c == 27 && u0.b.f17306a0 == 1) {
                qa qaVar2 = qa.this;
                qaVar2.d3(qaVar2.f9479m.b(1, 0), qa.this.f9479m.b(2, 0), qa.this.f9479m.b(3, 0), qa.this.f9479m.b(4, 0));
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 13) {
                z.k.s(227, -18, 2, 160, 0);
            }
            if (i2 == 32) {
                z.k.s(227, -18, 2, 160, 4);
                return;
            }
            switch (i2) {
                case 15:
                    z.k.s(227, -18, 2, 160, 2);
                    break;
                case 16:
                    z.k.s(227, -18, 2, 160, 1);
                    break;
                case 17:
                    z.k.s(227, -18, 2, 160, 3);
                    break;
                case 18:
                    z.k.s(227, -18, 2, 161, 1);
                    break;
                case 19:
                case 20:
                    z.k.s(227, -18, 2, 161, 2);
                    break;
                default:
                    switch (i2) {
                        case 26:
                            z.k.s(227, -18, 2, 161, 3);
                            break;
                        case 27:
                            z.k.s(227, -18, 2, 161, 4);
                            break;
                        case 28:
                        case 29:
                            z.k.s(227, -18, 2, 161, 5);
                            break;
                    }
                    break;
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[37];
        iArr[0] = 227;
        iArr[1] = 154;
        iArr[2] = 34;
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17798j;
            int i4 = w0.d.f17796h;
            if (i4 == 65536 || i4 == 65537 || i4 == 65538) {
                iArr[3] = 1;
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
            } else {
                iArr[3] = 2;
            }
            iArr[4] = 1;
            int i5 = i3 % 6;
            if (i5 != 0 || i3 == 0) {
                iArr[5] = i5;
            } else {
                iArr[5] = 6;
            }
            int i6 = w0.d.f17797i;
            iArr[6] = (i6 >> 8) & 255;
            iArr[7] = i6 & 255;
        } else if (i2 == 2 || i2 == 3) {
            iArr[3] = 5;
        } else if (i2 == 8 || i2 == 10) {
            iArr[3] = 4;
            iArr[4] = 1;
            int i7 = u0.b.r3;
            iArr[5] = i7 & 255;
            iArr[6] = (i7 >> 8) & 255;
            int i8 = u0.b.s3;
            iArr[7] = i8 & 255;
            iArr[8] = (i8 >> 8) & 255;
        }
        z.k.s(iArr);
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
        switch (nt.f8633a) {
            case 196922:
            case 1507642:
            case 1638714:
            case 2228538:
            case 2294074:
                if (i2 != 41) {
                    if (i2 != 42) {
                        if (i2 != 68) {
                            switch (i2) {
                                case 33:
                                    if (iArr[1] == 0) {
                                        if (nt.f8645g[21] != 0) {
                                            z.k.s(227, -125, 2, 168, 1);
                                        }
                                    } else if (nt.f8645g[21] == 0) {
                                        z.k.s(227, -125, 2, 160, 1);
                                    }
                                    break;
                                case 34:
                                    if (iArr[1] == 0) {
                                        if (nt.f8645g[11] == 1) {
                                            z.k.s(227, -125, 2, 164, 0);
                                        }
                                    } else if (nt.f8645g[11] == 0) {
                                        z.k.s(227, -125, 2, 164, 1);
                                    }
                                    break;
                                case 35:
                                    if (iArr[1] == 0) {
                                        if (nt.f8645g[13] == 1) {
                                            z.k.s(227, -125, 2, 169, 0);
                                        }
                                    } else if (nt.f8645g[13] == 0) {
                                        z.k.s(227, -125, 2, 169, 1);
                                    }
                                    break;
                                case 36:
                                    if (iArr[1] == 0) {
                                        if (nt.f8645g[65] == 1) {
                                            z.k.s(227, -125, 2, 163, 1);
                                        }
                                    } else if (nt.f8645g[65] == 0) {
                                        z.k.s(227, -125, 2, 163, 4);
                                    }
                                    break;
                                case 37:
                                    if (iArr[1] == 0) {
                                        if (nt.f8645g[16] == 1) {
                                            z.k.s(227, -125, 2, 167, 0);
                                        }
                                    } else if (nt.f8645g[16] == 0) {
                                        z.k.s(227, -125, 2, 167, 1);
                                    }
                                    break;
                                case 38:
                                    if (iArr[1] == 1) {
                                        if (nt.f8645g[12] == 0) {
                                            z.k.s(227, -125, 2, 165, 0);
                                        }
                                        break;
                                    } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                                        z.k.s(227, -125, 2, 165, 1);
                                        break;
                                    }
                                    break;
                                case 39:
                                    if (iArr[1] != -1) {
                                        z.k.s(227, -125, 2, 160, 0);
                                    } else {
                                        z.k.s(227, -125, 2, 160, 1);
                                    }
                                    break;
                            }
                        } else {
                            if (iArr[1] == 1) {
                                z.k.s(227, -77, 2, 81, 0);
                            } else if (iArr[1] == 2) {
                                z.k.s(227, -77, 2, 81, 1);
                            } else if (iArr[1] == 3) {
                                z.k.s(227, -77, 2, 82, 0);
                            } else if (iArr[1] == 4) {
                                z.k.s(227, -77, 2, 82, 1);
                            } else if (iArr[1] == 5) {
                                z.k.s(227, -77, 2, 83, 0);
                            } else if (iArr[1] == 6) {
                                z.k.s(227, -77, 2, 83, 1);
                            } else if (iArr[1] == 7) {
                                z.k.s(227, -77, 2, 84, 0);
                            } else if (iArr[1] == 8) {
                                z.k.s(227, -77, 2, 84, 1);
                            } else if (iArr[1] == 9) {
                                z.k.s(227, -77, 2, 80, 0);
                            } else if (iArr[1] == 10) {
                                z.k.s(227, -77, 2, 80, 1);
                            } else if (iArr[1] == 11) {
                                z.k.s(227, -77, 2, 85, 0);
                            } else if (iArr[1] == 12) {
                                z.k.s(227, -77, 2, 85, 1);
                            } else if (iArr[1] == 13) {
                                z.k.s(227, -77, 2, 86, 0);
                            } else if (iArr[1] == 14) {
                                z.k.s(227, -77, 2, 86, 1);
                            } else if (iArr[1] == 15) {
                                z.k.s(227, -77, 2, 87, 0);
                            } else if (iArr[1] == 16) {
                                z.k.s(227, -77, 2, 87, 1);
                            }
                            break;
                        }
                    } else {
                        if (iArr[1] == 0) {
                            z.k.s(227, -125, 2, 161, 0);
                        } else {
                            z.k.s(227, -125, 2, 161, 1);
                        }
                        break;
                    }
                } else {
                    if (iArr[1] == 0) {
                        z.k.s(227, -125, 2, 161, 0);
                    } else {
                        z.k.s(227, -125, 2, 161, 1);
                    }
                    break;
                }
                break;
            default:
                if (i2 != 41) {
                    if (i2 != 42) {
                        if (i2 != 56) {
                            if (i2 != 67) {
                                if (i2 != 68) {
                                    switch (i2) {
                                        case 33:
                                            if (iArr[1] == 0) {
                                                if (nt.f8645g[10] == 1) {
                                                    z.k.s(227, -17, 3, 125, 64, 0);
                                                }
                                            } else if (nt.f8645g[10] == 0) {
                                                z.k.s(227, -17, 3, 125, 64, 1);
                                            }
                                            break;
                                        case 34:
                                            if (iArr[1] == 0) {
                                                if (nt.f8645g[11] == 1) {
                                                    z.k.s(227, -17, 3, 125, 65, 0);
                                                }
                                            } else if (nt.f8645g[11] == 0) {
                                                z.k.s(227, -17, 3, 125, 65, 1);
                                            }
                                            break;
                                        case 35:
                                            if (iArr[1] == 0) {
                                                if (nt.f8645g[13] == 1) {
                                                    z.k.s(227, -57, 6, 32, 0, 0, 0, 0, 0);
                                                    a.i.a0(100L);
                                                    z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
                                                }
                                            } else if (nt.f8645g[13] == 0) {
                                                z.k.s(227, -57, 6, 32, 0, 0, 0, 0, 0);
                                                a.i.a0(100L);
                                                z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
                                            }
                                            break;
                                        case 36:
                                            if (iArr[1] == 0) {
                                                if (nt.f8645g[65] == 1) {
                                                    z.k.s(227, -17, 3, 125, 71, 0);
                                                }
                                            } else if (nt.f8645g[65] == 0) {
                                                z.k.s(227, -17, 3, 125, 71, 1);
                                            }
                                            break;
                                        case 37:
                                            if (iArr[1] == 0) {
                                                if (nt.f8645g[16] == 1) {
                                                    z.k.s(227, -17, 3, 125, 72, 0);
                                                }
                                            } else if (nt.f8645g[16] == 0) {
                                                z.k.s(227, -17, 3, 125, 72, 1);
                                            }
                                            break;
                                        case 38:
                                            if (iArr[1] == 1) {
                                                if (nt.f8645g[12] == 0) {
                                                    z.k.s(227, -17, 3, 125, 66, 0);
                                                }
                                                break;
                                            } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                                                z.k.s(227, -17, 3, 125, 66, 1);
                                                break;
                                            }
                                            break;
                                        case 39:
                                            if (iArr[1] != -1) {
                                                z.k.s(227, -17, 3, 125, 68, 129);
                                            } else {
                                                z.k.s(227, -17, 3, 125, 68, 128);
                                            }
                                            break;
                                    }
                                } else {
                                    if (iArr[1] == 1) {
                                        z.k.s(227, -17, 4, 125, 2, 2, 1);
                                    } else if (iArr[1] == 2) {
                                        z.k.s(227, -17, 4, 125, 2, 2, 11);
                                    } else if (iArr[1] == 3) {
                                        z.k.s(227, -17, 4, 125, 2, 0, 1);
                                    } else if (iArr[1] == 4) {
                                        z.k.s(227, -17, 4, 125, 2, 0, 11);
                                    } else if (iArr[1] == 5) {
                                        z.k.s(227, -17, 4, 125, 2, 3, 1);
                                    } else if (iArr[1] == 6) {
                                        z.k.s(227, -17, 4, 125, 2, 3, 11);
                                    } else if (iArr[1] == 7) {
                                        z.k.s(227, -17, 4, 125, 2, 1, 1);
                                    } else if (iArr[1] == 8) {
                                        z.k.s(227, -17, 4, 125, 2, 1, 11);
                                    } else if (iArr[1] == 9) {
                                        z.k.s(227, -17, 3, 125, 1, 0);
                                    } else if (iArr[1] == 10) {
                                        z.k.s(227, -17, 3, 125, 1, 1);
                                    } else if (iArr[1] == 11) {
                                        z.k.s(227, -17, 4, 125, 2, 16, 1);
                                    } else if (iArr[1] == 12) {
                                        z.k.s(227, -17, 4, 125, 2, 16, 11);
                                    }
                                    break;
                                }
                            } else {
                                int i3 = iArr[1];
                                if (i3 == 0) {
                                    z.k.s(227, 135, 1, 1);
                                    break;
                                } else if (i3 == 1) {
                                    z.k.s(227, 135, 1, 0);
                                    break;
                                } else if (i3 == 2) {
                                    z.k.s(227, 135, 1, 5);
                                    break;
                                } else if (i3 == 3) {
                                    z.k.s(227, 135, 1, 6);
                                    break;
                                } else if (i3 == 4) {
                                    z.k.s(227, 135, 1, 7);
                                    break;
                                } else if (i3 == 5) {
                                    z.k.s(227, 135, 1, 8);
                                    break;
                                }
                            }
                        } else {
                            if (iArr[1] < 17) {
                                z.k.s(227, -121, 2, 13, 0);
                            } else if (iArr[1] >= 17 && iArr[1] <= 31) {
                                z.k.s(227, -121, 2, 13, (iArr[1] - 16) * 2);
                            } else if (iArr[1] > 31) {
                                z.k.s(227, -121, 2, 13, 255);
                            }
                            break;
                        }
                    } else {
                        if (iArr[1] == 0) {
                            z.k.s(227, -17, 4, 125, 69, 1, 129);
                        } else {
                            z.k.s(227, -17, 4, 125, 69, 1, 128);
                        }
                        break;
                    }
                } else {
                    if (iArr[1] == 0) {
                        z.k.s(227, -17, 4, 125, 69, 0, 129);
                    } else {
                        z.k.s(227, -17, 4, 125, 69, 0, 128);
                    }
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f9478l);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        switch (nt.f8637c) {
            case 1:
            case 4:
            case 5:
                mtVar.f8312g = 1;
                break;
            case 3:
            case 23:
            case 25:
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
                break;
            case 6:
            case 7:
            case 13:
            case 18:
            case 19:
            case 20:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
                break;
            case 8:
            case 28:
            case 29:
            case 34:
            case 35:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
                qt.z(this.f9474h);
                break;
            case 11:
            case 27:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8312g = 1;
                qt.z(this.f9474h);
                break;
            case 32:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8312g = 1;
                qt.z(this.f9474h);
                w0.e.f17815a.a(this.f9473g, 1);
                w0.e.f17819e.a(this.f9473g, 1);
                u0.c.f17393t.a(this.f9473g, 1);
                u0.c.f17392s.a(this.f9473g, 1);
                u0.c.f17374a.a(this.f9473g, 1);
                break;
        }
        u0.c.f17386m.a(this.f9476j, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    /* JADX WARN: Unexpected iteration count in SwitchBreakVisitor. Please report as an issue */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2];
        if (b2 == 33) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f9469c = b3 & 255;
                int i11 = nt.f8637c;
                if (i11 == 2 || i11 == 3 || i11 == 21 || i11 == 22 || i11 == 23 || i11 == 24 || i11 == 25 || i11 == 34 || i11 == 35) {
                    int i12 = 0;
                    while (true) {
                        iArr = this.f9471e;
                        if (i12 >= iArr.length) {
                            break;
                        }
                        int i13 = this.f9469c;
                        if (i13 == iArr[i12][0]) {
                            if (i13 == 0) {
                                break;
                            }
                            this.f9468b = i12;
                            break;
                        }
                        i12++;
                    }
                    switch (this.f9469c) {
                        case 34:
                            for (int i14 = 0; i14 < (b4 & 255); i14++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case 35:
                            for (int i15 = 0; i15 < (b4 & 255); i15++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 36:
                            if ((b4 & 255) == 1) {
                                if (qt.k0()) {
                                    if (o1.u.S("com.syu.fourcamera2")) {
                                        c.e.d().c(614);
                                    } else {
                                        c.e.d().c(590);
                                    }
                                } else if (u0.b.f17347o == 0) {
                                    qt.a(1);
                                } else {
                                    qt.a(0);
                                }
                            }
                            break;
                        default:
                            int i16 = b4 & 255;
                            if (i16 == 1) {
                                if (i12 < iArr.length) {
                                    l0.b0.l0(iArr[i12][1], 0);
                                }
                            } else if (i16 == 0) {
                                int i17 = this.f9468b;
                                if (i17 < iArr.length) {
                                    i4 = 255;
                                    if (i17 != 255) {
                                        l0.b0.l0(iArr[i17][1], 1);
                                    }
                                } else {
                                    i4 = 255;
                                }
                                this.f9468b = i4;
                            }
                            break;
                    }
                }
                int i18 = 0;
                while (true) {
                    iArr2 = this.f9470d;
                    if (i18 >= iArr2.length) {
                        break;
                    }
                    int i19 = this.f9469c;
                    if (i19 == iArr2[i18][0]) {
                        if (i19 == 0) {
                            break;
                        }
                        this.f9468b = i18;
                        break;
                    }
                    i18++;
                }
                int i20 = nt.f8637c;
                if (i20 == 6 || i20 == 7 || i20 == 19 || i20 == 20 || i20 == 28 || i20 == 29) {
                    int i21 = this.f9469c;
                    if (i21 == 5) {
                        if ((b4 & 255) == 1) {
                            int i22 = h0.c.E;
                            if (i22 == 3 || i22 == 4 || i22 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                                return;
                            } else {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                                return;
                            }
                        }
                        return;
                    }
                    if (i21 == 142) {
                        if ((b4 & 255) == 1) {
                            if (u0.b.f17347o == 1) {
                                qt.a(0);
                                z.k.s(227, -121, 1, 0);
                                return;
                            } else {
                                qt.a(1);
                                z.k.s(227, -121, 1, 1);
                                return;
                            }
                        }
                        return;
                    }
                    switch (i21) {
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            for (int i23 = 0; i23 < (b4 & 255); i23++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            for (int i24 = 0; i24 < (b4 & 255); i24++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            for (int i25 = 0; i25 < (b4 & 255); i25++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                            for (int i26 = 0; i26 < (b4 & 255); i26++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        default:
                            int i27 = b4 & 255;
                            if (i27 == 1) {
                                if (i18 < iArr2.length) {
                                    l0.b0.l0(iArr2[i18][1], 0);
                                }
                            } else if (i27 == 0) {
                                int i28 = this.f9468b;
                                if (i28 < iArr2.length) {
                                    i5 = 255;
                                    if (i28 != 255) {
                                        l0.b0.l0(iArr2[i28][1], 1);
                                    }
                                } else {
                                    i5 = 255;
                                }
                                this.f9468b = i5;
                            }
                            break;
                    }
                }
                if (i20 != 11) {
                    int i29 = this.f9469c;
                    if (i29 == 142) {
                        if ((b4 & 255) == 1) {
                            if (u0.b.f17347o == 1) {
                                qt.a(0);
                                z.k.s(227, -121, 1, 0);
                                return;
                            } else {
                                qt.a(1);
                                z.k.s(227, -121, 1, 1);
                                return;
                            }
                        }
                        return;
                    }
                    switch (i29) {
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            for (int i30 = 0; i30 < (b4 & 255); i30++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            for (int i31 = 0; i31 < (b4 & 255); i31++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            for (int i32 = 0; i32 < (b4 & 255); i32++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                            for (int i33 = 0; i33 < (b4 & 255); i33++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        default:
                            int i34 = b4 & 255;
                            if (i34 == 1) {
                                if (i18 < iArr2.length) {
                                    l0.b0.l0(iArr2[i18][1], 0);
                                }
                            } else if (i34 == 0) {
                                int i35 = this.f9468b;
                                if (i35 < iArr2.length) {
                                    i6 = 255;
                                    if (i35 != 255) {
                                        l0.b0.l0(iArr2[i35][1], 1);
                                    }
                                } else {
                                    i6 = 255;
                                }
                                this.f9468b = i6;
                            }
                            break;
                    }
                }
                int i36 = this.f9469c;
                if (i36 == 11) {
                    if ((b4 & 255) == 1) {
                        int i37 = h0.c.E;
                        if (i37 == 3 || i37 == 4 || i37 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(68, 0);
                            l0.b0.l0(68, 1);
                            return;
                        }
                    }
                    return;
                }
                if (i36 == 12) {
                    if ((b4 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(67, 0);
                            l0.b0.l0(67, 1);
                            return;
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        }
                    }
                    return;
                }
                if (i36 == 142) {
                    if ((b4 & 255) == 1) {
                        if (u0.b.f17347o == 1) {
                            qt.a(0);
                            z.k.s(227, -121, 1, 0);
                            return;
                        } else {
                            qt.a(1);
                            z.k.s(227, -121, 1, 1);
                            return;
                        }
                    }
                    return;
                }
                switch (i36) {
                    case i.a.Theme_actionModeShareDrawable /* 241 */:
                        for (int i38 = 0; i38 < (b4 & 255); i38++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case i.a.Theme_actionModeFindDrawable /* 242 */:
                        for (int i39 = 0; i39 < (b4 & 255); i39++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                        for (int i40 = 0; i40 < (b4 & 255); i40++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                        for (int i41 = 0; i41 < (b4 & 255); i41++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    default:
                        int i42 = b4 & 255;
                        if (i42 == 1) {
                            if (i18 < iArr2.length) {
                                l0.b0.l0(iArr2[i18][1], 0);
                            }
                        } else if (i42 == 0) {
                            int i43 = this.f9468b;
                            if (i43 < iArr2.length) {
                                i7 = 255;
                                if (i43 != 255) {
                                    l0.b0.l0(iArr2[i43][1], 1);
                                }
                            } else {
                                i7 = 255;
                            }
                            this.f9468b = i7;
                        }
                        break;
                }
            }
            return;
        }
        if (b2 == 64) {
            int i44 = i2 + 2;
            qt.y0(184, (bArr[i44] >> 7) & 1);
            qt.y0(185, (bArr[i44] >> 6) & 1);
            qt.y0(178, (bArr[i44] >> 5) & 1);
            qt.y0(179, (bArr[i44] >> 4) & 1);
            qt.y0(180, (bArr[i44] >> 0) & 15);
            int i45 = i2 + 3;
            qt.y0(181, (bArr[i45] >> 6) & 1);
            qt.y0(182, (bArr[i45] >> 4) & 3);
            qt.y0(183, (bArr[i45] >> 0) & 15);
            int i46 = i2 + 4;
            qt.y0(186, (bArr[i46] >> 6) & 1);
            qt.y0(187, (bArr[i46] >> 5) & 1);
            qt.y0(188, (bArr[i46] >> 4) & 1);
            qt.y0(189, (bArr[i46] >> 2) & 3);
            qt.y0(190, (bArr[i46] >> 1) & 1);
            qt.y0(191, (bArr[i46] >> 0) & 1);
            int i47 = i2 + 5;
            qt.y0(192, (bArr[i47] >> 7) & 1);
            qt.y0(193, (bArr[i47] >> 6) & 1);
            qt.y0(194, (bArr[i47] >> 5) & 1);
            qt.y0(195, (bArr[i47] >> 4) & 1);
            qt.y0(196, (bArr[i47] >> 0) & 15);
            qt.y0(197, (bArr[i2 + 6] >> 0) & 255);
            qt.y0(198, (bArr[i2 + 7] >> 0) & 255);
            int i48 = i2 + 8;
            qt.y0(199, (bArr[i48] >> 3) & 1);
            qt.y0(200, (bArr[i48] >> 1) & 1);
            qt.y0(201, (bArr[i48] >> 0) & 3);
            qt.y0(202, (bArr[i2 + 9] >> 0) & 255);
            return;
        }
        if (b2 == 66) {
            int i49 = i2 + 2;
            qt.y0(125, (bArr[i49] >> 6) & 3);
            qt.y0(126, (bArr[i49] >> 4) & 3);
            qt.y0(127, (bArr[i49] >> 2) & 3);
            qt.y0(128, (bArr[i49] >> 0) & 3);
            int i50 = i2 + 3;
            qt.y0(129, (bArr[i50] >> 6) & 3);
            qt.y0(130, (bArr[i50] >> 4) & 3);
            qt.y0(131, (bArr[i50] >> 2) & 3);
            qt.y0(132, (bArr[i50] >> 0) & 3);
            int i51 = i2 + 4;
            qt.y0(133, (bArr[i51] >> 6) & 3);
            qt.y0(134, (bArr[i51] >> 4) & 3);
            return;
        }
        if (b2 == 125) {
            int i52 = bArr[i2 + 2] & 255;
            if (i52 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i53 = i2 + 3;
                    l0.c0.b((bArr[i53] >> 3) & 1, (bArr[i53] >> 4) & 1, 0);
                    return;
                } else {
                    int i54 = i2 + 3;
                    l0.c0.a((bArr[i54] >> 3) & 1, (bArr[i54] >> 4) & 1, 0);
                    return;
                }
            }
            if (i52 == 3) {
                int i55 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i55);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i55}, null, null);
                return;
            } else {
                if (i52 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f9472f = true;
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 48) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            int i56 = nt.f8637c;
            if (i56 == 18 || i56 == 19 || i56 == 20 || i56 == 21 || i56 == 22 || i56 == 23 || i56 == 24 || i56 == 25 || i56 == 26 || i56 == 27 || i56 == 28 || i56 == 29 || i56 == 34 || i56 == 35) {
                if (this.f9472f) {
                    return;
                }
                qt.m(b6, b5, 7818, false, 5915);
                return;
            } else {
                if (this.f9472f) {
                    return;
                }
                qt.m(b6, b5, 5480, false, 5480);
                return;
            }
        }
        if (b2 == 49) {
            qt.y0(124, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 54) {
            if (nt.a()) {
                l0.f0.i(bArr[i2 + 2]);
                return;
            }
            return;
        }
        if (b2 == 55) {
            int i57 = i2 + 2;
            qt.y0(1001, bArr[i57]);
            if ((bArr[i57] & 255) != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        switch (b2) {
            case 35:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 4];
                byte b10 = bArr[i2 + 5];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                if (nt.f8637c == 8) {
                    qt.y0(68, (b7 >> 4) & 1);
                }
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(38, (b7 >> 2) & 1);
                qt.y0(16, (b7 >> 1) & 1);
                qt.y0(65, b7 & 1);
                int i58 = b8 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i58 != 1) {
                    if (i58 == 2) {
                        i8 = 0;
                        i10 = 1;
                    } else if (i58 == 3) {
                        i8 = 0;
                        i10 = 0;
                        i9 = 1;
                    } else if (i58 == 4) {
                        i10 = 0;
                        i8 = 1;
                        i9 = 1;
                    } else if (i58 != 5) {
                        i8 = 0;
                        i10 = 0;
                    } else {
                        i10 = 0;
                        i9 = 0;
                        i8 = 1;
                    }
                    i9 = i10;
                } else {
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                }
                qt.y0(18, i8);
                qt.y0(19, i10);
                qt.y0(20, i9);
                qt.y0(21, b9 & 255);
                int i59 = b10 & 255;
                int i60 = nt.f8637c;
                if (i60 == 6 || i60 == 7 || i60 == 8 || i60 == 13 || i60 == 17 || i60 == 18 || i60 == 19 || i60 == 20 || i60 == 26 || i60 == 27 || i60 == 28 || i60 == 29 || i60 == 31) {
                    if (i59 < 124) {
                        qt.y0(27, -2);
                    } else if (i59 > 156) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i59);
                    }
                } else if (i59 <= 17) {
                    qt.y0(27, -2);
                } else if (i59 >= 32) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i59);
                }
                qt.y0(53, (bArr[i2 + 6] >> 3) & 1);
                break;
            case 36:
                if (nt.a()) {
                    byte b11 = bArr[i2 + 2];
                    byte b12 = bArr[i2 + 3];
                    int i61 = (b11 >> 4) & 15;
                    u0.d.R2(i61);
                    u0.d.S2(i61);
                    int i62 = (b12 >> 4) & 15;
                    u0.d.T2(i62);
                    u0.d.U2(i62);
                }
                break;
            case 37:
                if (nt.a()) {
                    u0.d.R2(bArr[i2 + 2] & 255);
                    u0.d.S2(bArr[i2 + 3] & 255);
                    u0.d.T2(bArr[i2 + 4] & 255);
                    u0.d.U2(bArr[i2 + 5] & 255);
                }
                break;
            case 38:
                int i63 = i2 + 2;
                int i64 = bArr[i63] & 255;
                int i65 = i2 + 3;
                int i66 = bArr[i65] & 255;
                int i67 = i2 + 4;
                int i68 = bArr[i67] & 255;
                int i69 = i2 + 5;
                int i70 = bArr[i69] & 255;
                if (i64 >= 10 && i66 >= 10 && i68 >= 10 && i70 >= 10) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i64 || l0.c0.f13014h != i66 || l0.c0.f13015i != i68 || l0.c0.f13016j != i70) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i64;
                l0.c0.f13014h = i66;
                l0.c0.f13015i = i68;
                l0.c0.f13016j = i70;
                u0.d.D2(bArr[i63] & 255);
                u0.d.E2(bArr[i65] & 255);
                u0.d.F2(bArr[i67] & 255);
                u0.d.G2(bArr[i69] & 255);
                break;
            case 39:
                int i71 = bArr[i2 + 2] & 255;
                int i72 = i2 + 3;
                int i73 = bArr[i72] & 255;
                int i74 = i2 + 4;
                int i75 = bArr[i74] & 255;
                if (i71 == 1) {
                    qt.y0(103, i73);
                    qt.y0(104, i75);
                } else if (i71 == 2) {
                    qt.y0(105, (((bArr[i72] << 8) & 65280) | (bArr[i74] & 255)) & 65535);
                    qt.y0(106, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                    qt.y0(107, bArr[i2 + 7] & 255);
                    qt.y0(108, bArr[i2 + 8] & 255);
                    qt.y0(109, bArr[i2 + 9] & 255);
                    qt.y0(110, bArr[i2 + 10] & 255);
                    qt.y0(111, bArr[i2 + 11] & 255);
                    qt.y0(112, bArr[i2 + 12] & 255);
                    qt.y0(113, bArr[i2 + 13] & 255);
                } else if (i71 == 3) {
                    qt.y0(114, bArr[i72] & 255);
                    qt.y0(115, bArr[i74] & 255);
                }
                break;
            case 40:
                byte b13 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b13 >> 7) & 1);
                    qt.y0(2, (b13 >> 6) & 1);
                } else {
                    qt.y0(2, (b13 >> 7) & 1);
                    qt.y0(1, (b13 >> 6) & 1);
                }
                qt.y0(4, (b13 >> 5) & 1);
                qt.y0(3, (b13 >> 4) & 1);
                qt.y0(5, (b13 >> 3) & 1);
                qt.y0(0, (b13 >> 2) & 1);
                break;
            case 41:
                int i76 = bArr[i2 + 2] & 255;
                int i77 = bArr[i2 + 3] & 255;
                if (i76 != 1) {
                    if (i76 != 2) {
                        if (i76 != 3) {
                            if (i76 != 4) {
                                if (i76 != 5) {
                                    if (i76 != 7) {
                                        if (i76 != 8) {
                                            if (i76 != 9) {
                                                if (i76 != 10) {
                                                    if (i76 != 11) {
                                                        if (i76 != 12) {
                                                            if (i76 != 13) {
                                                                if (i76 != 14) {
                                                                    if (i76 != 15) {
                                                                        if (i76 != 16) {
                                                                            if (i76 != 17) {
                                                                                if (i76 != 18) {
                                                                                    if (i76 != 19) {
                                                                                        if (i76 != 20) {
                                                                                            if (i76 != 32) {
                                                                                                if (i76 != 33) {
                                                                                                    if (i76 != 34) {
                                                                                                        if (i76 != 35) {
                                                                                                            if (i76 != 36) {
                                                                                                                if (i76 != 37) {
                                                                                                                    if (i76 == 38) {
                                                                                                                        qt.y0(155, i77);
                                                                                                                    } else if (i76 == 39) {
                                                                                                                        qt.y0(156, i77);
                                                                                                                    } else if (i76 == 40) {
                                                                                                                        qt.y0(157, i77);
                                                                                                                    } else if (i76 == 41) {
                                                                                                                        qt.y0(158, i77);
                                                                                                                    } else if (i76 == 42) {
                                                                                                                        qt.y0(159, i77);
                                                                                                                    } else if (i76 == 43) {
                                                                                                                        qt.y0(160, i77);
                                                                                                                    } else if (i76 == 44) {
                                                                                                                        qt.y0(161, i77);
                                                                                                                    } else if (i76 == 45) {
                                                                                                                        qt.y0(162, i77);
                                                                                                                    } else if (i76 == 46) {
                                                                                                                        qt.y0(163, i77);
                                                                                                                    } else if (i76 == 47) {
                                                                                                                        qt.y0(164, i77);
                                                                                                                    } else if (i76 == 48) {
                                                                                                                        qt.y0(165, i77);
                                                                                                                    } else if (i76 == 49) {
                                                                                                                        qt.y0(166, i77);
                                                                                                                    } else if (i76 == 50) {
                                                                                                                        qt.y0(167, i77);
                                                                                                                    } else if (i76 == 51) {
                                                                                                                        qt.y0(168, i77);
                                                                                                                    } else if (i76 == 52) {
                                                                                                                        qt.y0(169, i77);
                                                                                                                    } else if (i76 == 53) {
                                                                                                                        qt.y0(170, i77);
                                                                                                                    } else if (i76 == 54) {
                                                                                                                        qt.y0(171, i77);
                                                                                                                    } else if (i76 == 55) {
                                                                                                                        qt.y0(172, i77);
                                                                                                                    } else if (i76 == 56) {
                                                                                                                        qt.y0(173, i77);
                                                                                                                    } else if (i76 == 57) {
                                                                                                                        qt.y0(174, i77);
                                                                                                                    } else if (i76 == 58) {
                                                                                                                        qt.y0(175, i77);
                                                                                                                    } else if (i76 == 59) {
                                                                                                                        qt.y0(176, i77);
                                                                                                                    } else if (i76 == 60) {
                                                                                                                        qt.y0(177, i77);
                                                                                                                    }
                                                                                                                    break;
                                                                                                                } else {
                                                                                                                    qt.y0(154, i77);
                                                                                                                    break;
                                                                                                                }
                                                                                                            } else {
                                                                                                                qt.y0(153, i77);
                                                                                                                break;
                                                                                                            }
                                                                                                        } else {
                                                                                                            qt.y0(152, i77);
                                                                                                            break;
                                                                                                        }
                                                                                                    } else {
                                                                                                        qt.y0(151, i77);
                                                                                                        break;
                                                                                                    }
                                                                                                } else {
                                                                                                    qt.y0(150, i77);
                                                                                                    break;
                                                                                                }
                                                                                            } else {
                                                                                                qt.y0(149, i77);
                                                                                                break;
                                                                                            }
                                                                                        } else {
                                                                                            qt.y0(148, i77);
                                                                                            break;
                                                                                        }
                                                                                    } else {
                                                                                        qt.y0(147, i77);
                                                                                        break;
                                                                                    }
                                                                                } else {
                                                                                    qt.y0(146, i77);
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                qt.y0(145, i77);
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            qt.y0(144, i77);
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        qt.y0(143, i77);
                                                                        break;
                                                                    }
                                                                } else {
                                                                    qt.y0(142, i77);
                                                                    break;
                                                                }
                                                            } else {
                                                                qt.y0(141, i77);
                                                                break;
                                                            }
                                                        } else {
                                                            qt.y0(140, i77);
                                                            break;
                                                        }
                                                    } else {
                                                        qt.y0(139, i77);
                                                        break;
                                                    }
                                                } else {
                                                    qt.y0(123, i77);
                                                    break;
                                                }
                                            } else {
                                                qt.y0(122, i77);
                                                break;
                                            }
                                        } else {
                                            qt.y0(121, i77);
                                            break;
                                        }
                                    } else {
                                        qt.y0(120, i77);
                                        break;
                                    }
                                } else {
                                    qt.y0(119, i77);
                                    break;
                                }
                            } else {
                                qt.y0(118, i77);
                                break;
                            }
                        } else {
                            qt.y0(117, i77);
                            break;
                        }
                    } else {
                        qt.y0(100, i77);
                        break;
                    }
                } else {
                    qt.y0(99, i77);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9478l);
        u0.c.f17386m.d(this.f9476j);
        l0.b0.p0(this.f9477k);
        qt.q0(this.f9474h);
        w0.e.f17815a.d(this.f9473g);
        w0.e.f17819e.d(this.f9473g);
        u0.c.f17393t.d(this.f9473g);
        u0.c.f17392s.d(this.f9473g);
        u0.c.f17374a.d(this.f9473g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 203) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 6)) {
                z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 2)) {
                z.k.s(227, 151, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 1)) {
                z.k.s(227, 144, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            d3(iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 5) {
            if (T2(iArr, 2)) {
                z.k.s(227, 179, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 != 1003) {
            if (i2 == 1005 && iArr != null && iArr.length > 0) {
                z.k.s(227, -121, 1, iArr[0] + 5);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 1) {
            z.k.s(227, -121, 1, 0);
            qt.a(0);
        } else {
            z.k.s(227, -121, 1, 1);
            qt.a(1);
        }
    }

    public final void d3(int i2, int i3, int i4, int i5) {
        f9464r = i2;
        f9465s = i3;
        f9466t = i4;
        f9467u = i5;
        qt.y0(135, i2);
        qt.y0(136, f9465s);
        qt.y0(137, f9466t);
        qt.y0(138, f9467u);
        z.k.s(227, 80, 4, f9464r, f9465s, f9466t, f9467u);
        int iB = this.f9479m.b(1, 0);
        int i6 = f9464r;
        if (iB != i6) {
            this.f9479m.g(1, i6);
        }
        int iB2 = this.f9479m.b(2, 0);
        int i7 = f9465s;
        if (iB2 != i7) {
            this.f9479m.g(2, i7);
        }
        int iB3 = this.f9479m.b(3, 0);
        int i8 = f9466t;
        if (iB3 != i8) {
            this.f9479m.g(3, i8);
        }
        int iB4 = this.f9479m.b(4, 0);
        int i9 = f9467u;
        if (iB4 != i9) {
            this.f9479m.g(4, i9);
        }
    }
}
