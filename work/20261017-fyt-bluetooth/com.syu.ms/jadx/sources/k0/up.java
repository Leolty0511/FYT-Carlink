package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class up extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11141b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d f11144e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11142c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11143d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 34}, new int[]{12, 35}, new int[]{13, 5}, new int[]{14, 29}, new int[]{15, 13}, new int[]{16, 13}, new int[]{17, 6}, new int[]{144, 54}, new int[]{145, 5}, new int[]{146, 34}, new int[]{147, 35}, new int[]{148, 32}, new int[]{149, 33}, new int[]{150, 29}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 30}, new int[]{i.a.Theme_actionModePopupWindowStyle, 31}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11145f = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f11146g = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11147h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11148i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11149j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11150k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11151l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11152m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11153n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11154o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f11155p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f11156q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11157r = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
                z.k.s(227, 153, 1, 1);
            } else {
                z.k.s(227, 153, 1, 0);
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
            z.k.s(227, 178, 6, (time.second << 2) & 252, (time.minute << 2) & 252, (time.hour << 2) & 252, (time.monthDay << 2) & 252, ((time.month + 1) << 2) & 252, ((time.year + DrmManagerClient.ERROR_UNKNOWN) << 2) & 252);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            up.this.a3();
        }
    }

    public class d extends BroadcastReceiver {
        public d() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[Catch: Exception -> 0x00f6, TryCatch #0 {Exception -> 0x00f6, blocks: (B:5:0x0022, B:7:0x002c, B:11:0x0039, B:13:0x003d, B:14:0x0044, B:16:0x004b, B:18:0x0053, B:20:0x0061, B:22:0x0067, B:23:0x0076, B:25:0x0080, B:26:0x0088, B:28:0x0092, B:29:0x00af, B:31:0x00b9, B:32:0x00c2, B:34:0x00cc, B:35:0x00d5, B:37:0x00df, B:39:0x00e5, B:41:0x00f0), top: B:46:0x0022 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                boolean z2 = false;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i2 = extras.getInt("EXTRA_STATE");
                    if (i2 != 2 && i2 != 39) {
                        switch (i2) {
                            case 8:
                            case 10:
                                up upVar = up.this;
                                upVar.f11154o = 1;
                                upVar.f11153n = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                up upVar2 = up.this;
                                upVar2.f11154o = 0;
                                upVar2.f11153n = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        up upVar3 = up.this;
                        upVar3.f11154o = 0;
                        upVar3.f11153n = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!up.this.f11145f.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        up.this.f11145f = extras.getString("CUR_ROAD_NAME");
                        up upVar4 = up.this;
                        upVar4.b3(upVar4.f11145f);
                    }
                    if (up.this.f11148i != extras.getInt("SEG_REMAIN_DIS")) {
                        up.this.f11148i = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (up.this.f11147h != extras.getInt("ROUTE_REMAIN_DIS")) {
                        up.this.f11147h = extras.getInt("ROUTE_REMAIN_DIS");
                        up.this.f11151l = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (up.this.f11149j != extras.getInt("CAR_DIRECTION")) {
                        up.this.f11149j = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (up.this.f11150k != extras.getInt("ROUTE_ALL_TIME")) {
                        up.this.f11150k = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (up.this.f11152m != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        up.this.f11152m = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    up.this.c3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ d(up upVar, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f11157r);
        mt mtVar = this.f7886a;
        a aVar = null;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        if (nt.f8637c != 193) {
            return;
        }
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8314i = 1;
        qt.z(this.f11156q);
        y0.g.f18094d.a(this.f11155p, 1);
        y0.g.f18095e.a(this.f11155p, 1);
        this.f11144e = new d(this, aVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f11144e, intentFilter);
        c3();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11142c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f11143d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f11142c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f11141b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f11141b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f11141b = 255;
                }
                return;
            }
        }
        if (b2 == 39) {
            byte b5 = bArr[i2 + 2];
            if (b5 == 1) {
                qt.y0(127, bArr[i2 + 3] & 255);
                qt.y0(128, bArr[i2 + 4] & 255);
                return;
            }
            if (b5 != 2) {
                if (b5 != 3) {
                    return;
                }
                qt.y0(140, bArr[i2 + 3] & 255);
                qt.y0(141, bArr[i2 + 4] & 255);
                return;
            }
            qt.y0(129, bArr[i2 + 3] & 255);
            qt.y0(130, bArr[i2 + 4] & 255);
            qt.y0(131, bArr[i2 + 5] & 255);
            qt.y0(132, bArr[i2 + 6] & 255);
            qt.y0(133, bArr[i2 + 7] & 255);
            qt.y0(134, bArr[i2 + 8] & 255);
            qt.y0(135, bArr[i2 + 9] & 255);
            qt.y0(136, bArr[i2 + 10] & 255);
            qt.y0(137, bArr[i2 + 11] & 255);
            qt.y0(138, bArr[i2 + 12] & 255);
            qt.y0(139, bArr[i2 + 13] & 255);
            return;
        }
        if (b2 == 41) {
            switch (bArr[i2 + 2]) {
                case 1:
                    qt.y0(118, bArr[i2 + 3] & 255);
                    break;
                case 2:
                    qt.y0(119, bArr[i2 + 3] & 255);
                    break;
                case 3:
                    qt.y0(120, bArr[i2 + 3] & 255);
                    break;
                case 4:
                    qt.y0(121, bArr[i2 + 3] & 255);
                    break;
                case 5:
                    qt.y0(122, bArr[i2 + 3] & 255);
                    break;
                case 6:
                    qt.y0(123, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(124, bArr[i2 + 3] & 255);
                    break;
                case 8:
                    qt.y0(125, bArr[i2 + 3] & 255);
                    break;
                case 9:
                    qt.y0(126, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == 48) {
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5135);
            return;
        }
        if (b2 == 54) {
            int i11 = i2 + 2;
            int i12 = bArr[i11] & 127;
            u0.d.B3((bArr[i11] & 128) != 0 ? 1000 - (i12 * 10) : (i12 * 10) + 1000);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i13 = i2 + 3;
            l0.c0.a((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i13] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            qt.y0(102, b6 & 255);
            qt.y0(103, b7 & 255);
            qt.y0(104, b8 & 255);
            qt.y0(105, b9 & 255);
            qt.y0(98, b10 & 255);
            qt.y0(99, b11 & 255);
            qt.y0(100, b12 & 255);
            qt.y0(101, b13 & 255);
            return;
        }
        if (b2 == 57) {
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            qt.y0(106, (b14 >> 7) & 1);
            qt.y0(107, (b14 >> 6) & 1);
            qt.y0(108, (b14 >> 5) & 1);
            qt.y0(109, (b14 >> 4) & 1);
            qt.y0(110, (b14 >> 3) & 1);
            qt.y0(111, (b14 >> 2) & 1);
            qt.y0(112, (b15 >> 7) & 1);
            qt.y0(113, (b15 >> 6) & 1);
            qt.y0(114, (b15 >> 5) & 1);
            qt.y0(115, (b15 >> 4) & 1);
            qt.y0(116, (b15 >> 3) & 1);
            qt.y0(117, (b15 >> 2) & 1);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i14 = i2 + 2;
                qt.y0(10, (bArr[i14] >> 7) & 1);
                qt.y0(11, (bArr[i14] >> 6) & 1);
                qt.y0(12, (bArr[i14] >> 5) & 1);
                qt.y0(53, (bArr[i14] >> 4) & 1);
                qt.y0(13, (bArr[i14] >> 3) & 1);
                qt.y0(68, (bArr[i14] >> 2) & 1);
                qt.y0(16, (bArr[i14] >> 1) & 1);
                qt.y0(65, (bArr[i14] >> 0) & 1);
                int i15 = bArr[i2 + 3] & 255;
                if (i15 != 1) {
                    if (i15 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i15 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i15 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i15 != 5) {
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
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, (bArr[i2 + 4] >> 0) & 255);
                int i16 = i2 + 6;
                int i17 = bArr[i16] & 255;
                if (i17 == 0) {
                    qt.y0(27, -2);
                } else if (i17 != 28) {
                    qt.y0(27, bArr[i16] & 255);
                } else {
                    qt.y0(27, -3);
                }
                break;
            case 36:
                byte b16 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 7) & 1);
                    qt.y0(2, (b16 >> 6) & 1);
                } else {
                    qt.y0(1, (b16 >> 6) & 1);
                    qt.y0(2, (b16 >> 7) & 1);
                }
                qt.y0(3, (b16 >> 4) & 1);
                qt.y0(4, (b16 >> 5) & 1);
                qt.y0(5, (b16 >> 3) & 1);
                qt.y0(0, (b16 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f11157r);
        qt.q0(this.f11156q);
        y0.g.f18094d.d(this.f11155p);
        y0.g.f18095e.d(this.f11155p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 142) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3() {
        if (u0.b.f17306a0 == 0) {
            z.k.s(227, -64, 2, 0, 0);
            return;
        }
        if (u0.b.D != 1) {
            z.k.s(227, -64, 2, 255, 0);
            return;
        }
        int[] iArr = new int[8];
        iArr[0] = 227;
        iArr[1] = 192;
        iArr[2] = 5;
        iArr[3] = 1;
        iArr[4] = 1;
        int i2 = w0.d.f17797i;
        int i3 = w0.d.f17796h;
        if (i3 == 65536 || i3 == 65537 || i3 == 65538) {
            iArr[5] = 1;
        } else if (i3 == 0 || i3 == 1) {
            iArr[5] = 16;
        }
        iArr[6] = i2 & 255;
        iArr[7] = (i2 >> 8) & 255;
        z.k.s(iArr);
    }

    public final void b3(String str) {
        if (str == null) {
            str = "  ";
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4 + 1] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 5];
        iArr[0] = -29;
        iArr[1] = -79;
        iArr[2] = (byte) (i2 + 2);
        iArr[3] = 1;
        iArr[4] = i2;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[5 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void c3() {
        int i2 = this.f11148i;
        z.k.s(227, 176, 5, 1, 5, (i2 >> 8) & 255, i2 & 255, 0);
    }
}
