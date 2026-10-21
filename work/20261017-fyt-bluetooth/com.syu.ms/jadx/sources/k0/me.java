package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class me extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8112b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.o f8120j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.o f8121k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.o f8122l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.o f8123m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8113c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8114d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 34}, new int[]{12, 35}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 29}, new int[]{23, 9}, new int[]{24, 25}, new int[]{25, 0}, new int[]{32, 6}, new int[]{33, 1}, new int[]{34, 54}, new int[]{35, 24}, new int[]{36, 55}, new int[]{37, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8115e = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f8116f = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8117g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8118h = new e();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8119i = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8124n = new j();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8125o = new k();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8126p = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (u0.b.E0) {
                case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                    me.this.g3(7, nt.f8645g[65] != 1 ? 1 : 2);
                    break;
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    me.this.g3(1, 2);
                    break;
                case i.a.Theme_preferenceFragmentStyle /* 245 */:
                    me.this.g3(1, 1);
                    break;
                case i.a.Theme_preferencePanelStyle /* 246 */:
                    me.this.g3(2, 2);
                    break;
                case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                    me.this.g3(2, 1);
                    break;
                case 248:
                    me.this.g3(5, nt.f8645g[12] == 1 ? 1 : 2);
                    break;
                case 249:
                    me.this.g3(3, 1);
                    break;
                case 250:
                    me.this.g3(4, nt.f8645g[11] != 1 ? 1 : 2);
                    break;
                case 251:
                    me.this.g3(0, 1);
                    break;
                case 252:
                    me.this.g3(6, nt.f8645g[16] != 1 ? 1 : 2);
                    break;
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f8128a;

        public b(int i2) {
            this.f8128a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(-29, 138, 2, this.f8128a, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            me.a3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (me.this.f8116f.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                me.this.f8116f = h0.c.f2437h;
                if (me.this.f8116f == null) {
                    me.this.f8116f = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (z2) {
                me meVar = me.this;
                meVar.i3(meVar.f8116f);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            me.this.j3();
        }
    }

    public class f implements o1.o {
        public f() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = i.a.Theme_actionModeWebSearchDrawable;
            e.e.f1624b.c();
            return true;
        }
    }

    public class g implements o1.o {
        public g() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 251;
            e.e.f1624b.c();
            return true;
        }
    }

    public class h implements o1.o {
        public h() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 252;
            e.e.f1624b.c();
            return true;
        }
    }

    public class i implements o1.o {
        public i() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            o1.u.i();
            return true;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            z.k.s(227, -78, 6, (byte) time.second, (byte) time.minute, b6, b5, b2, b4, b3);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if (i2 == 131494) {
                z.k.s(-29, 140, 1, 0);
            } else {
                if (i2 != 262566) {
                    return;
                }
                z.k.s(-29, 140, 1, 1);
            }
        }
    }

    public static void a3() {
        int length;
        if (2 == u0.b.D) {
            return;
        }
        int[] iArr = new int[16];
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 196;
        iArr[1] = 14;
        iArr[3] = 0;
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[2] = 1;
                int i6 = w0.d.f17797i;
                iArr[4] = (i6 >> 8) & 255;
                iArr[5] = i6 & 255;
            } else {
                iArr[2] = 4;
                int i7 = w0.d.f17797i;
                iArr[4] = (i7 >> 8) & 255;
                iArr[5] = i7 & 255;
            }
        } else if (i4 == 2) {
            iArr[2] = 5;
            if (h0.c.f2437h.length() != 0) {
                char[] charArray = h0.c.f2437h.toCharArray();
                length = h0.c.f2437h.length() <= 62 ? h0.c.f2437h.length() : 62;
                for (int i8 = 0; i8 < length; i8++) {
                    iArr[i8 + 4] = (byte) charArray[i8];
                }
            }
        } else if (i4 == 4) {
            iArr[2] = 12;
            if (o0.e.C != 0) {
                int i9 = o0.e.B % 10000;
                iArr[4] = (i9 / 1000) + 48;
                int i10 = (i9 % 100) / 10;
                int i11 = i9 % 1000;
                if (i10 != 0) {
                    i11 /= 10;
                }
                iArr[5] = i11 + 48;
                iArr[6] = i10 + 48;
                iArr[7] = (i9 % 10) + 48;
                int i12 = o0.e.f16794r;
                int i13 = (i12 / 60) % 60;
                iArr[8] = 32;
                iArr[9] = (i13 / 10) + 48;
                iArr[10] = (i13 % 10) + 48;
                iArr[11] = 32;
                int i14 = i12 % 60;
                iArr[12] = (i14 / 10) + 48;
                iArr[13] = (i14 % 10) + 48;
            }
        } else if (i4 == 6) {
            iArr[2] = 12;
            if (d1.d.f1570c == 1) {
                int i15 = d1.d.f1572e;
                if (i15 / 10 > 0) {
                    iArr[4] = (i15 / 10) + 48;
                }
                iArr[5] = (i15 % 10) + 48;
                iArr[6] = 45;
                int i16 = d1.d.f1571d / 100;
                int i17 = i16 / 10000;
                if (i17 > 0) {
                    iArr[7] = i17 + 48;
                }
                iArr[8] = ((i16 % 10000) / 1000) + 48;
                iArr[9] = ((i16 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i16 % 100) / 10) + 48;
                iArr[12] = ((i16 % 10) / 1) + 48;
                iArr[13] = 77;
                iArr[14] = 104;
                iArr[15] = 122;
            }
        } else if (i4 == 8 || i4 == 9) {
            iArr[2] = 9;
            if (u0.b.s3 != 0) {
                byte[] bytes = u0.b.i3.getBytes();
                length = bytes.length <= 62 ? bytes.length : 62;
                for (int i18 = 0; i18 < length; i18++) {
                    iArr[i18 + 4] = bytes[i18];
                }
            }
        }
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i2 < 16) {
            int i19 = i2 + 1;
            iArr2[i19] = (byte) iArr[i2];
            i2 = i19;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        this.f8120j = e.c.f1619y;
        this.f8121k = e.c.f1620z;
        this.f8122l = e.c.f1617w;
        this.f8123m = e.c.f1618x;
        e.c.f1617w = new f();
        e.c.f1620z = new g();
        e.c.f1619y = new h();
        e.c.f1618x = new i();
        e.e.f1624b.a(this.f8126p, 0);
        switch (nt.f8633a) {
            case 422:
            case 65958:
            case 328102:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8313h = 1;
                break;
            case 131494:
            case 262566:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8313h = 0;
                qt.z(this.f8125o);
                break;
            case 197030:
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8313h = 0;
                qt.z(this.f8115e);
                h0.d.f2464c.a(this.f8117g, 1);
                o1.y yVar = h0.d.f2462a;
                yVar.a(this.f8118h, 1);
                yVar.a(this.f8117g, 1);
                break;
            case 393638:
            case 459174:
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8314i = 1;
                qt.z(this.f8124n);
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
        }
        if (b2 == 41) {
            if (this.f8119i) {
                return;
            }
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 7744, false, 5820);
            return;
        }
        if (b2 == 64) {
            int i7 = i2 + 2;
            qt.y0(99, (bArr[i7] >> 7) & 1);
            qt.y0(100, bArr[i7] & 127);
            qt.y0(101, (bArr[i2 + 3] >> 7) & 1);
            qt.y0(102, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == 65) {
            int i8 = i2 + 2;
            qt.y0(103, (bArr[i8] >> 3) & 1);
            qt.y0(104, (bArr[i8] >> 0) & 3);
            qt.y0(105, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 80) {
            int i9 = i2 + 2;
            qt.y0(Process.MEDIA_UID, ((bArr[i9] & 255) | ((bArr[i2 + 3] & 255) << 8)) & 65535);
            if (nt.a() && nt.f8633a == 65958) {
                if ((bArr[i9] & 128) != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 125) {
            int i10 = bArr[i2 + 2] & 255;
            if (i10 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i11 = i2 + 3;
                    l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                    return;
                } else {
                    int i12 = i2 + 3;
                    l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                    return;
                }
            }
            if (i10 == 3) {
                int i13 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i13);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i13}, null, null);
                return;
            } else {
                if (i10 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8119i = true;
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f8113c = b4 & 255;
                    int i14 = 0;
                    while (true) {
                        iArr = this.f8114d;
                        if (i14 < iArr.length) {
                            int i15 = this.f8113c;
                            if (i15 != iArr[i14][0]) {
                                i14++;
                            } else if (i15 != 0) {
                                this.f8112b = i14;
                            }
                        }
                    }
                    int i16 = b5 & 255;
                    if (i16 != 1) {
                        if (i16 == 0) {
                            int i17 = this.f8112b;
                            if (i17 < iArr.length && i17 != 255) {
                                l0.b0.l0(iArr[i17][1], 1);
                            }
                            this.f8112b = 255;
                        }
                    } else if (i14 < iArr.length) {
                        l0.b0.l0(iArr[i14][1], 0);
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                byte b8 = bArr[i2 + 4];
                byte b9 = bArr[i2 + 5];
                byte b10 = bArr[i2 + 6];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(16, (b6 >> 1) & 1);
                qt.y0(65, b6 & 1);
                int i18 = b7 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i18 != 1) {
                    if (i18 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i18 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i18 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i18 != 5) {
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
                qt.y0(77, i18);
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(27, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i19 = b10 & 31;
                if (i19 == 0) {
                    qt.y0(28, -2);
                    break;
                } else if (i19 == 30) {
                    qt.y0(28, -3);
                    break;
                } else if (b10 > 0 && b10 < 30) {
                    qt.y0(28, b10 + 35);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        e.c.f1619y = this.f8120j;
        e.c.f1620z = this.f8121k;
        e.c.f1617w = this.f8122l;
        e.c.f1618x = this.f8123m;
        e.e.f1624b.d(this.f8126p);
        h0.d.f2464c.d(this.f8117g);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f8118h);
        yVar.d(this.f8117g);
        qt.q0(this.f8125o);
        qt.q0(this.f8124n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 128, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
        } else if (i2 == 1003) {
            h3(1);
        } else {
            if (i2 != 1005) {
                return;
            }
            h3(iArr[0]);
        }
    }

    public final void g3(int i2, int i3) {
        z.k.s(-29, 138, 2, i2, i3);
        o1.l.a().postDelayed(new b(i2), 100L);
    }

    public final void h3(int i2) {
        z.k.s(-29, 139, 1, i2);
    }

    public final void i3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() > 16 ? 16 : str.length();
        byte[] bArr = new byte[16];
        byte[] bytes = str.getBytes();
        for (int i2 = length; i2 < 16; i2++) {
            bArr[i2] = 32;
        }
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = bytes[i3];
        }
        int[] iArr = new int[30];
        iArr[0] = -29;
        iArr[1] = -60;
        iArr[2] = 18;
        iArr[3] = 5;
        iArr[4] = 0;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4 + 5] = bArr[i4];
        }
        z.k.s(iArr);
    }

    public final void j3() {
        int i2;
        int i3 = h0.c.E;
        if (i3 == 3 || i3 == 4) {
            i2 = 1;
        } else {
            i2 = i3 != 5 ? 0 : 2;
        }
        int i4 = h0.c.P / 1000;
        z.k.s(-29, -59, 3, (byte) i2, i4 / 60, ((byte) i4) % DhcpPacket.DHCP_VENDOR_CLASS_ID);
    }
}
