package k0;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class xl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12183c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12184d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12185e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12186f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12187g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12188h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f12189i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12190j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12191k = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = (h0.c.P / 1000) / 60;
            z.k.s(-29, 114, 2, (i2 >> 8) & 4, i2 & 255);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            switch (h0.c.E) {
                case 1:
                case 2:
                case 6:
                    i2 = 128;
                    break;
                case 3:
                    i2 = 160;
                    break;
                case 4:
                    i2 = 192;
                    break;
                case 5:
                    i2 = 224;
                    break;
            }
            try {
                xl.this.c3(i2, h0.c.f2441j, h0.c.f2437h);
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
            try {
                if (u0.b.D == 8) {
                    xl.this.h3((byte) 0, u0.b.i3);
                    xl.this.h3((byte) 1, u0.b.k3);
                    xl.this.h3((byte) 2, u0.b.j3);
                } else {
                    xl.this.h3((byte) 0, "Unknow");
                    xl.this.h3((byte) 1, "Unknow");
                    xl.this.h3((byte) 2, "Unknow");
                }
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xl.a3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            if (xl.this.f12189i != millis) {
                xl.this.f12189i = millis;
                z.k.s(227, 132, 5, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[6];
        iArr[0] = 227;
        iArr[1] = 133;
        iArr[2] = 3;
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17796h;
            if (i3 == 65536 || i3 == 65537 || i3 == 65538) {
                iArr[3] = 2;
                int i4 = w0.d.f17797i;
                iArr[4] = ((i4 / 10) >> 8) & 255;
                iArr[5] = (i4 / 10) & 255;
            } else if (i3 == 0 || i3 == 1) {
                iArr[3] = 1;
                int i5 = w0.d.f17797i;
                iArr[4] = (i5 >> 8) & 255;
                iArr[5] = i5 & 255;
            }
        } else if (i2 != 3) {
            iArr[3] = 3;
        } else {
            iArr[3] = 4;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[3] = 0;
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
        if (i2 == 33) {
            if (iArr[1] == 0) {
                if (nt.f8645g[21] != 0) {
                    b3(1);
                }
                return;
            } else {
                if (nt.f8645g[21] == 0) {
                    b3(20);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    b3(16);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    b3(16);
                    return;
                }
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                b3(9);
                return;
            } else {
                b3(10);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                b3(11);
                return;
            } else {
                b3(12);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 2) {
                z.k.s(227, 134, 1, 0);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, 134, 1, 1);
                return;
            } else if (i3 == 4) {
                z.k.s(227, 134, 1, 2);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, 134, 1, 3);
                return;
            }
        }
        switch (i2) {
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(38);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(38);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(4);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(4);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        b3(35);
                    }
                } else if (nt.f8645g[12] == 0) {
                    b3(35);
                }
                break;
            case 39:
                int i4 = iArr[1];
                if (i4 == -2) {
                    b3(21);
                    break;
                } else if (i4 == -1) {
                    b3(20);
                    break;
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
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        int i2 = nt.f8637c;
        if (i2 == 163 || i2 == 165) {
            this.f7886a.f8313h = 1;
        } else {
            this.f7886a.f8313h = 0;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8317l = 0;
        mtVar2.f8312g = 0;
        mtVar2.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f12190j);
        u0.c.f17374a.a(this.f12188h, 1);
        w0.e.f17815a.a(this.f12188h, 1);
        w0.e.f17819e.a(this.f12188h, 1);
        u0.c.f17388o.a(this.f12187g, 1);
        u0.c.f17389p.a(this.f12187g, 1);
        u0.c.f17390q.a(this.f12187g, 1);
        h0.d.f2462a.a(this.f12186f, 1);
        h0.d.f2464c.a(this.f12186f, 1);
        h0.d.f2465d.a(this.f12185e, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i8 = i2 + 2;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 3;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 4;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            if (i9 == 0 && i11 == 0 && i13 == 0 && i15 == 0) {
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
            u0.d.D2(l0.c0.b1(bArr[i8] & 255));
            u0.d.E2(l0.c0.b1(bArr[i10] & 255));
            u0.d.F2(l0.c0.b1(bArr[i12] & 255));
            u0.d.G2(l0.c0.b1(bArr[i14] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12183c = b3 & 255;
            int i16 = 0;
            while (true) {
                iArr = this.f12184d;
                if (i16 >= iArr.length) {
                    break;
                }
                int i17 = this.f12183c;
                if (i17 == iArr[i16][0]) {
                    if (i17 == 0) {
                        break;
                    }
                    this.f12182b = i16;
                    break;
                }
                i16++;
            }
            int i18 = b4 & 255;
            if (i18 == 1) {
                if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                    return;
                }
                return;
            } else {
                if (i18 == 0) {
                    int i19 = this.f12182b;
                    if (i19 < iArr.length) {
                        i4 = 255;
                        if (i19 != 255) {
                            l0.b0.l0(iArr[i19][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f12182b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i20 = i2 + 2;
                qt.y0(1, (bArr[i20] >> 7) & 1);
                qt.y0(2, (bArr[i20] >> 6) & 1);
            } else {
                int i21 = i2 + 2;
                qt.y0(1, (bArr[i21] >> 6) & 1);
                qt.y0(2, (bArr[i21] >> 7) & 1);
            }
            int i22 = i2 + 2;
            qt.y0(3, (bArr[i22] >> 4) & 1);
            qt.y0(4, (bArr[i22] >> 5) & 1);
            qt.y0(5, (bArr[i22] >> 3) & 1);
            qt.y0(0, (bArr[i22] >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            int i23 = i2 + 3;
            if ((bArr[i23] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i23] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i24 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i23] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i24 & 255, (i24 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, (int) bArr[i2 + 1]));
            return;
        }
        if (b2 == 83) {
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, bArr[i2 + 4] & 255);
            qt.y0(102, bArr[i2 + 5] & 255);
            qt.y0(103, bArr[i2 + 6] & 255);
            qt.y0(104, bArr[i2 + 7] & 255);
            qt.y0(105, bArr[i2 + 8] & 255);
            qt.y0(106, bArr[i2 + 9] & 255);
            qt.y0(107, bArr[i2 + 10] & 255);
            int i25 = i2 + 11;
            qt.y0(108, (bArr[i25] >> 0) & 15);
            qt.y0(109, (bArr[i25] >> 4) & 1);
            qt.y0(110, (bArr[i25] >> 5) & 1);
            qt.y0(111, (bArr[i25] >> 6) & 3);
            int i26 = i2 + 12;
            qt.y0(112, (bArr[i26] >> 0) & 7);
            qt.y0(113, (bArr[i26] >> 3) & 1);
            qt.y0(114, (bArr[i26] >> 4) & 1);
            qt.y0(115, (bArr[i26] >> 5) & 3);
            return;
        }
        if (b2 != 85) {
            return;
        }
        int i27 = i2 + 2;
        int i28 = bArr[i27] & 255;
        int i29 = i2 + 3;
        int i30 = bArr[i29] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i28 = bArr[i29] & 255;
            i30 = bArr[i27] & 255;
        }
        if (i28 == 16) {
            qt.y0(27, -2);
        } else if (i28 != 80) {
            qt.y0(27, i28);
        } else {
            qt.y0(27, -3);
        }
        if (i30 == 16) {
            qt.y0(28, -2);
        } else if (i30 != 80) {
            qt.y0(28, i30);
        } else {
            qt.y0(28, -3);
        }
        int i31 = i2 + 4;
        qt.y0(21, (bArr[i31] >> 0) & 15);
        switch ((bArr[i31] >> 4) & 15) {
            case 1:
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 2:
                i5 = 0;
                i7 = 1;
                i6 = i7;
                break;
            case 3:
                i5 = 0;
                i7 = 0;
                i6 = 1;
                break;
            case 4:
                i7 = 0;
                i5 = 1;
                i6 = 1;
                break;
            case 5:
                i6 = 0;
                i5 = 1;
                i7 = 1;
                break;
            case 6:
                i7 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 7:
                i5 = 1;
                i7 = i5;
                i6 = i7;
                break;
            default:
                i5 = 0;
                i7 = i5;
                i6 = i7;
                break;
        }
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        int i32 = i2 + 5;
        qt.y0(29, (bArr[i32] >> 0) & 3);
        qt.y0(30, (bArr[i32] >> 4) & 3);
        int i33 = i2 + 6;
        qt.y0(13, (bArr[i33] >> 0) & 1);
        qt.y0(11, (bArr[i33] >> 1) & 1);
        qt.y0(62, (bArr[i33] >> 2) & 1);
        qt.y0(12, (bArr[i33] >> 3) & 1);
        qt.y0(53, (bArr[i33] >> 4) & 1);
        qt.y0(16, (bArr[i33] >> 6) & 1);
        qt.y0(65, (bArr[i33] >> 7) & 1);
        int i34 = bArr[i2 + 7] & 255;
        if (i34 == 255) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i34 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f12190j);
        u0.c.f17374a.d(this.f12188h);
        w0.e.f17815a.d(this.f12188h);
        w0.e.f17819e.d(this.f12188h);
        u0.c.f17388o.d(this.f12187g);
        u0.c.f17389p.d(this.f12187g);
        u0.c.f17390q.d(this.f12187g);
        h0.d.f2462a.d(this.f12186f);
        h0.d.f2464c.d(this.f12186f);
        h0.d.f2465d.d(this.f12185e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 116) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            b3(iArr[0]);
            return;
        }
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "C_CHANGE_PANORAMA  ==== " + iArr[0]);
            z.k.s(227, 134, 1, 4);
            return;
        }
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE  ==== " + iArr[0]);
        if (iArr.length >= 1) {
            qt.y0(Process.MEDIA_UID, iArr[0]);
            z.k.s(227, 134, 1, iArr[0]);
        }
    }

    public final void b3(int i2) {
        int i3 = (this.f12191k + 1) % 2;
        this.f12191k = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }

    public final void c3(int i2, String str, String str2) throws UnsupportedEncodingException {
        int i3 = nt.f8637c;
        int i4 = 0;
        if (i3 == 163 || i3 == 162) {
            if (str == null) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (str2 == null) {
                str2 = ProxyProperties.LOCAL_EXCL_LIST;
            }
            int length = str.length() > 28 ? 28 : str.length();
            byte[] bytes = str.getBytes("Windows-936");
            int length2 = str2.length() <= 28 ? str2.length() : 28;
            byte[] bytes2 = str2.getBytes("Windows-936");
            int i5 = length + length2;
            int[] iArr = new int[i5 + 6];
            iArr[0] = 227;
            iArr[1] = 113;
            iArr[2] = i5 + 3;
            iArr[3] = i2;
            iArr[4] = length;
            for (int i6 = 0; i6 < length; i6++) {
                iArr[i6 + 5] = bytes[i6];
            }
            iArr[length + 5] = length2;
            while (i4 < length2) {
                iArr[length + 6 + i4] = bytes2[i4];
                i4++;
            }
            z.k.s(iArr);
            return;
        }
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (str2 == null) {
            str2 = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length3 = str.length() > 14 ? 14 : str.length();
        int length4 = str2.length() <= 14 ? str2.length() : 14;
        int i7 = length3 * 2;
        int[] iArr2 = new int[(length4 * 2) + i7 + 6];
        iArr2[0] = 227;
        iArr2[1] = 113;
        iArr2[2] = length3 + length4 + 3;
        iArr2[3] = i2;
        iArr2[4] = length3;
        for (int i8 = 0; i8 < length3; i8++) {
            int iCodePointAt = str.codePointAt(i8);
            int i9 = i8 << 1;
            iArr2[i9 + 6] = (iCodePointAt >> 8) & 255;
            iArr2[i9 + 5] = iCodePointAt & 255;
        }
        iArr2[i7 + 5] = length4;
        while (i4 < length3) {
            int iCodePointAt2 = str2.codePointAt(i4);
            int i10 = (i4 << 1) + i7;
            iArr2[i10 + 7] = (iCodePointAt2 >> 8) & 255;
            iArr2[i10 + 6] = iCodePointAt2 & 255;
            i4++;
        }
        z.k.s(iArr2);
    }

    public final void h3(byte b2, String str) throws UnsupportedEncodingException {
        int i2 = nt.f8637c;
        int i3 = 0;
        if (i2 == 163 || i2 == 162) {
            if (str == null) {
                str = "Unknow";
            }
            int length = str.length() <= 28 ? str.length() : 28;
            byte[] bytes = str.getBytes("Windows-936");
            int[] iArr = new int[length + 4];
            iArr[0] = 227;
            iArr[1] = 112;
            iArr[2] = length + 1;
            iArr[3] = b2;
            while (i3 < length) {
                iArr[i3 + 4] = bytes[i3];
                i3++;
            }
            z.k.s(iArr);
            return;
        }
        if (str == null) {
            str = "Unknow";
        }
        int length2 = str.length() <= 14 ? str.length() : 14;
        int i4 = length2 * 2;
        int[] iArr2 = new int[i4 + 4];
        iArr2[0] = 227;
        iArr2[1] = 112;
        iArr2[2] = i4 + 1;
        iArr2[3] = b2;
        while (i3 < length2) {
            int iCodePointAt = str.codePointAt(i3);
            int i5 = i3 << 1;
            iArr2[i5 + 5] = (iCodePointAt >> 8) & 255;
            iArr2[i5 + 4] = iCodePointAt & 255;
            i3++;
        }
        z.k.s(iArr2);
    }
}
