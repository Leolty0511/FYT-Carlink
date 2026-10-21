package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class uk extends lt {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int[] f11078x = {1, 1, 7, 3, 8, 2, 6, 4, 6, 1, 9, 9, 9, 9, 9, 14, 9, 9, 9, 4, 1, 9, 9, 9, 9, 9, 9, 9, 9};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11081d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f f11085h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11082e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11083f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11084g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{9, 12}, new int[]{32, 1}, new int[]{43, 5}, new int[]{51, 21}, new int[]{62, -1}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f11086i = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f11087j = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11088k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11089l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11090m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11091n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11092o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11093p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11094q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11095r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11096s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f11097t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11098u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f11099v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f11100w = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 9 || i2 == 8) {
                uk.this.h3((byte) -110, u0.b.i3);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            uk.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            DateFormat.is24HourFormat(App.c());
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, 0, 0, 0, 0, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(uk.this.f11100w);
            uk.this.f11098u = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            uk ukVar = uk.this;
            int i2 = ukVar.f11098u - 1;
            ukVar.f11098u = i2;
            if (i2 > 0) {
                int i3 = u0.b.f17306a0;
            } else {
                l0.b0.p0(ukVar.f11100w);
                uk.this.f11098u = 5;
            }
        }
    }

    public class f extends BroadcastReceiver {
        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x003f A[Catch: Exception -> 0x010c, TryCatch #0 {Exception -> 0x010c, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0036, B:13:0x003a, B:17:0x0046, B:19:0x004e, B:21:0x005c, B:23:0x0062, B:24:0x008d, B:26:0x0097, B:27:0x00a0, B:29:0x00aa, B:31:0x00ba, B:33:0x00be, B:35:0x00c2, B:36:0x00c4, B:37:0x00d6, B:39:0x00e0, B:40:0x00e9, B:42:0x00f3, B:44:0x0101, B:47:0x0106, B:14:0x003f), top: B:52:0x0020 }] */
        /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0036. Please report as an issue. */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z2;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                if (extras.getInt("KEY_TYPE") != 10019) {
                    z2 = false;
                } else {
                    int i2 = extras.getInt("EXTRA_STATE");
                    if (i2 != 2 && i2 != 39) {
                        switch (i2) {
                            case 8:
                            case 10:
                                uk.this.f11093p = 1;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                uk.this.f11093p = 1;
                                break;
                            default:
                                z2 = false;
                                break;
                        }
                    } else {
                        uk.this.f11093p = 1;
                    }
                    z2 = true;
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!uk.this.f11087j.equals(extras.getString("NEXT_ROAD_NAME")) && extras.getString("NEXT_ROAD_NAME") != null) {
                        Log.d("LG", "NEXT_ROAD_NAME = " + uk.this.f11087j);
                        uk.this.f11087j = extras.getString("NEXT_ROAD_NAME");
                        uk ukVar = uk.this;
                        ukVar.c3(229, ukVar.f11087j);
                    }
                    if (uk.this.f11089l != extras.getInt("SEG_REMAIN_DIS")) {
                        uk.this.f11089l = extras.getInt("SEG_REMAIN_DIS");
                        z2 = true;
                    }
                    if (uk.this.f11088k != extras.getInt("ROUTE_REMAIN_DIS")) {
                        uk.this.f11088k = extras.getInt("ROUTE_REMAIN_DIS");
                        uk ukVar2 = uk.this;
                        if (ukVar2.f11093p == 0 && ukVar2.f11088k > 100 && u0.b.f17306a0 == 1) {
                            ukVar2.f11093p = 1;
                        }
                        ukVar2.f11091n = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (uk.this.f11090m != extras.getInt("ROUTE_REMAIN_TIME")) {
                        uk.this.f11090m = extras.getInt("ROUTE_REMAIN_TIME");
                        z2 = true;
                    }
                    if (uk.this.f11092o != extras.getInt("ICON")) {
                        uk.this.f11092o = extras.getInt("ICON");
                        uk ukVar3 = uk.this;
                        if (ukVar3.f11092o >= 2) {
                            ukVar3.f11093p = 1;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    uk.this.d3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ f(uk ukVar, a aVar) {
            this();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = b3();
        int i4 = u0.b.D;
        if (i4 != 1) {
            switch (i4) {
                case 8:
                case 9:
                case 10:
                    if (u0.b.m3 == 0) {
                        iArr[3] = 48;
                    }
                    break;
            }
        } else {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17798j & 255;
                iArr[3] = (i6 / 10) + 48;
                iArr[4] = (i6 % 10) + 48;
                int i7 = w0.d.f17797i;
                if (i7 > 10000) {
                    iArr[10] = ((i7 % 100000) / 10000) + 48;
                }
                iArr[11] = ((i7 % 10000) / 1000) + 48;
                iArr[12] = ((i7 % 1000) / 100) + 48;
                iArr[13] = 46;
                iArr[14] = ((i7 % 100) / 10) + 48;
            } else {
                int i8 = w0.d.f17798j;
                iArr[3] = (i8 / 10) + 48;
                iArr[4] = (i8 % 10) + 48;
                int i9 = w0.d.f17797i;
                if (i9 > 1000) {
                    iArr[11] = ((i9 % 10000) / 1000) + 48;
                }
                iArr[12] = ((i9 % 1000) / 100) + 48;
                iArr[13] = ((i9 % 100) / 10) + 48;
                iArr[14] = (i9 % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i10 = i2 + 1;
            iArr2[i10] = (byte) iArr[i2];
            i2 = i10;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0041  */
    /* JADX WARN: Code duplicated, block: B:30:0x0043  */
    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    public static int b3() {
        int i2 = u0.b.D;
        int i3 = 2;
        if (i2 != 13) {
            switch (i2) {
                case 1:
                    int i4 = w0.d.f17796h;
                    if (i4 - 65536 == 0) {
                        i3 = 1;
                    } else if (1 != i4 - 65536) {
                        if (2 == i4 - 65536) {
                            i3 = 3;
                        } else if (i4 + 0 == 0) {
                            i3 = 4;
                        } else if (1 != i4 - 0) {
                            i3 = 0;
                        } else {
                            i3 = 5;
                        }
                    }
                    break;
                case 2:
                    i3 = 10;
                    break;
                case 3:
                    i3 = 133;
                    break;
                case 4:
                    if (o0.e.H != 1) {
                        i3 = 13;
                    } else {
                        i3 = 6;
                    }
                    break;
                case 5:
                    i3 = 12;
                    break;
                case 6:
                    i3 = 8;
                    break;
                case 7:
                    i3 = 11;
                    break;
                case 8:
                case 9:
                case 10:
                    i3 = 13;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            i3 = 12;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i3;
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 1;
        mtVar.f8314i = 1;
        o1.y yVar = u0.c.f17386m;
        yVar.a(this.f11099v, 1);
        qt.z(this.f11097t);
        yVar.a(this.f11096s, 1);
        u0.c.f17374a.a(this.f11096s, 1);
        w0.e.f17815a.a(this.f11096s, 1);
        w0.e.f17819e.a(this.f11096s, 1);
        u0.c.f17391r.a(this.f11096s, 1);
        u0.c.f17388o.a(this.f11095r, 1);
        this.f11085h = new f(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f11085h, intentFilter);
        d3();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 33) {
            this.f11081d = bArr[i2 + 2] & 255;
            byte b3 = bArr[i2 + 3];
            int i9 = 0;
            while (true) {
                iArr = this.f11084g;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f11081d;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f11082e = i9;
                    break;
                }
                i9++;
            }
            if (this.f11081d == 62) {
                if ((b3 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                    return;
                }
                o1.u.g("com.syu.carlink");
                return;
            }
            if ((b3 & 255) != 0) {
                if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                    return;
                }
                return;
            }
            int i11 = this.f11082e;
            if (i11 < iArr.length) {
                i4 = 255;
                if (i11 != 255) {
                    l0.b0.l0(iArr[i11][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f11082e = i4;
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.V0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.V0(bArr[i2 + 5] & 255));
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            int i14 = bArr[i12] & 255;
            int i15 = i2 + 9;
            int i16 = bArr[i15] & 255;
            int i17 = bArr[i15] & 255;
            if (i13 == 255 && i14 == 255 && i16 == 255 && i17 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i17) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i13;
            l0.c0.f13014h = i14;
            l0.c0.f13015i = i16;
            l0.c0.f13016j = i17;
            u0.d.D2(l0.c0.k1(bArr[i12] & 255));
            u0.d.E2(l0.c0.k1(bArr[i12] & 255));
            u0.d.F2(l0.c0.k1(bArr[i15] & 255));
            u0.d.G2(l0.c0.k1(bArr[i15] & 255));
            return;
        }
        if (b2 == 72) {
            qt.y0(103, bArr[i2 + 2] & 255);
            qt.y0(104, bArr[i2 + 3] & 255);
            qt.y0(105, bArr[i2 + 4] & 255);
            qt.y0(106, bArr[i2 + 5] & 255);
            qt.y0(107, bArr[i2 + 6] & 255);
            qt.y0(108, bArr[i2 + 7] & 255);
            qt.y0(109, bArr[i2 + 8] & 255);
            qt.y0(110, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 97) {
            int i18 = i2 + 2;
            qt.y0(111, (bArr[i18] >> 7) & 1);
            qt.y0(112, (bArr[i18] >> 6) & 1);
            qt.y0(113, (bArr[i18] >> 5) & 1);
            qt.y0(114, (bArr[i18] >> 4) & 1);
            int i19 = i2 + 3;
            qt.y0(115, (bArr[i19] >> 7) & 1);
            qt.y0(117, (bArr[i19] >> 3) & 7);
            int i20 = i2 + 4;
            qt.y0(118, (bArr[i20] >> 5) & 7);
            qt.y0(119, (bArr[i20] >> 4) & 1);
            return;
        }
        if (b2 == 17) {
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            this.f11080c = b4 & 255;
            int i21 = 0;
            while (true) {
                iArr2 = this.f11083f;
                if (i21 >= iArr2.length) {
                    break;
                }
                int i22 = this.f11080c;
                if (i22 == iArr2[i21][0]) {
                    if (i22 == 0) {
                        break;
                    }
                    this.f11079b = i21;
                    break;
                }
                i21++;
            }
            if (this.f11080c != 6) {
                int i23 = b5 & 255;
                if (i23 == 1) {
                    if (i21 < iArr2.length) {
                        l0.b0.l0(iArr2[i21][1], 0);
                    }
                } else if (i23 == 0) {
                    int i24 = this.f11079b;
                    if (i24 < iArr2.length && i24 != 255) {
                        l0.b0.l0(iArr2[i24][1], 1);
                    }
                    this.f11079b = 255;
                }
            } else if ((b5 & 255) == 1) {
                if (u0.i.l3().r3() || (i5 = h0.c.E) == 3 || i5 == 4 || i5 == 5) {
                    l0.b0.l0(26, 0);
                    l0.b0.l0(26, 1);
                } else {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 18) {
            byte b6 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
            } else {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            }
            qt.y0(3, (b6 >> 5) & 1);
            qt.y0(4, (b6 >> 4) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            qt.y0(0, (b6 >> 2) & 1);
            return;
        }
        if (b2 != 49) {
            if (b2 != 50) {
                return;
            }
            int i25 = bArr[i2 + 4] & 255;
            int i26 = bArr[i2 + 5] & 255;
            int i27 = bArr[i2 + 6] & 255;
            int i28 = bArr[i2 + 7] & 255;
            qt.y0(1032, (i25 << 8) | i26);
            int i29 = (i27 << 8) | i28;
            qt.y0(1031, i29);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i29}, null, null);
            qt.y0(98, bArr[i2 + 3] & 255);
            qt.y0(99, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(100, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(101, ((bArr[i2 + 12] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 13] << 8)) | (bArr[i2 + 14] & 255));
            qt.y0(102, bArr[i2 + 15] & 255);
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        byte b9 = bArr[i2 + 4];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 7];
        qt.y0(10, (b7 >> 6) & 1);
        qt.y0(13, (b7 >> 3) & 1);
        qt.y0(11, (b8 >> 6) & 1);
        qt.y0(12, (b8 >> 4) & 1);
        qt.y0(16, (b9 >> 5) & 1);
        qt.y0(65, (b9 >> 4) & 1);
        qt.y0(29, (b9 >> 0) & 3);
        qt.y0(30, (b9 >> 2) & 3);
        if (b10 == 3) {
            i6 = 0;
            i7 = 0;
            i8 = 1;
        } else if (b10 != 12) {
            if (b10 == 5) {
                i6 = 0;
                i7 = 1;
            } else if (b10 != 6) {
                i6 = 0;
                i7 = 0;
            } else {
                i6 = 0;
                i8 = 0;
                i7 = 1;
            }
            i8 = i7;
        } else {
            i7 = 0;
            i6 = 1;
            i8 = 1;
        }
        qt.y0(18, i6);
        qt.y0(19, i7);
        qt.y0(20, i8);
        qt.y0(21, b11 & 255);
        int i30 = i2 + 8;
        if ((bArr[i30] & 255) == 254) {
            qt.y0(27, -2);
        } else if ((bArr[i30] & 255) == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, bArr[i30] & 255);
        }
    }

    @Override // k0.lt
    public void W2() {
        o1.y yVar = u0.c.f17386m;
        yVar.d(this.f11099v);
        l0.b0.p0(this.f11100w);
        qt.q0(this.f11097t);
        yVar.d(this.f11096s);
        u0.c.f17374a.d(this.f11096s);
        w0.e.f17815a.d(this.f11096s);
        w0.e.f17819e.d(this.f11096s);
        u0.c.f17391r.d(this.f11096s);
        u0.c.f17388o.d(this.f11095r);
        if (this.f11085h != null) {
            App.c().unregisterReceiver(this.f11085h);
        }
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
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * 160) / a.f.w();
            int i3 = (iArr[2] * 90) / a.f.i();
            if (iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            } else if (iArr[0] == 1) {
                z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            }
        }
    }

    public final void c3(int i2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = i2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void d3() {
        int i2;
        int i3 = this.f11092o;
        if (i3 >= 0) {
            int[] iArr = f11078x;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.f11089l * 10;
            if (i4 > 10000) {
                i4 /= 1000;
                i2 = 1;
            } else {
                i2 = 0;
            }
            z.k.s(227, 19, 228, (byte) (this.f11093p << 7), 0, (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, i2, 0, 0, 0, 0, 0, 0, 0, 0, 0, iArr[i3], 0, 0);
        }
    }

    public final void h3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
