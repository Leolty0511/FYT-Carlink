package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import java.nio.charset.Charset;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class mb extends lt {
    public static int K = 0;
    public static int L = 0;
    public static int M = 0;
    public static int N = 0;
    public static int O = 0;
    public static int P = 0;
    public static int Q = 0;
    public static int R = 0;
    public static int S = 0;
    public static int T = 0;
    public static int U = 0;
    public static int V = 0;
    public static int W = 0;
    public static int X = 0;
    public static int Y = 7;
    public static int Z = 7;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f8026a0 = 7;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f8027b0 = 7;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f8028c0 = 7;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f8029d0 = 0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f8030e0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f8031f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f8032g0 = 3;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f8033h0 = 3;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f8034i0 = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8036c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8037d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f8038e = {new int[]{2, 5}, new int[]{3, 34}, new int[]{4, 35}, new int[]{7, 29}, new int[]{8, 6}, new int[]{9, 54}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 0}, new int[]{23, 3}, new int[]{24, 4}, new int[]{33, 2}, new int[]{34, 11}, new int[]{35, 13}, new int[]{41, 13}, new int[]{42, 55}, new int[]{43, 1}, new int[]{44, 54}, new int[]{45, 18}, new int[]{46, 5}, new int[]{47, 62}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 1}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 1}, new int[]{54, 54}, new int[]{55, 1}, new int[]{56, 34}, new int[]{57, 35}, new int[]{64, 32}, new int[]{65, 33}, new int[]{66, 20}, new int[]{67, 19}, new int[]{68, 40}, new int[]{69, 41}, new int[]{70, 42}, new int[]{71, 43}, new int[]{72, 44}, new int[]{73, 45}, new int[]{74, 2}, new int[]{80, 21}, new int[]{81, 54}, new int[]{82, 38}, new int[]{83, 58}, new int[]{84, 25}, new int[]{85, 11}, new int[]{86, 3}, new int[]{87, 4}, new int[]{88, 34}, new int[]{89, 35}, new int[]{97, 2}, new int[]{98, 18}, new int[]{128, 25}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8039f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8040g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8041h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8042i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8043j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8044k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8045l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8046m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f8047n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8048o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8049p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f8050q = 0.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8051r = 255;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f8052s = 255;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f8053t = new f();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f8054u = new g();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public o1.g0 f8055v = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f8056w = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f8057x = 2;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f8058y = 3;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f8059z = 4;
    public final int A = 5;
    public final int B = 6;
    public final int C = 7;
    public final int D = 8;
    public final int E = 9;
    public final int F = 10;
    public final int G = 11;
    public final int H = 12;
    public final int I = 13;
    public final int J = 14;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                Time time = new Time(Time.getCurrentTimezone());
                time.setToNow();
                z.k.s(227, 8, -90, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != mb.this.f8043j) {
                if (i2 != 11 && i2 != 13) {
                    z.k.s(227, 5, 198, 4, 0);
                }
                mb.this.f8043j = u0.b.D;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 1 && u0.b.f17347o == 1) {
                z.k.s(227, 4, 168, 2);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(mb.this.f8049p);
            mb.this.f8047n = (byte) 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mb mbVar = mb.this;
            byte b2 = (byte) (mbVar.f8047n - 1);
            mbVar.f8047n = b2;
            if (b2 <= 0) {
                l0.b0.p0(mbVar.f8049p);
                mb.this.f8047n = (byte) 5;
                return;
            }
            mbVar.c3(mbVar.f8055v.b(3, 0));
            z.k.s(227, 4, 143, 127);
            mb mbVar2 = mb.this;
            mbVar2.a3(mbVar2.f8055v.b(4, 7), mb.this.f8055v.b(5, 7), mb.this.f8055v.b(6, 7), mb.this.f8055v.b(8, 7), mb.this.f8055v.b(7, 7), ((mb.this.f8055v.b(9, 0) << 7) & 128) | ((mb.this.f8055v.b(10, 0) << 6) & 64) | (mb.this.f8055v.b(11, 0) & 15), ((mb.this.f8055v.b(12, 3) << 4) & 240) | (mb.this.f8055v.b(13, 3) & 15), mb.this.f8055v.b(14, 1));
            z.k.s(227, 4, 143, 56);
            z.k.s(227, 4, 143, 57);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mb.this.f8050q = u0.b.f17359s0;
            if ((mb.this.f8050q <= 22.5d && mb.this.f8050q >= 0.0f) || (mb.this.f8050q >= 337.5d && mb.this.f8050q <= 360.0f)) {
                mb.this.f8052s = 8;
            } else if (mb.this.f8050q > 22.5d && mb.this.f8050q < 67.5d) {
                mb.this.f8052s = 6;
            } else if (mb.this.f8050q >= 67.5d && mb.this.f8050q <= 112.5d) {
                mb.this.f8052s = 4;
            } else if (mb.this.f8050q > 112.5d && mb.this.f8050q < 157.5d) {
                mb.this.f8052s = 2;
            } else if (mb.this.f8050q >= 157.5d && mb.this.f8050q <= 202.5d) {
                mb.this.f8052s = 0;
            } else if (mb.this.f8050q > 202.5d && mb.this.f8050q < 247.5d) {
                mb.this.f8052s = 14;
            } else if (mb.this.f8050q >= 247.5d && mb.this.f8050q <= 292.5d) {
                mb.this.f8052s = 12;
            } else if (mb.this.f8050q <= 292.5d || mb.this.f8050q >= 337.5d) {
                mb.this.f8052s = 0;
            } else {
                mb.this.f8052s = 10;
            }
            if (mb.this.f8052s != mb.this.f8051r) {
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 4, 169, mb.this.f8052s);
                }
                mb mbVar = mb.this;
                mbVar.f8051r = mbVar.f8052s;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0085  */
        /* JADX WARN: Code duplicated, block: B:25:0x008e  */
        /* JADX WARN: Code duplicated, block: B:26:0x0097  */
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
            }
            int i2 = nt.f8637c;
            if (i2 == 7) {
                z.k.s(227, 6, 167, 3, 2, 0);
                return;
            }
            if (i2 == 8) {
                z.k.s(227, 6, 167, 3, 3, 0);
                return;
            }
            switch (i2) {
                case 11:
                    z.k.s(227, 6, 167, 0, 1, 0);
                    break;
                case 12:
                    z.k.s(227, 6, 167, 0, 2, 0);
                    break;
                case 13:
                    z.k.s(227, 6, 167, 0, 3, 0);
                    break;
                case 14:
                    z.k.s(227, 6, 167, 3, 1, 0);
                    break;
                case 15:
                    z.k.s(227, 6, 167, 3, 2, 0);
                    break;
                case 16:
                    z.k.s(227, 6, 167, 3, 3, 0);
                    break;
                default:
                    switch (i2) {
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                            z.k.s(227, 6, 167, 7, 0, 0);
                            break;
                        case 31:
                            z.k.s(227, 6, 167, 80, 1, 0);
                            break;
                        case 32:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                            z.k.s(227, 6, 167, 80, 2, 0);
                            break;
                        case 33:
                            z.k.s(227, 6, 167, 80, 3, 0);
                            break;
                        case 34:
                            z.k.s(227, 6, 167, 4, 1, 0);
                            break;
                        case 35:
                            z.k.s(227, 6, 167, 4, 2, 0);
                            break;
                        case 36:
                            z.k.s(227, 6, 167, 4, 3, 0);
                            break;
                        case 41:
                        case 42:
                        case 43:
                            z.k.s(227, 6, 167, 3, 0, 0);
                            break;
                        case 44:
                            z.k.s(227, 6, 167, 6, 0, 0);
                            break;
                        default:
                            switch (i2) {
                                case 49:
                                    z.k.s(227, 6, 167, 8, 1, 0);
                                    break;
                                case 50:
                                    z.k.s(227, 6, 167, 3, 1, 0);
                                    break;
                                case 51:
                                    z.k.s(227, 6, 167, 3, 2, 0);
                                    break;
                                case 52:
                                    z.k.s(227, 6, 167, 3, 3, 0);
                                    break;
                                default:
                                    switch (i2) {
                                        case 61:
                                            z.k.s(227, 6, 167, 3, 1, 0);
                                            break;
                                        case 62:
                                            z.k.s(227, 6, 167, 3, 2, 0);
                                            break;
                                        case 63:
                                            z.k.s(227, 6, 167, 3, 3, 0);
                                            break;
                                        default:
                                            z.k.s(227, 6, 167, 3, 0, 0);
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f8055v.a();
        qt.z(this.f8041h);
        qt.z(this.f8054u);
        u0.c.f17386m.a(this.f8048o, 1);
        u0.c.f17379f.a(this.f8046m, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        switch (nt.f8637c) {
            case 11:
            case 12:
            case 13:
                o1.h.f16865a.a(this.f8053t, 1);
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 22:
            case 23:
            case 24:
                this.f7886a.f8314i = 0;
                break;
            case 26:
                u0.c.f17374a.a(this.f8044k, 1);
                break;
        }
        if (nt.f8637c != 13) {
            this.f7886a.f8313h = 0;
        } else {
            this.f7886a.f8313h = 2;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        char c2;
        byte b3 = bArr[i2 + 1];
        if (b3 == 1) {
            qt.y0(188, bArr[i2 + 4] & 255);
        }
        if (b3 == 2) {
            if (nt.a()) {
                int i5 = bArr[i2 + 2] & 255;
                this.f8036c = i5;
                int i6 = 0;
                while (true) {
                    iArr = this.f8038e;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f8036c;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f8035b = i6;
                        break;
                    }
                    i6++;
                }
                int i8 = this.f8037d;
                int i9 = this.f8036c;
                if (i8 != i9) {
                    if (i9 == 1) {
                        n3();
                    } else if (i9 != 17) {
                        if (i9 != 32) {
                            if (i9 == 42) {
                                n3();
                            } else if (i5 == 0) {
                                int i10 = this.f8035b;
                                if (i10 < iArr.length && i10 != 255) {
                                    l0.b0.l0(iArr[i10][1], 1);
                                }
                                this.f8035b = 255;
                            } else if (i6 < iArr.length) {
                                l0.b0.l0(iArr[i6][1], 0);
                            }
                        } else if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        } else {
                            o3();
                        }
                    } else if (h0.c.E != 4) {
                        l0.b0.l0(2, 0);
                        l0.b0.l0(2, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                    this.f8037d = this.f8036c;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 == 33) {
            byte b4 = bArr[i2 + 2];
            qt.y0(10, (b4 >> 7) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = ((b4 >> 5) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            qt.y0(54, (b4 >> 4) & 1);
            qt.y0(13, (b4 >> 3) & 1);
            int i11 = (b4 >> 2) & 1;
            qt.y0(14, i11);
            qt.y0(55, i11);
            qt.y0(26, (b4 >> 1) & 1);
            qt.y0(16, (b4 >> 0) & 1);
            byte b5 = bArr[i2 + 3];
            qt.y0(18, (b5 >> 7) & 1);
            qt.y0(19, (b5 >> 6) & 1);
            qt.y0(20, (b5 >> 5) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b5 & 224) == 0 ? 0 : 1;
            qt.y0(49, iArr3);
            int i12 = b5 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i12 > 9) {
                i12 = 9;
            }
            qt.y0(21, i12);
            int i13 = i2 + 4;
            byte b6 = bArr[i13];
            int i14 = i2 + 5;
            byte b7 = bArr[i14];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i14];
                b7 = bArr[i13];
            }
            int i15 = i2 + 6;
            if ((bArr[i15] & 2) == 0) {
                if (b6 == -1) {
                    qt.y0(27, -3);
                } else if (b6 != 0) {
                    qt.y0(27, b6 & 255);
                } else {
                    qt.y0(27, -2);
                }
            }
            if ((bArr[i15] & 2) != 0) {
                b2 = 0;
            } else if (b7 == -1) {
                b2 = 0;
                qt.y0(28, -3);
            } else if (b7 != 0) {
                int i16 = b7 & 255;
                b2 = 0;
                qt.y0(28, i16);
            } else {
                b2 = 0;
                qt.y0(28, -2);
            }
            byte b8 = bArr[i15];
            int[] iArr4 = new int[1];
            iArr4[b2] = (b8 >> 7) & 1;
            qt.y0(15, iArr4);
            int[] iArr5 = new int[1];
            iArr5[b2] = (b8 >> 3) & 1;
            qt.y0(53, iArr5);
            int[] iArr6 = new int[1];
            iArr6[b2] = (b8 >> b2) & 1;
            qt.y0(37, iArr6);
            int[] iArr7 = new int[1];
            if ((bArr[i2 + 7] & 255 & 128) == 0) {
                c2 = 0;
                i4 = 0;
            } else {
                i4 = 1;
                c2 = 0;
            }
            iArr7[c2] = i4;
            qt.y0(38, iArr7);
            int i17 = i2 + 8;
            int i18 = (bArr[i17] >> 6) & 3;
            qt.y0(52, i18 <= 2 ? i18 : 2);
            qt.y0(51, (bArr[i17] >> 6) & 3);
            int i19 = i2 + 9;
            qt.y0(22, (bArr[i19] >> 7) & 1);
            qt.y0(23, (bArr[i19] >> 6) & 1);
            qt.y0(24, (bArr[i19] >> 5) & 1);
            int[] iArr8 = new int[1];
            iArr8[0] = (bArr[i19] & 224) == 0 ? 0 : 1;
            qt.y0(50, iArr8);
            return;
        }
        if (b3 == 34) {
            qt.y0(248, bArr[i2 + 2] & 255);
            qt.y0(249, (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b3 == 39) {
            qt.y0(137, bArr[i2 + 2] & 255);
            return;
        }
        if (b3 == 41) {
            if (this.f8042i) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 5450);
            return;
        }
        if (b3 == 61) {
            int i20 = bArr[i2 + 2] & 255;
            int i21 = bArr[i2 + 3] & 255;
            int i22 = bArr[i2 + 4] & 255;
            int i23 = bArr[i2 + 5] & 255;
            int i24 = bArr[i2 + 6] & 255;
            int i25 = bArr[i2 + 7] & 255;
            int i26 = bArr[i2 + 8] & 255;
            int i27 = bArr[i2 + 9] & 255;
            int i28 = bArr[i2 + 10] & 255;
            int i29 = bArr[i2 + 11] & 255;
            int i30 = bArr[i2 + 12] & 255;
            int i31 = bArr[i2 + 13] & 255;
            qt.y0(169, i20);
            qt.y0(170, i21);
            qt.y0(178, i22);
            qt.y0(117, i23);
            qt.y0(150, i24);
            qt.y0(149, i25);
            qt.y0(172, i26);
            qt.y0(173, i27);
            qt.y0(174, i28);
            qt.y0(175, i29);
            qt.y0(176, i30);
            qt.y0(177, i31);
            return;
        }
        if (b3 == 67) {
            int i32 = i2 + 2;
            qt.y0(259, (bArr[i32] >> 7) & 1);
            qt.y0(260, (bArr[i32] >> 6) & 1);
            qt.y0(261, (bArr[i32] >> 4) & 3);
            qt.y0(262, (bArr[i32] >> 0) & 15);
            int i33 = i2 + 3;
            qt.y0(263, (bArr[i33] >> 7) & 1);
            qt.y0(264, (bArr[i33] >> 6) & 1);
            qt.y0(265, (bArr[i33] >> 4) & 3);
            qt.y0(266, (bArr[i33] >> 0) & 15);
            return;
        }
        if (b3 == 125) {
            int i34 = bArr[i2 + 2] & 255;
            if (i34 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i35 = i2 + 3;
                    l0.c0.b((bArr[i35] >> 3) & 1, (bArr[i35] >> 4) & 1, 0);
                } else {
                    int i36 = i2 + 3;
                    l0.c0.a((bArr[i36] >> 3) & 1, (bArr[i36] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i34 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                int i37 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i37] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i37] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i34 == 3) {
                int i38 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i38);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i38}, null, null);
                return;
            }
            if (i34 == 4) {
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            }
            switch (i34) {
                case 8:
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f8042i = true;
                    break;
                case 9:
                    int i39 = i2 + 4;
                    o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i39] & 255) - 40}, null, null);
                    int i40 = bArr[i39] & 255;
                    if (i40 == 0) {
                        u0.d.A3(0);
                    } else {
                        u0.d.A3((i40 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    }
                    break;
                case 10:
                    qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    break;
            }
        }
        if (b3 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b3) {
            case 50:
                if (nt.a()) {
                    u0.d.R2(l0.e0.m(bArr[i2 + 3]));
                    int i41 = i2 + 4;
                    u0.d.S2(l0.e0.m(bArr[i41]));
                    u0.d.T2(l0.e0.m(bArr[i41]));
                    u0.d.U2(l0.e0.m(bArr[i2 + 5]));
                    int i42 = i2 + 6;
                    int i43 = bArr[i42] & 255;
                    int i44 = i2 + 7;
                    int i45 = bArr[i44] & 255;
                    int i46 = i2 + 8;
                    int i47 = 255 & bArr[i46];
                    if (u0.b.f17347o == 0) {
                        if (l0.c0.f13013g != i43 || l0.c0.f13014h != i45 || l0.c0.f13015i != i47) {
                            if (i43 < 5 || i45 < 5 || i47 < 5) {
                                u0.d.C2(1);
                            } else if (u0.b.f17350p == 1) {
                                l0.c0.f13017k = 2;
                                l0.b0.b(l0.c0.f13018l);
                            }
                        }
                        l0.c0.f13013g = i43;
                        l0.c0.f13014h = i45;
                        l0.c0.f13015i = i47;
                    }
                    u0.d.D2(l0.e0.m(bArr[i42]));
                    u0.d.E2(l0.e0.m(bArr[i44]));
                    u0.d.F2(l0.e0.m(bArr[i44]));
                    u0.d.G2(l0.e0.m(bArr[i46]));
                }
                break;
            case 51:
                int i48 = ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255);
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(104, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                qt.y0(98, i48);
                break;
            case 52:
                qt.y0(99, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(105, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 53:
                qt.y0(106, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(109, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(108, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 54:
                l0.f0.a(bArr[i2 + 2]);
                break;
            default:
                switch (b3) {
                    case 56:
                        byte b9 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b9 >> 6) & 1);
                            qt.y0(2, (b9 >> 7) & 1);
                        } else {
                            qt.y0(1, (b9 >> 7) & 1);
                            qt.y0(2, (b9 >> 6) & 1);
                        }
                        qt.y0(3, (b9 >> 5) & 1);
                        qt.y0(4, (b9 >> 4) & 1);
                        qt.y0(5, (b9 >> 3) & 1);
                        qt.y0(235, (b9 >> 0) & 1);
                        int i49 = bArr[i2 + 3] & 255;
                        qt.y0(133, (i49 >> 7) & 1);
                        qt.y0(181, (i49 >> 6) & 1);
                        qt.y0(134, (i49 >> 5) & 1);
                        qt.y0(189, (i49 >> 4) & 1);
                        qt.y0(132, (i49 >> 3) & 1);
                        qt.y0(190, (i49 >> 2) & 1);
                        int i50 = bArr[i2 + 4] & 255;
                        qt.y0(110, (i50 >> 7) & 1);
                        qt.y0(209, (i50 >> 6) & 1);
                        qt.y0(118, (i50 >> 5) & 1);
                        qt.y0(192, (i50 >> 3) & 3);
                        qt.y0(193, (i50 >> 1) & 3);
                        qt.y0(182, i50 & 1);
                        int i51 = bArr[i2 + 5] & 255;
                        qt.y0(119, i51 >> 5);
                        qt.y0(183, (i51 >> 4) & 1);
                        qt.y0(171, (i51 >> 3) & 1);
                        int i52 = bArr[i2 + 6] & 255;
                        qt.y0(113, i52 >> 6);
                        qt.y0(166, (i52 >> 4) & 3);
                        qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, (i52 >> 3) & 1);
                        qt.y0(135, (i52 >> 1) & 3);
                        qt.y0(194, (i52 >> 0) & 1);
                        int i53 = bArr[i2 + 7] & 255;
                        qt.y0(167, (i53 >> 7) & 1);
                        qt.y0(168, (i53 >> 6) & 1);
                        qt.y0(111, (i53 >> 5) & 1);
                        qt.y0(126, (i53 >> 4) & 1);
                        int i54 = bArr[i2 + 8] & 255;
                        qt.y0(184, (i54 >> 7) & 1);
                        qt.y0(185, (i54 >> 6) & 1);
                        qt.y0(191, (i54 >> 5) & 1);
                        qt.y0(195, (i54 >> 1) & 1);
                        qt.y0(196, (i54 >> 0) & 1);
                        int i55 = bArr[i2 + 9] & 255;
                        qt.y0(250, (i55 >> 7) & 1);
                        qt.y0(251, (i55 >> 6) & 1);
                        qt.y0(252, (i55 >> 5) & 1);
                        qt.y0(i.a.Theme_dialogTitleDecorLayout, (i55 >> 4) & 1);
                        qt.y0(254, (i55 >> 3) & 1);
                        qt.y0(255, (i55 >> 2) & 1);
                        qt.y0(256, (i55 >> 1) & 1);
                        qt.y0(236, (i55 >> 0) & 1);
                        int i56 = bArr[i2 + 10] & 255;
                        qt.y0(257, (i56 >> 7) & 1);
                        qt.y0(258, (i56 >> 6) & 1);
                        break;
                    case 57:
                        int i57 = u0.b.K3;
                        if (i57 == 1 || i57 == 2) {
                            qt.y0(205, bArr[i2 + 2] & 255);
                            qt.y0(206, bArr[i2 + 3] & 255);
                            qt.y0(207, bArr[i2 + 4] & 255);
                        }
                        break;
                    case 58:
                        int i58 = bArr[i2 + 2] & 255;
                        int i59 = bArr[i2 + 3] & 255;
                        qt.y0(145, i58);
                        qt.y0(114, i59);
                        break;
                    default:
                        switch (b3) {
                            case 63:
                                int i60 = i2 + 2;
                                if (this.f8039f != ((bArr[i60] >> 7) & 1)) {
                                    int i61 = (bArr[i60] >> 7) & 1;
                                    this.f8039f = i61;
                                    if (i61 == 1) {
                                        r3();
                                    } else if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi")) {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                    }
                                }
                                if (this.f8040g != ((bArr[i60] >> 6) & 1)) {
                                    int i62 = (bArr[i60] >> 6) & 1;
                                    this.f8040g = i62;
                                    if (i62 == 1) {
                                        q3();
                                    } else if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi")) {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                    }
                                }
                                break;
                            case 64:
                                int i63 = (bArr[i2 + 2] >> 7) & 1;
                                if (i63 != 0) {
                                    qt.a(1);
                                } else if (i63 == 0) {
                                    qt.a(0);
                                }
                                break;
                            case 65:
                                int i64 = i2 + 2;
                                qt.y0(197, (bArr[i64] >> 7) & 1);
                                qt.y0(198, (bArr[i64] >> 6) & 1);
                                qt.y0(199, (bArr[i64] >> 5) & 1);
                                qt.y0(200, (bArr[i64] >> 4) & 1);
                                qt.y0(201, (bArr[i64] >> 3) & 1);
                                qt.y0(202, (bArr[i64] >> 2) & 1);
                                qt.y0(203, (bArr[i64] >> 1) & 1);
                                qt.y0(204, (bArr[i64] >> 0) & 1);
                                break;
                            default:
                                switch (b3) {
                                    case 78:
                                        int i65 = i2 + 2;
                                        if (((bArr[i65] >> 7) & 1) == 1 || ((bArr[i2 + 3] >> 7) & 1) == 1) {
                                            if (!qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi")) {
                                                p3();
                                            } else if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi")) {
                                                l0.b0.l0(6, 0);
                                                l0.b0.l0(6, 1);
                                            }
                                        }
                                        qt.y0(267, (bArr[i65] >> 6) & 3);
                                        qt.y0(268, bArr[i2 + 3] & 255);
                                        qt.y0(i.a.Theme_findOnPageNextDrawable, bArr[i2 + 4] & 255);
                                        qt.y0(i.a.Theme_findOnPagePreviousDrawable, bArr[i2 + 5] & 255);
                                        qt.y0(271, 255 & bArr[i2 + 6]);
                                        int i66 = i2 + 7;
                                        qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (bArr[i66] >> 4) & 3);
                                        qt.y0(273, (bArr[i66] >> 0) & 15);
                                        int i67 = i2 + 8;
                                        qt.y0(274, (bArr[i67] >> 4) & 3);
                                        qt.y0(275, (bArr[i67] >> 0) & 15);
                                        break;
                                    case 79:
                                        qt.y0(277, (bArr[i2 + 2] >> 4) & 15);
                                        break;
                                    case 80:
                                        qt.y0(278, (bArr[i2 + 2] >> 4) & 15);
                                        qt.y0(279, bArr[i2 + 3] & 255);
                                        break;
                                    case 81:
                                        byte b10 = bArr[i2 + 2];
                                        if (b10 == 0) {
                                            qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, bArr[i2 + 3] & 255);
                                            qt.y0(281, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                            qt.y0(282, bArr[i2 + 6] & 255);
                                            qt.y0(283, bArr[i2 + 7] & 255);
                                            qt.y0(284, bArr[i2 + 8] & 255);
                                            qt.y0(285, bArr[i2 + 9] & 255);
                                            qt.y0(286, bArr[i2 + 10] & 255);
                                            qt.y0(287, bArr[i2 + 11] & 255);
                                            break;
                                        } else if (b10 == 1) {
                                            qt.y0(MediaProperties.HEIGHT_288, bArr[i2 + 3] & 255);
                                            qt.y0(289, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                            qt.y0(290, bArr[i2 + 6] & 255);
                                            qt.y0(291, bArr[i2 + 7] & 255);
                                            qt.y0(292, bArr[i2 + 8] & 255);
                                            qt.y0(293, bArr[i2 + 9] & 255);
                                            qt.y0(294, bArr[i2 + 10] & 255);
                                            qt.y0(295, bArr[i2 + 11] & 255);
                                            break;
                                        }
                                        break;
                                    case 82:
                                        qt.y0(296, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                                        break;
                                    case 83:
                                        qt.y0(297, bArr[i2 + 2] & 255);
                                        break;
                                    case 84:
                                        int i68 = i2 + 2;
                                        qt.y0(210, bArr[i68] & 255);
                                        byte b11 = bArr[i68];
                                        int i69 = this.f8045l;
                                        if (b11 != i69) {
                                            byte b12 = bArr[i68];
                                            this.f8045l = b12;
                                            if (b12 == 1) {
                                                t3();
                                            } else if (b12 == 2 || b12 == 3) {
                                                s3();
                                            } else if (b12 == 4) {
                                                o1.u.i();
                                            }
                                        } else if ((bArr[i68] == 2 || i69 == 3) && u0.b.D != 13) {
                                            s3();
                                        } else if (bArr[i68] == 1 && u0.b.D != 11) {
                                            t3();
                                        }
                                        if (bArr[i68] == 1) {
                                            qt.y0(211, bArr[i2 + 3] & 255);
                                            qt.y0(212, (255 & bArr[i2 + 5]) | ((bArr[i2 + 4] << 8) & 65280));
                                            int i70 = i2 + 6;
                                            qt.y0(213, (bArr[i70] >> 3) & 1);
                                            qt.y0(214, (bArr[i70] >> 2) & 1);
                                            qt.y0(215, (bArr[i70] >> 1) & 1);
                                            qt.y0(216, (bArr[i70] >> 0) & 1);
                                        } else if (bArr[i68] == 2 || bArr[i68] == 3) {
                                            qt.y0(217, bArr[i2 + 3] & 255);
                                            qt.y0(218, bArr[i2 + 4] & 255);
                                            qt.y0(219, bArr[i2 + 5] & 255);
                                            qt.y0(220, bArr[i2 + 6] & 255);
                                            qt.y0(221, 255 & bArr[i2 + 7]);
                                            int i71 = i2 + 8;
                                            qt.y0(222, (bArr[i71] >> 2) & 1);
                                            qt.y0(223, (bArr[i71] >> 1) & 1);
                                            qt.y0(224, (bArr[i71] >> 0) & 1);
                                        }
                                        break;
                                    case 85:
                                        qt.x0(225, new String(bArr, i2 + 2, 8, Charset.forName("ascii")));
                                        break;
                                    case 86:
                                        qt.y0(226, bArr[i2 + 2] & 255);
                                        qt.y0(227, bArr[i2 + 3] & 255);
                                        qt.y0(228, bArr[i2 + 4] & 255);
                                        qt.y0(229, bArr[i2 + 5] & 255);
                                        qt.y0(230, bArr[i2 + 6] & 255);
                                        qt.y0(231, bArr[i2 + 7] & 255);
                                        int i72 = i2 + 8;
                                        qt.y0(232, (bArr[i72] >> 4) & 1);
                                        qt.y0(233, bArr[i72] & DhcpPacket.DHCP_DOMAIN_NAME);
                                        qt.y0(234, bArr[i2 + 9] & 255);
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
        this.f8055v.j();
        qt.q0(this.f8041h);
        qt.q0(this.f8054u);
        l0.b0.p0(this.f8049p);
        o1.h.f16865a.d(this.f8053t);
        u0.c.f17386m.d(this.f8048o);
        u0.c.f17379f.d(this.f8046m);
        u0.c.f17374a.d(this.f8044k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 298) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 14) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            m3(8, iArr[0]);
        }
        if (i2 == 100) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 6, -125, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2]);
            return;
        }
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "C_CHANGE_PANORAMA  ==== " + iArr[0]);
            if (u0.b.f17347o == 0) {
                z.k.s(227, 4, -88, 1);
                return;
            } else {
                z.k.s(227, 4, -88, 0);
                return;
            }
        }
        if (i2 == 1005) {
            int i3 = nt.f8637c;
            if (i3 == 11 || i3 == 12 || i3 == 13) {
                if (iArr[0] == 2) {
                    z.k.s(227, 4, -88, 8);
                    return;
                } else if (iArr[0] == 1) {
                    z.k.s(227, 4, -88, 6);
                    return;
                } else {
                    if (iArr[0] == 0) {
                        z.k.s(227, 4, -88, 7);
                        return;
                    }
                    return;
                }
            }
            if (iArr[0] == 3) {
                z.k.s(227, 4, -88, 3);
                return;
            }
            if (iArr[0] == 2) {
                z.k.s(227, 4, -88, 4);
                return;
            } else if (iArr[0] == 1) {
                z.k.s(227, 4, -88, 2);
                return;
            } else {
                if (iArr[0] == 0) {
                    z.k.s(227, 4, -88, 5);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    m3(3, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    m3(4, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    m3(5, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    m3(7, iArr[0]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 17:
                        if (iArr != null && iArr.length > 0) {
                            m3(12, iArr[0]);
                            break;
                        }
                        break;
                    case 18:
                        if (iArr != null && iArr.length > 0) {
                            m3(13, iArr[0]);
                            break;
                        }
                        break;
                    case 19:
                        if (iArr != null && iArr.length > 0) {
                            m3(14, iArr[0]);
                            break;
                        }
                        break;
                    case 20:
                        if (iArr != null && iArr.length > 0) {
                            m3(15, iArr[0]);
                            break;
                        }
                        break;
                    case 21:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            m3(1, iArr[0]);
                            break;
                        }
                        break;
                    case 22:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            m3(2, iArr[0]);
                            break;
                        }
                        break;
                    case 23:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            m3(16, iArr[0]);
                            break;
                        }
                        break;
                    case 24:
                        if (iArr != null && iArr.length > 0) {
                            m3(9, iArr[0] + 1);
                            break;
                        }
                        break;
                    case 25:
                        if (iArr != null && iArr.length > 0) {
                            m3(10, iArr[0]);
                            break;
                        }
                        break;
                    case 26:
                        if (iArr != null && iArr.length > 0) {
                            m3(11, iArr[0]);
                            break;
                        }
                        break;
                    case 27:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            m3(6, iArr[0]);
                            break;
                        }
                        break;
                    case 28:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 6, -126, (byte) (iArr[0] == 2 ? 65 : iArr[0] == 3 ? 34 : 0), 0, 0);
                            break;
                        }
                        break;
                    case 29:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 6, -126, (byte) iArr[0], 0, 0);
                            break;
                        }
                        break;
                    case 30:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            l3(2, iArr[0]);
                            break;
                        }
                        break;
                    case 31:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            l3(3, iArr[0]);
                            break;
                        }
                        break;
                    case 32:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            l3(1, iArr[0]);
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 36:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    l3(7, iArr[0]);
                                    break;
                                }
                                break;
                            case 37:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    l3(6, iArr[0]);
                                    break;
                                }
                                break;
                            case 38:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    l3(8, iArr[0]);
                                    break;
                                }
                                break;
                            case 39:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        l3(10, 2);
                                    } else {
                                        l3(10, 1);
                                    }
                                    break;
                                }
                                break;
                            case 40:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        l3(4, 2);
                                    } else {
                                        l3(4, 1);
                                    }
                                    break;
                                }
                                break;
                            case 41:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        l3(5, 2);
                                    } else {
                                        l3(5, 1);
                                    }
                                    break;
                                }
                                break;
                            case 42:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    }
                                    if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    l3(9, iArr[0]);
                                    break;
                                }
                                break;
                            case 43:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] != 0) {
                                        iArr[0] = 1;
                                    }
                                    l3(11, iArr[0]);
                                    break;
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 50:
                                        if (iArr != null && iArr.length > 0) {
                                            if (iArr[0] == 1) {
                                                T = 1;
                                                U = 0;
                                            }
                                            v3();
                                            break;
                                        }
                                        break;
                                    case 51:
                                        if (iArr != null && iArr.length > 0) {
                                            L = iArr[0];
                                            R = 0;
                                            S = 1;
                                            T = 0;
                                            U = 1;
                                            v3();
                                            break;
                                        }
                                        break;
                                    case 52:
                                        if (iArr != null && iArr.length > 0) {
                                            M = iArr[0];
                                            R = 0;
                                            S = 1;
                                            T = 0;
                                            U = 1;
                                            v3();
                                            break;
                                        }
                                        break;
                                    case 53:
                                        if (iArr != null && iArr.length > 0) {
                                            N = iArr[0];
                                            R = 0;
                                            S = 1;
                                            T = 0;
                                            U = 1;
                                            v3();
                                            break;
                                        }
                                        break;
                                    case 54:
                                        if (iArr != null && iArr.length > 0) {
                                            O = iArr[0];
                                            R = 0;
                                            S = 1;
                                            T = 0;
                                            U = 1;
                                            v3();
                                            break;
                                        }
                                        break;
                                    case 55:
                                        if (iArr != null && iArr.length > 0) {
                                            P = iArr[0];
                                            R = 0;
                                            S = 1;
                                            T = 0;
                                            U = 1;
                                            v3();
                                            break;
                                        }
                                        break;
                                    case 56:
                                        if (iArr != null && iArr.length > 0) {
                                            Q = iArr[0];
                                            R = 0;
                                            S = 1;
                                            T = 0;
                                            U = 1;
                                            v3();
                                            break;
                                        }
                                        break;
                                    default:
                                        switch (i2) {
                                            case 60:
                                                if (iArr != null && iArr.length > 0) {
                                                    L = iArr[0];
                                                    R = 1;
                                                    S = 0;
                                                    T = 0;
                                                    U = 1;
                                                    v3();
                                                    break;
                                                }
                                                break;
                                            case 61:
                                                if (iArr != null && iArr.length > 0) {
                                                    M = iArr[0];
                                                    R = 1;
                                                    S = 0;
                                                    T = 0;
                                                    U = 1;
                                                    v3();
                                                    break;
                                                }
                                                break;
                                            case 62:
                                                if (iArr != null && iArr.length > 0) {
                                                    N = iArr[0];
                                                    R = 1;
                                                    S = 0;
                                                    T = 0;
                                                    U = 1;
                                                    v3();
                                                    break;
                                                }
                                                break;
                                            case 63:
                                                if (iArr != null && iArr.length > 0) {
                                                    O = iArr[0];
                                                    R = 1;
                                                    S = 0;
                                                    T = 0;
                                                    U = 1;
                                                    v3();
                                                    break;
                                                }
                                                break;
                                            case 64:
                                                if (iArr != null && iArr.length > 0) {
                                                    P = iArr[0];
                                                    R = 1;
                                                    S = 0;
                                                    T = 0;
                                                    U = 1;
                                                    v3();
                                                    break;
                                                }
                                                break;
                                            case 65:
                                                if (iArr != null && iArr.length > 0) {
                                                    Q = iArr[0];
                                                    R = 1;
                                                    S = 0;
                                                    T = 0;
                                                    U = 1;
                                                    v3();
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 70:
                                                        if (iArr != null && iArr.length > 0) {
                                                            z.k.s(227, 4, -113, (byte) iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 71:
                                                        if (iArr != null && iArr.length > 0) {
                                                            z.k.s(227, 4, -113, (byte) iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 72:
                                                        if (iArr != null && iArr.length > 0) {
                                                            z.k.s(227, 4, -113, (byte) iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 73:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(18, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 74:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(19, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 75:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(20, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 76:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(21, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 77:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(22, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 78:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(17, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 79:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(23, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 80:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            l3(13, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 81:
                                                        if (iArr != null && iArr.length > 0) {
                                                            l3(12, 1);
                                                            a.i.a0(50L);
                                                            l3(12, 0);
                                                            break;
                                                        }
                                                        break;
                                                    case 82:
                                                        b3(iArr[0], iArr[1]);
                                                        break;
                                                    case 83:
                                                        if (iArr != null && iArr.length > 0) {
                                                            z.k.s(227, 4, -115, (byte) iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 84:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(24, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 85:
                                                        if (iArr != null && iArr.length > 0) {
                                                            if (iArr[0] != 0) {
                                                                iArr[0] = 1;
                                                            }
                                                            m3(25, iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 86:
                                                        if (iArr != null && iArr.length > 0) {
                                                            l3(14, 1);
                                                            a.i.a0(50L);
                                                            l3(14, 0);
                                                            break;
                                                        }
                                                        break;
                                                    case 87:
                                                        if (iArr != null && iArr.length > 0) {
                                                            l3(iArr[0], iArr[1]);
                                                            break;
                                                        }
                                                        break;
                                                    case 88:
                                                        if (iArr != null && iArr.length > 0) {
                                                            m3(iArr[0], iArr[1]);
                                                            break;
                                                        }
                                                        break;
                                                    case 89:
                                                        if (iArr != null && iArr.length > 0) {
                                                            c3(iArr[0]);
                                                            break;
                                                        }
                                                        break;
                                                    case 90:
                                                        if (iArr != null && iArr.length > 0) {
                                                            z.k.s(227, 5, -58, iArr[0], iArr[1]);
                                                            break;
                                                        }
                                                        break;
                                                    case 91:
                                                        if (iArr != null && iArr.length > 0) {
                                                            a3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
                                                            break;
                                                        }
                                                        break;
                                                    case 92:
                                                        if (iArr != null && iArr.length > 0) {
                                                            z.k.s(227, 5, -123, iArr[0], iArr[1]);
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

    public void a3(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        Y = i2;
        Z = i3;
        f8026a0 = i4;
        f8027b0 = i6;
        f8028c0 = i5;
        f8029d0 = (i7 >> 7) & 1;
        f8030e0 = (i7 >> 6) & 1;
        f8031f0 = i7 & 15;
        f8032g0 = (i8 >> 4) & 15;
        f8033h0 = i8 & 15;
        f8034i0 = i9 & 255;
        z.k.s(227, 8, 197, i2, i3, i4, i5, i6, i7, i8, i9);
        qt.y0(237, Y);
        int iB = this.f8055v.b(4, 7);
        int i10 = Y;
        if (iB != i10) {
            this.f8055v.g(4, i10);
        }
        qt.y0(238, Z);
        int iB2 = this.f8055v.b(5, 7);
        int i11 = Z;
        if (iB2 != i11) {
            this.f8055v.g(5, i11);
        }
        qt.y0(239, f8026a0);
        int iB3 = this.f8055v.b(6, 7);
        int i12 = f8026a0;
        if (iB3 != i12) {
            this.f8055v.g(6, i12);
        }
        qt.y0(240, f8028c0);
        int iB4 = this.f8055v.b(8, 7);
        int i13 = f8028c0;
        if (iB4 != i13) {
            this.f8055v.g(8, i13);
        }
        qt.y0(i.a.Theme_actionModeShareDrawable, f8027b0);
        int iB5 = this.f8055v.b(7, 7);
        int i14 = f8027b0;
        if (iB5 != i14) {
            this.f8055v.g(7, i14);
        }
        qt.y0(i.a.Theme_actionModeFindDrawable, f8029d0);
        int iB6 = this.f8055v.b(9, 0);
        int i15 = f8029d0;
        if (iB6 != i15) {
            this.f8055v.g(9, i15);
        }
        qt.y0(i.a.Theme_actionModeWebSearchDrawable, f8030e0);
        int iB7 = this.f8055v.b(10, 0);
        int i16 = f8030e0;
        if (iB7 != i16) {
            this.f8055v.g(10, i16);
        }
        qt.y0(i.a.Theme_actionModePopupWindowStyle, f8031f0);
        int iB8 = this.f8055v.b(11, 0);
        int i17 = f8031f0;
        if (iB8 != i17) {
            this.f8055v.g(11, i17);
        }
        qt.y0(i.a.Theme_preferenceFragmentStyle, f8032g0);
        int iB9 = this.f8055v.b(12, 0);
        int i18 = f8032g0;
        if (iB9 != i18) {
            this.f8055v.g(12, i18);
        }
        qt.y0(i.a.Theme_preferencePanelStyle, f8033h0);
        int iB10 = this.f8055v.b(13, 0);
        int i19 = f8033h0;
        if (iB10 != i19) {
            this.f8055v.g(13, i19);
        }
        qt.y0(i.a.Theme_preferenceHeaderPanelStyle, f8034i0);
        int iB11 = this.f8055v.b(14, 0);
        int i20 = f8034i0;
        if (iB11 != i20) {
            this.f8055v.g(14, i20);
        }
    }

    public void b3(int i2, int i3) {
        V = i2;
        qt.y0(186, i2);
        int iB = this.f8055v.b(1, 0);
        int i4 = V;
        if (iB != i4) {
            this.f8055v.g(1, i4);
        }
        W = i3;
        qt.y0(187, i3);
        int iB2 = this.f8055v.b(2, 0);
        int i5 = W;
        if (iB2 != i5) {
            this.f8055v.g(2, i5);
        }
        z.k.s(227, 5, -116, (byte) V, (byte) W);
    }

    public void c3(int i2) {
        X = i2;
        qt.y0(56, i2);
        int iB = this.f8055v.b(3, 0);
        int i3 = X;
        if (iB != i3) {
            this.f8055v.g(3, i3);
        }
    }

    public final void l3(int i2, int i3) {
        z.k.s(227, 5, -118, (byte) i2, (byte) i3);
    }

    public final void m3(int i2, int i3) {
        z.k.s(227, 5, -128, (byte) i2, (byte) i3);
    }

    public final void n3() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.canbus.ActivityLauncher");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void o3() {
        if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void p3() {
        if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void q3() {
        if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void r3() {
        if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void s3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ407CarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ407CarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void t3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.biaozhi408.RZC_BZ407CarRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.biaozhi408.RZC_BZ407CarRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void u3() {
        z.k.s(227, 15, -119, (byte) K, (byte) L, (byte) M, (byte) N, (byte) O, (byte) P, (byte) Q, 0, 0, 0, 0, 0);
    }

    public final void v3() {
        K = 0;
        int i2 = 0 | (R << 7);
        K = i2;
        int i3 = i2 | (S << 6);
        K = i3;
        int i4 = i3 | (T << 5);
        K = i4;
        K = i4 | (U << 4);
        u3();
    }
}
