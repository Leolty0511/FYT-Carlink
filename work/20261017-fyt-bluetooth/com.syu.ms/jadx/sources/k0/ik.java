package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class ik extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6468c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6469d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6470e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6471f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6472g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6473h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6474i = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ik.this.b3((byte) -28, u0.b.i3);
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ik.this.f6474i);
            ik.this.f6472g = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ik ikVar = ik.this;
            int i2 = ikVar.f6472g - 1;
            ikVar.f6472g = i2;
            if (i2 <= 0) {
                l0.b0.p0(ikVar.f6474i);
                ik.this.f6472g = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 3080638:
                        z.k.s(227, 2, 36, 7, 65);
                        break;
                    case 3932604:
                        z.k.s(227, 2, 36, 6, 65);
                        break;
                    case 11600315:
                        z.k.s(227, 2, 36, 1, 65);
                        break;
                    case 11665851:
                        z.k.s(227, 2, 36, 2, 65);
                        break;
                    case 11731387:
                        z.k.s(227, 2, 36, 3, 65);
                        break;
                    case 11796923:
                        z.k.s(227, 2, 36, 4, 65);
                        break;
                    case 11862459:
                        z.k.s(227, 2, 36, 5, 65);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 0;
        mtVar.f8313h = 2;
        u0.c.f17386m.a(this.f6473h, 1);
        qt.z(this.f6470e);
        w0.e.f17815a.a(l0.h0.f13060f, 1);
        w0.e.f17819e.a(l0.h0.f13060f, 1);
        u0.c.f17374a.a(l0.h0.f13060f, 1);
        u0.c.f17392s.a(l0.h0.f13060f, 1);
        u0.c.f17393t.a(l0.h0.f13060f, 1);
        u0.c.f17388o.a(this.f6471f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            if ((bArr[i2 + 5] & 255) != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            int i4 = i2 + 4;
            l0.c0.a((bArr[i4] >> 0) & 1, (bArr[i4] >> 1) & 1, (bArr[i4] >> 2) & 1);
            return;
        }
        if (b2 == 63) {
            int i5 = i2 + 8;
            qt.y0(125, (bArr[i5] >> 6) & 3);
            qt.y0(126, (bArr[i5] >> 0) & 15);
            int i6 = i2 + 9;
            qt.y0(127, (bArr[i6] >> 6) & 3);
            qt.y0(128, (bArr[i6] >> 0) & 15);
            int i7 = i2 + 10;
            qt.y0(129, (bArr[i7] >> 6) & 3);
            qt.y0(130, (bArr[i7] >> 0) & 15);
            qt.y0(131, (bArr[i2 + 11] >> 4) & 1);
            qt.y0(132, bArr[i2 + 13] & 255);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
            int i8 = i2 + 6;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 7;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 8;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 9;
            int i15 = bArr[i14] & 255;
            if (i9 == 255 && i11 == 255 && i13 == 255 && i15 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i9 || l0.c0.f13014h != i11 || l0.c0.f13015i != i13 || l0.c0.f13016j != i15) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i9;
            l0.c0.f13014h = i11;
            l0.c0.f13015i = i13;
            l0.c0.f13016j = i15;
            u0.d.D2(l0.c0.L0(bArr[i8] & 255));
            u0.d.E2(l0.c0.L0(bArr[i10] & 255));
            u0.d.F2(l0.c0.L0(bArr[i12] & 255));
            u0.d.G2(l0.c0.L0(bArr[i14] & 255));
            return;
        }
        if (b2 == 72) {
            qt.y0(133, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(134, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(135, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(136, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b2 == 97) {
            int i16 = i2 + 2;
            qt.y0(137, (bArr[i16] >> 0) & 3);
            qt.y0(138, (bArr[i16] >> 2) & 1);
            int i17 = i2 + 3;
            qt.y0(139, (bArr[i17] >> 0) & 1);
            qt.y0(140, (bArr[i17] >> 1) & 1);
            qt.y0(141, (bArr[i2 + 4] >> 0) & 7);
            int i18 = i2 + 5;
            qt.y0(142, (bArr[i18] >> 0) & 1);
            qt.y0(143, (bArr[i18] >> 1) & 1);
            qt.y0(144, (bArr[i18] >> 2) & 1);
            qt.y0(145, (bArr[i18] >> 3) & 1);
            qt.y0(146, (bArr[i18] >> 4) & 1);
            qt.y0(147, (bArr[i18] >> 5) & 1);
            qt.y0(148, (bArr[i18] >> 6) & 1);
            qt.y0(149, (bArr[i18] >> 7) & 1);
            qt.y0(150, (bArr[i2 + 6] >> 0) & 1);
            int i19 = i2 + 7;
            qt.y0(151, (bArr[i19] >> 1) & 1);
            qt.y0(152, (bArr[i19] >> 2) & 1);
            qt.y0(153, (bArr[i19] >> 3) & 1);
            qt.y0(154, (bArr[i19] >> 4) & 1);
            qt.y0(155, (bArr[i19] >> 5) & 1);
            qt.y0(156, (bArr[i19] >> 6) & 1);
            qt.y0(157, (bArr[i19] >> 7) & 1);
            int i20 = i2 + 8;
            qt.y0(158, (bArr[i20] >> 1) & 1);
            qt.y0(159, (bArr[i20] >> 2) & 1);
            qt.y0(160, (bArr[i20] >> 3) & 1);
            qt.y0(161, (bArr[i20] >> 4) & 1);
            qt.y0(162, (bArr[i20] >> 5) & 1);
            qt.y0(163, (bArr[i20] >> 6) & 1);
            qt.y0(164, (bArr[i2 + 9] >> 0) & 1);
            return;
        }
        if (b2 == 22) {
            qt.y0(105, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(106, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(107, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(108, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(109, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(110, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(111, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(112, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(113, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 19] & 255));
            qt.y0(114, (bArr[i2 + 21] & 255) | ((bArr[i2 + 20] << 8) & 65280));
            return;
        }
        if (b2 == 23) {
            qt.y0(115, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(116, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(117, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(118, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(119, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(120, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(121, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(122, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            qt.y0(123, ((bArr[i2 + 18] << 8) & 65280) | (bArr[i2 + 19] & 255));
            qt.y0(124, (bArr[i2 + 21] & 255) | ((bArr[i2 + 20] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 17:
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                this.f6468c = b3 & 255;
                int i21 = 0;
                while (true) {
                    iArr = this.f6469d;
                    if (i21 < iArr.length) {
                        int i22 = this.f6468c;
                        if (i22 != iArr[i21][0]) {
                            i21++;
                        } else if (i22 != 0) {
                            this.f6467b = i21;
                        }
                    }
                }
                int i23 = b4 & 255;
                if (i23 == 1) {
                    if (i21 < iArr.length) {
                        l0.b0.l0(iArr[i21][1], 0);
                    }
                } else if (i23 == 0) {
                    int i24 = this.f6467b;
                    if (i24 < iArr.length && i24 != 255) {
                        l0.b0.l0(iArr[i24][1], 1);
                    }
                    this.f6467b = 255;
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                byte b5 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                } else {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                }
                qt.y0(3, (b5 >> 5) & 1);
                qt.y0(4, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                break;
            case 19:
                qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(101, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(102, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(103, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(104, (bArr[i2 + 15] & 255) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 14] << 8) & 65280));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6473h);
        l0.b0.p0(this.f6474i);
        qt.q0(this.f6470e);
        w0.e.f17815a.d(l0.h0.f13060f);
        w0.e.f17819e.d(l0.h0.f13060f);
        u0.c.f17374a.d(l0.h0.f13060f);
        u0.c.f17392s.d(l0.h0.f13060f);
        u0.c.f17393t.d(l0.h0.f13060f);
        u0.c.f17388o.d(this.f6471f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 165) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, 2, -14, 15, 0);
                return;
            } else {
                z.k.s(227, 2, -14, 15, 1);
                return;
            }
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1920) / a.f.w();
        int i3 = (iArr[2] * 1080) / a.f.i();
        if (T2(iArr, 2)) {
            if (iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            } else {
                z.k.s(227, 6, 44, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
            }
        }
    }

    public final void b3(byte b2, String str) throws UnsupportedEncodingException {
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes("UTF-8");
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 3] = bytes[i2];
        }
        iArr[length + 3] = 0;
        z.k.s(iArr);
    }
}
