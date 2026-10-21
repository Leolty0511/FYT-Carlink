package k0;

import android.bluetooth.BluetoothClass;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3708c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3709d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3710e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3711f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3712g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3713h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f3714i = 11;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3715j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3716k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f3717l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3718m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3719n = 255;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3720o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3721p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3722q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f3723r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f3724s = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(bj.this.f3716k);
            bj.this.f3714i = (byte) 11;
            z.k.s(227, 132, 2, 1, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bj bjVar = bj.this;
            byte b2 = (byte) (bjVar.f3714i - 1);
            bjVar.f3714i = b2;
            if (b2 <= 0) {
                l0.b0.p0(bjVar.f3716k);
                bj.this.f3714i = DhcpPacket.DHCP_HOST_NAME;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, 132, 2, 1, 0);
                return;
            }
            bj.this.m3();
            if (bj.this.f3714i <= 3) {
                z.k.s(227, 132, 2, 1, 1);
            } else {
                z.k.s(227, 132, 2, 1, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bj.this.f3717l = u0.b.f17359s0;
            o1.b0.i("GPS: " + u0.b.f17359s0);
            if (bj.this.f3717l > 360.0f) {
                bj.e3(bj.this, 360.0f);
            }
            if (bj.this.f3717l < 0.0f) {
                bj.e3(bj.this, 360.0f);
                bj bjVar = bj.this;
                bjVar.f3717l = 360.0f - Math.abs(bjVar.f3717l);
            }
            if ((bj.this.f3717l <= 22.5d && bj.this.f3717l >= 0.0f) || (bj.this.f3717l >= 337.5d && bj.this.f3717l <= 360.0f)) {
                bj.this.f3719n = 0;
            } else if (bj.this.f3717l > 22.5d && bj.this.f3717l < 67.5d) {
                bj.this.f3719n = 8;
            } else if (bj.this.f3717l >= 67.5d && bj.this.f3717l <= 112.5d) {
                bj.this.f3719n = 16;
            } else if (bj.this.f3717l > 112.5d && bj.this.f3717l < 157.5d) {
                bj.this.f3719n = 24;
            } else if (bj.this.f3717l >= 157.5d && bj.this.f3717l <= 202.5d) {
                bj.this.f3719n = 32;
            } else if (bj.this.f3717l > 202.5d && bj.this.f3717l < 247.5d) {
                bj.this.f3719n = 40;
            } else if (bj.this.f3717l >= 247.5d && bj.this.f3717l <= 292.5d) {
                bj.this.f3719n = 48;
            } else if (bj.this.f3717l <= 292.5d || bj.this.f3717l >= 337.5d) {
                bj.this.f3719n = 0;
            } else {
                bj.this.f3719n = 56;
            }
            if (bj.this.f3719n != bj.this.f3718m) {
                z.k.s(227, -55, 2, bj.this.f3719n, 0);
                bj bjVar2 = bj.this;
                bjVar2.f3718m = bjVar2.f3719n;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(u0.b.i3)) {
                    return;
                }
                u0.b.i3.getBytes("unicode");
                bj.this.k3(2, u0.b.i3);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(h0.c.f2437h)) {
                    return;
                }
                bj.this.k3(1, h0.c.f2437h);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bj.this.l3((byte) 112, u0.b.i3);
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f3732a;

        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f3732a = time;
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            Time time2 = this.f3732a;
            z.k.s(227, -90, 7, (byte) (time2.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time2.month + 1), (byte) time2.monthDay, (i2 << 7) | ((byte) time2.hour), (byte) time2.minute, (byte) time2.second, 1);
        }
    }

    public static /* synthetic */ float e3(bj bjVar, float f2) {
        float f3 = bjVar.f3717l % f2;
        bjVar.f3717l = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f3715j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        if (nt.f8633a != 1638855) {
            mtVar.f8313h = 0;
        } else {
            mtVar.f8313h = 2;
        }
        l0.b0.b(this.f3713h);
        w0.e.f17815a.a(this.f3713h, 1);
        u0.c.f17374a.a(this.f3713h, 1);
        u0.c.f17393t.a(this.f3713h, 1);
        u0.c.f17392s.a(this.f3713h, 1);
        o1.h.f16865a.a(this.f3720o, 1);
        qt.z(this.f3724s);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -108) {
            if ((bArr[i2 + 2] & 1) == 1) {
                qt.a(1);
                return;
            }
            qt.a(0);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 4864);
            return;
        }
        if (b2 == 64) {
            int i4 = i2 + 2;
            qt.y0(103, (bArr[i4] >> 6) & 3);
            qt.y0(104, (bArr[i4] >> 5) & 1);
            qt.y0(105, (bArr[i4] >> 4) & 1);
            qt.y0(106, (bArr[i4] >> 3) & 1);
            qt.y0(107, (bArr[i4] >> 0) & 7);
            int i5 = i2 + 3;
            qt.y0(108, (bArr[i5] >> 6) & 3);
            qt.y0(109, 3 & (bArr[i5] >> 4));
            qt.y0(110, (bArr[i5] >> 0) & 1);
            return;
        }
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 37) {
            int i6 = i2 + 2;
            qt.y0(99, (bArr[i6] >> 3) & 1);
            qt.y0(100, (bArr[i6] >> 2) & 1);
            qt.y0(BluetoothClass.Device.AUDIO_VIDEO_MICROPHONE, (bArr[i6] >> 2) & 3);
            qt.y0(Process.MEDIA_UID, (bArr[i6] >> 0) & 3);
            qt.y0(101, (bArr[i6] >> 1) & 1);
            qt.y0(102, (bArr[i6] >> 0) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            qt.y0(112, (bArr[i2 + 2] >> 1) & 1);
            qt.y0(113, bArr[i2 + 3] & 255);
            qt.y0(114, bArr[i2 + 4] & 255);
            qt.y0(115, bArr[i2 + 5] & 255);
            qt.y0(116, bArr[i2 + 6] & 255);
            qt.y0(117, bArr[i2 + 8] & 255);
            qt.y0(118, bArr[i2 + 7] & 255);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f3708c = b4 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f3709d;
                    if (i7 < iArr.length) {
                        int i8 = this.f3708c;
                        if (i8 != iArr[i7][0]) {
                            i7++;
                        } else if (i8 != 0) {
                            this.f3707b = i7;
                        }
                    }
                }
                int i9 = this.f3708c;
                if (i9 == 7) {
                    int i10 = this.f3710e;
                    if (i10 != b5) {
                        if ((b5 == 0 && i10 == 1) || (b5 == 0 && i10 == 2 && this.f3711f < 5)) {
                            l0.b0.l0(2, 0);
                            l0.b0.l0(2, 1);
                        }
                        this.f3711f = 0;
                        this.f3710e = b5;
                    } else if (b5 == 2) {
                        int i11 = this.f3711f + 1;
                        this.f3711f = i11;
                        if (i11 == 5) {
                            l0.b0.l0(16, 0);
                            l0.b0.l0(16, 1);
                        }
                    }
                } else if (i9 == 9) {
                    int i12 = this.f3710e;
                    if (i12 != b5) {
                        if ((b5 == 0 && i12 == 1) || (b5 == 0 && i12 == 2 && this.f3711f < 5)) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                        this.f3711f = 0;
                        this.f3710e = b5;
                    } else if (b5 == 2) {
                        int i13 = this.f3711f + 1;
                        this.f3711f = i13;
                        if (i13 == 5) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                } else {
                    int i14 = b5 & 255;
                    if (i14 != 1) {
                        if (i14 == 0) {
                            int i15 = this.f3707b;
                            if (i15 < iArr.length && i15 != 255) {
                                l0.b0.l0(iArr[i15][1], 1);
                            }
                            this.f3707b = 255;
                        }
                    } else if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                    }
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                int i16 = i2 + 4;
                byte b8 = bArr[i16];
                int i17 = i2 + 5;
                byte b9 = bArr[i17];
                byte b10 = bArr[i2 + 6];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 4) & 1);
                qt.y0(62, (b6 >> 2) & 1);
                qt.y0(53, (b6 >> 1) & 1);
                qt.y0(18, (b7 >> 7) & 1);
                qt.y0(19, (b7 >> 6) & 1);
                qt.y0(20, (b7 >> 5) & 1);
                qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i18 = b8;
                int i19 = b9;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i17] & 255;
                    i19 = bArr[i16] & 255;
                }
                int i20 = i18 & 255;
                if (i20 == 0) {
                    qt.y0(27, -2);
                } else if (i20 != 255) {
                    qt.y0(27, i20);
                } else {
                    qt.y0(27, -3);
                }
                int i21 = i19 & 255;
                if (i21 == 0) {
                    qt.y0(28, -2);
                } else if (i21 != 255) {
                    qt.y0(28, i21);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(65, (b10 >> 7) & 1);
                qt.y0(16, (b10 >> 6) & 1);
                qt.y0(37, b10 & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3715j);
        l0.b0.p0(this.f3716k);
        l0.b0.p0(this.f3713h);
        w0.e.f17815a.d(this.f3713h);
        u0.c.f17374a.d(this.f3713h);
        u0.c.f17393t.d(this.f3713h);
        u0.c.f17392s.d(this.f3713h);
        o1.h.f16865a.d(this.f3720o);
        o1.y yVar = u0.c.f17388o;
        yVar.d(this.f3721p);
        h0.d.f2464c.d(this.f3722q);
        qt.q0(this.f3724s);
        yVar.d(this.f3723r);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 120) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, -58, 3, iArr[0], iArr[1], 0);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, -124, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, -112, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            if (u0.b.f17347o == 0) {
                z.k.s(227, -58, 3, 11, 1, 0);
            } else {
                z.k.s(227, -58, 3, 11, 0, 0);
            }
            a.i.a0(50L);
            z.k.s(227, -112, 2, 148, 0);
            return;
        }
        if (i2 != 1005) {
            if (i2 == 1029 && T2(iArr, 2)) {
                int iW = (iArr[1] * 1280) / a.f.w();
                int i3 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    i3 = (iArr[2] * MediaProperties.HEIGHT_720) / BluetoothClass.Device.PHONE_CORDLESS;
                }
                if (iArr[0] == 0) {
                    z.k.s(227, 133, 5, (iW >> 8) & 255, iW & 255, i3 >> 8, i3 & 255, 1);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 133, 5, (iW >> 8) & 255, iW & 255, i3 >> 8, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        int i4 = iArr[0];
        if (i4 == 0) {
            if (nt.f8645g[102] == 1) {
                z.k.s(227, -58, 3, 2, 0, 0);
                return;
            } else {
                z.k.s(227, -58, 3, 2, 1, 0);
                return;
            }
        }
        if (i4 != 1) {
            return;
        }
        if (nt.f8645g[101] == 1) {
            z.k.s(227, -58, 3, 1, 0, 0);
        } else {
            z.k.s(227, -58, 3, 1, 1, 0);
        }
    }

    public void k3(int i2, String str) {
        int[] iArr = new int[35];
        int i3 = 0;
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 32;
        iArr[3] = i2;
        int length = str.length() <= 15 ? str.length() : 15;
        if (i2 == 1) {
            char[] charArray = str.toCharArray();
            while (i3 < length) {
                iArr[i3 + 4] = charArray[i3];
                i3++;
            }
        } else if (i2 == 2) {
            while (i3 < length) {
                int iCodePointAt = str.codePointAt(i3);
                int i4 = i3 << 1;
                iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
                iArr[i4 + 5] = iCodePointAt & 255;
                i3++;
            }
        }
        z.k.s(iArr);
    }

    public final void l3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = 32;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void m3() {
        z.k.s(227, 144, 2, 49, 0);
    }
}
