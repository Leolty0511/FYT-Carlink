package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;
import app.App;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class hb extends lt implements o1.q {
    public static int W;
    public static int X;
    public static int Y;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5862j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5866n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f5854b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5855c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5856d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5857e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5858f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5859g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5860h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5861i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5863k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String[][] f5864l = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String[][] f5865m = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5867o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f5868p = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 13}, new int[]{6, 13}, new int[]{7, 2}, new int[]{11, 18}, new int[]{12, 26}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 16}, new int[]{19, 1}, new int[]{20, 5}, new int[]{21, 58}, new int[]{22, 62}, new int[]{23, 65}, new int[]{72, 16}, new int[]{20, 2}, new int[]{49, 6}, new int[]{50, 1}, new int[]{52, 21}, new int[]{51, 1}, new int[]{55, 5}, new int[]{56, 38}, new int[]{63, 0}, new int[]{80, 25}, new int[]{84, 16}, new int[]{87, 1}, new int[]{90, 12}, new int[]{91, 25}, new int[]{86, 39}, new int[]{89, 6}, new int[]{102, 16}, new int[]{103, -1}, new int[]{104, 55}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5869q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5870r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5871s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f5872t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f5873u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f5874v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f5875w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f5876x = new f();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f5877y = new g();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f5878z = new h();
    public Runnable A = new i();
    public int B = 0;
    public int C = 0;
    public o1.g0 D = new o1.g0(getClass().getSimpleName(), 32);
    public final int E = 1;
    public final int F = 2;
    public final int G = 3;
    public final int H = 4;
    public int I = 0;
    public Runnable J = new j();
    public Runnable K = new k();
    public float L = 0.0f;
    public int M = 255;
    public int N = 255;
    public Runnable O = new l();
    public Runnable P = new a();
    public Runnable Q = new b();
    public Runnable R = new c();
    public int[][] S = (int[][]) Array.newInstance((Class<?>) int.class, 16, 8);
    public int[] T = {34, 204};
    public int U = 0;
    public int V = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 12 || i2 == 13) {
                return;
            }
            hb.this.u3(198, 161, 130);
            qt.y0(110, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 118) {
                if (u0.b.D == 13) {
                    z.k.s(227, 131, 1, 0);
                    return;
                } else {
                    z.k.s(227, 131, 1, 1);
                    return;
                }
            }
            if (u0.b.D == 11) {
                z.k.s(227, 131, 1, 0);
            } else {
                z.k.s(227, 131, 1, 1);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb hbVar = hb.this;
            int i2 = hbVar.f5870r;
            if (i2 > 0) {
                hbVar.f5870r = i2 - 1;
            }
            if (hbVar.f5870r == 0) {
                hb.b3();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb hbVar = hb.this;
            int i2 = hbVar.f5870r;
            if (i2 > 0) {
                hbVar.f5870r = i2 - 1;
            }
            if (hbVar.f5870r == 0) {
                hb.a3();
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb.this.c3();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb.this.r3((byte) 1, u0.b.i3);
            a.i.a0(50L);
            hb.this.r3((byte) 2, u0.b.j3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb.this.r3((byte) 1, u0.b.i3);
            a.i.a0(50L);
            hb.this.r3((byte) 2, u0.b.j3);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        /* JADX WARN: Code duplicated, block: B:68:0x01d1  */
        /* JADX WARN: Code duplicated, block: B:69:0x01da  */
        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8633a == 330) {
                z.k.s(227, 145, 2, 8, 0);
                return;
            }
            int i2 = nt.f8637c;
            if (i2 != 0) {
                if (i2 == 2) {
                    z.k.s(227, 145, 2, 2, 0);
                    return;
                }
                if (i2 != 32) {
                    if (i2 == 118) {
                        z.k.s(227, 145, 2, 15, 0);
                        return;
                    }
                    if (i2 != 5) {
                        if (i2 == 6) {
                            z.k.s(227, 145, 2, 5, 0);
                            return;
                        }
                        if (i2 == 7) {
                            z.k.s(227, 145, 2, 6, 0);
                            return;
                        }
                        if (i2 == 59) {
                            z.k.s(227, 145, 2, 1, 0);
                            return;
                        }
                        if (i2 != 60) {
                            switch (i2) {
                                case 9:
                                    return;
                                case 10:
                                    z.k.s(227, 145, 2, 2, 1);
                                    return;
                                case 11:
                                    break;
                                default:
                                    switch (i2) {
                                        case 15:
                                        case 20:
                                            break;
                                        case 16:
                                            z.k.s(227, 145, 2, 13, 0);
                                            break;
                                        case 17:
                                            z.k.s(227, 145, 2, 9, 0);
                                            break;
                                        case 18:
                                            z.k.s(227, 145, 2, 6, 1);
                                            break;
                                        case 19:
                                            z.k.s(227, 145, 2, 6, 2);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 34:
                                                    z.k.s(227, 145, 2, 7, 0);
                                                    break;
                                                case 35:
                                                    break;
                                                case 36:
                                                    z.k.s(227, 145, 2, 13, 0);
                                                    break;
                                                case 37:
                                                    z.k.s(227, 145, 2, 10, 0);
                                                    break;
                                                case 38:
                                                    z.k.s(227, 145, 2, 11, 0);
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 41:
                                                            z.k.s(227, 145, 2, 10, 0);
                                                            break;
                                                        case 42:
                                                            z.k.s(227, 145, 2, 11, 0);
                                                            break;
                                                        case 43:
                                                            z.k.s(227, 145, 2, 12, 0);
                                                            break;
                                                        case 44:
                                                            z.k.s(227, 145, 2, 12, 2);
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 46:
                                                                case 48:
                                                                case 55:
                                                                    break;
                                                                case 47:
                                                                    z.k.s(227, 207, 3, 1, 5, 0);
                                                                    break;
                                                                case 49:
                                                                    z.k.s(227, 145, 2, 14, 0);
                                                                    break;
                                                                case 50:
                                                                    z.k.s(227, 145, 2, 12, 0);
                                                                    break;
                                                                case 51:
                                                                case 53:
                                                                    z.k.s(227, 145, 2, 13, 0);
                                                                    break;
                                                                case 52:
                                                                case 54:
                                                                    z.k.s(227, 145, 2, 14, 0);
                                                                    break;
                                                                default:
                                                                    switch (i2) {
                                                                        case 62:
                                                                        case 64:
                                                                        case 66:
                                                                        case 68:
                                                                            z.k.s(227, 145, 2, 1, 1);
                                                                            break;
                                                                        case 63:
                                                                        case 65:
                                                                        case 67:
                                                                        case 69:
                                                                            z.k.s(227, 145, 2, 1, 2);
                                                                            break;
                                                                        case 70:
                                                                        case 86:
                                                                        case 89:
                                                                        case 92:
                                                                        case 95:
                                                                            z.k.s(227, 145, 2, 4, 1);
                                                                            break;
                                                                        case 71:
                                                                        case 87:
                                                                        case 90:
                                                                        case 93:
                                                                        case 96:
                                                                            z.k.s(227, 145, 2, 4, 2);
                                                                            break;
                                                                        case 72:
                                                                            z.k.s(227, 145, 2, 5, 1);
                                                                            break;
                                                                        case 73:
                                                                            z.k.s(227, 145, 2, 5, 2);
                                                                            break;
                                                                        case 74:
                                                                            z.k.s(227, 145, 2, 7, 1);
                                                                            break;
                                                                        case 75:
                                                                            z.k.s(227, 145, 2, 7, 2);
                                                                            break;
                                                                        case 76:
                                                                            z.k.s(227, 145, 2, 8, 1);
                                                                            break;
                                                                        case 77:
                                                                            z.k.s(227, 145, 2, 8, 2);
                                                                            break;
                                                                        case 78:
                                                                        case 98:
                                                                            z.k.s(227, 145, 2, 9, 1);
                                                                            break;
                                                                        case 79:
                                                                        case 99:
                                                                            z.k.s(227, 145, 2, 9, 2);
                                                                            break;
                                                                        case 80:
                                                                            z.k.s(227, 145, 2, 14, 1);
                                                                            break;
                                                                        case 81:
                                                                            z.k.s(227, 145, 2, 14, 2);
                                                                            break;
                                                                        case 82:
                                                                        case 84:
                                                                            z.k.s(227, 145, 2, 13, 1);
                                                                            break;
                                                                        case 83:
                                                                        case 85:
                                                                            z.k.s(227, 145, 2, 13, 2);
                                                                            break;
                                                                        case 88:
                                                                        case 91:
                                                                        case 94:
                                                                            break;
                                                                        case 97:
                                                                            z.k.s(227, 145, 2, 9, 0);
                                                                            break;
                                                                        case 100:
                                                                        case 101:
                                                                        case 102:
                                                                        case 103:
                                                                        case 114:
                                                                            break;
                                                                        case 104:
                                                                            break;
                                                                        case 105:
                                                                            z.k.s(227, 207, 3, 1, 7, 0);
                                                                            break;
                                                                        case 106:
                                                                            z.k.s(227, 207, 3, 1, 3, 0);
                                                                            break;
                                                                        case 107:
                                                                            z.k.s(227, 207, 3, 1, 1, 0);
                                                                            break;
                                                                        case 108:
                                                                            z.k.s(227, 207, 3, 1, 4, 0);
                                                                            break;
                                                                        case 109:
                                                                            z.k.s(227, 207, 3, 1, 9, 0);
                                                                            break;
                                                                        case 110:
                                                                            z.k.s(227, 207, 3, 1, 8, 0);
                                                                            break;
                                                                        case 111:
                                                                            z.k.s(227, 207, 3, 1, 2, 0);
                                                                            break;
                                                                        case 112:
                                                                            z.k.s(227, 207, 3, 1, 6, 0);
                                                                            break;
                                                                        case 113:
                                                                            z.k.s(227, 207, 3, 1, 10, 0);
                                                                            break;
                                                                        default:
                                                                            z.k.s(227, 145, 2, 3, 0);
                                                                            break;
                                                                    }
                                                                case 56:
                                                                    z.k.s(227, 145, 2, 4, 0);
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                            }
                        }
                        z.k.s(227, 145, 2, 2, 2);
                        return;
                    }
                    z.k.s(227, 145, 2, 4, 0);
                    return;
                }
            }
            z.k.s(227, 145, 2, 1, 0);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hb.this.K);
            hb hbVar = hb.this;
            hbVar.I = 3;
            hbVar.V = 0;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb hbVar = hb.this;
            int i2 = hbVar.I - 1;
            hbVar.I = i2;
            if (i2 <= 0) {
                l0.b0.p0(hbVar.K);
                hb.this.I = 3;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                hb hbVar2 = hb.this;
                hbVar2.x3(hbVar2.D.b(1, 0));
                hb hbVar3 = hb.this;
                hbVar3.z3(hbVar3.D.b(3, 0));
                hb hbVar4 = hb.this;
                hbVar4.w3(hbVar4.D.b(4, 0));
                z.k.s(227, 144, 2, 36, 0);
                z.k.s(227, 144, 2, 99, 0);
                z.k.s(227, 144, 2, 105, 0);
                int i3 = nt.f8637c;
                if (i3 == 16 || i3 == 48 || i3 == 82 || i3 == 83) {
                    if (u0.b.D == 11) {
                        z.k.s(227, 131, 1, 0);
                        return;
                    } else {
                        z.k.s(227, 131, 1, 1);
                        return;
                    }
                }
                if (i3 == 118) {
                    if (u0.b.D == 13) {
                        z.k.s(227, 131, 1, 0);
                    } else {
                        z.k.s(227, 131, 1, 1);
                    }
                }
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hb.this.L = u0.b.f17359s0;
            if ((hb.this.L <= 22.5d && hb.this.L >= 0.0f) || (hb.this.L >= 337.5d && hb.this.L <= 360.0f)) {
                hb.this.N = 0;
            } else if (hb.this.L > 22.5d && hb.this.L < 67.5d) {
                hb.this.N = 1;
            } else if (hb.this.L >= 67.5d && hb.this.L <= 112.5d) {
                hb.this.N = 2;
            } else if (hb.this.L > 112.5d && hb.this.L < 157.5d) {
                hb.this.N = 3;
            } else if (hb.this.L >= 157.5d && hb.this.L <= 202.5d) {
                hb.this.N = 4;
            } else if (hb.this.L > 202.5d && hb.this.L < 247.5d) {
                hb.this.N = 5;
            } else if (hb.this.L >= 247.5d && hb.this.L <= 292.5d) {
                hb.this.N = 6;
            } else if (hb.this.L <= 292.5d || hb.this.L >= 337.5d) {
                hb.this.N = 0;
            } else {
                hb.this.N = 7;
            }
            if (hb.Y == 1) {
                hb.this.N |= 128;
            } else {
                hb.this.N &= 127;
            }
            if (hb.this.N != hb.this.M) {
                z.k.s(227, 196, 1, hb.this.N);
                hb hbVar = hb.this;
                hbVar.M = hbVar.N;
            }
        }
    }

    public static void A3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        z.k.q(bArr);
    }

    public static void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 10) {
            iArr[1] = 8;
            iArr[2] = 2;
            int i4 = u0.b.r3;
            iArr[3] = (i4 >> 0) & 255;
            iArr[4] = (i4 >> 8) & 255;
            int i5 = u0.b.s3;
            iArr[5] = (i5 >> 0) & 255;
            iArr[6] = (i5 >> 8) & 255;
            int i6 = u0.b.t3;
            iArr[7] = i6 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i6 % 60;
            int[] iArr2 = new int[11];
            iArr2[0] = 227;
            while (i2 < 10) {
                int i7 = i2 + 1;
                iArr2[i7] = iArr[i2];
                i2 = i7;
            }
            z.k.s(iArr2);
        }
    }

    public static void b3() {
        if (u0.b.D != 1) {
            return;
        }
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 5;
        iArr[2] = 1;
        int i3 = w0.d.f17798j & 255;
        int i4 = w0.d.f17797i;
        int i5 = w0.d.f17796h;
        if (i5 == 65536) {
            iArr[3] = 0;
        } else if (i5 == 65537) {
            iArr[3] = 1;
        } else if (i5 == 65538) {
            iArr[3] = 2;
        } else if (i5 == 0 || i5 == 1) {
            iArr[3] = 16;
        }
        iArr[4] = i4 & 255;
        iArr[5] = (i4 >> 8) & 255;
        int i6 = i3 % 6;
        if (i6 != 0 || i3 == 0) {
            iArr[6] = i6;
        } else {
            iArr[6] = 6;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
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
                z.k.s(227, -58, 3, 172, 26, 0);
                a.i.a0(50L);
                z.k.s(227, -58, 3, 172, 0, 0);
                return;
            } else {
                z.k.s(227, -58, 3, 172, 27, 0);
                a.i.a0(50L);
                z.k.s(227, -58, 3, 172, 0, 0);
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -58, 3, 172, 28, 0);
                a.i.a0(50L);
                z.k.s(227, -58, 3, 172, 0, 0);
                return;
            } else {
                z.k.s(227, -58, 3, 172, 29, 0);
                a.i.a0(50L);
                z.k.s(227, -58, 3, 172, 0, 0);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] != 0) {
                z.k.s(227, -58, 3, 177, 4, 1);
                return;
            } else {
                z.k.s(227, -58, 3, 177, 4, 2);
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        z.k.s(227, -58, 3, 172, 1, 0);
                        a.i.a0(50L);
                        z.k.s(227, -58, 3, 172, 0, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    z.k.s(227, -58, 3, 172, 1, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        z.k.s(227, -58, 3, 172, 2, 0);
                        a.i.a0(50L);
                        z.k.s(227, -58, 3, 172, 0, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    z.k.s(227, -58, 3, 172, 2, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        z.k.s(227, -58, 3, 172, 23, 0);
                        a.i.a0(50L);
                        z.k.s(227, -58, 3, 172, 0, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    z.k.s(227, -58, 3, 172, 23, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        z.k.s(227, -58, 3, 172, 5, 0);
                        a.i.a0(50L);
                        z.k.s(227, -58, 3, 172, 0, 0);
                    }
                } else if (nt.f8645g[15] == 0) {
                    z.k.s(227, -58, 3, 172, 5, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        z.k.s(227, -58, 3, 172, 6, 0);
                        a.i.a0(50L);
                        z.k.s(227, -58, 3, 172, 0, 0);
                    }
                } else if (nt.f8645g[16] == 0) {
                    z.k.s(227, -58, 3, 172, 6, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        z.k.s(227, -58, 3, 172, 3, 0);
                        a.i.a0(50L);
                        z.k.s(227, -58, 3, 172, 0, 0);
                    }
                } else if (nt.f8645g[12] == 0) {
                    z.k.s(227, -58, 3, 172, 3, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    z.k.s(227, -58, 3, 172, 31, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                    break;
                } else if (i3 == -1) {
                    z.k.s(227, -58, 3, 172, 30, 0);
                    a.i.a0(50L);
                    z.k.s(227, -58, 3, 172, 0, 0);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8323r = 0;
        mtVar.f8317l = 0;
        this.D.a();
        u0.c.f17386m.a(this.J, 1);
        w0.e.f17815a.a(this.f5874v, 1);
        w0.e.f17819e.a(this.f5874v, 1);
        u0.c.f17393t.a(this.f5875w, 1);
        u0.c.f17392s.a(this.f5875w, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f5875w, 1);
        yVar.a(this.f5874v, 1);
        u0.c.f17388o.a(this.f5877y, 1);
        u0.c.f17389p.a(this.f5878z, 1);
        qt.z(this.A);
        qt.z(this.P);
        qt.z(this.f5874v);
        o1.h.f16865a.a(this.O, 1);
        y0.g.f18094d.a(this.f5876x, 1);
        y0.g.f18095e.a(this.f5876x, 1);
        mt mtVar2 = this.f7886a;
        mtVar2.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 55, 56, 68};
        int i2 = nt.f8637c;
        if (i2 == 4) {
            mtVar2.f8322q = 1;
        }
        if (i2 == 11 || i2 == 65 || i2 == 75) {
            mtVar2.f8323r = 1;
        } else if (i2 == 118) {
            mtVar2.f8317l = 1;
        }
        switch (i2) {
            case 0:
            case 5:
            case 9:
            case 35:
            case 36:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 55:
            case 57:
            case 58:
            case 59:
            case 62:
            case 63:
            case 70:
            case 71:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 114:
            case 115:
            case 116:
            case 117:
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8314i = 1;
                } else {
                    this.f7886a.f8314i = 0;
                }
                break;
            case 1:
            case 15:
            case 17:
            case 20:
            case 28:
            case 30:
            case 32:
            case 33:
            case 34:
            case 37:
            case 38:
            case 39:
            case 45:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 56:
            case 61:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            default:
                yVar.a(this.Q, 1);
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8314i = 0;
                break;
            case 2:
            case 10:
            case 11:
            case 60:
                yVar.a(this.Q, 1);
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8314i = 0;
                break;
            case 3:
            case 13:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                yVar.a(this.Q, 1);
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8314i = 1;
                } else {
                    this.f7886a.f8314i = 0;
                }
                break;
            case 4:
            case 12:
                mtVar2.f8314i = 0;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                    if (a.f.w() == 1080) {
                        this.f7886a.f8314i = 1;
                    }
                } else {
                    this.f7886a.f8306a = null;
                }
                this.f7886a.f8322q = 1;
                break;
            case 6:
            case 14:
            case 72:
            case 73:
                yVar.a(this.Q, 1);
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8314i = 1;
                break;
            case 7:
            case 18:
            case 19:
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8314i = 1;
                break;
            case 8:
            case 31:
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8314i = 0;
                break;
            case 16:
            case 48:
            case 82:
            case 83:
                yVar.a(this.Q, 1);
                yVar.a(this.R, 1);
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                mtVar6.f8314i = 1;
                break;
            case 29:
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8314i = 1;
                } else {
                    this.f7886a.f8314i = 0;
                }
                break;
            case 118:
                yVar.a(this.R, 1);
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = new String[]{"com.syu.canbus"};
                mtVar7.f8314i = 1;
                break;
        }
        if (nt.f8633a == 330) {
            this.f7886a.f8314i = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:1184:0x1f06  */
    /* JADX WARN: Code duplicated, block: B:1203:0x1f63  */
    /* JADX WARN: Code duplicated, block: B:1222:0x1fc0  */
    /* JADX WARN: Code duplicated, block: B:1244:0x202b  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int[][] iArr;
        int i13;
        byte b2 = bArr[i2];
        int i14 = 0;
        if (b2 == -128) {
            switch (bArr[i2 + 2]) {
                case 1:
                    byte b3 = bArr[i2 + 3];
                    if (b3 != 0) {
                        if (b3 != 1) {
                            if (b3 == 2 || b3 == 3) {
                                if (u0.b.D != 1) {
                                    o1.u.x0();
                                    break;
                                } else if (w0.d.f17796h != 65538) {
                                    w0.f.J(28, 29);
                                    break;
                                } else {
                                    int i15 = i2 + 4;
                                    if (bArr[i15] >= 1 && bArr[i15] <= 6) {
                                        w0.f.J(28, 7, bArr[i15]);
                                        break;
                                    }
                                }
                            } else if (b3 != 16) {
                                if (b3 == 17 || b3 == 19) {
                                    if (u0.b.D != 1) {
                                        o1.u.x0();
                                        break;
                                    } else if (w0.d.f17796h != 1) {
                                        w0.f.J(28, 31);
                                        break;
                                    } else {
                                        int i16 = i2 + 4;
                                        if (bArr[i16] >= 1 && bArr[i16] <= 6) {
                                            w0.f.J(28, 7, bArr[i16]);
                                            break;
                                        }
                                    }
                                }
                            } else if (u0.b.D != 1) {
                                o1.u.x0();
                                break;
                            } else if (w0.d.f17796h != 0) {
                                w0.f.J(28, 30);
                                break;
                            } else {
                                int i17 = i2 + 4;
                                if (bArr[i17] >= 1 && bArr[i17] <= 6) {
                                    w0.f.J(28, 7, bArr[i17]);
                                    break;
                                }
                            }
                        } else if (u0.b.D != 1) {
                            o1.u.x0();
                            break;
                        } else if (w0.d.f17796h != 65537) {
                            w0.f.J(28, 28);
                            break;
                        } else {
                            int i18 = i2 + 4;
                            if (bArr[i18] >= 1 && bArr[i18] <= 6) {
                                w0.f.J(28, 7, bArr[i18]);
                                break;
                            }
                        }
                    } else if (u0.b.D != 1) {
                        o1.u.x0();
                        break;
                    } else if (w0.d.f17796h != 65536) {
                        w0.f.J(28, 27);
                        break;
                    } else {
                        int i19 = i2 + 4;
                        if (bArr[i19] >= 1 && bArr[i19] <= 6) {
                            w0.f.J(28, 7, bArr[i19]);
                            break;
                        }
                    }
                    break;
                case 2:
                case 5:
                    int i20 = u0.b.D;
                    if (i20 != 8) {
                        l0.b0.l0(54, 0);
                        l0.b0.l0(54, 1);
                    } else {
                        int i21 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 7) & 65280);
                        if (i21 != 0) {
                            u0.d.I3(37, i20, 8, i21);
                        }
                    }
                    break;
                case 3:
                    byte b4 = bArr[i2 + 3];
                    if (b4 == 0) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else if (b4 == 1) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else if (b4 != 3) {
                        if (b4 == 4 && y0.f.f18055i == 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    } else if (y0.f.f18055i == 0) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                    break;
                case 4:
                    if (u0.b.D != 3) {
                        l0.b0.l0(76, 0);
                        l0.b0.l0(76, 1);
                    }
                    break;
                case 7:
                    l0.b0.l0(53, 0);
                    l0.b0.l0(53, 1);
                    break;
                case 8:
                    l0.b0.l0(1, 0);
                    l0.b0.l0(1, 1);
                    break;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if (this.f5873u) {
                    return;
                }
                qt.l(b5, b6, true, 12600);
                return;
            }
            return;
        }
        if (b2 == 64) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 85) {
            int i22 = nt.f8637c;
            if (i22 == 51 || i22 == 52 || i22 == 53 || i22 == 54 || i22 == 41 || i22 == 42 || i22 == 43 || i22 == 44 || i22 == 114 || i22 == 115 || i22 == 116 || i22 == 117) {
                if (i22 != 41 && i22 != 42 && i22 != 43 && i22 != 44 && i22 != 114 && i22 != 115 && i22 != 116 && i22 != 117) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    byte b9 = bArr[i2 + 4];
                    byte b10 = bArr[i2 + 6];
                    byte b11 = bArr[i2 + 7];
                    int i23 = b7 & 255;
                    if (i23 == 16) {
                        qt.y0(27, -2);
                    } else if (i23 != 80) {
                        qt.y0(27, i23);
                    } else {
                        qt.y0(27, -3);
                    }
                    int i24 = b8 & 255;
                    if (i24 == 16) {
                        qt.y0(28, -2);
                    } else if (i24 != 80) {
                        qt.y0(28, i24);
                    } else {
                        qt.y0(28, -3);
                    }
                    qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                    switch ((b9 >> 4) & 15) {
                        case 1:
                            i8 = 0;
                            i9 = 0;
                            i7 = 1;
                            break;
                        case 2:
                            i9 = 0;
                            i7 = 1;
                            i8 = 1;
                            break;
                        case 3:
                            i7 = 0;
                            i9 = 0;
                            i8 = 1;
                            break;
                        case 4:
                            i7 = 0;
                            i8 = 1;
                            i9 = i8;
                            break;
                        case 5:
                            i8 = 0;
                            i7 = 1;
                            i9 = 1;
                            break;
                        case 6:
                            i7 = 0;
                            i8 = 0;
                            i9 = 1;
                            break;
                        case 7:
                            i7 = 1;
                            i8 = i7;
                            i9 = i8;
                            break;
                        default:
                            i7 = 0;
                            i8 = i7;
                            i9 = i8;
                            break;
                    }
                    qt.y0(19, i7);
                    qt.y0(20, i8);
                    qt.y0(18, i9);
                    int i25 = i2 + 5;
                    qt.y0(29, (bArr[i25] >> 0) & 3);
                    qt.y0(30, (bArr[i25] >> 4) & 3);
                    qt.y0(31, (bArr[i25] >> 2) & 3);
                    qt.y0(32, (bArr[i25] >> 6) & 3);
                    qt.y0(13, (b10 >> 0) & 1);
                    qt.y0(11, (b10 >> 1) & 1);
                    qt.y0(14, (b10 >> 2) & 1);
                    qt.y0(53, (b10 >> 4) & 1);
                    qt.y0(15, (b10 >> 7) & 1);
                    qt.y0(16, (b10 >> 6) & 1);
                    qt.y0(65, (b10 >> 5) & 1);
                    qt.y0(12, (b11 >> 0) & 3);
                    u0.d.A3(((bArr[i2 + 9] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i26 = i2 + 2;
                    if ((bArr[i26] & 255) == 16) {
                        qt.y0(28, -2);
                    } else if ((bArr[i26] & 255) == 80) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i26] & 255);
                    }
                    int i27 = i2 + 3;
                    if ((bArr[i27] & 255) == 16) {
                        qt.y0(27, -2);
                    } else if ((bArr[i27] & 255) == 80) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i27] & 255);
                    }
                } else {
                    int i28 = i2 + 2;
                    if ((bArr[i28] & 255) == 16) {
                        qt.y0(27, -2);
                    } else if ((bArr[i28] & 255) == 80) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i28] & 255);
                    }
                    int i29 = i2 + 3;
                    if ((bArr[i29] & 255) == 16) {
                        qt.y0(28, -2);
                    } else if ((bArr[i29] & 255) == 80) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i29] & 255);
                    }
                }
                int i30 = i2 + 4;
                switch ((bArr[i30] >> 4) & 15) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    case 2:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 3:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 4:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 6:
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                        break;
                    case 7:
                        i4 = 1;
                        i6 = i4;
                        i5 = i6;
                        break;
                    default:
                        i4 = 0;
                        i6 = i4;
                        i5 = i6;
                        break;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, (bArr[i30] >> 0) & 15);
                int i31 = i2 + 5;
                qt.y0(29, (bArr[i31] >> 0) & 3);
                qt.y0(31, (bArr[i31] >> 2) & 3);
                qt.y0(30, (bArr[i31] >> 4) & 3);
                qt.y0(32, (bArr[i31] >> 6) & 3);
                int i32 = i2 + 6;
                qt.y0(13, (bArr[i32] >> 0) & 1);
                qt.y0(11, (bArr[i32] >> 1) & 1);
                qt.y0(62, (bArr[i32] >> 2) & 1);
                qt.y0(53, (bArr[i32] >> 4) & 1);
                qt.y0(65, (bArr[i32] >> 5) & 1);
                qt.y0(16, (bArr[i32] >> 6) & 1);
                qt.y0(15, (bArr[i32] >> 7) & 1);
                int i33 = i2 + 7;
                qt.y0(12, (bArr[i33] >> 0) & 3);
                qt.y0(67, (bArr[i33] >> 3) & 1);
                qt.y0(66, (bArr[i33] >> 4) & 1);
                qt.y0(17, (bArr[i33] >> 5) & 1);
                int i34 = bArr[i2 + 9] & 255;
                if (i34 == 0 || i34 == 255) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 0 ? (i34 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : (((i34 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1));
                    return;
                }
            }
            return;
        }
        if (b2 == 120) {
            qt.y0(107, bArr[i2 + 2]);
            qt.y0(108, bArr[i2 + 3]);
            qt.y0(109, bArr[i2 + 4]);
            return;
        }
        if (b2 == 121) {
            if (nt.R == 0) {
                return;
            }
            int i35 = i2 + 2;
            qt.y0(110, bArr[i35]);
            int i36 = nt.f8637c;
            if (i36 == 68 || i36 == 69) {
                t3(bArr[i35]);
                return;
            }
            return;
        }
        switch (b2) {
            case 32:
                int i37 = i2 + 3;
                byte b12 = bArr[i37];
                this.f5862j = b12;
                int i38 = i2 + 2;
                int i39 = bArr[i38] & 255;
                if (i39 == 54) {
                    if (b12 == 1) {
                        o1.u.j();
                    }
                    break;
                } else if (i39 == 57) {
                    if (b12 == 1) {
                        o1.u.r();
                    }
                    break;
                } else if (i39 == 61) {
                    if (b12 == 1) {
                        o1.u.W0();
                    }
                    break;
                } else if (i39 == 103) {
                    if (b12 == 1) {
                        o1.u.c1();
                    }
                    break;
                } else if (i39 != 82) {
                    if (i39 != 83) {
                        if (i39 != 112) {
                            if (i39 != 113) {
                                if (i39 == 240) {
                                    int i40 = 0;
                                    for (int i41 = 255; i40 < (this.f5862j & i41); i41 = 255) {
                                        l0.b0.l0(7, 0);
                                        i40++;
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                } else if (i39 == 241) {
                                    for (int i42 = 0; i42 < (this.f5862j & 255); i42++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                    break;
                                } else {
                                    switch (i39) {
                                        case 14:
                                            if (!nt.a() && (bArr[i37] & 255) == 1) {
                                                int i43 = this.f5871s;
                                                if (i43 == 1 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 7);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else if (i43 == 2 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 33);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else {
                                                    int i44 = u0.b.D;
                                                    if (i44 == 12) {
                                                        v3(161, 10);
                                                    } else if (i44 == 1) {
                                                        w0.d.f17790b.i();
                                                    } else {
                                                        u0.d.L1();
                                                    }
                                                }
                                                break;
                                            }
                                            break;
                                        case 15:
                                            if (!nt.a() && (i12 = this.f5862j) == 1) {
                                                int i45 = this.f5871s;
                                                if (i45 == 1 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 6);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else if (i45 == 2 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 34);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else {
                                                    int i46 = u0.b.D;
                                                    if (i46 == 12) {
                                                        if (i12 == 0) {
                                                            z.k.s(227, 198, 2, 161, 9);
                                                        }
                                                    } else if (i46 == 12) {
                                                        v3(161, 11);
                                                    } else if (i46 == 1) {
                                                        w0.d.f17790b.d();
                                                    } else {
                                                        u0.d.x1();
                                                    }
                                                }
                                                break;
                                            }
                                            break;
                                        case 16:
                                            if (!nt.a() && this.f5862j == 1) {
                                                int i47 = this.f5871s;
                                                if (i47 == 1 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 7);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else if (i47 == 2 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 33);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else {
                                                    int i48 = u0.b.D;
                                                    if (i48 == 12) {
                                                        v3(161, 25);
                                                    } else if (i48 == 1) {
                                                        w0.d.f17790b.g();
                                                    } else {
                                                        u0.d.B1();
                                                    }
                                                }
                                                break;
                                            }
                                            break;
                                        case 17:
                                            if (!nt.a() && this.f5862j == 1) {
                                                int i49 = this.f5871s;
                                                if (i49 == 1 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 6);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else if (i49 == 2 && u0.b.D == 11) {
                                                    z.k.s(227, 198, 2, 169, 34);
                                                    z.k.s(227, 198, 2, 169, 0);
                                                } else {
                                                    int i50 = u0.b.D;
                                                    if (i50 == 12) {
                                                        v3(161, 26);
                                                    } else if (i50 == 1) {
                                                        w0.d.f17790b.c();
                                                    } else {
                                                        u0.d.I1();
                                                    }
                                                }
                                                break;
                                            }
                                            break;
                                        default:
                                            switch (i39) {
                                                case 32:
                                                case 33:
                                                case 34:
                                                case 35:
                                                case 36:
                                                case 37:
                                                case 38:
                                                case 39:
                                                case 40:
                                                case 41:
                                                    if (b12 == 1) {
                                                        q3((bArr[i38] & 255) - 32);
                                                    }
                                                    break;
                                                case 42:
                                                    int i51 = u0.b.D;
                                                    if (i51 == 2) {
                                                        if (b12 == 1) {
                                                            h0.c.f2425b.h(13);
                                                        }
                                                    } else if ((i51 == 12 || i51 == 13) && b12 == 1) {
                                                        u3(198, 161, 23);
                                                    }
                                                    break;
                                                case 43:
                                                    int i52 = u0.b.D;
                                                    if (i52 == 2) {
                                                        if (b12 == 1) {
                                                            h0.c.f2425b.h(14);
                                                        }
                                                    } else if ((i52 == 12 || i52 == 13) && b12 == 1) {
                                                        u3(198, 161, 24);
                                                    }
                                                    break;
                                                default:
                                                    switch (i39) {
                                                        case 46:
                                                            break;
                                                        case 47:
                                                            break;
                                                        case 48:
                                                            if (b12 == 1) {
                                                                o1.u.i();
                                                            }
                                                            break;
                                                        default:
                                                            switch (i39) {
                                                                case 73:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 74:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 75:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                case 76:
                                                                    if (!nt.a()) {
                                                                    }
                                                                    break;
                                                                default:
                                                                    switch (i39) {
                                                                        case 92:
                                                                            if (b12 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                u3(198, 161, 28);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 93:
                                                                            if (b12 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                u3(198, 161, 29);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 94:
                                                                            if (b12 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                u3(198, 161, 30);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 95:
                                                                            if (b12 == 1 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                                u3(198, 161, 31);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            if (nt.a()) {
                                                                                byte b13 = bArr[i38];
                                                                                byte b14 = bArr[i37];
                                                                                this.f5867o = b13 & 255;
                                                                                int i53 = 0;
                                                                                while (true) {
                                                                                    iArr = this.f5868p;
                                                                                    if (i53 < iArr.length) {
                                                                                        int i54 = this.f5867o;
                                                                                        if (i54 != iArr[i53][0]) {
                                                                                            i53++;
                                                                                        } else if (i54 != 0) {
                                                                                            this.f5866n = i53;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                int i55 = this.f5867o;
                                                                                if (i55 != 3) {
                                                                                    if (i55 != 4) {
                                                                                        if (i55 != 18) {
                                                                                            if (i55 != 53) {
                                                                                                if (i55 != 72) {
                                                                                                    if (i55 != 84) {
                                                                                                        if (i55 != 102) {
                                                                                                            int i56 = b14 & 255;
                                                                                                            if (i56 == 1) {
                                                                                                                if (i53 < iArr.length) {
                                                                                                                    l0.b0.l0(iArr[this.f5866n][1], 0);
                                                                                                                }
                                                                                                            } else if (i56 == 0) {
                                                                                                                int i57 = this.f5866n;
                                                                                                                if (i57 < iArr.length) {
                                                                                                                    i13 = 255;
                                                                                                                    if (i57 != 255) {
                                                                                                                        l0.b0.l0(iArr[i57][1], 1);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    i13 = 255;
                                                                                                                }
                                                                                                                this.f5866n = i13;
                                                                                                            }
                                                                                                        }
                                                                                                    } else if ((b14 & 255) == 1) {
                                                                                                        if (u0.b.D == 11) {
                                                                                                            z.k.s(227, 198, 2, 169, 44);
                                                                                                            z.k.s(227, 198, 2, 169, 0);
                                                                                                        } else {
                                                                                                            l0.b0.l0(16, 0);
                                                                                                            l0.b0.l0(16, 1);
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            } else if ((b14 & 255) == 1) {
                                                                                                z.k.s(227, 198, 2, 169, 32);
                                                                                                z.k.s(227, 198, 2, 169, 0);
                                                                                            }
                                                                                        }
                                                                                        if ((b14 & 255) == 1) {
                                                                                            if (this.f5871s != 2 || u0.b.D != 11) {
                                                                                                l0.b0.l0(16, 0);
                                                                                                l0.b0.l0(16, 1);
                                                                                            } else if (this.f5872t == 1) {
                                                                                                z.k.s(227, 198, 2, 169, 35);
                                                                                                z.k.s(227, 198, 2, 169, 0);
                                                                                            } else {
                                                                                                z.k.s(227, 198, 2, 169, 36);
                                                                                                z.k.s(227, 198, 2, 169, 0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    } else if ((b14 & 255) == 1) {
                                                                                        int i58 = this.f5871s;
                                                                                        if (i58 == 1 && u0.b.D == 11) {
                                                                                            z.k.s(227, 198, 2, 169, 7);
                                                                                            z.k.s(227, 198, 2, 169, 0);
                                                                                        } else if (i58 == 2 && u0.b.D == 11) {
                                                                                            z.k.s(227, 198, 2, 169, 33);
                                                                                            z.k.s(227, 198, 2, 169, 0);
                                                                                        } else if (h0.c.E != 4) {
                                                                                            l0.b0.l0(3, 0);
                                                                                            l0.b0.l0(3, 1);
                                                                                        } else {
                                                                                            l0.b0.l0(18, 0);
                                                                                            l0.b0.l0(18, 1);
                                                                                        }
                                                                                    }
                                                                                } else if ((b14 & 255) == 1) {
                                                                                    int i59 = this.f5871s;
                                                                                    if (i59 == 1 && u0.b.D == 11) {
                                                                                        z.k.s(227, 198, 2, 169, 6);
                                                                                        z.k.s(227, 198, 2, 169, 0);
                                                                                    } else if (i59 == 2 && u0.b.D == 11) {
                                                                                        z.k.s(227, 198, 2, 169, 34);
                                                                                        z.k.s(227, 198, 2, 169, 0);
                                                                                    } else {
                                                                                        int i60 = h0.c.E;
                                                                                        if (i60 == 3 || i60 == 4 || i60 == 5) {
                                                                                            l0.b0.l0(26, 0);
                                                                                            l0.b0.l0(26, 1);
                                                                                        } else {
                                                                                            l0.b0.l0(4, 0);
                                                                                            l0.b0.l0(4, 1);
                                                                                        }
                                                                                    }
                                                                                }
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
                            }
                            int i61 = u0.b.D;
                            if (i61 == 1) {
                                for (int i62 = 0; i62 < (this.f5862j & 255); i62++) {
                                    l0.b0.l0(3, 0);
                                }
                                l0.b0.l0(3, 1);
                            } else {
                                if (i61 == 11) {
                                    for (int i63 = 255; i14 < (this.f5862j & i63); i63 = 255) {
                                        z.k.s(227, 198, 2, 169, 7);
                                        z.k.s(227, 198, 2, 169, 0);
                                        i14++;
                                    }
                                } else {
                                    for (int i64 = 0; i64 < (this.f5862j & 255); i64++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                }
                            }
                        }
                        int i65 = u0.b.D;
                        if (i65 == 1) {
                            for (int i66 = 0; i66 < (this.f5862j & 255); i66++) {
                                l0.b0.l0(4, 0);
                            }
                            l0.b0.l0(4, 1);
                        } else {
                            if (i65 == 11) {
                                for (int i67 = 255; i14 < (this.f5862j & i67); i67 = 255) {
                                    z.k.s(227, 198, 2, 169, 6);
                                    z.k.s(227, 198, 2, 169, 0);
                                    i14++;
                                }
                            } else {
                                for (int i68 = 0; i68 < (this.f5862j & 255); i68++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                            }
                        }
                        break;
                    } else if (nt.a() && (i11 = this.f5862j) == 1) {
                        int i69 = this.f5871s;
                        if (i69 == 1 && u0.b.D == 11) {
                            z.k.s(227, 198, 2, 169, 6);
                            z.k.s(227, 198, 2, 169, 0);
                        } else if (i69 == 2 && u0.b.D == 11) {
                            z.k.s(227, 198, 2, 169, 34);
                            z.k.s(227, 198, 2, 169, 0);
                        } else if (u0.b.D == 12) {
                            if (i11 == 0) {
                                z.k.s(227, 198, 2, 161, 9);
                            }
                        } else if (i11 == 1) {
                            int i70 = h0.c.E;
                            if (i70 == 3 || i70 == 4 || i70 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else if (u0.i.l3().r3()) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(4, 0);
                                l0.b0.l0(4, 1);
                            }
                        }
                        break;
                    }
                } else if (nt.a() && (i10 = this.f5862j) == 1) {
                    int i71 = this.f5871s;
                    if (i71 == 1 && u0.b.D == 11) {
                        z.k.s(227, 198, 2, 169, 7);
                        z.k.s(227, 198, 2, 169, 0);
                    } else if (i71 == 2 && u0.b.D == 11) {
                        z.k.s(227, 198, 2, 169, 33);
                        z.k.s(227, 198, 2, 169, 0);
                    } else if (u0.b.D == 12) {
                        z.k.s(227, 198, 2, 161, 9);
                    } else if (i10 == 1) {
                        if (h0.c.E == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                    break;
                }
                break;
            case 33:
                int i72 = nt.f8637c;
                if (i72 != 51 && i72 != 52 && i72 != 53 && i72 != 54 && i72 != 41 && i72 != 42 && i72 != 43 && i72 != 44 && i72 != 114 && i72 != 115 && i72 != 116 && i72 != 117) {
                    int i73 = bArr[i2 + 2] & 255;
                    int i74 = bArr[i2 + 3] & 255;
                    int i75 = bArr[i2 + 4] & 255;
                    int i76 = bArr[i2 + 5] & 255;
                    int i77 = bArr[i2 + 6] & 255;
                    int[] iArr2 = new int[1];
                    iArr2[0] = (i73 & 128) == 0 ? 0 : 1;
                    qt.y0(10, iArr2);
                    int[] iArr3 = new int[1];
                    iArr3[0] = (i73 & 64) == 0 ? 0 : 1;
                    qt.y0(11, iArr3);
                    int[] iArr4 = new int[1];
                    iArr4[0] = (i73 & 32) == 0 ? 0 : 1;
                    qt.y0(12, iArr4);
                    int[] iArr5 = new int[1];
                    iArr5[0] = (i73 & 8) == 0 ? 0 : 1;
                    qt.y0(13, iArr5);
                    int[] iArr6 = new int[1];
                    iArr6[0] = (i73 & 4) == 0 ? 0 : 1;
                    qt.y0(14, iArr6);
                    int[] iArr7 = new int[1];
                    iArr7[0] = (i73 & 2) == 0 ? 0 : 1;
                    qt.y0(15, iArr7);
                    int[] iArr8 = new int[1];
                    iArr8[0] = (i73 & 1) == 0 ? 0 : 1;
                    qt.y0(16, iArr8);
                    int[] iArr9 = new int[1];
                    iArr9[0] = (i74 & 128) == 0 ? 0 : 1;
                    qt.y0(18, iArr9);
                    int[] iArr10 = new int[1];
                    iArr10[0] = (i74 & 64) == 0 ? 0 : 1;
                    qt.y0(19, iArr10);
                    int[] iArr11 = new int[1];
                    iArr11[0] = (i74 & 32) == 0 ? 0 : 1;
                    qt.y0(20, iArr11);
                    int[] iArr12 = new int[1];
                    iArr12[0] = (i74 & 16) == 0 ? 0 : 1;
                    qt.y0(79, iArr12);
                    int i78 = i74 & 15;
                    if (i78 > 7) {
                        i78 = 7;
                    }
                    qt.y0(21, i78);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        if (i75 == 0) {
                            qt.y0(28, 1048576);
                        } else if (i75 == 127) {
                            qt.y0(28, 1048577);
                        } else if (i75 == 255) {
                            qt.y0(28, 1048578);
                        } else if (i75 >= 30 && i75 <= 59) {
                            if (nt.f8645g[37] != 0) {
                                qt.y0(28, (i75 * 9) + 320);
                            } else {
                                qt.y0(28, i75 * 5);
                            }
                        }
                        if (i76 == 0) {
                            qt.y0(27, 1048576);
                        } else if (i76 == 127) {
                            qt.y0(27, 1048577);
                        } else if (i76 == 255) {
                            qt.y0(27, 1048578);
                        } else if (i76 >= 30 && i76 <= 59) {
                            if (nt.f8645g[37] != 0) {
                                qt.y0(27, (i76 * 9) + 320);
                            } else {
                                qt.y0(27, i76 * 5);
                            }
                        }
                    } else {
                        if (i75 == 0) {
                            qt.y0(27, 1048576);
                        } else if (i75 == 127) {
                            qt.y0(27, 1048577);
                        } else if (i75 == 255) {
                            qt.y0(27, 1048578);
                        } else if (i75 >= 30 && i75 <= 59) {
                            if (nt.f8645g[37] != 0) {
                                qt.y0(27, (i75 * 9) + 320);
                            } else {
                                qt.y0(27, i75 * 5);
                            }
                        }
                        if (i76 == 0) {
                            qt.y0(28, 1048576);
                        } else if (i76 == 127) {
                            qt.y0(28, 1048577);
                        } else if (i76 == 255) {
                            qt.y0(28, 1048578);
                        } else if (i76 >= 30 && i76 <= 59) {
                            if (nt.f8645g[37] != 0) {
                                qt.y0(28, (i76 * 9) + 320);
                            } else {
                                qt.y0(28, i76 * 5);
                            }
                        }
                    }
                    int[] iArr13 = new int[1];
                    iArr13[0] = (i77 & 4) == 0 ? 0 : 1;
                    qt.y0(53, iArr13);
                    int[] iArr14 = new int[1];
                    iArr14[0] = (i77 & 8) == 0 ? 0 : 1;
                    qt.y0(66, iArr14);
                    int[] iArr15 = new int[1];
                    iArr15[0] = (i77 & 64) == 0 ? 0 : 1;
                    qt.y0(37, iArr15);
                    int[] iArr16 = new int[1];
                    iArr16[0] = (i77 & 32) == 0 ? 0 : 1;
                    qt.y0(65, iArr16);
                    int[] iArr17 = new int[1];
                    iArr17[0] = (i77 & 16) == 0 ? 0 : 1;
                    qt.y0(67, iArr17);
                    int[] iArr18 = new int[1];
                    iArr18[0] = (i77 & 128) == 0 ? 0 : 1;
                    qt.y0(42, iArr18);
                    int i79 = i2 + 10;
                    qt.y0(29, (bArr[i79] >> 0) & 15);
                    qt.y0(30, (bArr[i79] >> 4) & 15);
                    qt.y0(40, bArr[i2 + 9] & 255);
                    qt.y0(44, bArr[i2 + 8] & 255);
                    if (nt.a()) {
                        int i80 = bArr[i2 + 7] & 255;
                        if (i80 == 0) {
                            u0.d.A3(0);
                        } else {
                            boolean z2 = (i80 & 128) != 0;
                            u0.d.B3((nt.f8645g[37] == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? ((z2 ? 1320 - ((256 - i80) * 18) : ((i80 & 255) * 18) + 1320) | 268435456) & (-1) : z2 ? 1000 - ((256 - i80) * 10) : ((i80 & 255) * 10) + 1000);
                        }
                    }
                    break;
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.R0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.R0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.R0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.R0(bArr[i2 + 5] & 255));
                    u0.d.H2(l0.c0.R0(bArr[i2 + 6] & 255));
                    u0.d.J2(l0.c0.R0(bArr[i2 + 7] & 255));
                    u0.d.P2(l0.c0.R0(bArr[i2 + 8] & 255));
                    u0.d.N2(l0.c0.R0(bArr[i2 + 9] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i81 = i2 + 2;
                    int i82 = bArr[i81] & 255;
                    int i83 = i2 + 3;
                    int i84 = bArr[i83] & 255;
                    int i85 = i2 + 4;
                    int i86 = bArr[i85] & 255;
                    int i87 = i2 + 5;
                    int i88 = bArr[i87] & 255;
                    if (u0.b.f17347o == 0) {
                        if (l0.c0.f13013g != i82 || l0.c0.f13014h != i84 || l0.c0.f13015i != i86 || l0.c0.f13016j != i88) {
                            if (i82 != 0 || i84 != 0 || i86 != 0 || i88 != 0) {
                                u0.d.C2(1);
                            } else if (u0.b.f17350p == 1) {
                                l0.c0.f13017k = 2;
                                l0.b0.b(l0.c0.f13018l);
                            }
                        }
                        l0.c0.f13013g = i82;
                        l0.c0.f13014h = i84;
                        l0.c0.f13015i = i86;
                        l0.c0.f13016j = i88;
                    }
                    u0.d.D2(l0.c0.R0(bArr[i81] & 255));
                    u0.d.E2(l0.c0.R0(bArr[i83] & 255));
                    u0.d.F2(l0.c0.R0(bArr[i85] & 255));
                    u0.d.G2(l0.c0.R0(bArr[i87] & 255));
                    u0.d.O2(l0.c0.R0(bArr[i2 + 6] & 255));
                    u0.d.I2(l0.c0.R0(bArr[i2 + 7] & 255));
                    u0.d.Q2(l0.c0.R0(bArr[i2 + 9] & 255));
                    u0.d.K2(l0.c0.R0(bArr[i2 + 8] & 255));
                }
                break;
            case 36:
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 4];
                byte b17 = bArr[i2 + 5];
                byte b18 = bArr[i2 + 6];
                byte b19 = bArr[i2 + 7];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b15 >> 7) & 1);
                    qt.y0(2, (b15 >> 6) & 1);
                } else {
                    qt.y0(1, (b15 >> 6) & 1);
                    qt.y0(2, (b15 >> 7) & 1);
                }
                qt.y0(4, (b15 >> 5) & 1);
                qt.y0(3, (b15 >> 4) & 1);
                qt.y0(5, (b15 >> 3) & 1);
                qt.y0(0, (b15 >> 2) & 1);
                qt.y0(119, (b16 >> 7) & 1);
                qt.y0(128, (b16 >> 6) & 1);
                qt.y0(129, (b16 >> 5) & 1);
                qt.y0(120, (b16 >> 4) & 1);
                qt.y0(117, (b16 >> 3) & 1);
                qt.y0(116, (b16 >> 2) & 1);
                qt.y0(121, (b16 >> 1) & 1);
                qt.y0(115, (b16 >> 0) & 1);
                int i89 = (b19 >> 3) & 1;
                qt.y0(130, i89);
                int i90 = (b19 >> 1) & 1;
                qt.y0(131, i90);
                int i91 = (b19 >> 0) & 1;
                qt.y0(124, i91);
                int i92 = (b19 >> 2) & 1;
                qt.y0(122, i92);
                qt.y0(132, (b17 >> 6) & 3);
                qt.y0(133, (b17 >> 5) & 1);
                qt.y0(134, (b17 >> 3) & 3);
                qt.y0(135, (b17 >> 2) & 1);
                qt.y0(136, (b17 >> 1) & 1);
                qt.y0(137, (b17 >> 0) & 1);
                qt.y0(138, (b18 >> 6) & 3);
                qt.y0(139, (b18 >> 5) & 1);
                qt.y0(140, (b18 >> 4) & 1);
                qt.y0(141, (b18 >> 2) & 3);
                qt.y0(158, (b19 >> 4) & 1);
                qt.y0(248, i89);
                qt.y0(249, i92);
                qt.y0(250, i90);
                qt.y0(251, i91);
                int i93 = i2 + 8;
                qt.y0(252, (bArr[i93] >> 7) & 1);
                qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i93] >> 6) & 1);
                qt.y0(254, (bArr[i93] >> 5) & 1);
                qt.y0(257, (bArr[i2 + 9] >> 0) & 255);
                break;
            default:
                switch (b2) {
                    case 40:
                        int i94 = bArr[i2 + 2] & 255;
                        if (i94 == 48) {
                            qt.y0(219, bArr[i2 + 3] & 255);
                            break;
                        } else if (i94 == 64) {
                            qt.y0(220, bArr[i2 + 3] & 255);
                            break;
                        } else if (i94 == 128) {
                            qt.y0(i.a.Theme_actionModeFindDrawable, bArr[i2 + 3] & 255);
                            break;
                        } else {
                            switch (i94) {
                                case 0:
                                    qt.y0(200, bArr[i2 + 3] & 255);
                                    break;
                                case 1:
                                    qt.y0(201, bArr[i2 + 3] & 255);
                                    break;
                                case 2:
                                    qt.y0(202, bArr[i2 + 3] & 255);
                                    break;
                                case 3:
                                    qt.y0(203, bArr[i2 + 3] & 255);
                                    break;
                                case 4:
                                    qt.y0(204, bArr[i2 + 3] & 255);
                                    break;
                                case 5:
                                    qt.y0(205, bArr[i2 + 3] & 255);
                                    break;
                                case 6:
                                    qt.y0(206, bArr[i2 + 3] & 255);
                                    break;
                                case 7:
                                    qt.y0(207, bArr[i2 + 3] & 255);
                                    break;
                                default:
                                    switch (i94) {
                                        case 16:
                                            qt.y0(208, bArr[i2 + 3] & 255);
                                            break;
                                        case 17:
                                            qt.y0(209, bArr[i2 + 3] & 255);
                                            break;
                                        case 18:
                                            qt.y0(210, bArr[i2 + 3] & 255);
                                            break;
                                        case 19:
                                            qt.y0(211, bArr[i2 + 3] & 255);
                                            break;
                                        case 20:
                                            qt.y0(212, bArr[i2 + 3] & 255);
                                            break;
                                        default:
                                            switch (i94) {
                                                case 32:
                                                    qt.y0(213, bArr[i2 + 3] & 255);
                                                    break;
                                                case 33:
                                                    qt.y0(214, bArr[i2 + 3] & 255);
                                                    break;
                                                case 34:
                                                    qt.y0(215, bArr[i2 + 3] & 255);
                                                    break;
                                                case 35:
                                                    qt.y0(216, bArr[i2 + 3] & 255);
                                                    break;
                                                case 36:
                                                    qt.y0(217, bArr[i2 + 3] & 255);
                                                    break;
                                                case 37:
                                                    qt.y0(218, bArr[i2 + 3] & 255);
                                                    break;
                                                default:
                                                    switch (i94) {
                                                        case 80:
                                                            qt.y0(221, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 81:
                                                            qt.y0(222, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 82:
                                                            qt.y0(223, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 83:
                                                            qt.y0(224, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 84:
                                                            qt.y0(225, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 85:
                                                            qt.y0(226, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 86:
                                                            qt.y0(227, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 87:
                                                            qt.y0(228, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 88:
                                                            qt.y0(229, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 89:
                                                            qt.y0(230, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 90:
                                                            qt.y0(231, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 91:
                                                            qt.y0(232, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 92:
                                                            qt.y0(233, bArr[i2 + 3] & 255);
                                                            break;
                                                        default:
                                                            switch (i94) {
                                                                case 96:
                                                                    qt.y0(234, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 97:
                                                                    qt.y0(235, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 98:
                                                                    qt.y0(236, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 99:
                                                                    qt.y0(237, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 100:
                                                                    qt.y0(238, bArr[i2 + 3] & 255);
                                                                    break;
                                                                default:
                                                                    switch (i94) {
                                                                        case 112:
                                                                            qt.y0(239, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 113:
                                                                            qt.y0(240, bArr[i2 + 3] & 255);
                                                                            break;
                                                                        case 114:
                                                                            qt.y0(i.a.Theme_actionModeShareDrawable, bArr[i2 + 3] & 255);
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
                    case 41:
                        int i95 = nt.f8637c;
                        if (i95 == 59 || i95 == 60 || i95 == 61) {
                            byte b20 = bArr[i2 + 2];
                            byte b21 = bArr[i2 + 3];
                            if (!this.f5873u) {
                                qt.i(b20, b21, true, 19918);
                            }
                        } else {
                            byte b22 = bArr[i2 + 2];
                            byte b23 = bArr[i2 + 3];
                            if (!this.f5873u) {
                                qt.i(b23, b22, true, 540);
                            }
                        }
                        break;
                    case 42:
                        byte b24 = bArr[i2 + 2];
                        int i96 = (b24 >> 1) & 1;
                        int[][] iArr19 = this.S;
                        if (iArr19[0][1] != i96) {
                            iArr19[0][1] = i96;
                            o1.x[] xVarArr = nt.f8643f;
                            int[] iArr20 = new int[2];
                            iArr20[0] = 0;
                            iArr20[1] = i96 == 0 ? -1 : 1;
                            o1.x.B(xVarArr, 111, iArr20);
                        }
                        int i97 = (b24 >> 2) & 1;
                        int[][] iArr21 = this.S;
                        if (iArr21[0][2] != i97) {
                            iArr21[0][2] = i97;
                            o1.x[] xVarArr2 = nt.f8643f;
                            int[] iArr22 = new int[2];
                            iArr22[0] = 0;
                            iArr22[1] = i97 == 0 ? -1 : 2;
                            o1.x.B(xVarArr2, 111, iArr22);
                        }
                        int i98 = (b24 >> 3) & 1;
                        int[][] iArr23 = this.S;
                        if (iArr23[0][3] != i98) {
                            iArr23[0][3] = i98;
                            o1.x[] xVarArr3 = nt.f8643f;
                            int[] iArr24 = new int[2];
                            iArr24[0] = 0;
                            iArr24[1] = i98 == 0 ? -1 : 3;
                            o1.x.B(xVarArr3, 111, iArr24);
                        }
                        int i99 = (b24 >> 4) & 1;
                        int[][] iArr25 = this.S;
                        if (iArr25[0][4] != i99) {
                            iArr25[0][4] = i99;
                            o1.x[] xVarArr4 = nt.f8643f;
                            int[] iArr26 = new int[2];
                            iArr26[0] = 0;
                            iArr26[1] = i99 == 0 ? -1 : 4;
                            o1.x.B(xVarArr4, 111, iArr26);
                        }
                        int i100 = (b24 >> 5) & 1;
                        int[][] iArr27 = this.S;
                        if (iArr27[0][5] != i100) {
                            iArr27[0][5] = i100;
                            o1.x[] xVarArr5 = nt.f8643f;
                            int[] iArr28 = new int[2];
                            iArr28[0] = 0;
                            iArr28[1] = i100 == 0 ? -1 : 5;
                            o1.x.B(xVarArr5, 111, iArr28);
                        }
                        int i101 = (b24 >> 6) & 1;
                        int[][] iArr29 = this.S;
                        if (iArr29[0][6] != i101) {
                            iArr29[0][6] = i101;
                            o1.x[] xVarArr6 = nt.f8643f;
                            int[] iArr30 = new int[2];
                            iArr30[0] = 0;
                            iArr30[1] = i101 == 0 ? -1 : 6;
                            o1.x.B(xVarArr6, 111, iArr30);
                        }
                        int i102 = (b24 >> 7) & 1;
                        int[][] iArr31 = this.S;
                        if (iArr31[0][7] != i102) {
                            iArr31[0][7] = i102;
                            o1.x[] xVarArr7 = nt.f8643f;
                            int[] iArr32 = new int[2];
                            iArr32[0] = 0;
                            iArr32[1] = i102 == 0 ? -1 : 7;
                            o1.x.B(xVarArr7, 111, iArr32);
                        }
                        byte b25 = bArr[i2 + 3];
                        int i103 = b25 & 1;
                        int[][] iArr33 = this.S;
                        if (iArr33[1][0] != i103) {
                            iArr33[1][0] = i103;
                            o1.x[] xVarArr8 = nt.f8643f;
                            int[] iArr34 = new int[2];
                            iArr34[0] = 1;
                            iArr34[1] = i103 == 0 ? -1 : 0;
                            o1.x.B(xVarArr8, 111, iArr34);
                        }
                        int i104 = (b25 >> 1) & 1;
                        int[][] iArr35 = this.S;
                        if (iArr35[1][1] != i104) {
                            iArr35[1][1] = i104;
                            o1.x[] xVarArr9 = nt.f8643f;
                            int[] iArr36 = new int[2];
                            iArr36[0] = 1;
                            iArr36[1] = i104 == 0 ? -1 : 1;
                            o1.x.B(xVarArr9, 111, iArr36);
                        }
                        int i105 = (b25 >> 2) & 1;
                        int[][] iArr37 = this.S;
                        if (iArr37[1][2] != i105) {
                            iArr37[1][2] = i105;
                            o1.x[] xVarArr10 = nt.f8643f;
                            int[] iArr38 = new int[2];
                            iArr38[0] = 1;
                            iArr38[1] = i105 == 0 ? -1 : 2;
                            o1.x.B(xVarArr10, 111, iArr38);
                        }
                        int i106 = (b25 >> 3) & 1;
                        int[][] iArr39 = this.S;
                        if (iArr39[1][3] != i106) {
                            iArr39[1][3] = i106;
                            o1.x[] xVarArr11 = nt.f8643f;
                            int[] iArr40 = new int[2];
                            iArr40[0] = 1;
                            iArr40[1] = i106 == 0 ? -1 : 3;
                            o1.x.B(xVarArr11, 111, iArr40);
                        }
                        int i107 = (b25 >> 4) & 1;
                        int[][] iArr41 = this.S;
                        if (iArr41[1][4] != i107) {
                            iArr41[1][4] = i107;
                            o1.x[] xVarArr12 = nt.f8643f;
                            int[] iArr42 = new int[2];
                            iArr42[0] = 1;
                            iArr42[1] = i107 == 0 ? -1 : 4;
                            o1.x.B(xVarArr12, 111, iArr42);
                        }
                        int i108 = (b25 >> 5) & 1;
                        int[][] iArr43 = this.S;
                        if (iArr43[1][5] != i108) {
                            iArr43[1][5] = i108;
                            o1.x[] xVarArr13 = nt.f8643f;
                            int[] iArr44 = new int[2];
                            iArr44[0] = 1;
                            iArr44[1] = i108 == 0 ? -1 : 5;
                            o1.x.B(xVarArr13, 111, iArr44);
                        }
                        int i109 = (b25 >> 6) & 1;
                        int[][] iArr45 = this.S;
                        if (iArr45[1][6] != i109) {
                            iArr45[1][6] = i109;
                            o1.x[] xVarArr14 = nt.f8643f;
                            int[] iArr46 = new int[2];
                            iArr46[0] = 1;
                            iArr46[1] = i109 == 0 ? -1 : 6;
                            o1.x.B(xVarArr14, 111, iArr46);
                        }
                        byte b26 = bArr[i2 + 4];
                        int i110 = b26 & 1;
                        int[][] iArr47 = this.S;
                        if (iArr47[2][0] != i110) {
                            iArr47[2][0] = i110;
                            o1.x[] xVarArr15 = nt.f8643f;
                            int[] iArr48 = new int[2];
                            iArr48[0] = 2;
                            iArr48[1] = i110 == 0 ? -1 : 0;
                            o1.x.B(xVarArr15, 111, iArr48);
                        }
                        int i111 = (b26 >> 1) & 1;
                        int[][] iArr49 = this.S;
                        if (iArr49[2][1] != i111) {
                            iArr49[2][1] = i111;
                            o1.x[] xVarArr16 = nt.f8643f;
                            int[] iArr50 = new int[2];
                            iArr50[0] = 2;
                            iArr50[1] = i111 == 0 ? -1 : 1;
                            o1.x.B(xVarArr16, 111, iArr50);
                        }
                        int i112 = (b26 >> 2) & 1;
                        int[][] iArr51 = this.S;
                        if (iArr51[2][2] != i112) {
                            iArr51[2][2] = i112;
                            o1.x[] xVarArr17 = nt.f8643f;
                            int[] iArr52 = new int[2];
                            iArr52[0] = 2;
                            iArr52[1] = i112 == 0 ? -1 : 2;
                            o1.x.B(xVarArr17, 111, iArr52);
                        }
                        int i113 = (b26 >> 3) & 1;
                        int[][] iArr53 = this.S;
                        if (iArr53[2][3] != i113) {
                            iArr53[2][3] = i113;
                            o1.x[] xVarArr18 = nt.f8643f;
                            int[] iArr54 = new int[2];
                            iArr54[0] = 2;
                            iArr54[1] = i113 == 0 ? -1 : 3;
                            o1.x.B(xVarArr18, 111, iArr54);
                        }
                        int i114 = (b26 >> 4) & 1;
                        int[][] iArr55 = this.S;
                        if (iArr55[2][4] != i114) {
                            iArr55[2][4] = i114;
                            o1.x[] xVarArr19 = nt.f8643f;
                            int[] iArr56 = new int[2];
                            iArr56[0] = 2;
                            iArr56[1] = i114 == 0 ? -1 : 4;
                            o1.x.B(xVarArr19, 111, iArr56);
                        }
                        int i115 = (b26 >> 5) & 1;
                        int[][] iArr57 = this.S;
                        if (iArr57[2][5] != i115) {
                            iArr57[2][5] = i115;
                            o1.x[] xVarArr20 = nt.f8643f;
                            int[] iArr58 = new int[2];
                            iArr58[0] = 2;
                            iArr58[1] = i115 == 0 ? -1 : 5;
                            o1.x.B(xVarArr20, 111, iArr58);
                        }
                        int i116 = (b26 >> 7) & 1;
                        int[][] iArr59 = this.S;
                        if (iArr59[2][7] != i116) {
                            iArr59[2][7] = i116;
                            o1.x[] xVarArr21 = nt.f8643f;
                            int[] iArr60 = new int[2];
                            iArr60[0] = 2;
                            iArr60[1] = i116 == 0 ? -1 : 7;
                            o1.x.B(xVarArr21, 111, iArr60);
                        }
                        byte b27 = bArr[i2 + 5];
                        int i117 = b27 & 1;
                        int[][] iArr61 = this.S;
                        if (iArr61[3][0] != i117) {
                            iArr61[3][0] = i117;
                            o1.x[] xVarArr22 = nt.f8643f;
                            int[] iArr62 = new int[2];
                            iArr62[0] = 3;
                            iArr62[1] = i117 == 0 ? -1 : 0;
                            o1.x.B(xVarArr22, 111, iArr62);
                        }
                        int i118 = (b27 >> 1) & 1;
                        int[][] iArr63 = this.S;
                        if (iArr63[3][1] != i118) {
                            iArr63[3][1] = i118;
                            o1.x[] xVarArr23 = nt.f8643f;
                            int[] iArr64 = new int[2];
                            iArr64[0] = 3;
                            iArr64[1] = i118 == 0 ? -1 : 1;
                            o1.x.B(xVarArr23, 111, iArr64);
                        }
                        int i119 = (b27 >> 2) & 1;
                        int[][] iArr65 = this.S;
                        if (iArr65[3][2] != i119) {
                            iArr65[3][2] = i119;
                            o1.x[] xVarArr24 = nt.f8643f;
                            int[] iArr66 = new int[2];
                            iArr66[0] = 3;
                            iArr66[1] = i119 == 0 ? -1 : 2;
                            o1.x.B(xVarArr24, 111, iArr66);
                        }
                        int i120 = (b27 >> 3) & 1;
                        int[][] iArr67 = this.S;
                        if (iArr67[3][3] != i120) {
                            iArr67[3][3] = i120;
                            o1.x[] xVarArr25 = nt.f8643f;
                            int[] iArr68 = new int[2];
                            iArr68[0] = 3;
                            iArr68[1] = i120 == 0 ? -1 : 3;
                            o1.x.B(xVarArr25, 111, iArr68);
                        }
                        int i121 = (b27 >> 4) & 1;
                        int[][] iArr69 = this.S;
                        if (iArr69[3][4] != i121) {
                            iArr69[3][4] = i121;
                            o1.x[] xVarArr26 = nt.f8643f;
                            int[] iArr70 = new int[2];
                            iArr70[0] = 3;
                            iArr70[1] = i121 == 0 ? -1 : 4;
                            o1.x.B(xVarArr26, 111, iArr70);
                        }
                        int i122 = (b27 >> 5) & 1;
                        int[][] iArr71 = this.S;
                        if (iArr71[3][5] != i122) {
                            iArr71[3][5] = i122;
                            o1.x[] xVarArr27 = nt.f8643f;
                            int[] iArr72 = new int[2];
                            iArr72[0] = 3;
                            iArr72[1] = i122 == 0 ? -1 : 5;
                            o1.x.B(xVarArr27, 111, iArr72);
                        }
                        int i123 = (b27 >> 6) & 1;
                        int[][] iArr73 = this.S;
                        if (iArr73[3][6] != i123) {
                            iArr73[3][6] = i123;
                            o1.x[] xVarArr28 = nt.f8643f;
                            int[] iArr74 = new int[2];
                            iArr74[0] = 3;
                            iArr74[1] = i123 == 0 ? -1 : 6;
                            o1.x.B(xVarArr28, 111, iArr74);
                        }
                        int i124 = (b27 >> 7) & 1;
                        int[][] iArr75 = this.S;
                        if (iArr75[3][7] != i124) {
                            iArr75[3][7] = i124;
                            o1.x[] xVarArr29 = nt.f8643f;
                            int[] iArr76 = new int[2];
                            iArr76[0] = 3;
                            iArr76[1] = i124 == 0 ? -1 : 7;
                            o1.x.B(xVarArr29, 111, iArr76);
                        }
                        byte b28 = bArr[i2 + 6];
                        int i125 = b28 & 1;
                        int[][] iArr77 = this.S;
                        if (iArr77[4][0] != i125) {
                            iArr77[4][0] = i125;
                            o1.x[] xVarArr30 = nt.f8643f;
                            int[] iArr78 = new int[2];
                            iArr78[0] = 4;
                            iArr78[1] = i125 == 0 ? -1 : 0;
                            o1.x.B(xVarArr30, 111, iArr78);
                        }
                        int i126 = (b28 >> 1) & 1;
                        int[][] iArr79 = this.S;
                        if (iArr79[4][1] != i126) {
                            iArr79[4][1] = i126;
                            o1.x[] xVarArr31 = nt.f8643f;
                            int[] iArr80 = new int[2];
                            iArr80[0] = 4;
                            iArr80[1] = i126 == 0 ? -1 : 1;
                            o1.x.B(xVarArr31, 111, iArr80);
                        }
                        int i127 = (b28 >> 2) & 1;
                        int[][] iArr81 = this.S;
                        if (iArr81[4][2] != i127) {
                            iArr81[4][2] = i127;
                            o1.x[] xVarArr32 = nt.f8643f;
                            int[] iArr82 = new int[2];
                            iArr82[0] = 4;
                            iArr82[1] = i127 == 0 ? -1 : 2;
                            o1.x.B(xVarArr32, 111, iArr82);
                        }
                        int i128 = (b28 >> 3) & 1;
                        int[][] iArr83 = this.S;
                        if (iArr83[4][3] != i128) {
                            iArr83[4][3] = i128;
                            o1.x[] xVarArr33 = nt.f8643f;
                            int[] iArr84 = new int[2];
                            iArr84[0] = 4;
                            iArr84[1] = i128 == 0 ? -1 : 3;
                            o1.x.B(xVarArr33, 111, iArr84);
                        }
                        int i129 = (b28 >> 4) & 1;
                        int[][] iArr85 = this.S;
                        if (iArr85[4][4] != i129) {
                            iArr85[4][4] = i129;
                            o1.x[] xVarArr34 = nt.f8643f;
                            int[] iArr86 = new int[2];
                            iArr86[0] = 4;
                            iArr86[1] = i129 == 0 ? -1 : 4;
                            o1.x.B(xVarArr34, 111, iArr86);
                        }
                        int i130 = (b28 >> 5) & 1;
                        int[][] iArr87 = this.S;
                        if (iArr87[4][5] != i130) {
                            iArr87[4][5] = i130;
                            o1.x[] xVarArr35 = nt.f8643f;
                            int[] iArr88 = new int[2];
                            iArr88[0] = 4;
                            iArr88[1] = i130 == 0 ? -1 : 5;
                            o1.x.B(xVarArr35, 111, iArr88);
                        }
                        int i131 = (b28 >> 6) & 1;
                        int[][] iArr89 = this.S;
                        if (iArr89[4][6] != i131) {
                            iArr89[4][6] = i131;
                            o1.x[] xVarArr36 = nt.f8643f;
                            int[] iArr90 = new int[2];
                            iArr90[0] = 4;
                            iArr90[1] = i131 == 0 ? -1 : 6;
                            o1.x.B(xVarArr36, 111, iArr90);
                        }
                        int i132 = (b28 >> 7) & 1;
                        int[][] iArr91 = this.S;
                        if (iArr91[4][7] != i132) {
                            iArr91[4][7] = i132;
                            o1.x[] xVarArr37 = nt.f8643f;
                            int[] iArr92 = new int[2];
                            iArr92[0] = 4;
                            iArr92[1] = i132 == 0 ? -1 : 7;
                            o1.x.B(xVarArr37, 111, iArr92);
                        }
                        byte b29 = bArr[i2 + 7];
                        int i133 = b29 & 1;
                        int[][] iArr93 = this.S;
                        if (iArr93[5][0] != i133) {
                            iArr93[5][0] = i133;
                            o1.x[] xVarArr38 = nt.f8643f;
                            int[] iArr94 = new int[2];
                            iArr94[0] = 5;
                            iArr94[1] = i133 == 0 ? -1 : 0;
                            o1.x.B(xVarArr38, 111, iArr94);
                        }
                        int i134 = (b29 >> 1) & 1;
                        int[][] iArr95 = this.S;
                        if (iArr95[5][1] != i134) {
                            iArr95[5][1] = i134;
                            o1.x[] xVarArr39 = nt.f8643f;
                            int[] iArr96 = new int[2];
                            iArr96[0] = 5;
                            iArr96[1] = i134 == 0 ? -1 : 1;
                            o1.x.B(xVarArr39, 111, iArr96);
                        }
                        int i135 = (b29 >> 2) & 1;
                        int[][] iArr97 = this.S;
                        if (iArr97[5][2] != i135) {
                            iArr97[5][2] = i135;
                            o1.x[] xVarArr40 = nt.f8643f;
                            int[] iArr98 = new int[2];
                            iArr98[0] = 5;
                            iArr98[1] = i135 == 0 ? -1 : 2;
                            o1.x.B(xVarArr40, 111, iArr98);
                        }
                        int i136 = (b29 >> 3) & 1;
                        int[][] iArr99 = this.S;
                        if (iArr99[5][3] != i136) {
                            iArr99[5][3] = i136;
                            o1.x[] xVarArr41 = nt.f8643f;
                            int[] iArr100 = new int[2];
                            iArr100[0] = 5;
                            iArr100[1] = i136 == 0 ? -1 : 3;
                            o1.x.B(xVarArr41, 111, iArr100);
                        }
                        int i137 = (b29 >> 4) & 1;
                        int[][] iArr101 = this.S;
                        if (iArr101[5][4] != i137) {
                            iArr101[5][4] = i137;
                            o1.x[] xVarArr42 = nt.f8643f;
                            int[] iArr102 = new int[2];
                            iArr102[0] = 5;
                            iArr102[1] = i137 == 0 ? -1 : 4;
                            o1.x.B(xVarArr42, 111, iArr102);
                        }
                        int i138 = (b29 >> 5) & 1;
                        int[][] iArr103 = this.S;
                        if (iArr103[5][5] != i138) {
                            iArr103[5][5] = i138;
                            o1.x[] xVarArr43 = nt.f8643f;
                            int[] iArr104 = new int[2];
                            iArr104[0] = 5;
                            iArr104[1] = i138 == 0 ? -1 : 5;
                            o1.x.B(xVarArr43, 111, iArr104);
                        }
                        int i139 = (b29 >> 6) & 1;
                        int[][] iArr105 = this.S;
                        if (iArr105[5][6] != i139) {
                            iArr105[5][6] = i139;
                            o1.x[] xVarArr44 = nt.f8643f;
                            int[] iArr106 = new int[2];
                            iArr106[0] = 5;
                            iArr106[1] = i139 == 0 ? -1 : 6;
                            o1.x.B(xVarArr44, 111, iArr106);
                        }
                        int i140 = (b29 >> 7) & 1;
                        int[][] iArr107 = this.S;
                        if (iArr107[5][7] != i140) {
                            iArr107[5][7] = i140;
                            o1.x[] xVarArr45 = nt.f8643f;
                            int[] iArr108 = new int[2];
                            iArr108[0] = 5;
                            iArr108[1] = i140 == 0 ? -1 : 7;
                            o1.x.B(xVarArr45, 111, iArr108);
                        }
                        byte b30 = bArr[i2 + 8];
                        int i141 = b30 & 1;
                        int[][] iArr109 = this.S;
                        if (iArr109[6][0] != i141) {
                            iArr109[6][0] = i141;
                            o1.x[] xVarArr46 = nt.f8643f;
                            int[] iArr110 = new int[2];
                            iArr110[0] = 6;
                            iArr110[1] = i141 == 0 ? -1 : 0;
                            o1.x.B(xVarArr46, 111, iArr110);
                        }
                        int i142 = (b30 >> 1) & 1;
                        int[][] iArr111 = this.S;
                        if (iArr111[6][1] != i142) {
                            iArr111[6][1] = i142;
                            o1.x[] xVarArr47 = nt.f8643f;
                            int[] iArr112 = new int[2];
                            iArr112[0] = 6;
                            iArr112[1] = i142 == 0 ? -1 : 1;
                            o1.x.B(xVarArr47, 111, iArr112);
                        }
                        int i143 = (b30 >> 2) & 1;
                        int[][] iArr113 = this.S;
                        if (iArr113[6][2] != i143) {
                            iArr113[6][2] = i143;
                            o1.x[] xVarArr48 = nt.f8643f;
                            int[] iArr114 = new int[2];
                            iArr114[0] = 6;
                            iArr114[1] = i143 == 0 ? -1 : 2;
                            o1.x.B(xVarArr48, 111, iArr114);
                        }
                        int i144 = (b30 >> 3) & 1;
                        int[][] iArr115 = this.S;
                        if (iArr115[6][3] != i144) {
                            iArr115[6][3] = i144;
                            o1.x[] xVarArr49 = nt.f8643f;
                            int[] iArr116 = new int[2];
                            iArr116[0] = 6;
                            iArr116[1] = i144 == 0 ? -1 : 3;
                            o1.x.B(xVarArr49, 111, iArr116);
                        }
                        int i145 = (b30 >> 4) & 1;
                        int[][] iArr117 = this.S;
                        if (iArr117[6][4] != i145) {
                            iArr117[6][4] = i145;
                            o1.x[] xVarArr50 = nt.f8643f;
                            int[] iArr118 = new int[2];
                            iArr118[0] = 6;
                            iArr118[1] = i145 == 0 ? -1 : 4;
                            o1.x.B(xVarArr50, 111, iArr118);
                        }
                        int i146 = (b30 >> 5) & 1;
                        int[][] iArr119 = this.S;
                        if (iArr119[6][5] != i146) {
                            iArr119[6][5] = i146;
                            o1.x[] xVarArr51 = nt.f8643f;
                            int[] iArr120 = new int[2];
                            iArr120[0] = 6;
                            iArr120[1] = i146 == 0 ? -1 : 5;
                            o1.x.B(xVarArr51, 111, iArr120);
                        }
                        int i147 = (b30 >> 6) & 1;
                        int[][] iArr121 = this.S;
                        if (iArr121[6][6] != i147) {
                            iArr121[6][6] = i147;
                            o1.x[] xVarArr52 = nt.f8643f;
                            int[] iArr122 = new int[2];
                            iArr122[0] = 6;
                            iArr122[1] = i147 == 0 ? -1 : 6;
                            o1.x.B(xVarArr52, 111, iArr122);
                        }
                        int i148 = (b30 >> 7) & 1;
                        int[][] iArr123 = this.S;
                        if (iArr123[6][7] != i148) {
                            iArr123[6][7] = i148;
                            o1.x[] xVarArr53 = nt.f8643f;
                            int[] iArr124 = new int[2];
                            iArr124[0] = 6;
                            iArr124[1] = i148 == 0 ? -1 : 7;
                            o1.x.B(xVarArr53, 111, iArr124);
                        }
                        byte b31 = bArr[i2 + 9];
                        int i149 = b31 & 1;
                        int[][] iArr125 = this.S;
                        if (iArr125[7][0] != i149) {
                            iArr125[7][0] = i149;
                            o1.x[] xVarArr54 = nt.f8643f;
                            int[] iArr126 = new int[2];
                            iArr126[0] = 7;
                            iArr126[1] = i149 == 0 ? -1 : 0;
                            o1.x.B(xVarArr54, 111, iArr126);
                        }
                        int i150 = (b31 >> 1) & 1;
                        int[][] iArr127 = this.S;
                        if (iArr127[7][1] != i150) {
                            iArr127[7][1] = i150;
                            o1.x[] xVarArr55 = nt.f8643f;
                            int[] iArr128 = new int[2];
                            iArr128[0] = 7;
                            iArr128[1] = i150 == 0 ? -1 : 1;
                            o1.x.B(xVarArr55, 111, iArr128);
                        }
                        int i151 = (b31 >> 2) & 1;
                        int[][] iArr129 = this.S;
                        if (iArr129[7][2] != i151) {
                            iArr129[7][2] = i151;
                            o1.x[] xVarArr56 = nt.f8643f;
                            int[] iArr130 = new int[2];
                            iArr130[0] = 7;
                            iArr130[1] = i151 == 0 ? -1 : 2;
                            o1.x.B(xVarArr56, 111, iArr130);
                        }
                        int i152 = (b31 >> 3) & 1;
                        int[][] iArr131 = this.S;
                        if (iArr131[7][3] != i152) {
                            iArr131[7][3] = i152;
                            o1.x[] xVarArr57 = nt.f8643f;
                            int[] iArr132 = new int[2];
                            iArr132[0] = 7;
                            iArr132[1] = i152 == 0 ? -1 : 3;
                            o1.x.B(xVarArr57, 111, iArr132);
                        }
                        int i153 = (b31 >> 4) & 1;
                        int[][] iArr133 = this.S;
                        if (iArr133[7][4] != i153) {
                            iArr133[7][4] = i153;
                            o1.x[] xVarArr58 = nt.f8643f;
                            int[] iArr134 = new int[2];
                            iArr134[0] = 7;
                            iArr134[1] = i153 == 0 ? -1 : 4;
                            o1.x.B(xVarArr58, 111, iArr134);
                        }
                        int i154 = (b31 >> 5) & 1;
                        int[][] iArr135 = this.S;
                        if (iArr135[7][5] != i154) {
                            iArr135[7][5] = i154;
                            o1.x[] xVarArr59 = nt.f8643f;
                            int[] iArr136 = new int[2];
                            iArr136[0] = 7;
                            iArr136[1] = i154 == 0 ? -1 : 5;
                            o1.x.B(xVarArr59, 111, iArr136);
                        }
                        int i155 = (b31 >> 6) & 1;
                        int[][] iArr137 = this.S;
                        if (iArr137[7][6] != i155) {
                            iArr137[7][6] = i155;
                            o1.x[] xVarArr60 = nt.f8643f;
                            int[] iArr138 = new int[2];
                            iArr138[0] = 7;
                            iArr138[1] = i155 == 0 ? -1 : 6;
                            o1.x.B(xVarArr60, 111, iArr138);
                        }
                        int i156 = (b31 >> 7) & 1;
                        int[][] iArr139 = this.S;
                        if (iArr139[7][7] != i156) {
                            iArr139[7][7] = i156;
                            o1.x[] xVarArr61 = nt.f8643f;
                            int[] iArr140 = new int[2];
                            iArr140[0] = 7;
                            iArr140[1] = i156 == 0 ? -1 : 7;
                            o1.x.B(xVarArr61, 111, iArr140);
                        }
                        byte b32 = bArr[i2 + 10];
                        int i157 = b32 & 1;
                        int[][] iArr141 = this.S;
                        if (iArr141[8][0] != i157) {
                            iArr141[8][0] = i157;
                            o1.x[] xVarArr62 = nt.f8643f;
                            int[] iArr142 = new int[2];
                            iArr142[0] = 8;
                            iArr142[1] = i157 == 0 ? -1 : 0;
                            o1.x.B(xVarArr62, 111, iArr142);
                        }
                        int i158 = (b32 >> 1) & 1;
                        int[][] iArr143 = this.S;
                        if (iArr143[8][1] != i158) {
                            iArr143[8][1] = i158;
                            o1.x[] xVarArr63 = nt.f8643f;
                            int[] iArr144 = new int[2];
                            iArr144[0] = 8;
                            iArr144[1] = i158 == 0 ? -1 : 1;
                            o1.x.B(xVarArr63, 111, iArr144);
                        }
                        int i159 = (b32 >> 2) & 1;
                        int[][] iArr145 = this.S;
                        if (iArr145[8][2] != i159) {
                            iArr145[8][2] = i159;
                            o1.x[] xVarArr64 = nt.f8643f;
                            int[] iArr146 = new int[2];
                            iArr146[0] = 8;
                            iArr146[1] = i159 == 0 ? -1 : 2;
                            o1.x.B(xVarArr64, 111, iArr146);
                        }
                        int i160 = (b32 >> 3) & 1;
                        int[][] iArr147 = this.S;
                        if (iArr147[8][3] != i160) {
                            iArr147[8][3] = i160;
                            o1.x[] xVarArr65 = nt.f8643f;
                            int[] iArr148 = new int[2];
                            iArr148[0] = 8;
                            iArr148[1] = i160 == 0 ? -1 : 3;
                            o1.x.B(xVarArr65, 111, iArr148);
                        }
                        int i161 = (b32 >> 4) & 1;
                        int[][] iArr149 = this.S;
                        if (iArr149[8][4] != i161) {
                            iArr149[8][4] = i161;
                            o1.x[] xVarArr66 = nt.f8643f;
                            int[] iArr150 = new int[2];
                            iArr150[0] = 8;
                            iArr150[1] = i161 == 0 ? -1 : 4;
                            o1.x.B(xVarArr66, 111, iArr150);
                        }
                        int i162 = (b32 >> 5) & 1;
                        int[][] iArr151 = this.S;
                        if (iArr151[8][5] != i162) {
                            iArr151[8][5] = i162;
                            o1.x[] xVarArr67 = nt.f8643f;
                            int[] iArr152 = new int[2];
                            iArr152[0] = 8;
                            iArr152[1] = i162 == 0 ? -1 : 5;
                            o1.x.B(xVarArr67, 111, iArr152);
                        }
                        int i163 = (b32 >> 6) & 1;
                        int[][] iArr153 = this.S;
                        if (iArr153[8][6] != i163) {
                            iArr153[8][6] = i163;
                            o1.x[] xVarArr68 = nt.f8643f;
                            int[] iArr154 = new int[2];
                            iArr154[0] = 8;
                            iArr154[1] = i163 == 0 ? -1 : 6;
                            o1.x.B(xVarArr68, 111, iArr154);
                        }
                        int i164 = (b32 >> 7) & 1;
                        int[][] iArr155 = this.S;
                        if (iArr155[8][7] != i164) {
                            iArr155[8][7] = i164;
                            o1.x[] xVarArr69 = nt.f8643f;
                            int[] iArr156 = new int[2];
                            iArr156[0] = 8;
                            iArr156[1] = i164 == 0 ? -1 : 7;
                            o1.x.B(xVarArr69, 111, iArr156);
                        }
                        byte b33 = bArr[i2 + 11];
                        int i165 = b33 & 1;
                        int[][] iArr157 = this.S;
                        if (iArr157[9][0] != i165) {
                            iArr157[9][0] = i165;
                            o1.x[] xVarArr70 = nt.f8643f;
                            int[] iArr158 = new int[2];
                            iArr158[0] = 9;
                            iArr158[1] = i165 == 0 ? -1 : 0;
                            o1.x.B(xVarArr70, 111, iArr158);
                        }
                        int i166 = (b33 >> 1) & 1;
                        int[][] iArr159 = this.S;
                        if (iArr159[9][1] != i166) {
                            iArr159[9][1] = i166;
                            o1.x[] xVarArr71 = nt.f8643f;
                            int[] iArr160 = new int[2];
                            iArr160[0] = 9;
                            iArr160[1] = i166 == 0 ? -1 : 1;
                            o1.x.B(xVarArr71, 111, iArr160);
                        }
                        int i167 = (b33 >> 2) & 1;
                        int[][] iArr161 = this.S;
                        if (iArr161[9][2] != i167) {
                            iArr161[9][2] = i167;
                            o1.x[] xVarArr72 = nt.f8643f;
                            int[] iArr162 = new int[2];
                            iArr162[0] = 9;
                            iArr162[1] = i167 == 0 ? -1 : 2;
                            o1.x.B(xVarArr72, 111, iArr162);
                        }
                        int i168 = (b33 >> 3) & 1;
                        int[][] iArr163 = this.S;
                        if (iArr163[9][3] != i168) {
                            iArr163[9][3] = i168;
                            o1.x[] xVarArr73 = nt.f8643f;
                            int[] iArr164 = new int[2];
                            iArr164[0] = 9;
                            iArr164[1] = i168 == 0 ? -1 : 3;
                            o1.x.B(xVarArr73, 111, iArr164);
                        }
                        int i169 = bArr[i2 + 12] & 1;
                        int[][] iArr165 = this.S;
                        if (iArr165[10][0] != i169) {
                            iArr165[10][0] = i169;
                            o1.x[] xVarArr74 = nt.f8643f;
                            int[] iArr166 = new int[2];
                            iArr166[0] = 10;
                            iArr166[1] = i169 == 0 ? -1 : 0;
                            o1.x.B(xVarArr74, 111, iArr166);
                        }
                        byte b34 = bArr[i2 + 13];
                        int i170 = b34 & 1;
                        int[][] iArr167 = this.S;
                        if (iArr167[11][0] != i170) {
                            iArr167[11][0] = i170;
                            o1.x[] xVarArr75 = nt.f8643f;
                            int[] iArr168 = new int[2];
                            iArr168[0] = 11;
                            iArr168[1] = i170 == 0 ? -1 : 0;
                            o1.x.B(xVarArr75, 111, iArr168);
                        }
                        int i171 = (b34 >> 1) & 1;
                        int[][] iArr169 = this.S;
                        if (iArr169[11][1] != i171) {
                            iArr169[11][1] = i171;
                            o1.x[] xVarArr76 = nt.f8643f;
                            int[] iArr170 = new int[2];
                            iArr170[0] = 11;
                            iArr170[1] = i171 == 0 ? -1 : 1;
                            o1.x.B(xVarArr76, 111, iArr170);
                        }
                        byte b35 = bArr[i2 + 14];
                        int i172 = b35 & 1;
                        int[][] iArr171 = this.S;
                        if (iArr171[12][0] != i172) {
                            iArr171[12][0] = i172;
                            o1.x[] xVarArr77 = nt.f8643f;
                            int[] iArr172 = new int[2];
                            iArr172[0] = 12;
                            iArr172[1] = i172 == 0 ? -1 : 0;
                            o1.x.B(xVarArr77, 111, iArr172);
                        }
                        int i173 = (b35 >> 1) & 1;
                        int[][] iArr173 = this.S;
                        if (iArr173[12][1] != i173) {
                            iArr173[12][1] = i173;
                            o1.x[] xVarArr78 = nt.f8643f;
                            int[] iArr174 = new int[2];
                            iArr174[0] = 12;
                            iArr174[1] = i173 == 0 ? -1 : 1;
                            o1.x.B(xVarArr78, 111, iArr174);
                        }
                        byte b36 = bArr[i2 + 15];
                        int i174 = (b36 >> 3) & 1;
                        int[][] iArr175 = this.S;
                        if (iArr175[13][3] != i174) {
                            iArr175[13][3] = i174;
                            o1.x[] xVarArr79 = nt.f8643f;
                            int[] iArr176 = new int[2];
                            iArr176[0] = 13;
                            iArr176[1] = i174 == 0 ? -1 : 3;
                            o1.x.B(xVarArr79, 111, iArr176);
                        }
                        int i175 = (b36 >> 6) & 1;
                        int[][] iArr177 = this.S;
                        if (iArr177[13][6] != i175) {
                            iArr177[13][6] = i175;
                            o1.x[] xVarArr80 = nt.f8643f;
                            int[] iArr178 = new int[2];
                            iArr178[0] = 13;
                            iArr178[1] = i175 == 0 ? -1 : 6;
                            o1.x.B(xVarArr80, 111, iArr178);
                        }
                        int i176 = (b36 >> 7) & 1;
                        int[][] iArr179 = this.S;
                        if (iArr179[13][7] != i176) {
                            iArr179[13][7] = i176;
                            o1.x[] xVarArr81 = nt.f8643f;
                            int[] iArr180 = new int[2];
                            iArr180[0] = 13;
                            iArr180[1] = i176 == 0 ? -1 : 7;
                            o1.x.B(xVarArr81, 111, iArr180);
                        }
                        int i177 = bArr[i2 + 16] & 1;
                        int[][] iArr181 = this.S;
                        if (iArr181[14][0] != i177) {
                            iArr181[14][0] = i177;
                            o1.x[] xVarArr82 = nt.f8643f;
                            int[] iArr182 = new int[2];
                            iArr182[0] = 14;
                            iArr182[1] = i177 == 0 ? -1 : 0;
                            o1.x.B(xVarArr82, 111, iArr182);
                        }
                        byte b37 = bArr[i2 + 17];
                        int i178 = (b37 >> 5) & 1;
                        int[][] iArr183 = this.S;
                        if (iArr183[15][5] != i178) {
                            iArr183[15][5] = i178;
                            o1.x[] xVarArr83 = nt.f8643f;
                            int[] iArr184 = new int[2];
                            iArr184[0] = 15;
                            iArr184[1] = i178 == 0 ? -1 : 5;
                            o1.x.B(xVarArr83, 111, iArr184);
                        }
                        int i179 = (b37 >> 7) & 1;
                        int[][] iArr185 = this.S;
                        if (iArr185[15][7] != i179) {
                            iArr185[15][7] = i179;
                            o1.x[] xVarArr84 = nt.f8643f;
                            int[] iArr186 = new int[2];
                            iArr186[0] = 15;
                            iArr186[1] = i179 == 0 ? -1 : 7;
                            o1.x.B(xVarArr84, 111, iArr186);
                        }
                        break;
                    default:
                        switch (b2) {
                            case 80:
                                int[] iArr187 = new int[6];
                                while (i14 < 6) {
                                    iArr187[i14] = bArr[i2 + 2 + i14];
                                    i14++;
                                }
                                o1.x.B(nt.f8643f, 105, iArr187);
                                break;
                            case 81:
                                int i180 = i2 + 2;
                                int i181 = i2 + 4;
                                o1.x.B(nt.f8643f, 99, new int[]{bArr[i180] & 255, bArr[i181] & 255, bArr[i2 + 5] & 255});
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    int i182 = (i2 + i3) - 1;
                                    for (int i183 = i2 + 6; i183 < i182; i183 += 2) {
                                        sb.append((char) ((bArr[i183 + 1] & 255) | (bArr[i183] << 8)));
                                    }
                                    qt.z0(100, new int[]{bArr[i180] & 255, bArr[i2 + 3] & 255, bArr[i181] & 255}, sb.toString());
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    return;
                                }
                                break;
                            case 82:
                                qt.y0(101, ((((bArr[i2 + 2] & 255) * 60) + bArr[i2 + 3]) * 60) + bArr[i2 + 4]);
                                break;
                            case 83:
                                qt.y0(106, (bArr[i2 + 3] * DhcpPacket.DHCP_VENDOR_CLASS_ID) + bArr[i2 + 4]);
                                break;
                            default:
                                switch (b2) {
                                    case 96:
                                        if (bArr[i2 + 2] == 1) {
                                            qt.y0(104, bArr[i2 + 3] & 255);
                                        }
                                        break;
                                    case 97:
                                        int i184 = i2 + 2;
                                        qt.y0(125, bArr[i184] & 127);
                                        qt.y0(127, (bArr[i184] >> 7) & 1);
                                        qt.y0(126, bArr[i2 + 3] & 255);
                                        break;
                                    case 98:
                                        int i185 = i2 + 2;
                                        qt.y0(159, (bArr[i185] >> 4) & 15);
                                        qt.y0(160, (bArr[i185] >> 0) & 15);
                                        int i186 = i2 + 3;
                                        qt.y0(161, (bArr[i186] >> 4) & 15);
                                        qt.y0(162, (bArr[i186] >> 0) & 15);
                                        int i187 = i2 + 4;
                                        qt.y0(163, (bArr[i187] >> 4) & 15);
                                        qt.y0(164, (bArr[i187] >> 0) & 15);
                                        int i188 = i2 + 5;
                                        qt.y0(165, (bArr[i188] >> 7) & 1);
                                        qt.y0(197, (bArr[i188] >> 6) & 1);
                                        qt.y0(166, (bArr[i2 + 6] >> 0) & 255);
                                        qt.y0(255, (bArr[i2 + 7] >> 0) & 255);
                                        break;
                                    case 99:
                                        qt.y0(142, ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        qt.y0(143, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                                        qt.y0(144, bArr[i2 + 7] & 255);
                                        qt.y0(145, bArr[i2 + 8] & 255);
                                        int i189 = i2 + 9;
                                        qt.y0(146, bArr[i189] & 255);
                                        int i190 = i2 + 10;
                                        qt.y0(147, bArr[i190] & 255);
                                        int i191 = i2 + 11;
                                        qt.y0(148, bArr[i191] & 255);
                                        int i192 = i2 + 12;
                                        qt.y0(149, bArr[i192] & 255);
                                        qt.y0(154, bArr[i2 + 13] & 255);
                                        qt.y0(155, bArr[i2 + 14] & 255);
                                        qt.y0(156, bArr[i2 + 15] & 255);
                                        qt.y0(157, bArr[i2 + 16] & 255);
                                        int i193 = i2 + 17;
                                        qt.y0(150, (bArr[i193] >> 4) & 15);
                                        qt.y0(151, (bArr[i193] >> 0) & 15);
                                        int i194 = i2 + 18;
                                        qt.y0(152, (bArr[i194] >> 4) & 15);
                                        qt.y0(153, (bArr[i194] >> 0) & 15);
                                        byte b38 = bArr[i189];
                                        byte b39 = bArr[i190];
                                        byte b40 = bArr[i191];
                                        byte b41 = bArr[i192];
                                        int i195 = X;
                                        if (i195 == 0) {
                                            o1.x[] xVarArr85 = nt.f8643f;
                                            o1.x.C(xVarArr85, 1049, new int[]{8, ((b38 * 275) / 250) | GLES10.GL_MODULATE}, null, null);
                                            o1.x.C(xVarArr85, 1049, new int[]{8, ((b39 * 275) / 250) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
                                            o1.x.C(xVarArr85, 1049, new int[]{8, ((b40 * 275) / 250) | GLES10.GL_TEXTURE_ENV}, null, null);
                                            o1.x.C(xVarArr85, 1049, new int[]{8, ((b41 * 275) / 250) | 9216}, null, null);
                                        } else if (i195 != 1) {
                                            o1.x[] xVarArr86 = nt.f8643f;
                                            o1.x.C(xVarArr86, 1049, new int[]{8, 256}, null, null);
                                            o1.x.C(xVarArr86, 1049, new int[]{8, 512}, null, null);
                                            o1.x.C(xVarArr86, 1049, new int[]{8, 768}, null, null);
                                            o1.x.C(xVarArr86, 1049, new int[]{8, 1024}, null, null);
                                        } else {
                                            o1.x[] xVarArr87 = nt.f8643f;
                                            o1.x.C(xVarArr87, 1049, new int[]{8, ((b38 * 399) / 100) | 4352}, null, null);
                                            o1.x.C(xVarArr87, 1049, new int[]{8, ((b39 * 399) / 100) | GLES10.GL_AMBIENT}, null, null);
                                            o1.x.C(xVarArr87, 1049, new int[]{8, ((b40 * 399) / 100) | 4864}, null, null);
                                            o1.x.C(xVarArr87, 1049, new int[]{8, ((b41 * 399) / 100) | 5120}, null, null);
                                        }
                                        break;
                                    case 100:
                                        int i196 = i2 + 2;
                                        qt.y0(167, (bArr[i196] >> 7) & 1);
                                        qt.y0(168, (bArr[i196] >> 5) & 3);
                                        qt.y0(169, (bArr[i196] >> 3) & 3);
                                        if (this.B != ((bArr[i196] >> 5) & 3) || this.C != ((bArr[i196] >> 3) & 3)) {
                                            int i197 = (bArr[i196] >> 5) & 3;
                                            this.B = i197;
                                            int i198 = (bArr[i196] >> 3) & 3;
                                            this.C = i198;
                                            if (i197 != 0 || i198 != 0) {
                                                s3();
                                            } else if (qt.i0().equals("com.syu.carinfo.ford.FordCarSeatInfo")) {
                                                l0.b0.l0(6, 0);
                                                l0.b0.l0(6, 1);
                                            }
                                        }
                                        int i199 = i2 + 3;
                                        qt.y0(170, (bArr[i199] >> 4) & 15);
                                        qt.y0(171, (bArr[i199] >> 0) & 15);
                                        int i200 = i2 + 4;
                                        qt.y0(172, (bArr[i200] >> 4) & 15);
                                        qt.y0(173, (bArr[i200] >> 2) & 3);
                                        qt.y0(174, (bArr[i200] >> 0) & 3);
                                        int i201 = i2 + 5;
                                        qt.y0(175, (bArr[i201] >> 4) & 15);
                                        qt.y0(176, (bArr[i201] >> 0) & 15);
                                        int i202 = i2 + 6;
                                        qt.y0(177, (bArr[i202] >> 4) & 15);
                                        qt.y0(178, (bArr[i202] >> 2) & 3);
                                        qt.y0(179, (bArr[i202] >> 0) & 3);
                                        break;
                                    case 101:
                                        int i203 = i2 + 2;
                                        qt.y0(180, bArr[i203] & 255);
                                        this.f5871s = bArr[i203] & 255;
                                        int i204 = bArr[i203] & 255;
                                        if (i204 == 1) {
                                            qt.y0(181, bArr[i2 + 3] & 255);
                                            qt.y0(198, bArr[i2 + 6] & 255);
                                            qt.y0(182, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                        } else if (i204 != 2) {
                                        }
                                        qt.y0(189, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        qt.y0(190, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                                        break;
                                    case 102:
                                        qt.y0(191, ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        qt.y0(192, (bArr[i2 + 7] & 255) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280));
                                        break;
                                    case 103:
                                        qt.y0(193, bArr[i2 + 2] & 255);
                                        int i205 = i2 + 3;
                                        qt.y0(194, bArr[i205] & 255);
                                        this.f5872t = bArr[i205] & 255;
                                        int i206 = i2 + 4;
                                        qt.y0(195, (bArr[i206] >> 7) & 1);
                                        qt.y0(196, (bArr[i206] >> 6) & 1);
                                        break;
                                    case 104:
                                        byte b42 = bArr[i2 + 1];
                                        if ((bArr[i2 + 2] & 255) == 1 && bArr[i2 + 3] == 1) {
                                            String str = new String(bArr, i2 + 5, b42 - 3, Charset.forName("ascii"));
                                            switch (bArr[i2 + 4] & 255) {
                                                case 1:
                                                    qt.x0(183, str);
                                                    break;
                                                case 2:
                                                    qt.x0(184, str);
                                                    break;
                                                case 3:
                                                    qt.x0(185, str);
                                                    break;
                                                case 4:
                                                    qt.x0(186, str);
                                                    break;
                                                case 5:
                                                    qt.x0(187, str);
                                                    break;
                                                case 6:
                                                    qt.x0(188, str);
                                                    break;
                                            }
                                        }
                                        break;
                                    case 105:
                                        qt.y0(i.a.Theme_actionModeWebSearchDrawable, bArr[i2 + 2] & 255);
                                        qt.y0(i.a.Theme_actionModePopupWindowStyle, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                        qt.y0(i.a.Theme_preferenceFragmentStyle, bArr[i2 + 5] & 255);
                                        qt.y0(i.a.Theme_preferencePanelStyle, bArr[i2 + 6] & 255);
                                        break;
                                    case 106:
                                        qt.y0(113, (bArr[i2 + 2] & 255) + ((bArr[i2 + 3] << 8) & 65280));
                                        break;
                                    default:
                                        switch (b2) {
                                            case 125:
                                                int i207 = bArr[i2 + 2] & 255;
                                                if (i207 == 1) {
                                                    if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                                                        int i208 = i2 + 3;
                                                        l0.c0.b((bArr[i208] >> 3) & 1, (bArr[i208] >> 4) & 1, 0);
                                                    } else {
                                                        int i209 = i2 + 3;
                                                        l0.c0.a((bArr[i209] >> 3) & 1, (bArr[i209] >> 4) & 1, 0);
                                                    }
                                                    break;
                                                } else if (i207 == 3) {
                                                    int i210 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                                                    qt.y0(1031, i210);
                                                    o1.x.C(nt.f8643f, 1049, new int[]{1, i210}, null, null);
                                                    break;
                                                } else if (i207 == 6) {
                                                    int i211 = i2 + 3;
                                                    if (this.f5858f != ((bArr[i211] >> 1) & 1)) {
                                                        int i212 = (bArr[i211] >> 1) & 1;
                                                        this.f5858f = i212;
                                                        if (u0.b.f17357r0 == 0) {
                                                            if (i212 == 1) {
                                                                if (!o1.u.a0()) {
                                                                    qt.y0(258, 1);
                                                                    this.f5861i = true;
                                                                    SystemProperties.set("persist.lesc.video.ignore", "true");
                                                                    a.i.a0(200L);
                                                                    o1.u.z();
                                                                    float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                                                    this.f5860h = y0.f.f18037c;
                                                                    y0.h.t0((int) f2);
                                                                }
                                                                u0.d.C2(0);
                                                            } else if (i212 == 0) {
                                                                if (this.f5861i && o1.u.a0()) {
                                                                    y0.h.t0(this.f5860h);
                                                                    qt.y0(258, 0);
                                                                    a.i.a0(350L);
                                                                    SystemProperties.set("persist.lesc.video.ignore", "false");
                                                                }
                                                                this.f5861i = false;
                                                            }
                                                        }
                                                    }
                                                    break;
                                                } else if (i207 == 8) {
                                                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                                                    this.f5873u = true;
                                                    break;
                                                } else if (i207 == 240) {
                                                    qt.y0(321, bArr[i2 + 3] & 255);
                                                    qt.y0(322, bArr[i2 + 4] & 255);
                                                    qt.y0(323, bArr[i2 + 5] & 255);
                                                    qt.y0(324, bArr[i2 + 6] & 255);
                                                    qt.y0(325, bArr[i2 + 7] & 255);
                                                    qt.y0(326, bArr[i2 + 8] & 255);
                                                    break;
                                                } else if (i207 == 241) {
                                                    int i213 = i2 + 3;
                                                    if (this.f5859g != bArr[i213]) {
                                                        byte b43 = bArr[i213];
                                                        this.f5859g = b43;
                                                        if (b43 == 17) {
                                                            if (!o1.u.a0()) {
                                                                this.f5861i = true;
                                                                o1.u.z();
                                                            }
                                                        } else if (b43 == 1) {
                                                            if (this.f5861i && o1.u.a0()) {
                                                                l0.b0.l0(6, 0);
                                                                l0.b0.l0(6, 1);
                                                            }
                                                            this.f5861i = false;
                                                        }
                                                    }
                                                    break;
                                                }
                                                break;
                                            case 126:
                                                byte b44 = bArr[i2 + 2];
                                                byte b45 = bArr[i2 + 3];
                                                if (b44 != 0) {
                                                    if (b44 != 1) {
                                                        if (b44 == 2) {
                                                            o1.u.E();
                                                        }
                                                        break;
                                                    } else {
                                                        o1.u.x0();
                                                        if (b45 == 1) {
                                                            w0.d.f17790b.x(0);
                                                            break;
                                                        } else if (b45 == 2) {
                                                            w0.d.f17790b.x(1);
                                                            break;
                                                        } else if (b45 == 17) {
                                                            w0.d.f17790b.x(65536);
                                                            break;
                                                        } else if (b45 == 18) {
                                                            w0.d.f17790b.x(65537);
                                                            break;
                                                        }
                                                    }
                                                }
                                                break;
                                            case 127:
                                                byte b46 = bArr[i2 + 2];
                                                int i214 = i2 + 3;
                                                byte b47 = bArr[i214];
                                                byte b48 = bArr[i2 + 4];
                                                if (b46 == 1) {
                                                    w0.d.f17790b.l(1, ((b48 & 255) << 8) | (b47 & 255));
                                                    break;
                                                } else if (b46 == 2) {
                                                    w0.f.B(bArr[i214] & 255);
                                                    break;
                                                } else if (b46 == 17) {
                                                    if (b47 == 0) {
                                                        o0.e.f16766b.o();
                                                        break;
                                                    } else if (b47 == 1) {
                                                        o0.e.f16766b.n();
                                                        break;
                                                    } else if (b47 == 2) {
                                                        o0.e.f16766b.r();
                                                        break;
                                                    } else if (b47 == 3) {
                                                        o0.e.f16766b.l();
                                                        break;
                                                    }
                                                } else if (b46 == 18) {
                                                    o0.e.f16766b.D(b47 - 1);
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

    @Override // k0.lt
    public void W2() {
        this.D.j();
        u0.c.f17386m.d(this.J);
        l0.b0.p0(this.K);
        y0.g.f18094d.d(this.f5876x);
        y0.g.f18095e.d(this.f5876x);
        w0.e.f17815a.d(this.f5874v);
        w0.e.f17819e.d(this.f5874v);
        u0.c.f17393t.d(this.f5875w);
        u0.c.f17392s.d(this.f5875w);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f5875w);
        yVar.d(this.f5874v);
        u0.c.f17388o.d(this.f5877y);
        u0.c.f17389p.d(this.f5878z);
        qt.q0(this.A);
        qt.q0(this.f5874v);
        yVar.d(this.Q);
        yVar.d(this.R);
        qt.q0(this.P);
        o1.h.f16865a.d(this.O);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 327) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:106:0x045e  */
    /* JADX WARN: Code duplicated, block: B:107:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:108:0x0541  */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 24) {
            int i3 = nt.f8637c;
            switch (i3) {
                case 41:
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 20, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 20, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 20, -86});
                    break;
                case 42:
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 19, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 19, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 19, -86});
                    break;
                case 43:
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 17, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 17, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 17, -86});
                    break;
                case 44:
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 18, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 18, -86});
                    A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 18, -86});
                    break;
                default:
                    switch (i3) {
                        case 114:
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 18, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 18, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 18, -86});
                            break;
                        case 115:
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 17, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 17, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 17, -86});
                            break;
                        case 116:
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 19, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 19, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 19, -86});
                            break;
                        case 117:
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 20, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 20, -86});
                            A3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.T[this.U % 2], 37, 20, -86});
                            break;
                    }
                    break;
            }
            int i4 = this.U + 1;
            this.U = i4;
            this.U = i4 % 2;
        }
        if (i2 == 25) {
            z.k.s(227, 207, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 49) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 50) {
            if (nt.U == 1) {
                o1.x.x(nt.f8643f, 1001, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE  ==== " + iArr[0]);
            if (iArr.length >= 1) {
                int i5 = iArr[0] & 255;
                if (i5 == 12) {
                    int i6 = this.V + 1;
                    this.V = i6;
                    if (i6 % 2 == 1) {
                        z.k.s(227, 198, 3, 171, 18, 0);
                        return;
                    } else {
                        z.k.s(227, 198, 3, 171, 19, 0);
                        return;
                    }
                }
                if (i5 != 13) {
                    return;
                }
                int i7 = nt.f8637c;
                if (i7 == 5 || i7 == 70 || i7 == 71) {
                    if (nt.f8645g[248] == 1) {
                        z.k.s(227, 198, 3, 175, 0, 0);
                        return;
                    } else {
                        z.k.s(227, 198, 3, 175, 1, 0);
                        return;
                    }
                }
                return;
            }
            return;
        }
        switch (i2) {
            case 0:
                if (T2(iArr, 2)) {
                    u3(144, iArr[0], iArr[1]);
                }
                break;
            case 1:
                if (T2(iArr, 2)) {
                    if (iArr[0] == 172) {
                        int i8 = iArr[1];
                        u3(198, iArr[0], iArr[1]);
                    } else if (iArr[0] == 163 && iArr[1] == 23) {
                        x3(1);
                    } else if (iArr[0] == 163 && iArr[1] == 24) {
                        x3(0);
                    } else if (iArr[0] == 255) {
                        y3(iArr[1]);
                    } else if (iArr[0] == 254) {
                        z3(iArr[1]);
                    } else if (iArr[0] != 253) {
                        u3(198, iArr[0], iArr[1]);
                    } else {
                        w3(iArr[1]);
                    }
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    u3(198, 169, (nt.f8645g[30] << 2) | iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    u3(198, 169, (iArr[0] << 2) | nt.f8645g[29]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    u3(197, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -58, 3, -80, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 6:
                z.k.s(227, 131, 1, (byte) iArr[0]);
                break;
            case 7:
                z.k.s(227, 194, 1, (byte) iArr[0]);
                break;
            case 8:
                z.k.s(227, 195, 2, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 9:
                z.k.s(227, 198, 2, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 10:
                z.k.s(227, 201, 2, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 11:
                z.k.s(227, 198, 3, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2]);
                break;
            case 12:
                switch (nt.f8637c) {
                    case 51:
                    case 52:
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 1, 170);
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 1, 170);
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 1, 170);
                        break;
                    case 53:
                    case 54:
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 2, 170);
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 2, 170);
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 2, 170);
                        break;
                    default:
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 17, 170);
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 17, 170);
                        z.k.s(227, 51, 5, iArr[0], this.T[this.U % 2], 37, 17, 170);
                        break;
                }
                int i9 = this.U + 1;
                this.U = i9;
                this.U = i9 % 2;
                break;
            case 13:
                z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f5855c + bArr.length > 1024) {
            this.f5855c = 0;
            this.f5856d = 0;
            this.f5857e = 0;
        }
        System.arraycopy(bArr, 0, this.f5854b, this.f5855c, bArr.length);
        int length = this.f5855c + bArr.length;
        this.f5855c = length;
        int i3 = this.f5857e;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f5854b;
            if (bArr2[i3] == -86) {
                nt.f8639d.U2(bArr2, 0, 11);
                this.f5856d = this.f5857e + 1;
            } else {
                this.f5856d = 1;
            }
            this.f5857e = 0;
        }
        int i4 = this.f5855c - 2;
        while (true) {
            i2 = this.f5856d;
            if (i2 >= i4) {
                break;
            }
            byte[] bArr3 = this.f5854b;
            if (bArr3[i2] == 85 && bArr3[i2 + 1] == 9) {
                if (this.f5857e > 512) {
                    this.f5857e = 0;
                } else {
                    int i5 = i2 + 10;
                    this.f5857e = i5;
                    if (i5 >= this.f5855c) {
                        this.f5857e = i5 - i2;
                        break;
                    }
                    if (bArr3[i5] == -86) {
                        nt.f8639d.U2(bArr3, i2, 11);
                        this.f5856d = this.f5857e;
                    } else {
                        this.f5856d = i2 + 1;
                    }
                    this.f5857e = 0;
                }
            }
            this.f5856d++;
        }
        if (i2 != 0) {
            int i6 = this.f5855c - i2;
            this.f5855c = i6;
            if (i6 > 0) {
                byte[] bArr4 = this.f5854b;
                System.arraycopy(bArr4, i2, bArr4, 0, i6);
            }
            this.f5856d = 0;
        }
    }

    public void c3() {
    }

    public void q3(int i2) {
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            u0.d.I3(37, i3, 8, i2);
        }
        if (i3 == 4 && i2 > 0) {
            o0.e.f16766b.D(i2 - 1);
            return;
        }
        if (i3 == 1 && i2 > 0 && i2 < 7) {
            w0.f.B(i2);
            return;
        }
        if (i3 == 2) {
            switch (i2) {
                case 0:
                    h0.c.f2425b.h(2);
                    break;
                case 1:
                    h0.c.f2425b.h(3);
                    break;
                case 2:
                    h0.c.f2425b.h(4);
                    break;
                case 3:
                    h0.c.f2425b.h(5);
                    break;
                case 4:
                    h0.c.f2425b.h(6);
                    break;
                case 5:
                    h0.c.f2425b.h(7);
                    break;
                case 6:
                    h0.c.f2425b.h(8);
                    break;
                case 7:
                    h0.c.f2425b.h(9);
                    break;
                case 8:
                    h0.c.f2425b.h(10);
                    break;
                case 9:
                    h0.c.f2425b.h(11);
                    break;
            }
        }
        if (i3 == 12 || i3 == 13) {
            switch (i2) {
                case 0:
                    u3(198, 161, 13);
                    break;
                case 1:
                    u3(198, 161, 14);
                    break;
                case 2:
                    u3(198, 161, 15);
                    break;
                case 3:
                    u3(198, 161, 16);
                    break;
                case 4:
                    u3(198, 161, 17);
                    break;
                case 5:
                    u3(198, 161, 18);
                    break;
                case 6:
                    u3(198, 161, 19);
                    break;
                case 7:
                    u3(198, 161, 20);
                    break;
                case 8:
                    u3(198, 161, 21);
                    break;
                case 9:
                    u3(198, 161, 22);
                    break;
            }
        }
    }

    public final void r3(byte b2, String str) {
        if (str == null) {
            str = "Unknown";
        }
        int length = str.length();
        if (length > 10) {
            length = 10;
        }
        int i2 = length * 2;
        int[] iArr = new int[i2 + 8];
        iArr[0] = 227;
        iArr[1] = 193;
        iArr[2] = i2 + 5;
        iArr[3] = b2;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        iArr[7] = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 8] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 9] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void s3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.ford.FordCarSeatInfo")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.ford.FordCarSeatInfo");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void t3(byte b2) {
        if (b2 == 1 || b2 == 3 || b2 == 4) {
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (!qt.i0().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                o1.u.f("com.syu.canbus.sync");
            }
            v3(121, 131);
        }
    }

    public final void u3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }

    public final void v3(int i2, int i3) {
        try {
            Z0(0, new int[]{i2, i3}, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    public final void w3(int i2) {
        Y = i2;
        qt.y0(256, i2);
        if (Y == 0) {
            z.k.s(227, 196, 1, 0);
        }
        int iB = this.D.b(4, 0);
        int i3 = Y;
        if (iB != i3) {
            this.D.g(4, i3);
        }
    }

    public final void x3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        z.k.s(227, 198, 3, 163, (byte) (24 - i2), 0);
        W = i2;
        qt.y0(199, i2);
        int iB = this.D.b(1, 0);
        int i3 = W;
        if (iB != i3) {
            this.D.g(1, i3);
        }
    }

    public final void y3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        z.k.s(227, 198, 3, 160, (byte) i2, 0);
    }

    public final void z3(int i2) {
        X = i2;
        qt.y0(i.a.Theme_preferenceHeaderPanelStyle, i2);
        int iB = this.D.b(3, 0);
        int i3 = X;
        if (iB != i3) {
            this.D.g(3, i3);
        }
    }
}
