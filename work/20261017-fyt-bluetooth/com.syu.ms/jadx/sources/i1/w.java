package i1;

import android.bluetooth.BluetoothClass;
import android.drm.DrmManagerClient;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import app.App;
import java.util.Arrays;
import k0.qt;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class w extends b0.b {
    public static boolean G = true;
    public static long H = 80;
    public int A;
    public int B;
    public final o1.p C;
    public o1.p D;
    public final int[] E;
    public int F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o f2800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2801c;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2808j;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f2815q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Runnable f2816r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Runnable f2817s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Runnable f2818t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2819u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2820v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2821w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2822x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2823y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2824z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f2802d = new k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f2803e = new l();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f2804f = new m();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2805g = 49;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2806h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2807i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2809k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2810l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f2811m = {10, 10, 10, 10, 10, 10, 10, 10};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2812n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2813o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f2814p = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w wVar = w.this;
            int i2 = wVar.f2805g;
            int i3 = u0.b.J2 == 1 ? i2 | 1 : i2 & (-2);
            int i4 = u0.b.K2 == 1 ? i3 | 2 : i3 & (-3);
            int i5 = u0.b.L2 == 1 ? i4 | 4 : i4 & (-5);
            if (wVar.f2806h != i5) {
                wVar.f2806h = i5;
                if (w.G) {
                    wVar.h(3, 8, i2, i5, wVar.f2807i, wVar.f2808j, wVar.f2809k, wVar.f2810l, wVar.f2812n, wVar.f2813o);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.X1;
            w wVar = w.this;
            if (i2 != wVar.f2807i) {
                wVar.f2807i = Math.max(0, Math.min(i2, 255));
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.I2;
            int i3 = w.this.f2801c / 2;
            if (i2 < 0) {
                i2 = i3;
            }
            int i4 = (int) ((((i2 - i3) * 127.0f) / i3) + 0.5f + 128.0f);
            if (i4 > 255) {
                i4 = 255;
            }
            if (i4 < 0) {
                i4 = 0;
            }
            Log.e("Device1", "============== DataMain.sSteerAngle:" + u0.b.I2 + " value:" + i4);
            w wVar = w.this;
            if (wVar.f2808j != i4) {
                wVar.f2808j = i4;
                if (w.G) {
                    wVar.h(3, 8, wVar.f2805g, wVar.f2806h, wVar.f2807i, i4, wVar.f2809k, wVar.f2810l, wVar.f2812n, wVar.f2813o);
                }
            }
        }
    }

    public class d implements o1.p {
        public d() {
        }

        @Override // o1.p
        public void d(Object obj) {
            try {
                int[] iArr = (int[]) obj;
                int[] iArr2 = w.this.f2811m;
                Arrays.copyOf(iArr2, iArr2.length);
                if (iArr[1] >= 10) {
                    iArr[1] = 10;
                }
                switch (iArr[0]) {
                    case 14:
                        w.this.f2819u = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 15:
                        w.this.f2820v = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 16:
                        w.this.f2821w = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 17:
                        w.this.f2822x = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 18:
                        w.this.f2823y = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 19:
                        w.this.f2824z = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 20:
                        w.this.A = ((10 - iArr[1]) * 3) / 10;
                        break;
                    case 21:
                        w.this.B = ((10 - iArr[1]) * 3) / 10;
                        break;
                }
                w wVar = w.this;
                int i2 = (wVar.f2819u & 3) | ((wVar.f2820v << 2) & 12) | ((wVar.f2821w << 4) & 48) | ((wVar.f2822x << 6) & 192);
                wVar.f2809k = i2;
                int i3 = (wVar.f2823y & 3) | ((wVar.f2824z << 2) & 12) | ((wVar.A << 4) & 48) | ((wVar.B << 6) & 192);
                wVar.f2810l = i3;
                if (w.G) {
                    wVar.h(3, 8, wVar.f2805g, wVar.f2806h, wVar.f2807i, wVar.f2808j, i2, i3, wVar.f2812n, wVar.f2813o);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class e implements o1.p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f2829a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e.e.a f2830b = new e.e.a(0, 0, 0);

        public e() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            e.e.a aVar = (e.e.a) obj;
            this.f2830b = aVar;
            int i2 = (aVar.f1629b * 4096) / 800;
            int i3 = (aVar.f1630c * 4096) / 480;
            int i4 = aVar.f1628a;
            if (i4 == 2) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.f2829a > w.H) {
                    this.f2829a = jElapsedRealtime;
                    w.this.h(5, 5, 16, (i2 >> 8) & 255, i2 & 255, (i3 >> 8) & 255, i3 & 255);
                    return;
                }
                return;
            }
            if (i4 == 0) {
                this.f2829a = SystemClock.elapsedRealtime();
                w.this.h(5, 5, 1, (i2 >> 8) & 255, i2 & 255, (i3 >> 8) & 255, i3 & 255);
            } else if (i4 == 1) {
                this.f2829a = SystemClock.elapsedRealtime();
                w.this.h(5, 5, 0, (i2 >> 8) & 255, i2 & 255, (i3 >> 8) & 255, i3 & 255);
            }
        }
    }

    public class f implements c.f.b<Integer> {
        public f() {
        }

        @Override // c.f.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean a(Integer num) {
            if (num == null) {
                return false;
            }
            w.this.d(num.intValue());
            return false;
        }
    }

    public class g implements c.f.b<Integer> {
        public g() {
        }

        @Override // c.f.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean a(Integer num) {
            if (num == null) {
                return false;
            }
            w.this.b(num.intValue());
            return false;
        }
    }

    public class h implements c.f.a {
        public h() {
        }

        @Override // c.f.a
        public boolean a() {
            w.this.b(0);
            return false;
        }
    }

    public class i implements c.f.a {
        public i() {
        }

        @Override // c.f.a
        public boolean a() {
            w.this.b(1);
            return false;
        }
    }

    public class j extends c.d {
        public j() {
        }

        @Override // c.d
        public boolean b(int i2) {
            w.this.h(2, 2, i.a.Theme_actionModeShareDrawable, 0);
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.e();
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.e();
        }
    }

    public class m implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f2839a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2840b = -1;

        public m() {
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 1000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (this.f2839a == millis && this.f2840b == zIs24HourFormat) {
                return;
            }
            this.f2839a = millis;
            this.f2840b = zIs24HourFormat ? 1 : 0;
            w.this.h(4, 7, zIs24HourFormat ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second);
            if (w.G) {
                w wVar = w.this;
                wVar.h(3, 8, wVar.f2805g, wVar.f2806h, wVar.f2807i, wVar.f2808j, wVar.f2809k, wVar.f2810l, wVar.f2812n, wVar.f2813o);
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w wVar = w.this;
            int i2 = wVar.f2805g;
            int i3 = u0.b.f17306a0 == 1 ? i2 | 2 : i2 & (-3);
            int i4 = u0.b.f17366w == 1 ? i3 | 4 : i3 & (-5);
            int i5 = u0.b.f17335k == 1 ? i4 | 8 : i4 & (-9);
            if (i2 != i5) {
                wVar.f2805g = i5;
                if (u0.b.f17347o == 1) {
                    wVar.f2814p = SystemClock.elapsedRealtime();
                }
                if (w.G) {
                    w wVar2 = w.this;
                    wVar2.h(3, 8, wVar2.f2805g, wVar2.f2806h, wVar2.f2807i, wVar2.f2808j, wVar2.f2809k, wVar2.f2810l, wVar2.f2812n, wVar2.f2813o);
                }
            }
        }
    }

    public class o extends i1.e {
        public o() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() & 255) + (this.f2619d.intValue() & 255);
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (i2 & 255) == ((iIntValue ^ 255) & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            Integer numValueOf = Integer.valueOf(i2);
            this.f2619d = numValueOf;
            return numValueOf != null;
        }

        @Override // i1.e
        public int[] f() {
            return new int[]{46};
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public w() {
        this.f2800b = new o();
        this.f2801c = 0;
        this.f2808j = this.f2801c / 2;
        n nVar = new n();
        this.f2815q = nVar;
        a aVar = new a();
        this.f2816r = aVar;
        b bVar = new b();
        this.f2817s = bVar;
        c cVar = new c();
        this.f2818t = cVar;
        this.f2819u = 0;
        this.f2820v = 0;
        this.f2821w = 0;
        this.f2822x = 0;
        this.f2823y = 0;
        this.f2824z = 0;
        this.A = 0;
        this.B = 0;
        d dVar = new d();
        this.C = dVar;
        this.D = new e();
        this.E = new int[BluetoothClass.Device.COMPUTER_WEARABLE];
        this.F = 0;
        o oVar = new o();
        this.f2800b = oVar;
        oVar.h();
        u0.c.O.a(this.D);
        if (G) {
            int i2 = SystemProperties.getInt("persist.fyt.track_angle_max", 40) * 4;
            this.f2801c = i2;
            this.f2808j = i2 / 2;
            u0.b.I2 = i2 / 2;
            u0.c.f17399z.a(nVar, 0);
            u0.c.B.a(nVar, 0);
            u0.c.f17379f.a(nVar, 0);
            u0.c.f17386m.a(nVar, 1);
            u0.c.f17380g.a(aVar, 1);
            u0.c.I.a(cVar, 1);
            o1.h.f16866b.a(bVar, 1);
            u0.c.R.a(dVar);
            o1.h.f16868d.a(this.f2802d, 1);
            o1.h.f16869e.a(this.f2802d, 1);
            qt.z(this.f2804f);
            c.f.b().g(13, new f());
            c.f.b().g(14, new g());
            c.f.b().h(11, new h());
            c.f.b().h(12, new i());
            c.e.d().i(559, new j());
        }
    }

    public void b(int i2) {
        if (i2 == 0) {
            h(2, 2, i.a.Theme_actionModeFindDrawable, 0);
            s0.C(20L);
            h(2, 2, i.a.Theme_actionModeShareDrawable, 0);
        } else if (i2 == 1) {
            h(2, 2, 240, 0);
        }
    }

    @Override // i1.b0.a
    public void c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        for (int i2 : s0.e(bArr)) {
            int[] iArr = this.E;
            int i3 = this.F;
            this.F = i3 + 1;
            iArr[i3] = i2;
            int iG = this.f2800b.g(i2);
            if (iG == 1) {
                this.F = 0;
                if (this.f2800b.j()) {
                    int[] iArr2 = new int[this.f2800b.f2619d.intValue() + 1];
                    iArr2[0] = this.f2800b.f2620e.intValue();
                    o oVar = this.f2800b;
                    System.arraycopy(oVar.f2618c, 0, iArr2, 1, oVar.f2619d.intValue());
                    f(iArr2);
                } else {
                    o oVar2 = this.f2800b;
                    f(Arrays.copyOfRange(oVar2.f2618c, 0, oVar2.f2619d.intValue()));
                }
                this.f2800b.b();
            } else if (iG == -1) {
                int i4 = this.F;
                this.F = 0;
                if (i4 > 1) {
                    c(s0.r(Arrays.copyOfRange(this.E, 1, i4 - 1)));
                }
            } else if (iG == -2) {
                this.F = 0;
            }
        }
    }

    public void d(int i2) {
        if (i2 == 0) {
            h(2, 2, i.a.Theme_actionModeFindDrawable, 0);
            s0.C(20L);
            h(2, 2, i.a.Theme_actionModeShareDrawable, 0);
            return;
        }
        if (i2 == 1) {
            h(2, 2, 240, 0);
            return;
        }
        if (i2 == 2) {
            b(0);
            h(9, 1, 1);
            return;
        }
        if (i2 == 3) {
            b(0);
            h(9, 1, 2);
            return;
        }
        if (i2 == 4) {
            b(0);
            h(9, 1, 3);
        } else if (i2 == 5) {
            b(0);
            h(9, 1, 4);
        } else if (i2 == 6) {
            h(9, 1, 37);
        } else if (i2 == 7) {
            h(9, 1, 41);
        }
    }

    public void e() {
        long j2 = (long) (u0.b.b2 * 10000.0d);
        long j3 = (long) (u0.b.c2 * 10000.0d);
        int[] iArr = new int[21];
        iArr[0] = 20;
        iArr[1] = 19;
        iArr[2] = j3 >= 0 ? 0 : 1;
        iArr[3] = g(j3, 8);
        iArr[4] = g(j3, 7);
        iArr[5] = g(j3, 6);
        iArr[6] = g(j3, 5);
        iArr[7] = g(j3, 4);
        iArr[8] = g(j3, 3);
        iArr[9] = g(j3, 2);
        iArr[10] = g(j3, 1);
        iArr[11] = g(j3, 0);
        iArr[12] = j2 >= 0 ? 0 : 1;
        iArr[13] = g(j2, 7);
        iArr[14] = g(j2, 6);
        iArr[15] = g(j2, 5);
        iArr[16] = g(j2, 4);
        iArr[17] = g(j2, 3);
        iArr[18] = g(j2, 2);
        iArr[19] = g(j2, 1);
        iArr[20] = g(j2, 0);
        h(iArr);
    }

    public void f(int[] iArr) {
        if (!G && iArr.length == 9 && iArr[0] == 3) {
            int i2 = iArr[5];
            int i3 = iArr[6];
            u0.d.D2(((3 - (i2 & 3)) * 10) / 3);
            u0.d.E2(((3 - ((i2 >> 2) & 3)) * 10) / 3);
            u0.d.G2(((3 - ((i2 >> 4) & 3)) * 10) / 3);
            u0.d.F2(((3 - ((i2 >> 6) & 3)) * 10) / 3);
            u0.d.R2(((3 - (i3 & 3)) * 10) / 3);
            u0.d.S2(((3 - ((i3 >> 2) & 3)) * 10) / 3);
            u0.d.U2(((3 - ((i3 >> 4) & 3)) * 10) / 3);
            u0.d.T2(((3 - ((i3 >> 6) & 3)) * 10) / 3);
        }
    }

    public int g(long j2, int i2) {
        return (int) ((j2 % Math.pow(10.0d, i2 + 1)) / Math.pow(10.0d, i2));
    }

    public void h(int... iArr) {
        int i2 = 0;
        int length = iArr == null ? 0 : iArr.length;
        if (length <= 0) {
            return;
        }
        int[] iArr2 = new int[length + 2];
        iArr2[0] = 46;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i3 += iArr[i2] & 255;
            i2 = i4;
        }
        iArr2[length + 1] = i3 ^ 255;
        b0 b0Var = this.f2585a;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }
}
