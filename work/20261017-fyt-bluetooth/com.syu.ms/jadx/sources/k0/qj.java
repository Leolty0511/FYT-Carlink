package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.nio.charset.Charset;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qj extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9588e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9589f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9590g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9591h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f9592i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, -1}, new int[]{8, 32}, new int[]{9, 33}, new int[]{10, 18}, new int[]{11, 2}, new int[]{12, 25}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{23, 1}, new int[]{27, 26}, new int[]{40, 13}, new int[]{45, 54}, new int[]{48, 58}, new int[]{49, 5}, new int[]{55, 55}, new int[]{98, 16}, new int[]{101, 11}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f9593j = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{42, 29}, new int[]{44, 2}, new int[]{45, 24}, new int[]{46, 39}, new int[]{48, 46}, new int[]{49, 47}, new int[]{50, 48}, new int[]{51, 49}, new int[]{52, 50}, new int[]{53, 51}, new int[]{54, 2}, new int[]{55, 24}, new int[]{56, 18}, new int[]{57, 54}, new int[]{58, 22}, new int[]{59, 54}, new int[]{60, 31}, new int[]{61, 30}, new int[]{62, 39}, new int[]{63, 55}, new int[]{64, 25}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f9594k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f9595l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9596m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9597n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f9598o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f9599p = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9600q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9601r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9602s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f9603t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f9604u = new d();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9605v = new e();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f9606w = new f();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f9607x = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f9608y = new g();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f9609z = new h();
    public Runnable A = new i();
    public int B = 0;
    public Runnable C = new j();
    public Runnable D = new k();
    public float E = 0.0f;
    public int F = 255;
    public int G = 255;
    public Runnable H = new l();
    public int I = 0;
    public int J = 0;
    public boolean K = false;
    public Runnable L = new a();
    public Runnable M = new b();
    public byte N = 0;
    public Runnable O = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "sVaAudioOccupeid =  " + u0.b.j4);
            qj qjVar = qj.this;
            int i2 = qjVar.I;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                qjVar.I = i3;
                int i4 = u0.b.D;
                if (i4 == 11 || i4 == 13) {
                    int i5 = u0.b.j4;
                    if (i5 == 0) {
                        z.k.s(227, 2, 173, 1, qjVar.J);
                    } else {
                        if (i5 != 1) {
                            return;
                        }
                        qjVar.J = nt.f8645g[111];
                        z.k.s(227, 2, 173, 1, 0);
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj.b3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj qjVar = qj.this;
            byte b2 = (byte) (qjVar.N + 1);
            qjVar.N = b2;
            if (b2 == 20 && qjVar.f9591h == 1 && u0.b.f17320f != 0) {
                u0.d.U1(0);
                l0.b0.o0(qj.this.O);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj.this.o3((byte) -110, u0.b.i3);
            if (u0.b.D == 9) {
                qj.this.o3((byte) -110, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                qj.this.o3((byte) -109, u0.b.k3);
            } else {
                qj.this.o3((byte) -109, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                qj.this.o3((byte) -106, u0.b.j3);
            } else {
                qj.this.o3((byte) -106, " ");
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (qj.this.f9607x.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                qj.this.f9607x = h0.c.f2437h;
                if (qj.this.f9607x == null) {
                    qj.this.f9607x = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (z2) {
                qj qjVar = qj.this;
                qjVar.r3(qjVar.f9607x);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj.this.r3(h0.c.f2437h);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj qjVar = qj.this;
            qjVar.f9600q = 0;
            qjVar.f9601r = 0;
            l0.b0.b(qjVar.D);
            qj.this.B = 5;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj qjVar = qj.this;
            int i2 = qjVar.B - 1;
            qjVar.B = i2;
            if (i2 <= 0) {
                l0.b0.p0(qjVar.D);
                qj.this.B = 5;
            }
            switch (nt.f8633a) {
                case 2687420:
                    z.k.s(227, 2, 36, 80, 3);
                    break;
                case 2884030:
                    qj.s3(new byte[]{90, -91, 2, 36, 81, 3, 0});
                    break;
                case 2949566:
                    qj.s3(new byte[]{90, -91, 2, 36, 82, 3, 0});
                    break;
                case 3015102:
                    qj.s3(new byte[]{90, -91, 2, 36, 83, 3, 0});
                    break;
                case 4981179:
                    z.k.s(227, 2, 36, 37, 3);
                    break;
                case 5046715:
                case 5177787:
                    z.k.s(227, 2, 36, 38, 3);
                    break;
                case 5112251:
                    z.k.s(227, 2, 36, 39, 3);
                    break;
                case 6685115:
                    z.k.s(227, 2, 36, 41, 3);
                    break;
                case 6750651:
                    z.k.s(227, 2, 36, 42, 3);
                    break;
                case 7274940:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 7340476:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 7406012:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 7733692:
                    z.k.s(227, 2, 36, 64, 3);
                    break;
                case 7799228:
                    z.k.s(227, 2, 36, 65, 3);
                    break;
                case 7864764:
                    z.k.s(227, 2, 36, 66, 3);
                    break;
                case 7930300:
                    z.k.s(227, 2, 36, 67, 3);
                    break;
                case 7995836:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 8061372:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 8126908:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 8192444:
                    z.k.s(227, 2, 36, 68, 3);
                    break;
                case 8257980:
                    z.k.s(227, 2, 36, 11, 3);
                    break;
                case 8323516:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 8389052:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 8454588:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 8520124:
                    z.k.s(227, 2, 36, 72, 3);
                    break;
                case 8585660:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 8651196:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 8716732:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 8782268:
                    z.k.s(227, 2, 36, 45, 3);
                    break;
                case 8847804:
                    z.k.s(227, 2, 36, 46, 3);
                    break;
                case 8913340:
                    z.k.s(227, 2, 36, 49, 3);
                    break;
                case 8978876:
                    z.k.s(227, 2, 36, 22, 3);
                    break;
                case 9044412:
                    z.k.s(227, 2, 36, 44, 3);
                    break;
                case 9109948:
                    z.k.s(227, 2, 36, 62, 3);
                    break;
                case 9175484:
                    z.k.s(227, 2, 36, 33, 3);
                    break;
                case 9241020:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 9306556:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 9372092:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 9437628:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 9503164:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 9568700:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 9634236:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 9699772:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 9765308:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 9896380:
                    z.k.s(227, 2, 36, 69, 3);
                    break;
                case 9961916:
                    z.k.s(227, 2, 36, 70, 3);
                    break;
                case 10027452:
                    z.k.s(227, 2, 36, 71, 3);
                    break;
                case 10092988:
                    z.k.s(227, 2, 36, 40, 3);
                    break;
                case 10158524:
                    z.k.s(227, 2, 36, 43, 3);
                    break;
                case 15401403:
                    z.k.s(227, 2, 36, 47, 3);
                    z.k.s(227, 2, 42, 5, 1);
                    break;
                case 15466939:
                    z.k.s(227, 2, 36, 48, 3);
                    z.k.s(227, 2, 42, 5, 1);
                    break;
                case 15729083:
                    z.k.s(227, 2, 36, 50, 3);
                    z.k.s(227, 2, 42, 6, 1);
                    break;
                case 15794619:
                    z.k.s(227, 2, 36, 51, 3);
                    z.k.s(227, 2, 42, 6, 1);
                    break;
                case 15860155:
                    z.k.s(227, 2, 36, 52, 3);
                    break;
                case 15925691:
                    z.k.s(227, 2, 36, 53, 3);
                    break;
                case 15991227:
                    z.k.s(227, 2, 36, 54, 3);
                    break;
                case 16056763:
                    z.k.s(227, 2, 36, 55, 3);
                    break;
                case 16122299:
                    z.k.s(227, 2, 36, 56, 3);
                    break;
                case 16187835:
                    z.k.s(227, 2, 36, 57, 3);
                    break;
                case 16253371:
                    z.k.s(227, 2, 36, 58, 3);
                    break;
                case 16318907:
                    z.k.s(227, 2, 36, 59, 3);
                    break;
                case 16384443:
                    z.k.s(227, 2, 36, 60, 3);
                    break;
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qj.this.E = u0.b.f17359s0;
            if ((qj.this.E <= 22.5d && qj.this.E >= 0.0f) || (qj.this.E >= 337.5d && qj.this.E <= 360.0f)) {
                qj.this.G = 7;
            } else if (qj.this.E > 22.5d && qj.this.E < 67.5d) {
                qj.this.G = 8;
            } else if (qj.this.E >= 67.5d && qj.this.E <= 112.5d) {
                qj.this.G = 1;
            } else if (qj.this.E > 112.5d && qj.this.E < 157.5d) {
                qj.this.G = 2;
            } else if (qj.this.E >= 157.5d && qj.this.E <= 202.5d) {
                qj.this.G = 3;
            } else if (qj.this.E > 202.5d && qj.this.E < 247.5d) {
                qj.this.G = 4;
            } else if (qj.this.E >= 247.5d && qj.this.E <= 292.5d) {
                qj.this.G = 5;
            } else if (qj.this.E <= 292.5d || qj.this.E >= 337.5d) {
                qj.this.G = 3;
            } else {
                qj.this.G = 6;
            }
            if (qj.this.G == qj.this.F || u0.b.X1 <= 5) {
                return;
            }
            z.k.s(227, 19, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qj.this.G, 0, 0, 0, 0, 0, 0, 0);
            qj qjVar = qj.this;
            qjVar.F = qjVar.G;
        }
    }

    public static void b3() {
        int[] iArr = new int[16];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= 16) {
                break;
            }
            iArr[i3] = 32;
            i3++;
        }
        iArr[0] = 14;
        iArr[1] = 145;
        iArr[2] = c3();
        if (u0.b.f17306a0 == 1) {
            iArr[3] = 2;
        } else {
            iArr[3] = 0;
        }
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[4] = 48;
                iArr[5] = 49;
                iArr[6] = 32;
                int i6 = w0.d.f17797i;
                iArr[7] = i6 / 10000 != 0 ? (i6 / 10000) + 48 : 32;
                iArr[8] = ((i6 % 10000) / 1000) + 48;
                iArr[9] = ((i6 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i6 % 100) / 10) + 48;
            } else {
                iArr[4] = 49;
                iArr[5] = 48;
                iArr[6] = 32;
                int i7 = w0.d.f17797i;
                if (i7 / 1000 == 0) {
                    iArr[7] = (i7 / 100) + 48;
                    iArr[8] = ((i7 % 100) / 10) + 48;
                    iArr[9] = (i7 % 10) + 48;
                } else {
                    iArr[7] = (i7 / 1000) + 48;
                    iArr[8] = ((i7 % 1000) / 100) + 48;
                    iArr[9] = ((i7 % 100) / 10) + 48;
                    iArr[10] = (i7 % 10) + 48;
                }
            }
        } else if (i4 != 2) {
            if (i4 != 4) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i8 = u0.b.r3 % 1000;
                    int i9 = i8 / 100;
                    iArr[4] = i9 == 0 ? 48 : i9 + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = i10 == 0 ? 48 : i10 + 48;
                    int i11 = i8 % 10;
                    iArr[6] = i11 == 0 ? 48 : i11 + 48;
                    int i12 = u0.b.s3 % 1000;
                    int i13 = i12 / 100;
                    iArr[13] = i13 == 0 ? 48 : i13 + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[14] = i14 == 0 ? 48 : i14 + 48;
                    int i15 = i12 % 10;
                    iArr[15] = i15 != 0 ? i15 + 48 : 48;
                }
            } else if (o0.e.C != 0) {
                iArr[4] = 84;
                int i16 = o0.e.B % 10000;
                iArr[5] = (i16 / 1000) + 48;
                int i17 = (i16 % 100) / 10;
                int i18 = i16 % 1000;
                if (i17 != 0) {
                    i18 /= 10;
                }
                iArr[6] = i18 + 48;
                iArr[7] = i17 + 48;
                iArr[8] = (i16 % 10) + 48;
                int i19 = o0.e.f16794r;
                int i20 = (i19 / 60) % 60;
                iArr[9] = 32;
                iArr[10] = (i20 / 10) + 48;
                iArr[11] = (i20 % 10) + 48;
                iArr[12] = 32;
                int i21 = i19 % 60;
                iArr[13] = (i21 / 10) + 48;
                iArr[14] = (i21 % 10) + 48;
            }
        } else if (h0.c.E == 5) {
            int i22 = h0.c.P / 1000;
            int i23 = i22 / 60;
            iArr[8] = (i23 / 10) + 48;
            iArr[9] = (i23 % 10) + 48;
            int i24 = ((byte) i22) % DhcpPacket.DHCP_VENDOR_CLASS_ID;
            iArr[10] = (i24 / 10) + 48;
            iArr[11] = (i24 % 10) + 48;
        }
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i2 < 16) {
            int i25 = i2 + 1;
            iArr2[i25] = (byte) iArr[i2];
            i2 = i25;
        }
        z.k.s(iArr2);
    }

    public static byte c3() {
        switch (u0.b.D) {
            case 0:
                return (byte) 9;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    return (byte) 1;
                }
                if (1 == i2 - 65536 || 2 == i2 - 65536) {
                    return (byte) 2;
                }
                if (i2 + 0 == 0) {
                    return (byte) 4;
                }
                return 1 == i2 - 0 ? (byte) 5 : (byte) 0;
            case 2:
                return (byte) 10;
            case 3:
                return (byte) -123;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    return (byte) 7;
                }
                if (i3 == 2) {
                    return (byte) 14;
                }
                return i3 == 3 ? (byte) 13 : (byte) 0;
            case 5:
                return DhcpPacket.DHCP_HOST_NAME;
            case 6:
                return (byte) 8;
            case 7:
                return (byte) 11;
            case 8:
            case 10:
                return (byte) 13;
            case 9:
            default:
                return (byte) 0;
            case 11:
                return (byte) -3;
            case 12:
                return (byte) -2;
            case 13:
                return (byte) -4;
        }
    }

    public static void s3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                a3(1);
                break;
            case 34:
                a3(2);
                break;
            case 35:
                a3(4);
                break;
            case 36:
                a3(5);
                break;
            case 37:
                a3(6);
                break;
            case 38:
                if (iArr[1] != 0) {
                    a3(7);
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    a3(11);
                } else if (iArr[1] == -2) {
                    a3(12);
                }
                break;
            case 41:
                if (iArr[1] == 1) {
                    a3(13);
                } else if (iArr[1] == 0) {
                    a3(14);
                }
                break;
            case 42:
                if (iArr[1] == 1) {
                    a3(15);
                } else if (iArr[1] == 0) {
                    a3(16);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        if (nt.f8633a == 2687420) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(this.C, 1);
        qt.z(this.M);
        h0.d.f2464c.a(this.f9608y, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.f9609z, 1);
        yVar.a(this.f9608y, 1);
        u0.c.f17388o.a(this.f9604u, 1);
        u0.c.f17389p.a(this.f9606w, 1);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.a(this.f9605v, 1);
        yVar2.a(this.f9604u, 1);
        yVar2.a(this.f9606w, 1);
        w0.e.f17815a.a(this.M, 1);
        w0.e.f17819e.a(this.M, 1);
        u0.c.G.a(this.L, 1);
        qt.z(this.A);
        o1.h.f16865a.a(this.H, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    /* JADX WARN: Code duplicated, block: B:202:0x0611  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ae  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -124) {
            qt.y0(147, bArr[i2 + 2] & 255);
            qt.y0(122, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(142, bArr[i2 + 6] & 7);
            return;
        }
        if (b2 == -120) {
            qt.y0(121, bArr[i2 + 2] & 255);
            qt.y0(123, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(124, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(125, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(126, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(127, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(128, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(129, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(130, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(131, ((bArr[i2 + 20] << 8) & 65280) | (bArr[i2 + 19] & 255));
            qt.y0(132, ((bArr[i2 + 22] << 8) & 65280) | (bArr[i2 + 21] & 255));
            qt.y0(133, ((bArr[i2 + 24] << 8) & 65280) | (bArr[i2 + 23] & 255));
            qt.y0(134, ((bArr[i2 + 26] << 8) & 65280) | (bArr[i2 + 25] & 255));
            qt.y0(135, ((bArr[i2 + 28] << 8) & 65280) | (bArr[i2 + 27] & 255));
            qt.y0(136, ((bArr[i2 + 30] << 8) & 65280) | (bArr[i2 + 29] & 255));
            qt.y0(137, ((bArr[i2 + 32] << 8) & 65280) | (bArr[i2 + 31] & 255));
            qt.y0(138, ((bArr[i2 + 34] << 8) & 65280) | (bArr[i2 + 33] & 255));
            qt.y0(139, ((bArr[i2 + 36] << 8) & 65280) | (bArr[i2 + 35] & 255));
            qt.y0(140, (bArr[i2 + 37] & 255) | ((bArr[i2 + 38] << 8) & 65280));
            return;
        }
        if (b2 != -108) {
            if (b2 == -82) {
                byte b3 = bArr[i2 + 5];
                byte b4 = bArr[i2 + 6];
                byte b5 = bArr[i2 + 7];
                byte b6 = bArr[i2 + 8];
                byte b7 = bArr[i2 + 9];
                byte b8 = bArr[i2 + 10];
                byte b9 = bArr[i2 + 11];
                byte b10 = bArr[i2 + 12];
                byte b11 = bArr[i2 + 13];
                byte b12 = bArr[i2 + 14];
                qt.y0(149, (b3 >> 0) & 15);
                qt.y0(150, (b4 >> 1) & 1);
                qt.y0(151, (b4 >> 0) & 1);
                qt.y0(155, ((b5 << 8) & 65280) | (b6 & 255));
                qt.y0(154, ((b7 << 8) & 65280) | (b8 & 255));
                qt.y0(153, ((b9 << 8) & 65280) | (b10 & 255));
                qt.y0(152, (b12 & 255) | ((b11 << 8) & 65280));
                return;
            }
            if (b2 == -32) {
                switch (bArr[i2 + 2]) {
                    case 1:
                        byte b13 = bArr[i2 + 3];
                        if (b13 == 1) {
                            if (u0.b.D != 1) {
                                o1.u.x0();
                            } else {
                                w0.f.J(28, 27);
                            }
                            break;
                        } else if (b13 == 2) {
                            if (u0.b.D != 1) {
                                o1.u.x0();
                            } else {
                                w0.f.J(28, 28);
                            }
                            break;
                        } else if (b13 == 3) {
                            if (u0.b.D != 1) {
                                o1.u.x0();
                            } else {
                                w0.f.J(28, 30);
                            }
                            break;
                        } else if (b13 == 4) {
                            if (u0.b.D != 1) {
                                o1.u.x0();
                            } else {
                                w0.f.J(28, 31);
                            }
                            break;
                        } else if (b13 == 5) {
                            if (u0.b.D != 1) {
                                o1.u.x0();
                            } else {
                                w0.f.J(28, 29);
                            }
                            break;
                        }
                        break;
                    case 2:
                        int i7 = (bArr[i2 + 3] * 100) + bArr[i2 + 4];
                        int i8 = w0.d.f17796h;
                        if (i8 == 0 || i8 == 1) {
                            w0.f.J(28, 13, i7);
                        } else {
                            w0.f.J(28, 30);
                        }
                        break;
                    case 3:
                        int i9 = (bArr[i2 + 3] * 100) + bArr[i2 + 4];
                        int i10 = w0.d.f17796h;
                        if (i10 == 65536 || i10 == 65537 || i10 == 65538) {
                            w0.f.J(28, 13, i9);
                        } else {
                            w0.f.J(28, 27);
                        }
                        break;
                    case 4:
                        w0.f.J(28, 7, bArr[i2 + 3]);
                        break;
                    case 5:
                        byte b14 = bArr[i2 + 3];
                        if (b14 == 1) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                            break;
                        } else if (b14 == 2) {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                            break;
                        }
                        break;
                    case 6:
                        a.i.I(u0.b.D, bArr[i2 + 3]);
                        break;
                    case 7:
                        byte b15 = bArr[i2 + 3];
                        if (b15 == 1) {
                            l0.b0.l0(36, 0);
                            l0.b0.l0(36, 1);
                            break;
                        } else if (b15 == 2) {
                            l0.b0.l0(37, 0);
                            l0.b0.l0(37, 1);
                            break;
                        }
                        break;
                }
                return;
            }
            if (b2 == -24) {
                qt.y0(107, bArr[i2 + 4] & 1);
                int i11 = i2 + 2;
                qt.y0(159, (bArr[i11] >> 3) & 1);
                qt.y0(160, (bArr[i11] >> 2) & 1);
                if ((bArr[i11] & 3) == 2) {
                    qt.y0(Process.MEDIA_UID, 0);
                    return;
                } else if ((bArr[i11] & 3) == 1) {
                    qt.y0(Process.MEDIA_UID, 2);
                    return;
                } else {
                    qt.y0(Process.MEDIA_UID, -1);
                    return;
                }
            }
            if (b2 == -16) {
                this.f9599p = new String(bArr, i2 + 2, i3 - 2);
                qt.L(this.f9599p + "__" + this.f9598o);
                return;
            }
            if (b2 == 49) {
                int i12 = nt.f8633a;
                if (i12 == 2884030 || i12 == 2949566 || i12 == 3015102) {
                    return;
                }
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                byte b18 = bArr[i2 + 4];
                byte b19 = bArr[i2 + 5];
                byte b20 = bArr[i2 + 6];
                byte b21 = bArr[i2 + 7];
                int i13 = i2 + 8;
                byte b22 = bArr[i13];
                int i14 = i2 + 9;
                byte b23 = bArr[i14];
                byte b24 = bArr[i2 + 10];
                byte b25 = bArr[i2 + 11];
                byte b26 = bArr[i2 + 12];
                this.f9602s = bArr[i2 + 13] & 255;
                qt.y0(10, (b16 >> 6) & 1);
                qt.y0(14, (b16 >> 2) & 1);
                qt.y0(53, (b17 >> 6) & 1);
                qt.y0(66, (b17 >> 5) & 1);
                qt.y0(12, (b17 >> 4) & 1);
                qt.y0(13, (b17 >> 3) & 1);
                qt.y0(17, (b17 >> 1) & 1);
                qt.y0(11, (b17 >> 0) & 1);
                qt.y0(16, (b18 >> 5) & 1);
                qt.y0(65, (b18 >> 4) & 1);
                qt.y0(30, (b18 >> 2) & 3);
                qt.y0(29, (b18 >> 0) & 3);
                qt.y0(31, (b19 >> 0) & 3);
                qt.y0(32, (b19 >> 2) & 3);
                int i15 = b20 & 255;
                if (i15 == 2) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                } else if (i15 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i15 == 5) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i15 != 6) {
                    switch (i15) {
                        case 11:
                            i4 = 0;
                            i5 = 0;
                            i6 = 1;
                            break;
                        case 12:
                            i4 = 0;
                            i5 = 1;
                            i6 = i5;
                            break;
                        case 13:
                            i5 = 0;
                            i4 = 1;
                            i6 = 1;
                            break;
                        case 14:
                            i4 = 1;
                            i5 = i4;
                            i6 = i5;
                            break;
                        default:
                            i4 = 0;
                            i5 = i4;
                            i6 = i5;
                            break;
                    }
                } else {
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                }
                qt.y0(19, i4);
                qt.y0(20, i5);
                qt.y0(18, i6);
                qt.y0(77, i15);
                qt.y0(21, b21 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b22 = bArr[i14];
                    b23 = bArr[i13];
                }
                byte b27 = b23;
                int i16 = b22 & 255;
                if (i16 == 254) {
                    qt.y0(27, -2);
                } else if (i16 != 255) {
                    qt.y0(27, i16 * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i17 = b27 & 255;
                if (i17 == 254) {
                    qt.y0(28, -2);
                } else if (i17 != 255) {
                    qt.y0(28, i17 * 5);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(42, (b24 >> 6) & 1);
                qt.y0(67, (b24 >> 7) & 1);
                qt.y0(44, b25 & 255);
                qt.y0(40, 255 & b26);
                q3(this.f9602s);
                return;
            }
            if (b2 == 65) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                int i18 = i2 + 6;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 7;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 8;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 9;
                int i25 = bArr[i24] & 255;
                if (l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) {
                    l0.c0.f13013g = i19;
                    l0.c0.f13014h = i21;
                    l0.c0.f13015i = i23;
                    l0.c0.f13016j = i25;
                    if (u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                u0.d.D2(l0.h0.o(bArr[i18] & 255));
                u0.d.E2(l0.h0.o(bArr[i20] & 255));
                u0.d.F2(l0.h0.o(bArr[i22] & 255));
                u0.d.G2(l0.h0.o(bArr[i24] & 255));
                return;
            }
            if (b2 == 97) {
                qt.y0(106, bArr[i2 + 4] & 255);
                qt.y0(109, bArr[i2 + 5] & 255);
                qt.y0(161, bArr[i2 + 11] & 255);
                int i26 = i2 + 2;
                qt.y0(162, (bArr[i26] >> 5) & 1);
                qt.y0(163, (bArr[i26] >> 4) & 1);
                qt.y0(164, (bArr[i26] >> 1) & 1);
                qt.y0(165, (bArr[i26] >> 0) & 1);
                int i27 = i2 + 7;
                qt.y0(166, (bArr[i27] >> 4) & 15);
                qt.y0(167, (bArr[i27] >> 0) & 15);
                int i28 = i2 + 8;
                qt.y0(168, (bArr[i28] >> 4) & 15);
                qt.y0(169, (bArr[i28] >> 2) & 3);
                qt.y0(170, (bArr[i28] >> 0) & 3);
                int i29 = i2 + 9;
                qt.y0(171, (bArr[i29] >> 4) & 15);
                qt.y0(172, (bArr[i29] >> 0) & 15);
                int i30 = i2 + 10;
                qt.y0(173, (bArr[i30] >> 4) & 15);
                qt.y0(174, (bArr[i30] >> 2) & 3);
                qt.y0(175, (bArr[i30] >> 0) & 3);
                return;
            }
            if (b2 != -91) {
                if (b2 == -90) {
                    byte b28 = bArr[i2 + 2];
                    byte b29 = bArr[i2 + 3];
                    byte b30 = bArr[i2 + 4];
                    byte b31 = bArr[i2 + 5];
                    byte b32 = bArr[i2 + 6];
                    byte b33 = bArr[i2 + 7];
                    byte b34 = bArr[i2 + 8];
                    qt.y0(111, b28 & 63);
                    qt.y0(112, b29 & 255);
                    qt.y0(113, b30 & 255);
                    qt.y0(114, b31 & 255);
                    qt.y0(115, b32 & 255);
                    qt.y0(116, b33 & 255);
                    qt.y0(117, (b34 >> 1) & 3);
                    qt.y0(118, (b34 >> 0) & 1);
                    return;
                }
                if (b2 == 33) {
                    this.f9587d = bArr[i2 + 2] & 255;
                    byte b35 = bArr[i2 + 3];
                    int i31 = 0;
                    while (true) {
                        iArr = this.f9593j;
                        if (i31 >= iArr.length) {
                            break;
                        }
                        int i32 = this.f9587d;
                        if (i32 == iArr[i31][0]) {
                            if (i32 == 0) {
                                break;
                            }
                            this.f9588e = i31;
                            break;
                        }
                        i31++;
                    }
                    int i33 = this.f9587d;
                    if (i33 != 0) {
                        if (i33 != 1) {
                            if ((b35 & 255) == 0 || i31 >= iArr.length) {
                                return;
                            }
                            l0.b0.l0(iArr[i31][1], 0);
                            return;
                        }
                        if (this.f9590g != b35) {
                            this.f9590g = b35;
                            if (b35 == 1) {
                                l0.b0.a(this.O);
                                this.f9591h = this.f9587d;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (this.f9591h != 1) {
                        int i34 = this.f9588e;
                        if (i34 < iArr.length && i34 != 255) {
                            l0.b0.l0(iArr[i34][1], 1);
                        }
                        this.f9588e = 255;
                    } else if (this.N < 20) {
                        if (u0.b.f17320f == 0) {
                            u0.d.U1(1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                    this.N = (byte) 0;
                    this.f9590g = 0;
                    this.f9591h = 0;
                    l0.b0.o0(this.O);
                    return;
                }
                if (b2 == 34) {
                    byte b36 = bArr[i2 + 2];
                    byte b37 = bArr[i2 + 3];
                    if (b36 == 1) {
                        if (b37 > 0) {
                            for (int i35 = 0; i35 < b37; i35++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            return;
                        }
                        if (b37 < 0) {
                            for (int i36 = 0; i36 < 0 - b37; i36++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            return;
                        }
                        return;
                    }
                    if (b36 != 2) {
                        return;
                    }
                    if (b37 > 0) {
                        for (int i37 = 0; i37 < b37; i37++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        return;
                    }
                    if (b37 < 0) {
                        for (int i38 = 0; i38 < 0 - b37; i38++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        return;
                    }
                    return;
                }
                if (b2 == 103) {
                    qt.y0(105, (bArr[i2 + 3] >> 2) & 1);
                    return;
                }
                if (b2 == 104) {
                    int i39 = i2 + 3;
                    qt.y0(37, (bArr[i39] >> 4) & 1);
                    this.f9603t = (bArr[i39] >> 4) & 1;
                    q3(this.f9602s);
                    return;
                }
                switch (b2) {
                    case 17:
                        byte b38 = bArr[i2 + 4];
                        byte b39 = bArr[i2 + 5];
                        this.f9586c = b38 & 255;
                        int i40 = 0;
                        while (true) {
                            iArr2 = this.f9592i;
                            if (i40 < iArr2.length) {
                                int i41 = this.f9586c;
                                if (i41 != iArr2[i40][0]) {
                                    i40++;
                                } else if (i41 != 0) {
                                    this.f9585b = i40;
                                }
                            }
                        }
                        int i42 = this.f9586c;
                        if (i42 != 4) {
                            if (i42 != 5) {
                                if (i42 != 6) {
                                    if ((b39 & 255) == 0) {
                                        int i43 = this.f9585b;
                                        if (i43 < iArr2.length && i43 != 255) {
                                            l0.b0.l0(iArr2[i43][1], 1);
                                        }
                                        this.f9585b = 255;
                                    } else if (i40 < iArr2.length) {
                                        l0.b0.l0(iArr2[i40][1], 0);
                                    }
                                } else if ((b39 & 255) == 1) {
                                    if (h0.c.E != 4) {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    } else {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    }
                                }
                            } else if ((b39 & 255) == 1) {
                                int i44 = h0.c.E;
                                if (i44 == 3 || i44 == 4 || i44 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            }
                        } else if ((b39 & 255) == 1) {
                            if (nt.f8633a != 2687420) {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            } else {
                                int i45 = h0.c.E;
                                if (i45 == 3) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else if (i45 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i45 != 5) {
                                    l0.b0.l0(13, 0);
                                    l0.b0.l0(13, 1);
                                } else {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                }
                            }
                        }
                        qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                        break;
                    case 18:
                        byte b40 = bArr[i2 + 4];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b40 >> 6) & 1);
                            qt.y0(2, (b40 >> 7) & 1);
                        } else {
                            qt.y0(1, (b40 >> 7) & 1);
                            qt.y0(2, (b40 >> 6) & 1);
                        }
                        qt.y0(3, (b40 >> 5) & 1);
                        qt.y0(4, (b40 >> 4) & 1);
                        qt.y0(5, (b40 >> 3) & 1);
                        break;
                    case 19:
                        byte b41 = bArr[i2 + 2];
                        byte b42 = bArr[i2 + 3];
                        byte b43 = bArr[i2 + 4];
                        byte b44 = bArr[i2 + 5];
                        byte b45 = bArr[i2 + 6];
                        byte b46 = bArr[i2 + 7];
                        qt.y0(98, b41 & 255);
                        qt.y0(99, b42 & 255);
                        qt.y0(100, b43 & 255);
                        qt.y0(101, b44 & 255);
                        qt.y0(102, b45 & 255);
                        qt.y0(102, b46 & 255);
                        break;
                }
                return;
            }
            String str = bArr[i2] > 2 ? new String(bArr, i2 + 3, bArr[i2] - 1, Charset.forName("unicode")) : ProxyProperties.LOCAL_EXCL_LIST;
            byte b47 = bArr[i2 + 2];
            if (b47 == 1) {
                qt.x0(156, str);
            } else if (b47 == 2) {
                qt.x0(157, str);
            }
        }
        qt.y0(104, bArr[i2 + 2] & 255);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.M);
        h0.d.f2464c.d(this.f9608y);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f9609z);
        yVar.d(this.f9608y);
        u0.c.f17388o.d(this.f9604u);
        u0.c.f17389p.d(this.f9606w);
        w0.e.f17815a.d(this.M);
        w0.e.f17819e.d(this.M);
        o1.h.f16865a.d(this.H);
        u0.c.G.d(this.L);
        qt.q0(this.A);
        u0.c.f17386m.d(this.C);
        l0.b0.p0(this.D);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        qt.y0(108, u0.b.G);
        if (i2 < 0 || i2 >= 176) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 33) {
            s3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], (byte) iArr[1], 0});
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE = " + iArr[0]);
            if (iArr.length > 0) {
                int i3 = iArr[0];
                if (i3 == 0) {
                    z.k.s(227, 2, -14, 8, nt.f8645g[1013] == 0 ? 0 : 1);
                    return;
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    z.k.s(227, 2, -14, 9, nt.f8645g[1013] == 2 ? 0 : 1);
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                if (iArr[4] != 0) {
                    z.k.s(227, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                } else {
                    z.k.s(227, iArr[0], iArr[1], iArr[2], iArr[3]);
                }
                break;
            case 1:
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 2, 175, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 2, 173, iArr[0], iArr[1]);
                break;
            case 4:
                if (nt.a()) {
                    u0.d.F(iArr[0]);
                }
                qt.y0(108, iArr[0]);
                break;
            case 5:
                z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 6:
                z.k.s(227, 4, i.a.Theme_actionModeShareDrawable, iArr[0], iArr[1], iArr[2], 0);
                break;
            case 7:
                z.k.s(227, 2, 154, 1, iArr[0]);
                break;
        }
    }

    public final void a3(int i2) {
        int i3 = nt.f8633a;
        if (i3 != 2884030 && i3 != 2949566 && i3 != 3015102) {
            z.k.s(227, 2, 61, i2, 1);
            z.k.s(227, 2, 61, i2, 0);
        } else {
            byte b2 = (byte) i2;
            s3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 1, 0});
            s3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 0, 0});
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (nt.f8633a == 8454438) {
            return;
        }
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
            int i5 = nt.f8633a;
            if (i5 == 2884030 || i5 == 2949566 || i5 == 3015102) {
                int[] iArr = new int[bArr.length];
                int length = bArr.length - 1;
                for (int i6 = 0; i6 < length; i6++) {
                    iArr[i6] = bArr[i6] & 255;
                }
                o1.x.B(nt.f8643f, 1052, iArr);
            }
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f9595l + bArr.length > 1024) {
            this.f9595l = 0;
            this.f9596m = 0;
            this.f9597n = 0;
        }
        System.arraycopy(bArr, 0, this.f9594k, this.f9595l, bArr.length);
        int length2 = this.f9595l + bArr.length;
        this.f9595l = length2;
        int i7 = this.f9597n;
        if (i7 != 0) {
            if (i7 >= length2) {
                return;
            }
            byte b2 = this.f9594k[2];
            int i8 = 3;
            while (true) {
                i4 = this.f9597n;
                if (i8 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f9594k[i8]);
                i8++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f9594k;
            if (b3 == bArr2[i4]) {
                p3(bArr2, 2, bArr2[2]);
                this.f9596m = this.f9597n + 1;
            } else {
                this.f9596m = 2;
            }
            this.f9597n = 0;
        }
        int i9 = this.f9595l - 3;
        while (true) {
            i2 = this.f9596m;
            if (i2 >= i9) {
                break;
            }
            byte[] bArr3 = this.f9594k;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f9597n > 512) {
                    this.f9597n = 0;
                } else {
                    int i10 = bArr3[i2 + 2] + i2 + 4;
                    this.f9597n = i10;
                    if (i10 >= this.f9595l) {
                        this.f9597n = i10 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i11 = i2 + 3;
                    while (true) {
                        i3 = this.f9597n;
                        if (i11 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f9594k[i11]);
                        i11++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f9594k;
                    if (b5 == bArr4[i3]) {
                        int i12 = this.f9596m;
                        p3(bArr4, i12 + 2, bArr4[i12 + 2]);
                        this.f9596m = this.f9597n;
                    } else {
                        this.f9596m++;
                    }
                    this.f9597n = 0;
                }
            }
            this.f9596m++;
        }
        if (i2 != 0) {
            int i13 = this.f9595l - i2;
            this.f9595l = i13;
            if (i13 != 0) {
                byte[] bArr5 = this.f9594k;
                System.arraycopy(bArr5, i2, bArr5, 0, i13);
            }
            this.f9596m = 0;
        }
    }

    public final void o3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() < 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public void p3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = nt.f8633a;
        if (i9 == 2884030 || i9 == 2949566 || i9 == 3015102) {
            byte b2 = bArr[i2 + 1];
            if (b2 == -16) {
                this.f9598o = new String(bArr, i2 + 2, i3 - 2);
                qt.L(this.f9599p + "__" + this.f9598o);
                return;
            }
            if (b2 != 49) {
                if (b2 != 50) {
                    return;
                }
                int i10 = bArr[i2 + 15] & 255;
                int i11 = nt.f8645g[37];
                if (i10 == 0) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.B3(i11 == 1 ? (((i10 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i10 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
            }
            int i12 = i2 + 2;
            qt.y0(10, (bArr[i12] >> 6) & 1);
            qt.y0(53, (bArr[i12] >> 5) & 1);
            qt.y0(42, (bArr[i12] >> 4) & 1);
            qt.y0(13, (bArr[i12] >> 3) & 1);
            qt.y0(92, (bArr[i12] >> 1) & 1);
            qt.y0(37, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 3;
            qt.y0(67, (bArr[i13] >> 7) & 1);
            qt.y0(11, (bArr[i13] >> 6) & 1);
            qt.y0(12, (bArr[i13] >> 4) & 1);
            qt.y0(54, (bArr[i13] >> 3) & 1);
            qt.y0(14, (bArr[i13] >> 2) & 1);
            qt.y0(52, (bArr[i13] >> 1) & 1);
            qt.y0(34, (bArr[i13] >> 0) & 1);
            int i14 = i2 + 4;
            qt.y0(43, (bArr[i14] >> 7) & 1);
            qt.y0(16, (bArr[i14] >> 5) & 1);
            qt.y0(65, (bArr[i14] >> 4) & 1);
            qt.y0(30, (bArr[i14] >> 2) & 3);
            qt.y0(29, (bArr[i14] >> 0) & 3);
            int i15 = i2 + 5;
            qt.y0(32, (bArr[i15] >> 6) & 3);
            qt.y0(31, (bArr[i15] >> 4) & 3);
            qt.y0(17, (bArr[i15] >> 3) & 1);
            qt.y0(75, (bArr[i15] >> 2) & 1);
            qt.y0(80, (bArr[i15] >> 1) & 1);
            qt.y0(66, (bArr[i15] >> 0) & 1);
            int i16 = i2 + 6;
            qt.y0(77, (bArr[i16] >> 0) & 15);
            int i17 = (bArr[i16] >> 0) & 15;
            if (i17 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i17 == 5) {
                i5 = 0;
                i6 = 1;
                i4 = 1;
            } else if (i17 != 6) {
                switch (i17) {
                    case 12:
                        i4 = 0;
                        i6 = 1;
                        i5 = 1;
                        break;
                    case 13:
                        i6 = 0;
                        i4 = 1;
                        i5 = i4;
                        break;
                    case 14:
                        i6 = 1;
                        i4 = i6;
                        i5 = i4;
                        break;
                    default:
                        i6 = 0;
                        i4 = i6;
                        i5 = i4;
                        break;
                }
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            qt.y0(20, i6);
            qt.y0(19, i4);
            qt.y0(18, i5);
            qt.y0(21, bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i18 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 8] : bArr[i2 + 9]) & 255;
            if (i18 == 254) {
                qt.y0(27, -2);
            } else if (i18 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i18 * 5);
            }
            int i19 = (!SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i2 + 9] : bArr[i2 + 8]) & 255;
            if (i19 == 254) {
                qt.y0(28, -2);
            } else if (i19 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i19 * 5);
            }
            int i20 = bArr[i2 + 10] & 255;
            if (i20 == 1) {
                i7 = 0;
                i8 = 1;
            } else if (i20 != 2) {
                i8 = i20 != 3 ? 0 : 1;
                i7 = i8;
            } else {
                i8 = 0;
                i7 = 1;
            }
            qt.y0(47, i8);
            qt.y0(46, i7);
            qt.y0(44, bArr[i2 + 11] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i21 = bArr[i2 + 12] & 255;
            if (i21 == 254) {
                qt.y0(40, -2);
            } else if (i21 == 255) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i21 * 5);
            }
        }
    }

    public final void q3(int i2) {
        u0.d.A3(this.f9603t == 0 ? ((i2 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768 : (i2 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
    }

    public final void r3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 24 ? str.length() : 24;
        byte[] bArr = new byte[30];
        byte[] bytes = str.getBytes();
        for (int i2 = length; i2 < 30; i2++) {
            bArr[i2] = 32;
        }
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = bytes[i3];
        }
        int[] iArr = new int[31];
        iArr[0] = -29;
        iArr[1] = 27;
        iArr[2] = -51;
        switch (h0.c.E) {
            case 0:
                iArr[3] = 6;
                break;
            case 1:
                iArr[3] = 6;
                break;
            case 2:
                iArr[3] = 0;
                break;
            case 3:
                iArr[3] = 2;
                break;
            case 4:
                iArr[3] = 1;
                break;
            case 5:
                iArr[3] = 4;
                break;
            case 6:
                iArr[3] = 6;
                break;
            default:
                iArr[3] = -51;
                break;
        }
        iArr[4] = 0;
        String str2 = h0.c.f2454s;
        if (str2 == null) {
            iArr[5] = 0;
        } else {
            iArr[5] = Integer.valueOf(str2).intValue();
        }
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4 + 6] = bArr[i4];
        }
        z.k.s(iArr);
    }
}
