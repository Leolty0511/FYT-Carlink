package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class ja extends lt {
    public static int[] I = {0, 0, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6790b;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public j f6802n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6791c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6792d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6793e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 13}, new int[]{10, 18}, new int[]{16, 9}, new int[]{17, 54}, new int[]{18, 25}, new int[]{19, 21}, new int[]{20, 18}, new int[]{21, 7}, new int[]{22, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6794f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6795g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6796h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f6797i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6798j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6799k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6800l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6801m = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f6803o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f6804p = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6805q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6806r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6807s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6808t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6809u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6810v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6811w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6812x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f6813y = 255;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Runnable f6814z = new d();
    public byte A = 5;
    public Runnable B = new e();
    public Runnable C = new f();
    public Runnable D = new g();
    public Runnable E = new h();
    public long F = -1;
    public int G = -1;
    public Runnable H = new i();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.g();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ja jaVar = ja.this;
            if (jaVar.f6811w == 0) {
                jaVar.f6797i = u0.b.f17359s0;
                if ((ja.this.f6797i <= 22.5d && ja.this.f6797i >= 0.0f) || (ja.this.f6797i >= 337.5d && ja.this.f6797i <= 360.0f)) {
                    ja.this.f6799k = 1;
                } else if (ja.this.f6797i > 22.5d && ja.this.f6797i < 67.5d) {
                    ja.this.f6799k = 2;
                } else if (ja.this.f6797i >= 67.5d && ja.this.f6797i <= 112.5d) {
                    ja.this.f6799k = 3;
                } else if (ja.this.f6797i > 112.5d && ja.this.f6797i < 157.5d) {
                    ja.this.f6799k = 4;
                } else if (ja.this.f6797i >= 157.5d && ja.this.f6797i <= 202.5d) {
                    ja.this.f6799k = 5;
                } else if (ja.this.f6797i > 202.5d && ja.this.f6797i < 247.5d) {
                    ja.this.f6799k = 6;
                } else if (ja.this.f6797i >= 247.5d && ja.this.f6797i <= 292.5d) {
                    ja.this.f6799k = 7;
                } else if (ja.this.f6797i <= 292.5d || ja.this.f6797i >= 337.5d) {
                    ja.this.f6799k = 1;
                } else {
                    ja.this.f6799k = 8;
                }
                if (ja.this.f6799k != ja.this.f6798j) {
                    z.k.s(227, 2, 1, ja.this.f6799k);
                    ja jaVar2 = ja.this;
                    jaVar2.f6798j = jaVar2.f6799k;
                }
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
                    ja.this.t3((byte) 112, u0.b.i3);
                    ja.this.t3((byte) 113, u0.b.j3);
                    ja.this.t3((byte) 114, u0.b.k3);
                } else {
                    ja.this.t3((byte) 112, " ");
                    ja.this.t3((byte) 113, " ");
                    ja.this.t3((byte) 114, " ");
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
            ja.this.c3(0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ja.this.C);
            ja.this.A = (byte) 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ja jaVar = ja.this;
            byte b2 = (byte) (jaVar.A - 1);
            jaVar.A = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(jaVar.C);
                ja.this.A = (byte) 5;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ja.this.b3(u0.b.K3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            switch (h0.c.E) {
                case 0:
                    i2 = 15;
                    break;
                case 1:
                case 2:
                case 6:
                default:
                    i2 = 0;
                    break;
                case 3:
                    i2 = 2;
                    break;
                case 4:
                    i2 = 1;
                    break;
                case 5:
                    i2 = 3;
                    break;
            }
            int[] iArr = new int[62];
            iArr[0] = -29;
            iArr[1] = -120;
            iArr[2] = 59;
            iArr[3] = 0;
            iArr[4] = (byte) i2;
            int i3 = h0.c.P / 1000;
            iArr[5] = i3 / 60;
            iArr[6] = ((byte) i3) % DhcpPacket.DHCP_VENDOR_CLASS_ID;
            iArr[7] = 2;
            try {
                ja.this.u3(iArr, 36, h0.c.f2437h);
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
            z.k.s(iArr);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (ja.this.F == millis && ja.this.G == i2) {
                return;
            }
            ja.this.F = millis;
            ja.this.G = i2;
            z.k.s(227, -123, 7, ((byte) time.year) - 2000, (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, i2, 0);
        }
    }

    public class j extends BroadcastReceiver {
        public j() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: Exception -> 0x00ed, TryCatch #0 {Exception -> 0x00ed, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0037, B:13:0x003b, B:14:0x0042, B:16:0x0049, B:18:0x0051, B:20:0x005b, B:21:0x0063, B:23:0x006d, B:24:0x008a, B:26:0x0094, B:27:0x009d, B:29:0x00a7, B:30:0x00b0, B:32:0x00ba, B:34:0x00c0, B:36:0x00cb), top: B:41:0x0020 }] */
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
                                ja jaVar = ja.this;
                                jaVar.f6812x = 1;
                                jaVar.f6811w = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                ja jaVar2 = ja.this;
                                jaVar2.f6812x = 0;
                                jaVar2.f6811w = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        ja jaVar3 = ja.this;
                        jaVar3.f6812x = 0;
                        jaVar3.f6811w = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (ja.this.f6806r != extras.getInt("SEG_REMAIN_DIS")) {
                        ja.this.f6806r = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (ja.this.f6805q != extras.getInt("ROUTE_REMAIN_DIS")) {
                        ja.this.f6805q = extras.getInt("ROUTE_REMAIN_DIS");
                        ja.this.f6809u = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (ja.this.f6807s != extras.getInt("CAR_DIRECTION")) {
                        ja.this.f6807s = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (ja.this.f6808t != extras.getInt("ROUTE_ALL_TIME")) {
                        ja.this.f6808t = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (ja.this.f6810v != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        ja.this.f6810v = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    ja.this.c3(1);
                    o1.j.e(o1.l.a(), ja.this.f6814z);
                    o1.j.b(o1.l.a(), ja.this.f6814z, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ j(ja jaVar, a aVar) {
            this();
        }
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
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    a3(128, 0);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[10] == 1) {
                    a3(128, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    a3(2, 0);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    a3(2, 0);
                    return;
                }
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(2, 3);
                return;
            } else {
                a3(1, 3);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(2, 3);
                return;
            } else {
                a3(1, 3);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 2) {
                z.k.s(227, 200, 1, 0);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, 200, 1, 1);
                return;
            } else if (i3 == 4) {
                z.k.s(227, 200, 1, 2);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, 200, 1, 3);
                return;
            }
        }
        if (i2 != 68) {
            switch (i2) {
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[65] == 1) {
                            a3(16, 0);
                        }
                    } else if (nt.f8645g[65] == 0) {
                        a3(16, 0);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            a3(4, 1);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        a3(4, 1);
                    }
                    break;
                case 38:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[12] == 1) {
                            a3(1, 2);
                        }
                    } else if (nt.f8645g[12] == 0) {
                        a3(1, 2);
                    }
                    break;
                case 39:
                    int i4 = nt.f8645g[21];
                    int i5 = iArr[1];
                    if (i5 == -2) {
                        a3(1, 1);
                        break;
                    } else if (i5 == -1) {
                        a3(2, 1);
                        break;
                    }
                    break;
            }
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -17, 3, 125, 1, 1);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -17, 3, 125, 1, 1);
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -17, 4, 125, 2, 2, 1);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -17, 4, 125, 2, 2, 11);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -17, 4, 125, 2, 0, 1);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -17, 4, 125, 2, 0, 11);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -17, 4, 125, 2, 3, 1);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -17, 4, 125, 2, 3, 11);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -17, 4, 125, 2, 1, 1);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -17, 4, 125, 2, 1, 11);
        } else if (iArr[1] == 11) {
            z.k.s(227, -17, 4, 125, 2, 16, 1);
        } else if (iArr[1] == 12) {
            z.k.s(227, -17, 4, 125, 2, 16, 11);
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            w0.e.f17815a.a(this.f6796h, 1);
            l0.b0.b(this.f6796h);
        }
        int i2 = nt.f8637c;
        if (i2 != 1) {
            a aVar = null;
            if (i2 == 2 || i2 == 3) {
                mt mtVar = this.f7886a;
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 0;
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8314i = 1;
                } else {
                    this.f7886a.f8314i = 0;
                }
                this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67};
                this.f6802n = new j(this, aVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f6802n, intentFilter);
                u0.c.f17388o.a(this.f6801m, 1);
                u0.c.f17389p.a(this.f6801m, 1);
                u0.c.f17390q.a(this.f6801m, 1);
                o1.h.f16865a.a(this.f6800l, 1);
            } else {
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = null;
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 0;
                mtVar2.f8314i = 0;
            }
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = new String[]{"com.syu.canbus"};
            mtVar3.f8310e = 1;
            mtVar3.f8311f = 1;
            mtVar3.f8312g = 0;
            mtVar3.f8314i = 0;
        }
        u0.c.f17386m.a(this.B, 1);
        qt.z(this.H);
        u0.c.f17397x.a(this.D, 1);
        h0.d.f2462a.a(this.E, 1);
        h0.d.f2464c.a(this.E, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f6791c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f6793e;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f6791c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 != 0) {
                            this.f6790b = i4;
                        }
                        this.f6792d = i5;
                        break;
                    }
                    i4++;
                }
                if (this.f6792d == 18 && this.f6791c == 0) {
                    if (this.f6794f) {
                        this.f6794f = false;
                    } else if (u0.b.f17332j == 1) {
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                    this.f6792d = this.f6791c;
                    return;
                }
                int i6 = this.f6791c;
                if (i6 == 10) {
                    if ((b4 & 255) == 1) {
                        int i7 = h0.c.E;
                        if (i7 == 3 || i7 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        }
                    }
                    return;
                }
                if (i6 == 18) {
                    if (this.f6795g != b4) {
                        this.f6795g = b4;
                        if (b4 == 1) {
                            this.f6794f = false;
                            return;
                        } else {
                            if (b4 == 2) {
                                this.f6794f = true;
                                l0.b0.l0(25, 0);
                                l0.b0.l0(25, 1);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (i6 == 21) {
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    return;
                }
                if (i6 == 22) {
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                if ((b4 & 255) != 0) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i4 <= iArr.length) {
                        l0.b0.l0(iArr[this.f6790b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 3) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = ((b5 >> 5) & 1) == 1 ? 0 : 1;
            qt.y0(12, iArr2);
            qt.y0(13, (b5 >> 4) & 1);
            qt.y0(14, (b5 >> 3) & 1);
            qt.y0(65, (b5 >> 1) & 1);
            qt.y0(16, (b5 >> 0) & 1);
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            int i10 = i2 + 4;
            int i11 = bArr[i10] & 255;
            if (i11 == 0) {
                qt.y0(27, -2);
            } else if (i11 == 14) {
                qt.y0(27, -3);
            } else if (i11 != 127) {
                int i12 = nt.f8637c;
                if (i12 == 2 || i12 == 3) {
                    qt.y0(27, i11);
                } else {
                    qt.y0(27, i11 + 16);
                }
            } else {
                qt.y0(27, -1);
            }
            if (nt.f8633a == 65843) {
                int i13 = bArr[i10] & 255;
                if (i13 == 0) {
                    qt.y0(28, -2);
                } else if (i13 == 14) {
                    qt.y0(28, -3);
                } else if (i13 != 127) {
                    qt.y0(28, i13 + 16);
                } else {
                    qt.y0(28, -1);
                }
            } else {
                int i14 = bArr[i2 + 5] & 255;
                if (i14 == 0) {
                    qt.y0(28, -2);
                } else if (i14 == 14) {
                    qt.y0(28, -3);
                } else if (i14 != 127) {
                    int i15 = nt.f8637c;
                    if (i15 == 2 || i15 == 3) {
                        qt.y0(28, i14);
                    } else {
                        qt.y0(28, i14 + 16);
                    }
                } else {
                    qt.y0(28, -1);
                }
            }
            int i16 = nt.f8637c;
            if (i16 == 2 || i16 == 3) {
                qt.y0(53, (bArr[i2 + 7] >> 7) & 1);
                return;
            }
            return;
        }
        if (b2 == 4) {
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            qt.y0(100, b7 & 1);
            qt.y0(99, (b7 >> 1) & 1);
            qt.y0(101, (b7 >> 2) & 1);
            qt.y0(102, (b7 >> 3) & 1);
            qt.y0(103, (b7 >> 4) & 1);
            qt.y0(104, (b7 >> 5) & 1);
            qt.y0(105, (b7 >> 6) & 1);
            qt.y0(106, (b8 >> 7) & 1);
            qt.y0(107, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
            int i17 = i2 + 5;
            qt.y0(108, (bArr[i17] >> 7) & 1);
            qt.y0(109, (bArr[i17] >> 6) & 1);
            qt.y0(110, (bArr[i17] >> 4) & 3);
            int i18 = i2 + 6;
            qt.y0(111, (bArr[i18] >> 7) & 1);
            qt.y0(114, (bArr[i18] >> 4) & 7);
            qt.y0(115, (bArr[i18] >> 2) & 3);
            qt.y0(112, bArr[i2 + 7] & 255);
            qt.y0(113, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 6) {
            byte b9 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b9 >> 6) & 1);
                qt.y0(1, (b9 >> 7) & 1);
            } else {
                qt.y0(2, (b9 >> 7) & 1);
                qt.y0(1, (b9 >> 6) & 1);
            }
            qt.y0(3, (b9 >> 4) & 1);
            qt.y0(4, (b9 >> 5) & 1);
            qt.y0(5, (b9 >> 3) & 1);
            qt.y0(0, (b9 >> 2) & 1);
            return;
        }
        if (b2 == 7) {
            u0.d.R2(l0.c0.h1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.h1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.h1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.h1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 8) {
            if (b2 == 10) {
                qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 5408);
                return;
            }
            if (b2 != 32) {
                if (b2 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (nt.f8637c == 3) {
                    if ((bArr[i2 + 2] & 255) == 1) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
        }
        int i19 = i2 + 2;
        int i20 = bArr[i19] & 255;
        int i21 = i2 + 3;
        int i22 = bArr[i21] & 255;
        int i23 = i2 + 4;
        int i24 = bArr[i23] & 255;
        int i25 = i2 + 5;
        int i26 = bArr[i25] & 255;
        if (i20 == 0 && i22 == 0 && i24 == 0 && i26 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i20;
        l0.c0.f13014h = i22;
        l0.c0.f13015i = i24;
        l0.c0.f13016j = i26;
        u0.d.D2(l0.c0.h1(bArr[i19] & 255));
        u0.d.E2(l0.c0.h1(bArr[i21] & 255));
        u0.d.F2(l0.c0.h1(bArr[i23] & 255));
        u0.d.G2(l0.c0.h1(bArr[i25] & 255));
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.H);
        h0.d.f2462a.d(this.E);
        h0.d.f2464c.d(this.E);
        u0.c.f17397x.d(this.D);
        u0.c.f17386m.d(this.B);
        l0.b0.p0(this.C);
        u0.c.f17388o.d(this.f6801m);
        u0.c.f17389p.d(this.f6801m);
        u0.c.f17390q.d(this.f6801m);
        o1.h.f16865a.d(this.f6800l);
        w0.e.f17815a.d(this.f6796h);
        l0.b0.p0(this.f6796h);
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
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            z.k.s(227, -56, 1, iArr[0]);
        }
    }

    public final void a3(int i2, int i3) {
        if (i3 == 0) {
            z.k.s(227, -57, 6, i2, 0, 0, 0, 0, 0);
        } else if (i3 == 1) {
            z.k.s(227, -57, 6, 0, i2, 0, 0, 0, 0);
        } else if (i3 == 2) {
            z.k.s(227, -57, 6, 0, 0, i2, 0, 0, 0);
        } else if (i3 == 3) {
            z.k.s(227, -57, 6, 0, 0, 0, i2, 0, 0);
        } else if (i3 == 4) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, i2, 0);
        } else if (i3 == 5) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, 0, i2);
        }
        a.i.a0(50L);
        z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
    }

    public final void b3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 198;
        iArr[2] = 2;
        iArr[3] = 0;
        iArr[4] = i2 == 0 ? 1 : 0;
        z.k.s(iArr);
    }

    public final void c3(int i2) {
        int i3 = this.f6810v;
        if (i3 > 0) {
            int[] iArr = I;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.f6806r;
            z.k.s(227, 148, 5, iArr[i3], (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, i2);
        }
    }

    public final void t3(byte b2, String str) throws UnsupportedEncodingException {
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

    public final void u3(int[] iArr, int i2, String str) throws UnsupportedEncodingException {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        byte[] bytes = str.getBytes("Windows-936");
        int length = bytes.length <= 26 ? bytes.length : 26;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + i2] = bytes[i3];
        }
        iArr[length + i2] = 0;
    }
}
