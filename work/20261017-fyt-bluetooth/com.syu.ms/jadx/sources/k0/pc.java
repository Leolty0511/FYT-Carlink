package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class pc extends lt {
    public static int E = 255;
    public static int F = 255;
    public static int G = 255;
    public static Runnable H = new a();
    public static int I = 0;
    public static int J = 0;
    public static int K = 0;
    public static int L = 0;
    public static int M = 0;
    public static int N = 0;
    public static int O = 0;
    public static int P = 0;
    public static int Q = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9151e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9148b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9152f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9153g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 32}, new int[]{9, 33}, new int[]{12, 2}, new int[]{254, 5}, new int[]{i.a.Theme_dialogTitleDecorLayout, -1}, new int[]{129, 25}, new int[]{134, 6}, new int[]{137, 12}, new int[]{177, 25}, new int[]{178, 29}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9154h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9155i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f9156j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f9157k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9158l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9159m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f9160n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f9161o = 4;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9162p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f9163q = 6;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f9164r = 7;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f9165s = 8;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f9166t = 9;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f9167u = new b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public byte f9168v = 5;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f9169w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f9170x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f9171y = 0.0f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f9172z = 255;
    public int A = 255;
    public Runnable B = new e();
    public Runnable C = new f();
    public int D = 0;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            pc.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pc pcVar = pc.this;
            int i2 = pcVar.f9155i;
            int i3 = u0.b.f17347o;
            if (i2 != i3) {
                pcVar.f9155i = i3;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(pc.this.f9170x);
            pc.this.f9168v = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pc pcVar = pc.this;
            byte b2 = (byte) (pcVar.f9168v - 1);
            pcVar.f9168v = b2;
            if (b2 <= 0) {
                l0.b0.p0(pcVar.f9170x);
                pc.this.f9168v = (byte) 5;
            }
            if (u0.b.f17306a0 == 1) {
                pcVar.j3(pcVar.f9157k.b(1, 0), pc.this.f9157k.b(2, 0), pc.this.f9157k.b(3, 0), pc.this.f9157k.b(4, 0), pc.this.f9157k.b(5, 0), 0, pc.this.f9157k.b(6, 0), pc.this.f9157k.b(7, 0), pc.this.f9157k.b(8, 0), pc.this.f9157k.b(9, 0));
                switch (nt.f8637c) {
                    case 0:
                        z.k.s(227, 2, 36, 1, 0);
                        break;
                    case 1:
                        z.k.s(227, 2, 36, 2, 0);
                        break;
                    case 2:
                        z.k.s(227, 2, 36, 3, 0);
                        break;
                    case 3:
                        z.k.s(227, 2, 36, 4, 0);
                        break;
                    case 4:
                        z.k.s(227, 2, 36, 5, 0);
                        break;
                    case 5:
                        z.k.s(227, 2, 36, 5, 0);
                        break;
                    case 6:
                        z.k.s(227, 2, 36, 4, 0);
                        break;
                    case 7:
                        z.k.s(227, 2, 36, 4, 0);
                        break;
                    case 8:
                        z.k.s(227, 2, 36, 7, 0);
                        break;
                    case 9:
                        z.k.s(227, 2, 36, 6, 0);
                        break;
                    case 10:
                        z.k.s(227, 2, 36, 16, 0);
                        break;
                    case 11:
                        z.k.s(227, 2, 36, 17, 0);
                        break;
                    case 12:
                        z.k.s(227, 2, 36, 18, 0);
                        break;
                    case 13:
                        z.k.s(227, 2, 36, 129, 0);
                        break;
                    case 14:
                        z.k.s(227, 2, 36, 130, 0);
                        break;
                    case 15:
                        z.k.s(227, 2, 36, 161, 0);
                        break;
                    case 16:
                        z.k.s(227, 2, 36, 162, 0);
                        break;
                    case 18:
                        z.k.s(227, 2, 36, 164, 0);
                        break;
                    case 19:
                        z.k.s(227, 2, 36, 163, 0);
                        break;
                    case 20:
                        z.k.s(227, 2, 36, 8, 0);
                        break;
                    case 21:
                        z.k.s(227, 2, 36, 14, 0);
                        break;
                    case 22:
                        z.k.s(227, 2, 36, 15, 0);
                        break;
                    case 23:
                        z.k.s(227, 2, 36, 131, 0);
                        break;
                    case 24:
                        z.k.s(227, 2, 36, 132, 0);
                        break;
                    case 25:
                        z.k.s(227, 2, 36, 145, 0);
                        break;
                    case 26:
                        z.k.s(227, 2, 36, 146, 0);
                        break;
                    case 27:
                        z.k.s(227, 2, 36, 148, 0);
                        break;
                    case 28:
                        z.k.s(227, 2, 36, 147, 0);
                        break;
                    case 29:
                        z.k.s(227, 2, 36, 133, 0);
                        break;
                    case 30:
                        z.k.s(227, 2, 36, 149, 0);
                        break;
                    case 31:
                        z.k.s(227, 2, 36, 165, 0);
                        break;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pc.this.f9171y = u0.b.f17359s0;
            if (pc.this.f9171y > 360.0f) {
                pc.p3(pc.this, 360.0f);
            }
            if (pc.this.f9171y < 0.0f) {
                pc.p3(pc.this, 360.0f);
                pc pcVar = pc.this;
                pcVar.f9171y = 360.0f - Math.abs(pcVar.f9171y);
            }
            if ((pc.this.f9171y <= 22.5d && pc.this.f9171y >= 0.0f) || (pc.this.f9171y >= 337.5d && pc.this.f9171y <= 360.0f)) {
                pc.this.A = 0;
            } else if (pc.this.f9171y > 22.5d && pc.this.f9171y < 67.5d) {
                pc.this.A = 1;
            } else if (pc.this.f9171y >= 67.5d && pc.this.f9171y <= 112.5d) {
                pc.this.A = 2;
            } else if (pc.this.f9171y > 112.5d && pc.this.f9171y < 157.5d) {
                pc.this.A = 3;
            } else if (pc.this.f9171y >= 157.5d && pc.this.f9171y <= 202.5d) {
                pc.this.A = 4;
            } else if (pc.this.f9171y > 202.5d && pc.this.f9171y < 247.5d) {
                pc.this.A = 5;
            } else if (pc.this.f9171y >= 247.5d && pc.this.f9171y <= 292.5d) {
                pc.this.A = 6;
            } else if (pc.this.f9171y <= 292.5d || pc.this.f9171y >= 337.5d) {
                pc.this.A = 15;
            } else {
                pc.this.A = 7;
            }
            if (pc.this.A != pc.this.f9172z) {
                z.k.s(227, 2, 157, 1, pc.this.A);
                pc pcVar2 = pc.this;
                pcVar2.f9172z = pcVar2.A;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, zIs24HourFormat ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 2);
        }
    }

    public static void a3() {
        int[] iArr = new int[39];
        for (int i2 = 0; i2 < 39; i2++) {
            iArr[i2] = 0;
        }
        iArr[0] = 37;
        iArr[1] = 149;
        iArr[2] = b3();
        if (u0.b.f17320f == 1) {
            iArr[2] = b3();
            int i3 = u0.b.D;
            if (i3 == 1) {
                int i4 = w0.d.f17796h;
                if (i4 - 65536 == 0) {
                    iArr[4] = 70;
                    iArr[6] = 77;
                    iArr[8] = 49;
                } else if (1 == i4 - 65536) {
                    iArr[4] = 70;
                    iArr[6] = 77;
                    iArr[8] = 50;
                } else if (2 == i4 - 65536) {
                    iArr[4] = 70;
                    iArr[6] = 77;
                    iArr[8] = 51;
                } else if (i4 + 0 == 0) {
                    iArr[4] = 65;
                    iArr[6] = 77;
                    iArr[8] = 49;
                } else if (1 == i4 + 0) {
                    iArr[4] = 65;
                    iArr[6] = 77;
                    iArr[8] = 50;
                }
                iArr[10] = 32;
                if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                    int i5 = w0.d.f17797i;
                    if (i5 / 10000 == 0) {
                        iArr[12] = 32;
                    } else {
                        iArr[12] = (i5 / 10000) + 48;
                    }
                    iArr[14] = ((i5 / 1000) % 10) + 48;
                    iArr[16] = ((i5 / 100) % 10) + 48;
                    iArr[18] = 46;
                    iArr[20] = ((i5 / 10) % 10) + 48;
                    iArr[22] = (i5 % 10) + 48;
                    iArr[24] = 77;
                    iArr[26] = 104;
                    iArr[28] = 122;
                } else {
                    int i6 = w0.d.f17797i;
                    if ((i6 / 1000) % 10 == 0) {
                        iArr[12] = 32;
                    } else {
                        iArr[12] = ((i6 / 1000) % 10) + 48;
                    }
                    iArr[14] = ((i6 / 100) % 10) + 48;
                    iArr[16] = ((i6 / 10) % 10) + 48;
                    iArr[18] = (i6 % 10) + 48;
                    iArr[20] = 75;
                    iArr[22] = 104;
                    iArr[24] = 122;
                }
            } else if (i3 == 2 || i3 == 3) {
                iArr[4] = 66;
                iArr[6] = 32;
                iArr[8] = 84;
            } else if (i3 == 4) {
                int i7 = o0.e.H;
                if (i7 == 1) {
                    iArr[4] = 68;
                    iArr[6] = 86;
                    iArr[8] = 68;
                } else if (i7 == 2) {
                    iArr[4] = 83;
                    iArr[6] = 68;
                    iArr[8] = 32;
                } else if (i7 == 3) {
                    iArr[4] = 85;
                    iArr[6] = 83;
                    iArr[8] = 66;
                }
                iArr[10] = 32;
                int i8 = o0.e.f16794r;
                iArr[12] = ((i8 / 60) / 100) + 48;
                iArr[14] = (((i8 / 60) / 10) % 10) + 48;
                iArr[16] = ((i8 / 60) % 10) + 48;
                iArr[18] = 58;
                iArr[20] = ((i8 % 60) / 100) + 48;
                iArr[22] = (((i8 % 60) / 10) % 10) + 48;
                iArr[24] = ((i8 % 60) % 10) + 48;
            } else if (i3 == 5) {
                iArr[4] = 65;
                iArr[6] = 85;
                iArr[8] = 88;
            } else if (i3 == 8) {
                iArr[4] = 77;
                iArr[6] = 80;
                iArr[8] = 51;
                iArr[10] = 32;
                iArr[12] = 32;
                int i9 = u0.b.t3;
                iArr[14] = ((i9 / 60) / 10) + 48;
                iArr[16] = ((i9 / 60) % 10) + 48;
                iArr[18] = 58;
                iArr[20] = ((i9 % 60) / 10) + 48;
                iArr[22] = ((i9 % 60) % 10) + 48;
                iArr[24] = 32;
            } else if (i3 == 9) {
                iArr[4] = 77;
                iArr[6] = 80;
                iArr[8] = 52;
                iArr[10] = 32;
                iArr[12] = 32;
                int i10 = u0.b.t3;
                iArr[14] = ((i10 / 60) / 10) + 48;
                iArr[16] = ((i10 / 60) % 10) + 48;
                iArr[18] = 58;
                iArr[20] = ((i10 % 60) / 10) + 48;
                iArr[22] = ((i10 % 60) % 10) + 48;
                iArr[24] = 32;
            } else if (i3 == 13) {
                iArr[4] = 68;
                iArr[6] = 86;
                iArr[8] = 68;
            }
        } else {
            iArr[2] = b3();
            iArr[4] = 65;
            iArr[6] = 117;
            iArr[8] = 100;
            iArr[10] = 105;
            iArr[12] = 111;
            iArr[14] = 32;
            iArr[16] = 79;
            iArr[18] = 102;
            iArr[20] = 102;
        }
        int[] iArr2 = new int[40];
        int i11 = 0;
        iArr2[0] = 227;
        while (i11 < 39) {
            int i12 = i11 + 1;
            iArr2[i12] = (byte) iArr[i11];
            i11 = i12;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0039  */
    /* JADX WARN: Code duplicated, block: B:27:0x003e  */
    public static int b3() {
        int i2 = u0.b.D;
        int i3 = 6;
        if (i2 != 8 && i2 != 9) {
            if (i2 != 13) {
                switch (i2) {
                    case 0:
                    case 5:
                        i3 = 12;
                        break;
                    case 1:
                        int i4 = w0.d.f17796h;
                        if (i4 - 65536 <= 2) {
                            i3 = 1;
                        } else if (i4 - 0 > 1) {
                            i3 = 0;
                        } else {
                            i3 = 4;
                        }
                        break;
                    case 2:
                    case 3:
                        i3 = 10;
                        break;
                    case 4:
                        int i5 = o0.e.H;
                        if (i5 != 1) {
                            if (i5 == 2) {
                                i3 = 14;
                            } else if (i5 != 3) {
                                i3 = 0;
                            } else {
                                i3 = 13;
                            }
                        }
                        break;
                    case 6:
                    default:
                        i3 = 255;
                        break;
                }
            }
        } else {
            i3 = 13;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i3;
    }

    public static int c3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public static int e3(int i2) {
        if (i2 != 1) {
            if (i2 == 2) {
                return 3;
            }
            if (i2 == 3) {
                return 6;
            }
            if (i2 == 4) {
                return 9;
            }
            if (i2 == 255) {
                return 255;
            }
        }
        return 0;
    }

    public static int f3(int i2) {
        if (i2 != 1) {
            if (i2 == 2) {
                return 5;
            }
            if (i2 == 255) {
                return 255;
            }
        }
        return 0;
    }

    public static int g3(int i2) {
        if (i2 == 255) {
            return 255;
        }
        switch (i2) {
            case 1:
            default:
                return 0;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 9;
        }
    }

    public static void h3(int i2) {
        u0.d.B3((E == 2 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i2 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i2 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
    }

    public static void i3(int i2, int i3) {
        z.k.s(227, 3, 175, i2, 0, 0);
    }

    public static /* synthetic */ float p3(pc pcVar, float f2) {
        float f3 = pcVar.f9171y % f2;
        pcVar.f9171y = f3;
        return f3;
    }

    @Override // k0.lt
    public int[] K2() {
        return new int[]{8, 8};
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
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        d3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    d3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        d3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    d3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        d3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    d3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        d3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    d3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        d3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    d3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        d3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    d3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    d3(12);
                } else {
                    d3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    d3(14);
                } else {
                    d3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    d3(16);
                } else {
                    d3(15);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f9157k.a();
        o1.h.f16865a.a(this.B, 1);
        u0.c.f17386m.a(this.f9169w, 1);
        qt.z(this.C);
        qt.z(H);
        w0.e.f17815a.a(H, 1);
        w0.e.f17819e.a(H, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8317l = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 != 3) {
            if (i2 == 17) {
                u0.c.f17379f.a(this.f9167u, 1);
                mt mtVar2 = this.f7886a;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 1;
                mtVar2.f8314i = 1;
            } else if (i2 == 22 || i2 == 11) {
                mtVar.f8317l = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
            } else if (i2 != 12) {
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
            }
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
            if (a.f.w() == 1080) {
                this.f7886a.f8314i = 1;
            }
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        switch (bArr[i2 + 1]) {
            case PackageManager.INSTALL_PARSE_FAILED_NOT_APK /* -100 */:
                qt.y0(134, (bArr[i2 + 3] >> 0) & 255);
                break;
            case -91:
                int i14 = bArr[i2 + 2] & 255;
                int i15 = ((bArr[i2 + 3] & 65280) | (bArr[i2 + 4] & 255)) & 255;
                StringBuilder sb = new StringBuilder();
                int i16 = (i2 + i3) - 3;
                for (int i17 = i2 + 5; i17 < i16; i17 += 2) {
                    sb.append((char) (((bArr[i17] & 255) << 8) | (bArr[i17 + 1] & 255)));
                }
                qt.z0(144, new int[]{i14, i15}, sb.toString());
                break;
            case -90:
                byte b2 = bArr[i2 + 8];
                qt.y0(190, bArr[i2 + 2] & 255);
                qt.y0(191, bArr[i2 + 3]);
                qt.y0(192, bArr[i2 + 4]);
                qt.y0(193, bArr[i2 + 5]);
                qt.y0(194, bArr[i2 + 6]);
                qt.y0(195, bArr[i2 + 7]);
                qt.y0(132, (b2 >> 1) & 3);
                qt.y0(133, (b2 >> 0) & 1);
                break;
            case -82:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                byte b9 = bArr[i2 + 8];
                byte b10 = bArr[i2 + 9];
                byte b11 = bArr[i2 + 10];
                byte b12 = bArr[i2 + 11];
                byte b13 = bArr[i2 + 12];
                byte b14 = bArr[i2 + 13];
                byte b15 = bArr[i2 + 14];
                qt.y0(149, b3 & 1);
                int i18 = b5 & 1;
                qt.y0(150, i18);
                qt.y0(151, i18);
                qt.y0(146, b6 & 255);
                qt.y0(145, (b7 >> 1) & 1);
                qt.y0(152, b7 & 1);
                qt.y0(147, ((((b8 & 255) << 8) | (b9 & 255)) & 65535) | ((((b11 & 255) | ((b10 & 255) << 8)) & 65535) << 16));
                qt.y0(148, ((b12 << 8) & 65280) | (b13 & 255));
                qt.y0(153, (b15 & 255) | ((b14 << 8) & 65280));
                break;
            case -63:
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                byte b18 = bArr[i2 + 4];
                byte b19 = bArr[i2 + 5];
                qt.y0(217, (b16 >> 6) & 3);
                qt.y0(164, (b16 >> 4) & 3);
                qt.y0(141, b16 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i19 = b17 & 255;
                qt.y0(37, i19);
                qt.y0(161, b18 & 255);
                qt.y0(131, b19 & 255);
                if (nt.a()) {
                    if (i19 == 1) {
                        E = 1;
                    } else if (i19 == 2) {
                        E = 2;
                    }
                    h3(this.f9148b);
                }
                break;
            case PackageManager.INSTALL_FAILED_UID_CHANGED /* -24 */:
                if (nt.f8637c == 17) {
                    if ((bArr[i2 + 5] & 255) != 0) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
                break;
            case -16:
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                break;
            case 17:
                a.f.p().t(LogType.CANBUS, " DataCustomer.sCustomerId  =====   " + n0.j4.f16464b);
                if (15 == n0.j4.f16464b || 17 == nt.f8637c) {
                    int i20 = i2 + 2;
                    if (this.f9154h != ((bArr[i20] >> 7) & 1)) {
                        int i21 = (bArr[i20] >> 7) & 1;
                        this.f9154h = i21;
                        if (u0.b.f17347o == 0) {
                            if (i21 != 0) {
                                if (!o1.u.T(a.b.O)) {
                                    if (o1.u.S("com.syu.fourcamera2")) {
                                        this.f9156j = true;
                                        c.e.d().c(614);
                                    }
                                    qt.t();
                                }
                            } else if (o1.u.T(a.b.O)) {
                                qt.f();
                                if (this.f9156j && !o1.u.S("com.syu.fourcamera2")) {
                                    c.e.d().c(591);
                                }
                                this.f9156j = false;
                            }
                        }
                    }
                }
                if (nt.a()) {
                    byte b20 = bArr[i2 + 4];
                    byte b21 = bArr[i2 + 5];
                    this.f9150d = b20 & 255;
                    int i22 = 0;
                    while (true) {
                        iArr = this.f9153g;
                        if (i22 < iArr.length) {
                            int i23 = this.f9150d;
                            if (i23 != iArr[i22][0]) {
                                i22++;
                            } else if (i23 != 0) {
                                this.f9149c = i22;
                            }
                        }
                    }
                    int i24 = this.f9150d;
                    if (i24 != 8) {
                        if (i24 != 9) {
                            if (i24 != 24) {
                                if (i24 != 253) {
                                    int i25 = b21 & 255;
                                    if (i25 == 1) {
                                        if (i22 < iArr.length) {
                                            l0.b0.l0(iArr[i22][1], 0);
                                        }
                                    } else if (i25 == 0) {
                                        int i26 = this.f9149c;
                                        if (i26 < iArr.length && i26 != 255) {
                                            l0.b0.l0(iArr[i26][1], 1);
                                        }
                                        this.f9149c = 255;
                                    }
                                } else if ((b21 & 255) == 1) {
                                    if (u0.b.f17347o == 0) {
                                        qt.a(1);
                                    } else {
                                        qt.a(0);
                                    }
                                }
                            } else if ((b21 & 255) == 1) {
                                if (o1.u.S(a.b.Q)) {
                                    l0.b0.l0(6, 0);
                                    l0.b0.l0(6, 1);
                                } else {
                                    o1.u.f(a.b.R);
                                }
                            }
                        } else if ((b21 & 255) == 1) {
                            if (u0.b.D == 13) {
                                i3(4, 1);
                            } else {
                                l0.b0.l0(4, 0);
                                l0.b0.l0(4, 1);
                            }
                        }
                    } else if ((b21 & 255) == 1) {
                        if (u0.b.D == 13) {
                            i3(3, 1);
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                    qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                }
                break;
            case 18:
                byte b22 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b22 >> 6) & 1);
                    qt.y0(2, (b22 >> 7) & 1);
                } else {
                    qt.y0(1, (b22 >> 7) & 1);
                    qt.y0(2, (b22 >> 6) & 1);
                }
                qt.y0(3, (b22 >> 5) & 1);
                qt.y0(4, (b22 >> 4) & 1);
                qt.y0(5, (b22 >> 3) & 1);
                qt.y0(0, (b22 >> 2) & 1);
                break;
            case 24:
                if (nt.f8637c == 17) {
                    int i27 = i2 + 3;
                    o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i27] >> 7) & 1) << 3) & 8) | ((((bArr[i27] >> 6) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64)}, null, null);
                    l0.c0.N1((bArr[i27] >> 7) & 1, (bArr[i27] >> 6) & 1, (bArr[i27] >> 3) & 1);
                }
                break;
            case 31:
                qt.y0(249, (bArr[i2 + 2] >> 7) & 1);
                qt.y0(250, bArr[i2 + 4] & 255);
                qt.y0(251, bArr[i2 + 5] & 255);
                qt.y0(252, bArr[i2 + 6] & 255);
                qt.y0(i.a.Theme_dialogTitleDecorLayout, bArr[i2 + 7] & 255);
                break;
            case 33:
                if (nt.a()) {
                    this.f9151e = (bArr[i2 + 2] & 255) | 128;
                    byte b23 = bArr[i2 + 3];
                    int i28 = 0;
                    while (true) {
                        iArr2 = this.f9153g;
                        if (i28 < iArr2.length) {
                            int i29 = this.f9151e;
                            if (i29 != iArr2[i28][0]) {
                                i28++;
                            } else if (i29 != 0) {
                                this.f9152f = i28;
                            }
                        }
                    }
                    if ((b23 & 255) == 0) {
                        int i30 = this.f9152f;
                        if (i30 < iArr2.length && i30 != 255) {
                            l0.b0.l0(iArr2[i30][1], 1);
                        }
                        this.f9152f = 255;
                    } else if (i28 < iArr2.length) {
                        l0.b0.l0(iArr2[i28][1], 0);
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    int i31 = i2 + 2;
                    if ((bArr[i31] & 255) == 1) {
                        int i32 = F;
                        int i33 = i2 + 3;
                        if (i32 != (bArr[i33] & 255)) {
                            if ((bArr[i33] & 255) == 255 && i32 == 0) {
                                u0.d.M1();
                            } else if (!((bArr[i33] & 255) == 0 && i32 == 255) && i32 >= (bArr[i33] & 255)) {
                                u0.d.M1();
                            } else {
                                u0.d.O1();
                            }
                            F = bArr[i33] & 255;
                        }
                    }
                    if ((bArr[i31] & 255) == 2 || (bArr[i31] & 255) == 3 || (bArr[i31] & 255) == 4 || (bArr[i31] & 255) == 5) {
                        int i34 = G;
                        int i35 = i2 + 3;
                        if (i34 != (bArr[i35] & 255)) {
                            if ((bArr[i35] & 255) == 255 && i34 == 0) {
                                if (u0.b.D == 13) {
                                    i3(3, 1);
                                } else {
                                    l0.b0.w(0);
                                }
                            } else if ((bArr[i35] & 255) == 0 && i34 == 255) {
                                if (u0.b.D == 13) {
                                    i3(4, 1);
                                } else {
                                    l0.b0.R(0);
                                }
                            } else if (i34 < (bArr[i35] & 255)) {
                                if (u0.b.D == 13) {
                                    i3(4, 1);
                                } else {
                                    l0.b0.R(0);
                                }
                            } else if (u0.b.D == 13) {
                                i3(3, 1);
                            } else {
                                l0.b0.w(0);
                            }
                            G = bArr[i35] & 255;
                        }
                    }
                }
                break;
            case 49:
                byte b24 = bArr[i2 + 2];
                byte b25 = bArr[i2 + 3];
                byte b26 = bArr[i2 + 4];
                byte b27 = bArr[i2 + 6];
                byte b28 = bArr[i2 + 7];
                int i36 = i2 + 8;
                byte b29 = bArr[i36];
                int i37 = i2 + 9;
                byte b30 = bArr[i37];
                qt.y0(10, (b24 >> 6) & 1);
                qt.y0(53, (b24 >> 5) & 1);
                qt.y0(42, (b24 >> 4) & 1);
                qt.y0(13, (b24 >> 3) & 1);
                qt.y0(62, (b24 >> 2) & 1);
                qt.y0(11, (b25 >> 6) & 1);
                qt.y0(66, (b25 >> 5) & 1);
                qt.y0(12, (b25 >> 4) & 1);
                qt.y0(67, (b25 >> 1) & 1);
                qt.y0(38, (b25 >> 0) & 1);
                qt.y0(43, (b26 >> 7) & 1);
                qt.y0(65, (b26 >> 4) & 1);
                qt.y0(16, (b26 >> 5) & 1);
                qt.y0(29, (b26 >> 0) & 3);
                qt.y0(30, (b26 >> 2) & 3);
                int i38 = i2 + 5;
                qt.y0(31, (bArr[i38] >> 0) & 3);
                qt.y0(32, (bArr[i38] >> 2) & 3);
                int i39 = b27 & 255;
                if (i39 == 1) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i10 = 0;
                    i11 = 1;
                } else if (i39 != 3) {
                    if (i39 == 5) {
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i11 = 0;
                        i8 = 0;
                        i7 = 1;
                        i9 = 1;
                    } else if (i39 == 6) {
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                        i11 = 0;
                        i8 = 0;
                        i10 = 0;
                        i6 = 1;
                        i9 = 1;
                    } else if (i39 == 11) {
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i11 = 0;
                        i9 = 0;
                        i10 = 0;
                        i8 = 1;
                    } else if (i39 != 12) {
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i11 = 0;
                        i8 = 0;
                        i9 = 0;
                    } else {
                        i4 = 0;
                        i6 = 0;
                        i7 = 0;
                        i11 = 0;
                        i9 = 0;
                        i5 = 1;
                        i8 = 1;
                        i10 = 1;
                    }
                    i10 = i9;
                } else {
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    i11 = 0;
                    i8 = 0;
                    i9 = 0;
                    i4 = 1;
                    i10 = 1;
                }
                qt.y0(77, i39);
                qt.y0(137, i4);
                qt.y0(136, i5);
                qt.y0(138, i6);
                qt.y0(135, i7);
                qt.y0(49, i11);
                qt.y0(18, i8);
                qt.y0(19, i9);
                qt.y0(20, i10);
                qt.y0(21, b28 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b29 = bArr[i37];
                    b30 = bArr[i36];
                }
                byte b31 = b30;
                int i40 = b29 & 255;
                if (i40 == 254) {
                    qt.y0(27, -2);
                } else if (i40 != 255) {
                    qt.y0(27, i40 * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i41 = b31 & 255;
                if (i41 == 254) {
                    qt.y0(28, -2);
                } else if (i41 != 255) {
                    qt.y0(28, i41 * 5);
                } else {
                    qt.y0(28, -3);
                }
                int i42 = bArr[i2 + 10] & 255;
                if (i42 == 1) {
                    i12 = 0;
                    i13 = 1;
                } else if (i42 != 2) {
                    i12 = i42 != 3 ? 0 : 1;
                    i13 = i12;
                } else {
                    i13 = 0;
                    i12 = 1;
                }
                qt.y0(46, i12);
                qt.y0(47, i13);
                qt.y0(44, bArr[i2 + 11] & 255);
                int i43 = bArr[i2 + 12] & 255;
                if (i43 == 254) {
                    qt.y0(40, -2);
                } else if (i43 != 255) {
                    qt.y0(40, i41 * 5);
                } else {
                    qt.y0(40, -3);
                }
                if (nt.a()) {
                    int i44 = bArr[i2 + 13] & 255;
                    this.f9148b = i44;
                    h3(i44);
                }
                break;
            case 50:
                int i45 = i2 + 4;
                int i46 = i2 + 5;
                qt.y0(156, ((bArr[i45] << 8) & 65280) | (bArr[i46] & 255));
                qt.y0(1032, ((bArr[i45] << 8) & 65280) | (bArr[i46] & 255));
                qt.y0(155, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(172, bArr[i2 + 8] & 255);
                qt.y0(173, bArr[i2 + 10] & 255);
                qt.y0(174, bArr[i2 + 11] & 255);
                qt.y0(175, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                qt.y0(176, bArr[i2 + 14] & 255);
                qt.y0(177, bArr[i2 + 15] & 255);
                break;
            case 52:
                qt.y0(180, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(181, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(228, bArr[i2 + 6] & 255);
                qt.y0(229, bArr[i2 + 7] & 255);
                qt.y0(182, bArr[i2 + 13] & 255);
                qt.y0(183, bArr[i2 + 14] & 255);
                qt.y0(184, bArr[i2 + 15] & 255);
                qt.y0(185, bArr[i2 + 16] & 255);
                qt.y0(186, bArr[i2 + 21] & 255);
                qt.y0(187, bArr[i2 + 22] & 255);
                qt.y0(188, bArr[i2 + 23] & 255);
                qt.y0(189, bArr[i2 + 24] & 255);
                qt.y0(230, bArr[i2 + 25] & 255);
                qt.y0(231, bArr[i2 + 26] & 255);
                break;
            case 65:
                if (nt.f8637c == 17) {
                    u0.d.R2(c3(bArr[i2 + 2] & 255));
                    u0.d.S2(c3(bArr[i2 + 3] & 255));
                    u0.d.T2(c3(bArr[i2 + 4] & 255));
                    u0.d.U2(c3(bArr[i2 + 5] & 255));
                    int i47 = i2 + 6;
                    int i48 = bArr[i47] & 255;
                    int i49 = i2 + 7;
                    int i50 = bArr[i49] & 255;
                    int i51 = bArr[i49] & 255;
                    int i52 = i2 + 9;
                    int i53 = bArr[i52] & 255;
                    if (i48 == 0 && i50 == 0 && i51 == 0 && i53 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i48 || l0.c0.f13014h != i50 || l0.c0.f13015i != i51 || l0.c0.f13016j != i53) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i48;
                    l0.c0.f13014h = i50;
                    l0.c0.f13015i = i51;
                    l0.c0.f13016j = i53;
                    u0.d.D2(c3(bArr[i47] & 255));
                    u0.d.E2(c3(bArr[i49] & 255));
                    u0.d.F2(c3(bArr[i49] & 255));
                    u0.d.G2(c3(bArr[i52] & 255));
                } else {
                    u0.d.R2(f3(bArr[i2 + 2] & 255));
                    u0.d.S2(g3(bArr[i2 + 3] & 255));
                    u0.d.T2(g3(bArr[i2 + 4] & 255));
                    u0.d.U2(f3(bArr[i2 + 5] & 255));
                    u0.d.D2(f3(bArr[i2 + 6] & 255));
                    u0.d.E2(e3(bArr[i2 + 7] & 255));
                    u0.d.F2(e3(bArr[i2 + 8] & 255));
                    u0.d.G2(f3(bArr[i2 + 9] & 255));
                }
                break;
            case 67:
                byte b32 = bArr[i2 + 2];
                byte b33 = bArr[i2 + 3];
                byte b34 = bArr[i2 + 4];
                byte b35 = bArr[i2 + 5];
                byte b36 = bArr[i2 + 6];
                byte b37 = bArr[i2 + 7];
                qt.y0(220, (((b33 >> 7) & 1) << 8) | ((b34 >> 5) & 1));
                qt.y0(98, (((b32 >> 4) & 1) << 8) | ((b35 >> 6) & 3));
                qt.y0(99, (((b32 >> 3) & 1) << 8) | ((b35 >> 4) & 3));
                qt.y0(100, (((b32 >> 2) & 1) << 8) | ((b35 >> 2) & 3));
                qt.y0(101, (((b32 >> 1) & 1) << 8) | ((b35 >> 1) & 1));
                qt.y0(102, (((b32 >> 0) & 1) << 8) | ((b35 >> 0) & 1));
                qt.y0(103, (((b33 >> 6) & 1) << 8) | ((b36 >> 7) & 1));
                qt.y0(104, (((b33 >> 5) & 1) << 8) | ((b36 >> 6) & 1));
                qt.y0(105, (((b33 >> 4) & 1) << 8) | ((b36 >> 5) & 1));
                qt.y0(162, (((b33 >> 3) & 1) << 8) | ((b36 >> 4) & 1));
                qt.y0(106, (((b33 >> 2) & 1) << 8) | ((b36 >> 3) & 1));
                qt.y0(107, (((b33 >> 1) & 1) << 8) | ((b36 >> 2) & 1));
                qt.y0(108, (((b33 >> 0) & 1) << 8) | ((b36 >> 0) & 3));
                qt.y0(109, (((b34 >> 4) & 1) << 8) | ((b37 >> 6) & 3));
                qt.y0(110, (((b34 >> 3) & 1) << 8) | ((b37 >> 5) & 1));
                qt.y0(111, (((b34 >> 2) & 1) << 8) | ((b37 >> 4) & 1));
                qt.y0(112, (((b34 >> 1) & 1) << 8) | ((b37 >> 2) & 3));
                qt.y0(113, ((b37 >> 0) & 3) | (((b34 >> 0) & 1) << 8));
                break;
            case 69:
                byte b38 = bArr[i2 + 2];
                byte b39 = bArr[i2 + 3];
                byte b40 = bArr[i2 + 4];
                byte b41 = bArr[i2 + 5];
                byte b42 = bArr[i2 + 6];
                byte b43 = bArr[i2 + 7];
                qt.y0(165, (((b38 >> 7) & 1) << 8) | ((b41 >> 6) & 3));
                qt.y0(166, (((b38 >> 6) & 1) << 8) | ((b41 >> 4) & 3));
                qt.y0(167, (((b38 >> 5) & 1) << 8) | ((b41 >> 2) & 3));
                qt.y0(168, ((b41 >> 0) & 3) | (((b38 >> 4) & 1) << 8));
                qt.y0(169, (((b38 >> 3) & 1) << 8) | ((b42 >> 7) & 1));
                qt.y0(170, (((b38 >> 2) & 1) << 8) | ((b42 >> 6) & 1));
                qt.y0(171, (((b38 >> 1) & 1) << 8) | ((b42 >> 5) & 1));
                qt.y0(271, (((b38 >> 0) & 1) << 8) | ((b42 >> 4) & 1));
                qt.y0(222, (((b39 >> 7) & 1) << 8) | ((b43 >> 7) & 1));
                qt.y0(223, (((b39 >> 6) & 1) << 8) | ((b43 >> 6) & 1));
                qt.y0(224, (((b39 >> 5) & 1) << 8) | ((b43 >> 4) & 3));
                qt.y0(221, (((b39 >> 4) & 1) << 8) | ((b43 >> 3) & 1));
                qt.y0(232, (3 & (b43 >> 1)) | (((b39 >> 2) & 1) << 8));
                qt.y0(233, ((b43 >> 0) & 1) | (((b39 >> 1) & 1) << 8));
                qt.y0(263, (b39 >> 0) & 1);
                qt.y0(264, (b40 >> 6) & 1);
                qt.y0(265, (b40 >> 5) & 1);
                qt.y0(266, (b40 >> 4) & 1);
                qt.y0(267, (b40 >> 3) & 1);
                qt.y0(268, (b40 >> 2) & 1);
                qt.y0(i.a.Theme_findOnPageNextDrawable, (b40 >> 1) & 1);
                qt.y0(i.a.Theme_findOnPagePreviousDrawable, (b40 >> 0) & 1);
                break;
            case 72:
                if (nt.f8637c == 17) {
                    int i54 = i2 + 2;
                    qt.y0(212, bArr[i54] & 255);
                    if (this.D != ((bArr[i54] >> 6) & 1)) {
                        int i55 = (bArr[i54] >> 6) & 1;
                        this.D = i55;
                        if (i55 == 1) {
                            u3();
                        }
                    }
                    qt.y0(213, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 9] & 255)) & 65535);
                    qt.y0(214, (((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 10] & 255)) & 65535);
                    qt.y0(215, (((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 11] & 255)) & 65535);
                    qt.y0(216, ((bArr[i2 + 12] & 255) | ((bArr[i2 + 7] << 8) & 65280)) & 65535);
                }
                break;
            case 94:
                qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, bArr[i2 + 2] & 255);
                qt.y0(273, bArr[i2 + 3] & 255);
                qt.y0(274, bArr[i2 + 4] & 255);
                qt.y0(275, bArr[i2 + 5] & 255);
                qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, bArr[i2 + 6] & 255);
                break;
            case 96:
                byte b44 = bArr[i2 + 2];
                byte b45 = bArr[i2 + 3];
                qt.y0(218, (b44 >> 7) & 1);
                qt.y0(163, (((b44 >> 6) & 1) << 8) | ((b45 >> 7) & 1));
                qt.y0(157, (3 & (b45 >> 5)) | (((b44 >> 5) & 1) << 8));
                qt.y0(126, (((b44 >> 4) & 1) << 8) | ((b45 >> 4) & 1));
                qt.y0(127, (((b44 >> 3) & 1) << 8) | ((b45 >> 3) & 1));
                qt.y0(128, (((b44 >> 2) & 1) << 8) | ((b45 >> 2) & 1));
                qt.y0(129, (((b44 >> 1) & 1) << 8) | ((b45 >> 1) & 1));
                qt.y0(130, ((b45 >> 0) & 1) | (((b44 >> 0) & 1) << 8));
                break;
            case 98:
                byte b46 = bArr[i2 + 2];
                byte b47 = bArr[i2 + 3];
                byte b48 = bArr[i2 + 4];
                byte b49 = bArr[i2 + 5];
                qt.y0(158, (((b46 >> 4) & 1) << 8) | ((b47 >> 4) & 1));
                int i56 = ((b46 >> 3) & 1) << 8;
                qt.y0(178, ((b47 >> 6) & 3) | i56);
                qt.y0(179, (((b46 >> 7) & 1) << 8) | ((b47 >> 5) & 1));
                qt.y0(159, (((b46 >> 6) & 1) << 8) | ((b48 >> 6) & 3));
                qt.y0(114, (((b46 >> 2) & 1) << 8) | ((b48 >> 4) & 3));
                qt.y0(115, (((b46 >> 1) & 1) << 8) | ((b48 >> 2) & 3));
                qt.y0(116, (3 & (b48 >> 0)) | (((b46 >> 0) & 1) << 8));
                qt.y0(139, (((b46 >> 5) & 1) << 8) | ((b49 >> 5) & 7));
                qt.y0(117, (((b47 >> 3) & 1) << 8) | ((b49 >> 4) & 1));
                qt.y0(118, (((b47 >> 2) & 1) << 8) | ((b49 >> 3) & 1));
                qt.y0(160, ((b49 >> 2) & 1) | i56);
                qt.y0(119, (((b47 >> 1) & 1) << 8) | ((b49 >> 1) & 1));
                qt.y0(120, ((b49 >> 0) & 1) | (((b47 >> 0) & 1) << 8));
                break;
            case 100:
                qt.y0(196, (((bArr[i2 + 2] >> 7) & 1) << 8) | ((bArr[i2 + 12] >> 7) & 1));
                int i57 = i2 + 3;
                int i58 = i2 + 13;
                qt.y0(197, (((bArr[i57] >> 7) & 1) << 8) | ((bArr[i58] >> 7) & 1));
                qt.y0(226, (((bArr[i57] >> 6) & 1) << 8) | ((bArr[i58] >> 5) & 3));
                qt.y0(227, (((bArr[i57] >> 5) & 1) << 8) | ((bArr[i58] >> 3) & 3));
                qt.y0(225, (((bArr[i57] >> 4) & 1) << 8) | ((bArr[i58] >> 2) & 1));
                qt.y0(234, (((bArr[i57] >> 3) & 1) << 8) | ((bArr[i58] >> 1) & 1));
                int i59 = i2 + 4;
                int i60 = i2 + 14;
                qt.y0(198, (((bArr[i59] >> 7) & 1) << 8) | ((bArr[i60] >> 7) & 1));
                qt.y0(199, (((bArr[i59] >> 6) & 1) << 8) | ((bArr[i60] >> 6) & 1));
                qt.y0(219, (((bArr[i59] >> 5) & 1) << 8) | ((bArr[i60] >> 5) & 1));
                qt.y0(235, (((bArr[i59] >> 4) & 1) << 8) | ((bArr[i60] >> 4) & 1));
                qt.y0(236, (((bArr[i59] >> 3) & 1) << 8) | ((bArr[i60] >> 3) & 1));
                int i61 = i2 + 5;
                int i62 = i2 + 15;
                qt.y0(200, (((bArr[i61] >> 7) & 1) << 8) | ((bArr[i62] >> 7) & 1));
                qt.y0(201, (((bArr[i61] >> 6) & 1) << 8) | ((bArr[i62] >> 6) & 1));
                qt.y0(202, (((bArr[i61] >> 5) & 1) << 8) | ((bArr[i62] >> 5) & 1));
                qt.y0(203, (((bArr[i61] >> 4) & 1) << 8) | ((bArr[i62] >> 4) & 1));
                qt.y0(204, (((bArr[i61] >> 3) & 1) << 8) | ((bArr[i62] >> 3) & 1));
                qt.y0(205, (((bArr[i61] >> 2) & 1) << 8) | ((bArr[i62] >> 2) & 1));
                qt.y0(206, (((bArr[i61] >> 1) & 1) << 8) | ((bArr[i62] >> 1) & 1));
                int i63 = i2 + 6;
                int i64 = i2 + 16;
                qt.y0(207, (((bArr[i63] >> 6) & 3) << 8) | ((bArr[i64] >> 6) & 3));
                qt.y0(208, (((bArr[i63] >> 4) & 3) << 8) | ((bArr[i64] >> 4) & 3));
                int i65 = i2 + 7;
                int i66 = i2 + 17;
                qt.y0(209, (((bArr[i65] >> 7) & 1) << 8) | ((bArr[i66] >> 7) & 1));
                qt.y0(210, (((bArr[i65] >> 6) & 1) << 8) | ((bArr[i66] >> 6) & 1));
                qt.y0(211, (((bArr[i65] >> 5) & 1) << 8) | ((bArr[i66] >> 5) & 1));
                qt.y0(237, (bArr[i66] >> 4) & 1);
                qt.y0(238, (bArr[i66] >> 3) & 1);
                qt.y0(239, (bArr[i66] >> 2) & 1);
                qt.y0(240, (bArr[i66] >> 1) & 1);
                qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i66] >> 0) & 1);
                int i67 = i2 + 18;
                qt.y0(i.a.Theme_actionModeFindDrawable, (bArr[i67] >> 7) & 1);
                qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i67] >> 6) & 1);
                qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i67] >> 5) & 1);
                qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i67] >> 4) & 1);
                qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i67] >> 3) & 1);
                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i67] >> 2) & 1);
                qt.y0(248, (bArr[i67] >> 1) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9157k.j();
        o1.h.f16865a.d(this.B);
        qt.q0(this.C);
        qt.q0(H);
        w0.e.f17815a.d(H);
        w0.e.f17819e.d(H);
        u0.c.f17386m.d(this.f9169w);
        l0.b0.p0(this.f9170x);
        u0.c.f17379f.d(this.f9167u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 277) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 36) {
            z.k.s(227, 4, 95, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        switch (i2) {
            case 0:
                if (T2(iArr, 2)) {
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        z.k.s(227, 2, 61, iArr[0], iArr[1]);
                        return;
                    }
                    switch (iArr[0]) {
                        case 13:
                            z.k.s(227, 2, 61, 15, iArr[1]);
                            break;
                        case 14:
                            z.k.s(227, 2, 61, 16, iArr[1]);
                            break;
                        case 15:
                            z.k.s(227, 2, 61, 13, iArr[1]);
                            break;
                        case 16:
                            z.k.s(227, 2, 61, 14, iArr[1]);
                            break;
                        default:
                            z.k.s(227, 2, 61, iArr[0], iArr[1]);
                            break;
                    }
                    return;
                }
                return;
            case 1:
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 68, iArr[0], iArr[1]);
                    return;
                }
                return;
            case 2:
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 99, iArr[0], iArr[1]);
                    return;
                }
                return;
            case 3:
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 97, iArr[0], iArr[1]);
                    return;
                }
                return;
            case 4:
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 202, iArr[0], iArr[1]);
                    return;
                }
                return;
            case 5:
                if (T2(iArr, 2)) {
                    z.k.s(227, 2, 173, iArr[0], iArr[1]);
                    return;
                }
                return;
            case 6:
                if (T2(iArr, 1)) {
                    z.k.s(227, 1, 155, iArr[0]);
                    return;
                }
                return;
            case 7:
                break;
            case 8:
                if (T2(iArr, 1)) {
                    z.k.s(227, 2, 157, 2, iArr[0]);
                }
                break;
            case 9:
                z.k.s(227, 2, 154, 1, iArr[0]);
                return;
            case 10:
                z.k.s(227, 2, 10, 1, iArr[0]);
                return;
            case 11:
                j3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9]);
                return;
            case 12:
                z.k.s(227, 6, 44, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            default:
                return;
        }
        if (iArr == null || iArr.length <= 2) {
            return;
        }
        z.k.s(227, 3, 175, iArr[0], iArr[1], iArr[2]);
    }

    public final void d3(int i2) {
        Z0(0, new int[]{i2, 1}, null, null);
        Z0(0, new int[]{i2, 0}, null, null);
    }

    public final void j3(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        I = i2;
        J = i3;
        K = i4;
        L = i5;
        M = i6;
        N = i8;
        O = i9;
        P = i10;
        Q = i11;
        z.k.s(227, 10, 110, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11);
        qt.y0(254, I);
        int iB = this.f9157k.b(1, 0);
        int i12 = I;
        if (iB != i12) {
            this.f9157k.g(1, i12);
        }
        qt.y0(255, J);
        int iB2 = this.f9157k.b(2, 0);
        int i13 = J;
        if (iB2 != i13) {
            this.f9157k.g(2, i13);
        }
        qt.y0(256, K);
        int iB3 = this.f9157k.b(3, 0);
        int i14 = K;
        if (iB3 != i14) {
            this.f9157k.g(3, i14);
        }
        qt.y0(257, L);
        int iB4 = this.f9157k.b(4, 0);
        int i15 = L;
        if (iB4 != i15) {
            this.f9157k.g(4, i15);
        }
        qt.y0(258, M);
        int iB5 = this.f9157k.b(5, 0);
        int i16 = M;
        if (iB5 != i16) {
            this.f9157k.g(5, i16);
        }
        qt.y0(259, N);
        int iB6 = this.f9157k.b(6, 0);
        int i17 = N;
        if (iB6 != i17) {
            this.f9157k.g(6, i17);
        }
        qt.y0(260, O);
        int iB7 = this.f9157k.b(7, 0);
        int i18 = O;
        if (iB7 != i18) {
            this.f9157k.g(7, i18);
        }
        qt.y0(261, P);
        int iB8 = this.f9157k.b(8, 0);
        int i19 = P;
        if (iB8 != i19) {
            this.f9157k.g(8, i19);
        }
        qt.y0(262, Q);
        int iB9 = this.f9157k.b(9, 0);
        int i20 = Q;
        if (iB9 != i20) {
            this.f9157k.g(9, i20);
        }
    }

    public final void u3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.wc.ziyouguang.Wc_372_TireAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.ziyouguang.Wc_372_TireAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
