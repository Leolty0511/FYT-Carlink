package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class pi extends lt {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f9205t = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9207c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9208d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{16, 1}, new int[]{17, 5}, new int[]{18, 38}, new int[]{19, 55}, new int[]{20, 54}, new int[]{21, 13}, new int[]{22, 18}, new int[]{23, 6}, new int[]{24, 24}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9209e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 0}, new int[]{16, 1}, new int[]{17, 5}, new int[]{18, 38}, new int[]{19, 55}, new int[]{20, 54}, new int[]{21, 13}, new int[]{22, 18}, new int[]{23, 6}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9210f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9211g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f9212h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9213i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9214j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f9215k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9216l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9217m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f9218n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f9219o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f9220p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f9221q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9222r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f9223s = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, -64, 8, 0, 0, 0, 0, 0, 0, 0, 0);
                return;
            }
            int i3 = u0.b.D;
            if (i3 != 1) {
                if (i3 == 3) {
                    z.k.s(227, -64, 8, 11, 0, 0, 0, 0, 0, 0, 0);
                    return;
                }
                if (i3 == 8 || i3 == 10) {
                    z.k.s(227, -64, 8, 8, 0, 0, 0, 0, 0, 0, 0);
                    return;
                } else if (i3 == 5) {
                    z.k.s(227, -64, 8, 7, 0, 0, 0, 0, 0, 0, 0);
                    return;
                } else {
                    if (i3 != 6) {
                        return;
                    }
                    z.k.s(227, -64, 8, 3, 0, 0, 0, 0, 0, 0, 0);
                    return;
                }
            }
            int i4 = w0.d.f17796h;
            if (i4 == 0) {
                i2 = 17;
            } else if (i4 != 1) {
                switch (i4) {
                    case 65536:
                        i2 = 1;
                        break;
                    case 65537:
                        i2 = 2;
                        break;
                    case 65538:
                        i2 = 3;
                        break;
                    default:
                        i2 = 0;
                        break;
                }
            } else {
                i2 = 18;
            }
            int i5 = w0.d.f17797i;
            z.k.s(227, -64, 8, 1, 1, i2, i5 & 255, (i5 >> 8) & 255, w0.d.f17798j, 0, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = pi.f9205t;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && pi.f9205t == 13) {
                    z.k.s(227, 208, 2, 0, 0);
                }
                pi.f9205t = u0.b.D;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pi piVar = pi.this;
            byte b2 = (byte) (piVar.f9212h + 1);
            piVar.f9212h = b2;
            if (b2 > 5) {
                l0.b0.o0(piVar.f9213i);
                pi.this.f9212h = (byte) 0;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if (i2 == 2163127) {
                z.k.s(227, -18, 2, 144, 0);
            } else {
                if (i2 != 2228663) {
                    return;
                }
                z.k.s(227, -18, 2, 144, 1);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (u0.b.D == 8) {
                    pi.this.n3((byte) 112, u0.b.i3);
                    a.i.a0(300L);
                    pi.this.n3((byte) 113, u0.b.j3);
                } else {
                    pi.this.n3((byte) 112, " ");
                    a.i.a0(300L);
                    pi.this.n3((byte) 113, " ");
                }
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = 2;
                    break;
                case 3:
                case 4:
                case 5:
                    i2 = 1;
                    break;
            }
            if (pi.this.f9217m != i2) {
                pi.this.f9217m = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (pi.this.f9219o.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                pi.this.f9219o = h0.c.f2437h;
                if (pi.this.f9219o == null) {
                    pi.this.f9219o = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                pi piVar = pi.this;
                piVar.o3(piVar.f9217m, pi.this.f9219o);
                if (pi.this.f9218n != z4) {
                    pi.this.f9218n = z4;
                    pi.this.f9217m = 0;
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (pi.this.f9221q == millis && pi.this.f9222r == i2) {
                return;
            }
            pi.this.f9221q = millis;
            pi.this.f9222r = i2;
            z.k.s(227, -90, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2 || iArr[0] != 68) {
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -88, 2, 0, 0);
        } else if (iArr[1] == 10) {
            z.k.s(227, -88, 2, 0, 1);
        }
    }

    @Override // k0.lt
    public void S2() {
        o1.y yVar = u0.c.f17386m;
        yVar.a(l0.c0.f13020n, 1);
        qt.z(this.f9214j);
        switch (nt.f8633a) {
            case 786884:
                mt mtVar = this.f7886a;
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 0;
                mtVar.f8314i = 0;
                mtVar.f8307b = 0;
                mtVar.f8308c = 0;
                mtVar.f8309d = 0;
                mtVar.f8320o = 0;
                mtVar.f8313h = 0;
                qt.z(this.f9223s);
                yVar.a(this.f9210f, 1);
                o1.y yVar2 = u0.c.f17374a;
                yVar2.a(this.f9210f, 1);
                w0.e.f17815a.a(this.f9210f, 1);
                w0.e.f17819e.a(this.f9210f, 1);
                yVar2.a(this.f9211g, 1);
                yVar2.a(this.f9216l, 1);
                u0.c.f17388o.a(this.f9216l, 1);
                u0.c.f17389p.a(this.f9216l, 1);
                h0.d.f2464c.a(this.f9220p, 1);
                h0.d.f2462a.a(this.f9220p, 1);
                break;
            case 852420:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 0;
                mtVar2.f8314i = 1;
                mtVar2.f8307b = 0;
                mtVar2.f8308c = 0;
                mtVar2.f8309d = 0;
                mtVar2.f8320o = 0;
                mtVar2.f8313h = 0;
                break;
            case 1049028:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = null;
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 1;
                mtVar3.f8312g = 0;
                mtVar3.f8314i = 0;
                mtVar3.f8307b = 0;
                mtVar3.f8308c = 0;
                mtVar3.f8309d = 0;
                mtVar3.f8320o = 0;
                mtVar3.f8313h = 0;
                break;
            case 2163127:
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8310e = 1;
                mtVar4.f8311f = 1;
                mtVar4.f8312g = 0;
                mtVar4.f8314i = 1;
                mtVar4.f8307b = 0;
                mtVar4.f8308c = 0;
                mtVar4.f8309d = 0;
                mtVar4.f8320o = 0;
                mtVar4.f8313h = 0;
                qt.z(this.f9223s);
                break;
            case 2163140:
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8310e = 1;
                mtVar5.f8311f = 1;
                mtVar5.f8312g = 0;
                mtVar5.f8314i = 0;
                mtVar5.f8307b = 0;
                mtVar5.f8308c = 0;
                mtVar5.f8309d = 0;
                mtVar5.f8320o = 0;
                mtVar5.f8313h = 0;
                qt.z(this.f9223s);
                yVar.a(this.f9210f, 1);
                o1.y yVar3 = u0.c.f17374a;
                yVar3.a(this.f9210f, 1);
                w0.e.f17815a.a(this.f9210f, 1);
                w0.e.f17819e.a(this.f9210f, 1);
                yVar3.a(this.f9211g, 1);
                u0.c.f17388o.a(this.f9216l, 1);
                u0.c.f17389p.a(this.f9216l, 1);
                yVar3.a(this.f9216l, 1);
                h0.d.f2464c.a(this.f9220p, 1);
                h0.d.f2462a.a(this.f9220p, 1);
                break;
            case 2228663:
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = new String[]{"com.syu.canbus"};
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8312g = 0;
                mtVar6.f8314i = 1;
                mtVar6.f8307b = 0;
                mtVar6.f8308c = 0;
                mtVar6.f8309d = 0;
                mtVar6.f8320o = 0;
                mtVar6.f8313h = 0;
                break;
            case 2294199:
            case 7537079:
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = new String[]{"com.syu.canbus"};
                mtVar7.f8310e = 1;
                mtVar7.f8311f = 1;
                mtVar7.f8312g = 0;
                mtVar7.f8314i = 1;
                mtVar7.f8307b = 0;
                mtVar7.f8308c = 0;
                mtVar7.f8309d = 0;
                mtVar7.f8320o = 0;
                mtVar7.f8313h = 0;
                qt.z(this.f9223s);
                break;
            case 2359735:
                mt mtVar8 = this.f7886a;
                mtVar8.f8306a = new String[]{"com.syu.canbus"};
                mtVar8.f8310e = 1;
                mtVar8.f8311f = 1;
                mtVar8.f8312g = 0;
                mtVar8.f8314i = 1;
                mtVar8.f8307b = 0;
                mtVar8.f8308c = 0;
                mtVar8.f8309d = 0;
                mtVar8.f8320o = 0;
                mtVar8.f8313h = 0;
                qt.z(this.f9223s);
                break;
            case 3539396:
                mt mtVar9 = this.f7886a;
                mtVar9.f8306a = new String[]{"com.syu.canbus"};
                mtVar9.f8310e = 1;
                mtVar9.f8311f = 1;
                mtVar9.f8312g = 0;
                mtVar9.f8314i = 0;
                mtVar9.f8307b = 0;
                mtVar9.f8308c = 0;
                mtVar9.f8309d = 0;
                mtVar9.f8320o = 0;
                mtVar9.f8313h = 0;
                break;
            case 5571012:
                qt.z(this.f9223s);
                mt mtVar10 = this.f7886a;
                mtVar10.f8306a = new String[]{"com.syu.canbus"};
                mtVar10.f8310e = 1;
                mtVar10.f8311f = 1;
                mtVar10.f8312g = 0;
                mtVar10.f8314i = 0;
                mtVar10.f8307b = 0;
                mtVar10.f8308c = 0;
                mtVar10.f8309d = 0;
                mtVar10.f8320o = 0;
                mtVar10.f8313h = 0;
                break;
            case 8520119:
                mt mtVar11 = this.f7886a;
                mtVar11.f8306a = null;
                mtVar11.f8310e = 1;
                mtVar11.f8311f = 1;
                mtVar11.f8312g = 0;
                mtVar11.f8314i = 1;
                mtVar11.f8307b = 0;
                mtVar11.f8308c = 0;
                mtVar11.f8309d = 0;
                mtVar11.f8320o = 0;
                mtVar11.f8313h = 0;
                qt.z(this.f9223s);
                break;
            case 13697476:
                mt mtVar12 = this.f7886a;
                mtVar12.f8306a = new String[]{"com.syu.canbus"};
                mtVar12.f8310e = 1;
                mtVar12.f8311f = 1;
                mtVar12.f8312g = 0;
                mtVar12.f8314i = 1;
                mtVar12.f8307b = 0;
                mtVar12.f8308c = 0;
                mtVar12.f8309d = 0;
                mtVar12.f8320o = 0;
                mtVar12.f8313h = 0;
                break;
            case 14614967:
                mt mtVar13 = this.f7886a;
                mtVar13.f8306a = new String[]{"com.syu.canbus"};
                mtVar13.f8310e = 1;
                mtVar13.f8311f = 1;
                mtVar13.f8312g = 0;
                mtVar13.f8314i = 1;
                mtVar13.f8307b = 0;
                mtVar13.f8308c = 0;
                mtVar13.f8309d = 0;
                mtVar13.f8320o = 0;
                mtVar13.f8313h = 0;
                qt.z(this.f9223s);
                break;
        }
        this.f7886a.f8318m = new int[]{68};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        byte b3 = bArr[i2];
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b3 == 71) {
            qt.y0(171, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(172, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(173, bArr[i2 + 6] & 255);
            qt.y0(174, bArr[i2 + 7] & 255);
            qt.y0(175, bArr[i2 + 8] & 255);
            qt.y0(176, bArr[i2 + 9] & 255);
            qt.y0(177, bArr[i2 + 10] & 255);
            qt.y0(178, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(179, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
            qt.y0(180, bArr[i2 + 15] & 255);
            qt.y0(181, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(182, bArr[i2 + 18] & 255);
            qt.y0(183, ((bArr[i2 + 19] << 8) & 65280) | (bArr[i2 + 20] & 255));
            qt.y0(184, bArr[i2 + 21] & 255);
            qt.y0(185, bArr[i2 + 22] & 255);
            return;
        }
        if (b3 == 125) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                    return;
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                }
            }
            if (i4 == 3) {
                int i7 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            } else {
                if (i4 != 8) {
                    return;
                }
                this.f9215k = true;
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            }
        }
        if (b3 == 56) {
            int i8 = nt.f8633a;
            if (i8 == 2163127 || i8 == 2228663 || i8 == 14614967 || i8 == 2294199 || i8 == 2359735) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                byte b6 = bArr[i2 + 4];
                byte b7 = bArr[i2 + 5];
                byte b8 = bArr[i2 + 6];
                byte b9 = bArr[i2 + 7];
                byte b10 = bArr[i2 + 8];
                byte b11 = bArr[i2 + 9];
                qt.y0(99, b4 & 255);
                qt.y0(112, b5 & 255);
                qt.y0(125, b6 & 255);
                qt.y0(138, b7 & 255);
                qt.y0(98, b8 & 255);
                qt.y0(111, b9 & 255);
                qt.y0(124, b10 & 255);
                qt.y0(137, b11 & 255);
                return;
            }
            return;
        }
        if (b3 == 57) {
            int i9 = nt.f8633a;
            if (i9 == 2163127 || i9 == 2228663 || i9 == 2294199 || i9 == 14614967 || i9 == 2359735) {
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                qt.y0(150, (b12 >> 7) & 1);
                qt.y0(151, (b12 >> 6) & 1);
                qt.y0(152, (b12 >> 5) & 1);
                qt.y0(153, (b12 >> 4) & 1);
                qt.y0(154, (b12 >> 3) & 1);
                qt.y0(155, (b12 >> 2) & 1);
                qt.y0(159, (b13 >> 7) & 1);
                qt.y0(160, (b13 >> 6) & 1);
                qt.y0(161, (b13 >> 5) & 1);
                qt.y0(156, (b13 >> 4) & 1);
                qt.y0(157, (b13 >> 3) & 1);
                qt.y0(158, (b13 >> 2) & 1);
                return;
            }
            return;
        }
        switch (b3) {
            case 32:
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                this.f9207c = b14 & 255;
                if (nt.f8633a == 8520119) {
                    int i10 = 0;
                    while (true) {
                        iArr2 = this.f9209e;
                        if (i10 < iArr2.length) {
                            int i11 = this.f9207c;
                            if (i11 != iArr2[i10][0]) {
                                i10++;
                            } else if (i11 != 0) {
                                this.f9206b = i10;
                            }
                        }
                    }
                    if ((b15 & 255) == 0) {
                        int i12 = this.f9206b;
                        if (i12 < iArr2.length && i12 != 255) {
                            l0.b0.l0(iArr2[i12][1], 1);
                        }
                        this.f9206b = 255;
                    } else if (i10 < iArr2.length) {
                        l0.b0.l0(iArr2[i10][1], 0);
                    }
                    break;
                } else {
                    int i13 = 0;
                    while (true) {
                        iArr = this.f9208d;
                        if (i13 < iArr.length) {
                            int i14 = this.f9207c;
                            if (i14 != iArr[i13][0]) {
                                i13++;
                            } else if (i14 != 0) {
                                this.f9206b = i13;
                            }
                        }
                    }
                    if ((b15 & 255) == 0) {
                        int i15 = this.f9206b;
                        if (i15 < iArr.length && i15 != 255) {
                            l0.b0.l0(iArr[i15][1], 1);
                            l0.b0.o0(this.f9213i);
                            this.f9212h = (byte) 0;
                        }
                        this.f9206b = 255;
                        break;
                    } else if (i13 < iArr.length && (b2 = this.f9212h) == 0) {
                        this.f9212h = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i13][1], 0);
                        l0.b0.a(this.f9213i);
                        break;
                    }
                }
                break;
            case 33:
                int i16 = bArr[i2 + 2] & 255;
                int i17 = bArr[i2 + 3] & 255;
                int i18 = i2 + 4;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 5;
                int i21 = bArr[i20] & 255;
                int i22 = bArr[i2 + 6] & 255;
                int i23 = bArr[i2 + 7] & 255;
                qt.y0(10, (i16 >> 7) & 1);
                qt.y0(11, (i16 >> 6) & 1);
                qt.y0(12, (i16 >> 5) & 1);
                qt.y0(26, (i16 >> 4) & 1);
                qt.y0(13, (i16 >> 3) & 1);
                qt.y0(14, (i16 >> 2) & 1);
                qt.y0(15, (i16 >> 1) & 1);
                qt.y0(38, (i16 >> 0) & 1);
                qt.y0(18, (i17 >> 7) & 1);
                qt.y0(19, (i17 >> 6) & 1);
                qt.y0(20, (i17 >> 5) & 1);
                qt.y0(63, (i17 >> 4) & 1);
                qt.y0(21, i17 & 15);
                qt.y0(37, ((i19 >> 7) & 1) | ((i21 >> 7) & 1));
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i19 = bArr[i20] & 255;
                    i21 = bArr[i18] & 255;
                }
                int i24 = i19 & 127;
                if (i24 == 0) {
                    qt.y0(27, -2);
                } else if (i24 != 31) {
                    qt.y0(27, i24);
                } else {
                    qt.y0(27, -3);
                }
                int i25 = 127 & i21;
                if (i25 == 0) {
                    qt.y0(28, -2);
                } else if (i25 != 31) {
                    qt.y0(28, i25);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(65, (i22 >> 7) & 1);
                qt.y0(16, (i22 >> 6) & 1);
                qt.y0(54, (i22 >> 5) & 1);
                qt.y0(52, (i22 >> 4) & 1);
                qt.y0(53, (i22 >> 3) & 1);
                qt.y0(86, (i22 >> 0) & 7);
                qt.y0(29, (i23 >> 4) & 15);
                qt.y0(30, i23 & 15);
                qt.y0(58, (bArr[i2 + 8] >> 7) & 1);
                break;
            case 34:
                int i26 = nt.f8633a;
                if (i26 == 14614967 || i26 == 786884 || i26 == 2163140) {
                    u0.d.R2(l0.c0.h1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.h1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.h1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.h1(bArr[i2 + 5] & 255));
                } else {
                    u0.d.R2(l0.c0.F1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.F1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.F1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.F1(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                int i27 = i2 + 2;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 3;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 4;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 5;
                int i34 = bArr[i33] & 255;
                if (i28 == 0 && i30 == 0 && i32 == 0 && i34 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i28 || l0.c0.f13014h != i30 || l0.c0.f13015i != i32 || l0.c0.f13016j != i34) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i28;
                l0.c0.f13014h = i30;
                l0.c0.f13015i = i32;
                l0.c0.f13016j = i34;
                int i35 = nt.f8633a;
                if (i35 == 14614967 || i35 == 786884 || i35 == 2163140) {
                    u0.d.D2(l0.c0.h1(bArr[i27] & 255));
                    u0.d.E2(l0.c0.h1(bArr[i29] & 255));
                    u0.d.F2(l0.c0.h1(bArr[i31] & 255));
                    u0.d.G2(l0.c0.h1(bArr[i33] & 255));
                } else {
                    u0.d.D2(l0.c0.F1(bArr[i27] & 255));
                    u0.d.E2(l0.c0.F1(bArr[i29] & 255));
                    u0.d.F2(l0.c0.F1(bArr[i31] & 255));
                    u0.d.G2(l0.c0.F1(bArr[i33] & 255));
                }
                break;
            case 36:
                byte b16 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b16 >> 6) & 1);
                    qt.y0(1, (b16 >> 7) & 1);
                } else {
                    qt.y0(2, (b16 >> 7) & 1);
                    qt.y0(1, (b16 >> 6) & 1);
                }
                qt.y0(4, (b16 >> 5) & 1);
                qt.y0(3, (b16 >> 4) & 1);
                qt.y0(5, (b16 >> 3) & 1);
                qt.y0(0, (b16 >> 2) & 1);
                int i36 = i2 + 4;
                qt.y0(186, (bArr[i36] >> 4) & 15);
                qt.y0(187, (bArr[i36] >> 0) & 15);
                qt.y0(188, (bArr[i2 + 5] >> 7) & 1);
                break;
            case 37:
                if (nt.f8633a == 8520119) {
                    u0.d.R2((bArr[i2 + 2] & 255) / 15);
                    u0.d.S2((bArr[i2 + 3] & 255) / 15);
                    u0.d.T2((bArr[i2 + 4] & 255) / 15);
                    u0.d.U2((bArr[i2 + 5] & 255) / 15);
                }
                break;
            case 38:
                if (nt.f8633a == 8520119) {
                    u0.d.D2((bArr[i2 + 2] & 255) / 15);
                    u0.d.E2((bArr[i2 + 3] & 255) / 15);
                    u0.d.F2((bArr[i2 + 4] & 255) / 15);
                    u0.d.G2((bArr[i2 + 5] & 255) / 15);
                }
                break;
            case 39:
                u0.d.A3(((bArr[i2 + 4] & 255) * 5) + 650);
                break;
            case 40:
                if (nt.f8633a == 8520119) {
                    byte b17 = bArr[i2 + 2];
                    byte b18 = bArr[i2 + 3];
                    if (!this.f9215k) {
                        qt.m(b17, b18, 7840, true, 5340);
                    }
                }
                break;
            case 41:
                if (nt.f8633a != 8520119) {
                    byte b19 = bArr[i2 + 2];
                    byte b20 = bArr[i2 + 3];
                    if (!this.f9215k) {
                        qt.m(b19, b20, 32768, false, 9728);
                    }
                }
                break;
            default:
                switch (b3) {
                    case 64:
                        int i37 = bArr[i2 + 2] & 255;
                        int i38 = bArr[i2 + 3] & 255;
                        int i39 = bArr[i2 + 4] & 255;
                        int i40 = bArr[i2 + 5] & 255;
                        int i41 = bArr[i2 + 6] & 255;
                        if (i37 == 0) {
                            qt.y0(98, i38 & 255);
                            qt.y0(99, i39 & 255);
                            qt.y0(100, (i40 >> 7) & 1);
                            qt.y0(101, (i40 >> 6) & 1);
                            qt.y0(102, (i40 >> 5) & 1);
                            qt.y0(103, (i40 >> 4) & 1);
                            qt.y0(104, (i41 >> 7) & 1);
                            qt.y0(105, (i41 >> 6) & 1);
                            qt.y0(106, (i41 >> 5) & 1);
                            qt.y0(107, (i41 >> 4) & 1);
                            qt.y0(108, (i41 >> 3) & 1);
                            qt.y0(109, (i41 >> 2) & 1);
                            qt.y0(110, (i41 >> 1) & 1);
                            break;
                        } else if (i37 == 1) {
                            qt.y0(111, i38 & 255);
                            qt.y0(112, i39 & 255);
                            qt.y0(113, (i40 >> 7) & 1);
                            qt.y0(114, (i40 >> 6) & 1);
                            qt.y0(115, (i40 >> 5) & 1);
                            qt.y0(116, (i40 >> 4) & 1);
                            qt.y0(117, (i41 >> 7) & 1);
                            qt.y0(118, (i41 >> 6) & 1);
                            qt.y0(119, (i41 >> 5) & 1);
                            qt.y0(120, (i41 >> 4) & 1);
                            qt.y0(121, (i41 >> 3) & 1);
                            qt.y0(122, (i41 >> 2) & 1);
                            qt.y0(123, (i41 >> 1) & 1);
                            break;
                        } else if (i37 == 2) {
                            qt.y0(124, i38 & 255);
                            qt.y0(125, i39 & 255);
                            qt.y0(126, (i40 >> 7) & 1);
                            qt.y0(127, (i40 >> 6) & 1);
                            qt.y0(128, (i40 >> 5) & 1);
                            qt.y0(129, (i40 >> 4) & 1);
                            qt.y0(130, (i41 >> 7) & 1);
                            qt.y0(131, (i41 >> 6) & 1);
                            qt.y0(132, (i41 >> 5) & 1);
                            qt.y0(133, (i41 >> 4) & 1);
                            qt.y0(134, (i41 >> 3) & 1);
                            qt.y0(135, (i41 >> 2) & 1);
                            qt.y0(136, (i41 >> 1) & 1);
                            break;
                        } else if (i37 == 3) {
                            qt.y0(137, i38 & 255);
                            qt.y0(138, i39 & 255);
                            qt.y0(139, (i40 >> 7) & 1);
                            qt.y0(140, (i40 >> 6) & 1);
                            qt.y0(141, (i40 >> 5) & 1);
                            qt.y0(142, (i40 >> 4) & 1);
                            qt.y0(143, (i41 >> 7) & 1);
                            qt.y0(144, (i41 >> 6) & 1);
                            qt.y0(145, (i41 >> 5) & 1);
                            qt.y0(146, (i41 >> 4) & 1);
                            qt.y0(147, (i41 >> 3) & 1);
                            qt.y0(148, (i41 >> 2) & 1);
                            qt.y0(149, (i41 >> 1) & 1);
                            break;
                        }
                        break;
                    case 65:
                        int i42 = i2 + 2;
                        qt.y0(163, (bArr[i42] >> 4) & 15);
                        qt.y0(164, (bArr[i42] >> 3) & 1);
                        qt.y0(165, (bArr[i42] >> 2) & 1);
                        int i43 = i2 + 3;
                        qt.y0(166, (bArr[i43] >> 4) & 15);
                        qt.y0(167, (bArr[i43] >> 3) & 1);
                        qt.y0(168, (bArr[i43] >> 2) & 1);
                        qt.y0(169, (bArr[i43] >> 0) & 3);
                        int i44 = i2 + 4;
                        qt.y0(189, (bArr[i44] >> 7) & 1);
                        qt.y0(190, (bArr[i44] >> 4) & 7);
                        qt.y0(191, (bArr[i44] >> 0) & 15);
                        break;
                    case 66:
                        if (nt.f8633a == 2359735) {
                            int i45 = i2 + 2;
                            qt.y0(Process.MEDIA_UID, bArr[i45] & 255);
                            if ((bArr[i45] & 255) == 0) {
                                qt.a(0);
                            } else {
                                qt.a(1);
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
        o1.y yVar = u0.c.f17386m;
        yVar.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        yVar.d(this.f9210f);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.d(this.f9210f);
        w0.e.f17815a.d(this.f9210f);
        w0.e.f17819e.d(this.f9210f);
        yVar2.d(this.f9211g);
        yVar2.d(this.f9216l);
        qt.q0(this.f9223s);
        qt.q0(this.f9214j);
        u0.c.f17388o.d(this.f9216l);
        u0.c.f17389p.d(this.f9216l);
        h0.d.f2464c.d(this.f9220p);
        h0.d.f2462a.d(this.f9220p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 192) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -48, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
            return;
        }
        if (i2 != 1003) {
            if (i2 != 1005) {
                return;
            }
            z.k.s(227, -89, 1, iArr[0] + 5);
        } else {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -89, 1, 0);
            } else {
                z.k.s(227, -89, 1, 1);
            }
        }
    }

    public final void n3(byte b2, String str) throws UnsupportedEncodingException {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        byte[] bytes = str.getBytes("Windows-936");
        int[] iArr = new int[36];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = 33;
        iArr[3] = 2;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        iArr[length + 4] = 0;
        z.k.s(iArr);
    }

    public final void o3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        if (i2 == 1) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[5 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }
}
