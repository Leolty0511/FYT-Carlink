package u0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.util.Log;
import o1.j;
import o1.s0;
import o1.z;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f17293h = new int[20];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f17294a = new RunnableC0113a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f17295b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17296c = 1000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f17297d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17298e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile int f17299f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Runnable f17300g = new c();

    /* JADX INFO: renamed from: u0.a$a, reason: collision with other inner class name */
    public class RunnableC0113a implements Runnable {
        public RunnableC0113a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17343m1 != 1) {
                k.s(1, 170, 85);
                if (y0.f.f18081v) {
                    int[] iArr = new int[3];
                    iArr[0] = 1;
                    iArr[1] = 0;
                    iArr[2] = y0.f.f18077t == 0 ? i.a.Theme_preferenceFragmentStyle : i.a.Theme_preferencePanelStyle;
                    k.s(iArr);
                }
            }
            o1.k.a().postDelayed(this, 1000L);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17302a = 7;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (h0.c.E) {
                case 0:
                    this.f17302a = 0;
                    break;
                case 1:
                    this.f17302a = 3;
                    break;
                case 2:
                    this.f17302a = 1;
                    break;
                case 3:
                    this.f17302a = 6;
                    break;
                case 4:
                    this.f17302a = 4;
                    break;
                case 5:
                    this.f17302a = 5;
                    break;
                case 6:
                    this.f17302a = 2;
                    break;
            }
            k.s(1, 55, this.f17302a);
            if (h0.c.G != 1 || u0.b.D == 2) {
                return;
            }
            a.this.c(2);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f17298e > 0) {
                a.e(a.this);
                o1.k.a().removeCallbacks(a.this.f17300g);
                if (a.this.f17298e > 0 || a.this.f17299f == -1 || a.this.f17299f == u0.b.O) {
                    y0.h.w();
                    Log.d("Qin", "syncMcuState =======last :" + String.format("%02X ", Integer.valueOf(u0.b.O)) + " to sMcuState " + String.format("%02X ", Integer.valueOf(a.this.f17299f)));
                    return;
                }
                Log.d("Qin", "to mcu <------2-----= " + String.format("%02X ", Integer.valueOf(a.this.f17299f)));
                k.s(1, 0, a.this.f17299f);
                o1.k kVarA = o1.k.a();
                a aVar = a.this;
                kVarA.postDelayed(aVar.f17300g, aVar.f17296c);
            }
        }
    }

    static {
        for (int i2 = 0; i2 < 20; i2++) {
            f17293h[i2] = 27;
        }
        h();
    }

    public static /* synthetic */ int e(a aVar) {
        int i2 = aVar.f17298e;
        aVar.f17298e = i2 - 1;
        return i2;
    }

    public static void h() {
        int[] iArr = f17293h;
        iArr[1] = 18;
        iArr[2] = 23;
        iArr[3] = 25;
        iArr[4] = 16;
        iArr[5] = 21;
        iArr[6] = 17;
        iArr[7] = 24;
        iArr[8] = 26;
        iArr[9] = 40;
        iArr[10] = 41;
        iArr[11] = 35;
        iArr[12] = 36;
        iArr[13] = 37;
        iArr[14] = 39;
        iArr[15] = 42;
        iArr[16] = 43;
        iArr[17] = 44;
    }

    @Override // u0.h
    public void a() {
        j.b(o1.k.a(), this.f17294a, 0L);
        h0.d.f2462a.a(this.f17295b, 1);
    }

    @Override // u0.h
    public void b() {
        j.e(o1.k.a(), this.f17294a);
        h0.d.f2462a.d(this.f17295b);
    }

    @Override // u0.h
    public void c(int i2) {
        int i3;
        Log.e("Qin", "========>>>> to Appid : " + i2);
        Log.e("Qin", "========>>>> Appid DataBt.sPhoneWork: " + h0.c.G + " DataBt.weCatState: " + h0.c.f2448m0 + " DataBt.phoneVoice: " + h0.c.U);
        synchronized (this.f17297d) {
            boolean z2 = SystemProperties.getBoolean("syu.bt.show.pip", false);
            boolean z3 = true;
            boolean z4 = h0.c.G == 1 || h0.c.f2448m0 || h0.c.U == 1;
            if (i.l3().f17484x || z4 || (i3 = u0.b.D) != 10 || i2 == i3 || !u0.b.D3) {
                z3 = false;
            }
            if (z4) {
                i2 = 2;
            } else if (i.l3().f17484x) {
                i2 = 15;
            }
            u0.b.F = i2;
            if (u0.b.f17320f != 0 && u0.b.f17306a0 != 0 && (u0.b.P3 != 0 || u0.b.f17326h == 0)) {
                a.f.p().s("CmdMain appId = " + i2 + "  last : " + u0.b.C);
                if (!z2 && z3) {
                    a.i.K(10);
                    a.i.C(u0.b.B3);
                    u0.b.D3 = false;
                    h hVar = u0.b.f17311c;
                    if (hVar instanceof a) {
                        ((a) hVar).i(null);
                    }
                } else if (z2 && i2 == 10) {
                    SystemProperties.set("syu.bt.show.pip", "false");
                }
                if (i2 == -1) {
                    int i4 = u0.b.C;
                    if (i2 != i4) {
                        c(i4);
                    }
                } else if (i2 >= 0 && i2 < 20) {
                    d.s(i2);
                    int i5 = u0.b.D;
                    if (i5 == 2 && i2 != i5) {
                        u0.b.x3 = null;
                    }
                    Log.e("Qin", "-------------UI Change AppId to " + i2);
                    g(i2);
                    a.i.a0(200L);
                    y0.f.f18034b.a(i2);
                    z zVar = u0.c.f17375b;
                    if (zVar.b() > 0) {
                        zVar.c(Integer.valueOf(i2));
                    }
                }
                return;
            }
            a.f.p().s("切换通道条件不满足，返回！！！DataMain.sMcuOn = " + u0.b.f17320f + " DataMain.sAccOn = " + u0.b.f17306a0);
        }
    }

    public final void g(int i2) {
        int i3 = f17293h[i2];
        k.s(1, 0, i3);
        if (u0.b.v4 == 0) {
            synchronized (this.f17300g) {
                this.f17299f = i3;
                this.f17298e = 5;
                o1.k.a().removeCallbacks(this.f17300g);
                o1.k.a().postDelayed(this.f17300g, this.f17296c);
            }
        }
    }

    public void i(String str) {
        if (str == null || str.isEmpty() || a.i.v(str)) {
            if (str == null || str.isEmpty()) {
                u0.b.B3 = null;
                str = ProxyProperties.LOCAL_EXCL_LIST;
            } else if (a.i.v(str)) {
                u0.b.B3 = str;
            }
            SystemProperties.set("persist.sys.syu.thirdplayer", str);
            if (str.equalsIgnoreCase("com.syu.carlink")) {
                return;
            }
            s0.F("sys.carlink.type", "0");
        }
    }
}
