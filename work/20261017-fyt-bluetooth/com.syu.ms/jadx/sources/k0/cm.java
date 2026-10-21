package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;
import app.App;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class cm extends lt implements o1.q {
    public static int G = 0;
    public static int H = 0;
    public static int I = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4115f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f4111b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4112c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4113d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4114e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4116g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f4117h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 1}, new int[]{10, 26}, new int[]{11, 13}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, 54}, new int[]{52, 24}, new int[]{53, -1}, new int[]{54, 53}, new int[]{55, 9}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 3}, new int[]{83, 4}, new int[]{84, 11}, new int[]{86, 78}, new int[]{87, 58}, new int[]{89, 38}, new int[]{90, 12}, new int[]{91, 25}, new int[]{92, 40}, new int[]{93, 41}, new int[]{94, 42}, new int[]{95, 43}, new int[]{111, 54}, new int[]{143, 16}, new int[]{240, -1}, new int[]{i.a.Theme_actionModeShareDrawable, -1}, new int[]{i.a.Theme_actionModeFindDrawable, -1}, new int[]{i.a.Theme_actionModeWebSearchDrawable, -1}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4118i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4119j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String[][] f4120k = (String[][]) Array.newInstance((Class<?>) String.class, 5, 3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String[][] f4121l = (String[][]) Array.newInstance((Class<?>) String.class, 4, 3);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4122m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f4123n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4124o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4125p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f4126q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4127r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f4128s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4129t = 255;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4130u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f4131v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public o1.g0 f4132w = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f4133x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f4134y = 2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f4135z = 3;
    public int A = 0;
    public Runnable B = new g();
    public Runnable C = new h();
    public int[] D = {34, 204};
    public int E = 0;
    public int F = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 53, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 130, 6, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute, time.second);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cm.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (qt.k0()) {
                return;
            }
            if (u0.b.f17347o == 1) {
                qt.y0(173, 1);
            } else {
                qt.y0(173, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 11 || i2 == 13) {
                return;
            }
            z.k.s(227, -58, 2, 176, 3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cm.this.f4128s = u0.b.f17359s0;
            if (cm.this.f4128s > 360.0f) {
                cm.e3(cm.this, 360.0f);
            }
            if (cm.this.f4128s < 0.0f) {
                cm.e3(cm.this, 360.0f);
                cm cmVar = cm.this;
                cmVar.f4128s = 360.0f - Math.abs(cmVar.f4128s);
            }
            if ((cm.this.f4128s <= 22.5d && cm.this.f4128s >= 0.0f) || (cm.this.f4128s >= 337.5d && cm.this.f4128s <= 360.0f)) {
                cm.this.f4130u = 0;
            } else if (cm.this.f4128s > 22.5d && cm.this.f4128s < 67.5d) {
                cm.this.f4130u = 8;
            } else if (cm.this.f4128s >= 67.5d && cm.this.f4128s <= 112.5d) {
                cm.this.f4130u = 16;
            } else if (cm.this.f4128s > 112.5d && cm.this.f4128s < 157.5d) {
                cm.this.f4130u = 24;
            } else if (cm.this.f4128s >= 157.5d && cm.this.f4128s <= 202.5d) {
                cm.this.f4130u = 32;
            } else if (cm.this.f4128s > 202.5d && cm.this.f4128s < 247.5d) {
                cm.this.f4130u = 40;
            } else if (cm.this.f4128s >= 247.5d && cm.this.f4128s <= 292.5d) {
                cm.this.f4130u = 48;
            } else if (cm.this.f4128s <= 292.5d || cm.this.f4128s >= 337.5d) {
                cm.this.f4130u = 0;
            } else {
                cm.this.f4130u = 56;
            }
            if (cm.this.f4130u != cm.this.f4129t) {
                if (u0.b.X1 > 2) {
                    z.k.s(227, -57, 2, cm.this.f4130u, 0);
                }
                cm cmVar2 = cm.this;
                cmVar2.f4129t = cmVar2.f4130u;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(cm.this.C);
            cm.this.A = 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cm cmVar = cm.this;
            int i2 = cmVar.A - 1;
            cmVar.A = i2;
            if (i2 <= 0) {
                l0.b0.p0(cmVar.C);
                cm.this.A = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                switch (nt.f8633a) {
                    case 1245639:
                        cm cmVar2 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar2.D[cmVar2.E % 2], 37, 17, -86});
                        cm cmVar3 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar3.D[cmVar3.E % 2], 37, 17, -86});
                        cm cmVar4 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar4.D[cmVar4.E % 2], 37, 17, -86});
                        break;
                    case 1311174:
                        z.k.s(227, 193, 2, 64, 0);
                        break;
                    case 1311175:
                        cm cmVar5 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar5.D[cmVar5.E % 2], 37, 18, -86});
                        cm cmVar6 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar6.D[cmVar6.E % 2], 37, 18, -86});
                        cm cmVar7 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar7.D[cmVar7.E % 2], 37, 18, -86});
                        break;
                    case 1376710:
                        z.k.s(227, 193, 2, 0, 0);
                        break;
                    case 1376711:
                        cm cmVar8 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar8.D[cmVar8.E % 2], 37, 19, -86});
                        cm cmVar9 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar9.D[cmVar9.E % 2], 37, 19, -86});
                        cm cmVar10 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar10.D[cmVar10.E % 2], 37, 19, -86});
                        break;
                    case 1442246:
                        z.k.s(227, 193, 2, 192, 0);
                        break;
                    case 1442247:
                        cm cmVar11 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar11.D[cmVar11.E % 2], 37, 20, -86});
                        cm cmVar12 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar12.D[cmVar12.E % 2], 37, 20, -86});
                        cm cmVar13 = cm.this;
                        cm.u3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) cmVar13.D[cmVar13.E % 2], 37, 20, -86});
                        break;
                    case 1507782:
                        z.k.s(227, 193, 2, 128, 0);
                        break;
                    case 1573318:
                        z.k.s(227, 193, 2, 96, 0);
                        break;
                    case 1638854:
                        z.k.s(227, 193, 2, 32, 0);
                        break;
                    case 1704390:
                        z.k.s(227, 193, 2, 224, 0);
                        break;
                    case 1769926:
                        z.k.s(227, 193, 2, 160, 0);
                        break;
                    case 9634248:
                    case 11403716:
                        z.k.s(227, 193, 2, 0, 0);
                        break;
                    case 9699784:
                    case 14090692:
                        z.k.s(227, 193, 2, 128, 0);
                        break;
                }
                cm cmVar14 = cm.this;
                cmVar14.s3(cmVar14.f4132w.b(1, 0));
                cm cmVar15 = cm.this;
                cmVar15.r3(cmVar15.f4132w.b(2, 0));
                cm cmVar16 = cm.this;
                cmVar16.t3(cmVar16.f4132w.b(3, 1));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004e  */
    public static void a3() {
        int[] iArr = new int[9];
        int i2 = 0;
        for (int i3 = 0; i3 < 9; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 200;
        iArr[1] = 7;
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr[2] = 1;
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
            int i6 = w0.d.f17797i;
            iArr[4] = (i6 >> 8) & 255;
            iArr[5] = i6 & 255;
            iArr[6] = w0.d.f17798j;
        } else if (i4 != 4) {
            switch (i4) {
                case 7:
                    iArr[2] = 2;
                    int i7 = o0.e.B;
                    iArr[3] = i7 & 255;
                    iArr[4] = (i7 >> 8) & 255;
                    int i8 = o0.e.C;
                    iArr[5] = i8 & 255;
                    iArr[6] = (i8 >> 8) & 255;
                    break;
                case 8:
                case 9:
                case 10:
                    iArr[2] = 4;
                    int i9 = u0.b.r3;
                    iArr[3] = i9 & 255;
                    iArr[4] = (i9 >> 8) & 255;
                    int i10 = u0.b.s3;
                    iArr[5] = i10 & 255;
                    iArr[6] = (i10 >> 8) & 255;
                    int i11 = u0.b.t3;
                    iArr[7] = i11 & 255;
                    iArr[8] = (i11 >> 8) & 255;
                    break;
                default:
                    iArr[2] = 3;
                    break;
            }
        } else {
            iArr[2] = 2;
            int i12 = o0.e.B;
            iArr[3] = i12 & 255;
            iArr[4] = (i12 >> 8) & 255;
            int i13 = o0.e.C;
            iArr[5] = i13 & 255;
            iArr[6] = (i13 >> 8) & 255;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[10];
        iArr2[0] = 227;
        while (i2 < 9) {
            int i14 = i2 + 1;
            iArr2[i14] = iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    public static /* synthetic */ float e3(cm cmVar, float f2) {
        float f3 = cmVar.f4128s % f2;
        cmVar.f4128s = f3;
        return f3;
    }

    public static void u3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f4132w.a();
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.B, 1);
        u0.c.f17374a.a(this.f4127r, 1);
        yVar.a(this.f4127r, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        mtVar.f8314i = 1;
        mtVar.f8322q = 1;
        if (App.c().getResources().getConfiguration().orientation != 1) {
            switch (nt.f8633a) {
                case 1311174:
                case 1376710:
                case 1442246:
                case 1507782:
                case 1573318:
                case 1638854:
                case 1704390:
                case 1769926:
                    qt.z(this.f4125p);
                    break;
            }
        } else {
            this.f7886a.f8314i = 0;
            qt.z(this.f4125p);
        }
        o1.h.f16865a.a(this.f4131v, 1);
        u0.c.f17379f.a(this.f4126q, 1);
        qt.z(this.f4124o);
        qt.x(this.f4123n);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 43) {
            int i7 = i2 + 2;
            qt.y0(158, (bArr[i7] >> 4) & 15);
            qt.y0(159, (bArr[i7] >> 0) & 15);
            int i8 = i2 + 3;
            qt.y0(160, (bArr[i8] >> 4) & 15);
            qt.y0(161, (bArr[i8] >> 0) & 15);
            int i9 = i2 + 4;
            qt.y0(162, (bArr[i9] >> 4) & 15);
            qt.y0(163, 15 & (bArr[i9] >> 0));
            int i10 = i2 + 5;
            qt.y0(164, (bArr[i10] >> 6) & 3);
            qt.y0(165, (bArr[i10] >> 4) & 3);
            qt.y0(166, (bArr[i10] >> 2) & 3);
            qt.y0(167, (bArr[i10] >> 0) & 3);
        }
        if (b2 == 44) {
            qt.y0(168, bArr[i2 + 2] & 255);
            qt.y0(169, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 85) {
            int i11 = bArr[i2 + 2] & 255;
            int i12 = i2 + 3;
            int i13 = bArr[i12] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i12] & 255;
            }
            if (i11 == 16) {
                qt.y0(27, -2);
            } else if (i11 == 80) {
                qt.y0(27, -3);
            } else if (i11 < 30 || i11 > 60) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i11);
            }
            if (i13 == 16) {
                qt.y0(28, -2);
            } else if (i13 == 80) {
                qt.y0(28, -3);
            } else if (i13 < 30 || i13 > 60) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i13);
            }
            int i14 = i2 + 4;
            qt.y0(21, (bArr[i14] >> 0) & 15);
            switch ((bArr[i14] >> 4) & 15) {
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
            int i15 = i2 + 5;
            qt.y0(29, (bArr[i15] >> 0) & 3);
            qt.y0(30, (bArr[i15] >> 4) & 3);
            qt.y0(31, (bArr[i15] >> 2) & 3);
            qt.y0(32, (bArr[i15] >> 6) & 3);
            int i16 = i2 + 6;
            qt.y0(13, (bArr[i16] >> 0) & 1);
            qt.y0(11, (bArr[i16] >> 1) & 1);
            qt.y0(14, (bArr[i16] >> 2) & 1);
            qt.y0(53, (bArr[i16] >> 4) & 1);
            qt.y0(65, (bArr[i16] >> 5) & 1);
            qt.y0(16, (bArr[i16] >> 6) & 1);
            qt.y0(15, (bArr[i16] >> 7) & 1);
            int i17 = i2 + 7;
            qt.y0(12, (bArr[i17] >> 0) & 3);
            qt.y0(67, (bArr[i17] >> 3) & 1);
            qt.y0(66, (bArr[i17] >> 4) & 1);
            int i18 = bArr[i2 + 9] & 255;
            if (i18 == 255 || i18 == 0) {
                u0.d.B3(0);
                return;
            } else {
                SystemProperties.getInt("persist.fyt.temperature", 0);
                u0.d.B3((i18 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
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
            int i19 = i2 + 2;
            qt.y0(110, bArr[i19]);
            p3(bArr[i19]);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4116g = b3 & 255;
                int i20 = 0;
                while (true) {
                    iArr = this.f4117h;
                    if (i20 < iArr.length) {
                        int i21 = this.f4116g;
                        if (i21 != iArr[i20][0]) {
                            i20++;
                        } else if (i21 != 0) {
                            this.f4115f = i20;
                        }
                    }
                }
                int i22 = this.f4116g;
                if (i22 == 3) {
                    if ((b4 & 255) == 1) {
                        int i23 = h0.c.E;
                        if (i23 == 3 || i23 == 4 || i23 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                    break;
                } else if (i22 == 4) {
                    if ((b4 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                    break;
                } else if (i22 == 84) {
                    if ((b4 & 255) == 1) {
                        z.k.s(227, 192, 2, 14, 11);
                    }
                    break;
                } else {
                    switch (i22) {
                        case 240:
                            for (int i24 = 0; i24 < (b4 & 255); i24++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case i.a.Theme_actionModeShareDrawable /* 241 */:
                            for (int i25 = 0; i25 < (b4 & 255); i25++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case i.a.Theme_actionModeFindDrawable /* 242 */:
                            for (int i26 = 0; i26 < (b4 & 255); i26++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                            for (int i27 = 0; i27 < (b4 & 255); i27++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            int i28 = b4 & 255;
                            if (i28 == 1) {
                                if (i20 < iArr.length) {
                                    l0.b0.l0(iArr[i20][1], 0);
                                }
                            } else if (i28 == 0) {
                                int i29 = this.f4115f;
                                if (i29 < iArr.length && i29 != 255) {
                                    l0.b0.l0(iArr[i29][1], 1);
                                }
                                this.f4115f = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                switch (nt.f8633a) {
                    case 1245639:
                    case 1311175:
                    case 1376711:
                    case 1442247:
                        break;
                    default:
                        int i30 = i2 + 2;
                        qt.y0(10, (bArr[i30] >> 7) & 1);
                        qt.y0(11, (bArr[i30] >> 6) & 1);
                        qt.y0(12, (bArr[i30] >> 5) & 1);
                        qt.y0(13, (bArr[i30] >> 3) & 1);
                        qt.y0(14, (bArr[i30] >> 2) & 1);
                        qt.y0(15, (bArr[i30] >> 1) & 1);
                        qt.y0(16, (bArr[i30] >> 0) & 1);
                        int i31 = i2 + 3;
                        qt.y0(18, (bArr[i31] >> 7) & 1);
                        qt.y0(19, (bArr[i31] >> 6) & 1);
                        qt.y0(20, (bArr[i31] >> 5) & 1);
                        qt.y0(21, (bArr[i31] >> 0) & 15);
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            int i32 = i2 + 4;
                            if ((bArr[i32] & 255) == 0) {
                                qt.y0(28, -2);
                            } else if ((bArr[i32] & 255) == 127) {
                                qt.y0(28, -3);
                            } else if ((bArr[i32] & 255) < 31 || (bArr[i32] & 255) > 59) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, bArr[i32] & 255);
                            }
                            int i33 = i2 + 5;
                            if ((bArr[i33] & 255) == 0) {
                                qt.y0(27, -2);
                            } else if ((bArr[i33] & 255) == 127) {
                                qt.y0(27, -3);
                            } else if ((bArr[i33] & 255) < 31 || (bArr[i33] & 255) > 59) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, bArr[i33] & 255);
                            }
                        } else {
                            int i34 = i2 + 4;
                            if ((bArr[i34] & 255) == 0) {
                                qt.y0(27, -2);
                            } else if ((bArr[i34] & 255) == 127) {
                                qt.y0(27, -3);
                            } else if ((bArr[i34] & 255) < 31 || (bArr[i34] & 255) > 59) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, bArr[i34] & 255);
                            }
                            int i35 = i2 + 5;
                            if ((bArr[i35] & 255) == 0) {
                                qt.y0(28, -2);
                            } else if ((bArr[i35] & 255) == 127) {
                                qt.y0(28, -3);
                            } else if ((bArr[i35] & 255) < 31 || (bArr[i35] & 255) > 59) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, bArr[i35] & 255);
                            }
                        }
                        int i36 = i2 + 6;
                        qt.y0(67, (bArr[i36] >> 0) & 1);
                        qt.y0(66, (bArr[i36] >> 1) & 1);
                        qt.y0(53, (bArr[i36] >> 2) & 1);
                        qt.y0(65, (bArr[i36] >> 3) & 1);
                        qt.y0(37, (bArr[i36] >> 6) & 1);
                        int i37 = i2 + 8;
                        qt.y0(40, 15 & (bArr[i37] >> 0));
                        qt.y0(44, (bArr[i37] >> 4) & 7);
                        qt.y0(42, (bArr[i37] >> 7) & 1);
                        int i38 = i2 + 9;
                        qt.y0(29, (bArr[i38] >> 0) & 3);
                        qt.y0(30, (bArr[i38] >> 2) & 3);
                        qt.y0(31, (bArr[i38] >> 4) & 3);
                        qt.y0(32, (bArr[i38] >> 6) & 3);
                        int i39 = bArr[i2 + 7] & 255;
                        u0.d.B3((i39 & 128) != 0 ? 1000 - ((256 - i39) * 10) : (i39 * 10) + 1000);
                        break;
                }
                break;
            case 34:
                u0.d.R2(l0.c0.g1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.g1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.g1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.g1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i40 = i2 + 2;
                int i41 = bArr[i40] & 255;
                int i42 = i2 + 3;
                int i43 = bArr[i42] & 255;
                int i44 = i2 + 4;
                int i45 = bArr[i44] & 255;
                int i46 = i2 + 5;
                int i47 = bArr[i46] & 255;
                if (i41 == 0 && i43 == 0 && i45 == 0 && i47 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i41 || l0.c0.f13014h != i43 || l0.c0.f13015i != i45 || l0.c0.f13016j != i47) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i41;
                l0.c0.f13014h = i43;
                l0.c0.f13015i = i45;
                l0.c0.f13016j = i47;
                u0.d.D2(l0.c0.g1(bArr[i40] & 255));
                u0.d.E2(l0.c0.g1(bArr[i42] & 255));
                u0.d.F2(l0.c0.g1(bArr[i44] & 255));
                u0.d.G2(l0.c0.g1(bArr[i46] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                if (((bArr[i2 + 3] >> 4) & 1) == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                qt.y0(113, (bArr[i2 + 4] >> 7) & 1);
                qt.y0(152, (bArr[i2 + 5] >> 7) & 1);
                int i48 = i2 + 7;
                qt.y0(155, (bArr[i48] >> 4) & 1);
                qt.y0(156, (bArr[i48] >> 7) & 1);
                qt.y0(114, (bArr[i48] >> 5) & 1);
                qt.y0(115, (bArr[i48] >> 6) & 1);
                break;
            case 37:
                int i49 = i2 + 2;
                qt.y0(113, (bArr[i49] >> 2) & 1);
                qt.y0(113, (bArr[i49] >> 3) & 1);
                break;
            default:
                switch (b2) {
                    case 39:
                        qt.y0(118, bArr[i2 + 2] & 255);
                        break;
                    case 40:
                        if (!qt.k0()) {
                            int i50 = i2 + 2;
                            qt.y0(170, (bArr[i50] >> 1) & 3);
                            qt.y0(171, (bArr[i50] >> 0) & 1);
                            qt.y0(172, (bArr[i2 + 3] >> 0) & 255);
                            break;
                        }
                        break;
                    case 41:
                        int i51 = bArr[i2 + 2] & 255;
                        if (i51 == 1) {
                            int i52 = i2 + 3;
                            o1.x.C(nt.f8643f, 1049, new int[]{11, (8 & (((bArr[i52] >> 0) & 1) << 3)) | ((((bArr[i52] >> 1) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64)}, null, null);
                            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                                l0.c0.b((bArr[i52] >> 0) & 1, (bArr[i52] >> 1) & 1, 0);
                            } else {
                                l0.c0.a((bArr[i52] >> 0) & 1, (bArr[i52] >> 1) & 1, 0);
                            }
                            break;
                        } else if (i51 == 2) {
                            int i53 = i2 + 3;
                            qt.y0(174, (bArr[i53] >> 1) & 1);
                            qt.y0(175, (bArr[i53] >> 0) & 1);
                            qt.y0(176, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                            qt.y0(177, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY));
                            break;
                        } else if (i51 == 3) {
                            qt.y0(178, bArr[i2 + 3] & 255);
                            qt.y0(179, bArr[i2 + 4] & 255);
                            qt.y0(180, bArr[i2 + 5] & 255);
                            qt.y0(181, bArr[i2 + 6] & 255);
                            qt.y0(182, bArr[i2 + 7] & 255);
                            qt.y0(183, bArr[i2 + 8] & 255);
                            qt.y0(184, bArr[i2 + 9] & 255);
                            qt.y0(185, bArr[i2 + 10] & 255);
                            qt.y0(186, bArr[i2 + 11] & 255);
                            break;
                        }
                        break;
                    default:
                        switch (b2) {
                            case 80:
                                int[] iArr2 = new int[6];
                                for (int i54 = 0; i54 < 6; i54++) {
                                    iArr2[i54] = bArr[i2 + 2 + i54];
                                }
                                o1.x.B(nt.f8643f, 105, iArr2);
                                break;
                            case 81:
                                int i55 = i2 + 2;
                                int i56 = i2 + 4;
                                o1.x.B(nt.f8643f, 99, new int[]{bArr[i55] & 255, bArr[i56] & 255, bArr[i2 + 5] & 255});
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    int i57 = (i2 + i3) - 1;
                                    for (int i58 = i2 + 6; i58 < i57; i58 += 2) {
                                        sb.append((char) ((bArr[i58 + 1] & 255) | (bArr[i58] << 8)));
                                    }
                                    qt.z0(100, new int[]{bArr[i55] & 255, bArr[i2 + 3] & 255, bArr[i56] & 255}, sb.toString());
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
                                        qt.y0(119, bArr[i2 + 2] & 255);
                                        qt.y0(120, bArr[i2 + 3] & 255);
                                        qt.y0(128, bArr[i2 + 6] & 255);
                                        qt.y0(121, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                                        break;
                                    case 97:
                                        String str = new String(bArr, i2 + 4, bArr[i2 + 1] - 2, Charset.forName("ascii"));
                                        switch (bArr[i2 + 3] & 255) {
                                            case 1:
                                                qt.x0(122, str);
                                                break;
                                            case 2:
                                                qt.x0(123, str);
                                                break;
                                            case 3:
                                                qt.x0(124, str);
                                                break;
                                            case 4:
                                                qt.x0(125, str);
                                                break;
                                            case 5:
                                                qt.x0(126, str);
                                                break;
                                            case 6:
                                                qt.x0(127, str);
                                                break;
                                        }
                                        break;
                                    case 98:
                                        qt.y0(129, bArr[i2 + 2] & 255);
                                        qt.y0(130, bArr[i2 + 3] & 255);
                                        int i59 = i2 + 4;
                                        qt.y0(131, (bArr[i59] >> 7) & 1);
                                        qt.y0(132, (bArr[i59] >> 6) & 1);
                                        qt.y0(133, (bArr[i59] >> 5) & 1);
                                        qt.y0(134, bArr[i2 + 5] & 255);
                                        qt.y0(135, bArr[i2 + 6] & 255);
                                        qt.y0(136, bArr[i2 + 7] & 255);
                                        qt.y0(137, bArr[i2 + 8] & 255);
                                        break;
                                    case 99:
                                        qt.y0(139, bArr[i2 + 2] & 255);
                                        int i60 = i2 + 3;
                                        qt.y0(140, (bArr[i60] >> 4) & 15);
                                        qt.y0(141, (bArr[i60] >> 0) & 15);
                                        int i61 = i2 + 4;
                                        qt.y0(143, (bArr[i61] >> 4) & 15);
                                        qt.y0(144, (bArr[i61] >> 0) & 15);
                                        int i62 = i2 + 5;
                                        qt.y0(142, (bArr[i62] >> 4) & 15);
                                        qt.y0(145, 15 & (bArr[i62] >> 0));
                                        int i63 = i2 + 6;
                                        qt.y0(146, (bArr[i63] >> 7) & 1);
                                        qt.y0(147, (bArr[i63] >> 6) & 1);
                                        qt.y0(148, (bArr[i63] >> 5) & 1);
                                        qt.y0(149, (bArr[i63] >> 4) & 1);
                                        qt.y0(150, (bArr[i63] >> 3) & 1);
                                        qt.y0(151, (bArr[i63] >> 0) & 7);
                                        qt.y0(157, (bArr[i2 + 7] >> 7) & 1);
                                        break;
                                    case 100:
                                        int i64 = i2 + 2;
                                        qt.y0(138, bArr[i64] & 255);
                                        if (this.A == 6) {
                                            if (bArr[i64] != this.f4122m) {
                                                byte b6 = bArr[i64];
                                                this.f4122m = b6;
                                                if (b6 == 1) {
                                                    o3();
                                                } else if (b6 == 2) {
                                                    n3();
                                                }
                                                break;
                                            } else if (bArr[i64] == 2 && u0.b.D != 13) {
                                                n3();
                                                break;
                                            } else if (bArr[i64] == 1 && u0.b.D != 11) {
                                                o3();
                                                break;
                                            }
                                        }
                                        break;
                                    case 101:
                                        int i65 = bArr[i2 + 2] & 255;
                                        if (i65 != this.f4122m) {
                                            if (i65 == 1) {
                                                l0.b0.l0(75, 0);
                                                l0.b0.l0(75, 1);
                                            } else if (i65 == 2) {
                                                l0.b0.l0(74, 0);
                                                l0.b0.l0(74, 1);
                                            } else if (i65 == 4) {
                                                l0.b0.l0(54, 0);
                                                l0.b0.l0(54, 1);
                                            }
                                            this.f4122m = i65;
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
        this.f4132w.j();
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.B);
        l0.b0.p0(this.C);
        o1.h.f16865a.d(this.f4131v);
        u0.c.f17374a.d(this.f4127r);
        yVar.d(this.f4127r);
        u0.c.f17379f.d(this.f4126q);
        qt.q0(this.f4125p);
        qt.q0(this.f4124o);
        qt.o0(this.f4123n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 188) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            q3(144, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr[0] == 177) {
                s3(iArr[1]);
                return;
            }
            if (iArr[0] == 178) {
                r3(iArr[1]);
                return;
            } else if (iArr[0] == 179) {
                t3(iArr[1]);
                return;
            } else {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 2) {
            z.k.s(227, 192, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 196, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 197, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            b3(iArr[0]);
        } else {
            if (i2 != 22) {
                return;
            }
            if (iArr[0] >= 5) {
                qt.y0(169, iArr[0]);
            } else {
                z.k.s(227, -61, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            }
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
        if (this.f4112c + bArr.length > 1024) {
            this.f4112c = 0;
            this.f4113d = 0;
            this.f4114e = 0;
        }
        System.arraycopy(bArr, 0, this.f4111b, this.f4112c, bArr.length);
        int length = this.f4112c + bArr.length;
        this.f4112c = length;
        int i3 = this.f4114e;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f4111b;
            if (bArr2[i3] == -86) {
                nt.f8639d.U2(bArr2, 0, 11);
                this.f4113d = this.f4114e + 1;
            } else {
                this.f4113d = 1;
            }
            this.f4114e = 0;
        }
        int i4 = this.f4112c - 2;
        while (true) {
            i2 = this.f4113d;
            if (i2 >= i4) {
                break;
            }
            byte[] bArr3 = this.f4111b;
            if (bArr3[i2] == 85 && bArr3[i2 + 1] == 9) {
                if (this.f4114e > 512) {
                    this.f4114e = 0;
                } else {
                    int i5 = i2 + 10;
                    this.f4114e = i5;
                    if (i5 >= this.f4112c) {
                        this.f4114e = i5 - i2;
                        break;
                    }
                    if (bArr3[i5] == -86) {
                        nt.f8639d.U2(bArr3, i2, 11);
                        this.f4113d = this.f4114e;
                    } else {
                        this.f4113d = i2 + 1;
                    }
                    this.f4114e = 0;
                }
            }
            this.f4113d++;
        }
        if (i2 != 0) {
            int i6 = this.f4112c - i2;
            this.f4112c = i6;
            if (i6 > 0) {
                byte[] bArr4 = this.f4111b;
                System.arraycopy(bArr4, i2, bArr4, 0, i6);
            }
            this.f4113d = 0;
        }
    }

    public final void b3(int i2) {
        byte b2;
        int i3 = (this.F + 1) % 2;
        this.F = i3;
        switch (nt.f8633a) {
            case 1245639:
                b2 = 17;
                break;
            case 1311175:
                b2 = 18;
                break;
            case 1376711:
                b2 = 19;
                break;
            case 1442247:
                b2 = 20;
                break;
            default:
                b2 = 0;
                break;
        }
        if (b2 != 0) {
            byte[] bArr = new byte[7];
            bArr[0] = DhcpPacket.DHCP_LEASE_TIME;
            bArr[1] = 5;
            byte b3 = (byte) i2;
            bArr[2] = b3;
            bArr[3] = (byte) (i3 == 0 ? 34 : 204);
            bArr[4] = 37;
            bArr[5] = b2;
            bArr[6] = -86;
            u3(bArr);
            byte[] bArr2 = new byte[7];
            bArr2[0] = DhcpPacket.DHCP_LEASE_TIME;
            bArr2[1] = 5;
            bArr2[2] = b3;
            bArr2[3] = (byte) (this.F == 0 ? 34 : 204);
            bArr2[4] = 37;
            bArr2[5] = b2;
            bArr2[6] = -86;
            u3(bArr2);
            byte[] bArr3 = new byte[7];
            bArr3[0] = DhcpPacket.DHCP_LEASE_TIME;
            bArr3[1] = 5;
            bArr3[2] = b3;
            bArr3[3] = (byte) (this.F == 0 ? 34 : 204);
            bArr3[4] = 37;
            bArr3[5] = b2;
            bArr3[6] = -86;
            u3(bArr3);
            return;
        }
        int[] iArr = new int[8];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 5;
        byte b4 = (byte) i2;
        iArr[3] = b4;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 37;
        iArr[6] = 18;
        iArr[7] = 170;
        z.k.s(iArr);
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        iArr2[1] = 51;
        iArr2[2] = 5;
        iArr2[3] = b4;
        iArr2[4] = this.F == 0 ? 34 : 204;
        iArr2[5] = 37;
        iArr2[6] = 18;
        iArr2[7] = 170;
        z.k.s(iArr2);
        int[] iArr3 = new int[8];
        iArr3[0] = 227;
        iArr3[1] = 51;
        iArr3[2] = 5;
        iArr3[3] = b4;
        iArr3[4] = this.F == 0 ? 34 : 204;
        iArr3[5] = 37;
        iArr3[6] = 18;
        iArr3[7] = 170;
        z.k.s(iArr3);
    }

    public final void n3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.ford.LZMustangCarCDAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.ford.LZMustangCarCDAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void o3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.ford.LZMustangCarRadioAct")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.ford.LZMustangCarRadioAct");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void p3(byte b2) {
        if (b2 == 1 || b2 == 3 || b2 == 4) {
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (qt.i0().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                return;
            }
            o1.u.f("com.syu.canbus.sync");
        }
    }

    public final void q3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }

    public final void r3(int i2) {
        H = i2;
        qt.y0(154, i2);
        z.k.s(227, 198, 2, 178, H);
        int iB = this.f4132w.b(2, 0);
        int i3 = H;
        if (iB != i3) {
            this.f4132w.g(2, i3);
        }
    }

    public final void s3(int i2) {
        G = i2;
        qt.y0(153, i2);
        z.k.s(227, 198, 2, 177, G);
        int iB = this.f4132w.b(1, 0);
        int i3 = G;
        if (iB != i3) {
            this.f4132w.g(1, i3);
        }
    }

    public final void t3(int i2) {
        I = i2;
        qt.y0(187, i2);
        int iB = this.f4132w.b(3, 1);
        int i3 = I;
        if (iB != i3) {
            this.f4132w.g(3, i3);
        }
    }
}
