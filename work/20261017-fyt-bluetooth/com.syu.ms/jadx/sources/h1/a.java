package h1;

import android.os.Handler;
import android.util.Log;
import c.d;
import e.e;
import e.f;
import h0.g;
import java.util.Arrays;
import java.util.HashMap;
import o1.p;
import o1.s;
import o1.s0;
import o1.u;
import u0.i;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements s, Runnable {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static a f2486l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f2487a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2488b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2489c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap<String, String> f2490d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2491e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2492f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2493g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2494h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p f2495i = new C0049a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p f2496j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f2497k;

    /* JADX INFO: renamed from: h1.a$a, reason: collision with other inner class name */
    public class C0049a implements p {
        public C0049a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                String str = (String) obj;
                if (s0.j(str, "com.syu.carlink")) {
                    int iM = s0.m("sys.carlink.type", 0);
                    if (iM == 1 || iM == 2) {
                        s0.F("sys.carlink.type", "0");
                    }
                } else if (s0.j(str, "com.syu.hicar")) {
                    if (s0.m("sys.carlink.type", 0) == 3) {
                        s0.F("sys.carlink.type", "0");
                    }
                } else if (s0.j(str, "com.syu.cast")) {
                    i.l3().i4(0);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class b implements p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            try {
                String[] strArr = (String[]) obj;
                Log.e("AA", "==============>>> onNotify : " + Arrays.toString(strArr));
                boolean z2 = true;
                if (s0.i(strArr, 1) && strArr[0] != null && strArr[1] != null) {
                    String str = strArr[0];
                    if (str.contains(":")) {
                        str = str.split(":")[0];
                    }
                    if (!a.i.q(a.b.f11c.c(str), str) && !f.n(str)) {
                        if ("play".equals(strArr[1])) {
                            a.this.f2490d.put(str, strArr[1]);
                        } else {
                            a.this.f2490d.remove(str);
                        }
                    }
                    return;
                }
                a.this.c();
                if (!a.this.f2490d.isEmpty()) {
                    a aVar = a.this;
                    if (!aVar.f2490d.containsKey("/system/bin/CarplayService") && !a.this.f2490d.containsKey("com.syu.carlink")) {
                        z2 = false;
                    }
                    aVar.f2491e = z2;
                }
                Log.e("AA", "==============>>> active Media : " + a.this.f2490d + " carlinkActive: " + a.this.f2491e);
            } catch (Exception unused) {
            }
        }
    }

    public class c extends d {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:127:0x01a2 A[PHI: r13
  0x01a2: PHI (r13v3 int) = (r13v0 int), (r13v0 int), (r13v8 int), (r13v8 int) binds: [B:111:0x0182, B:125:0x019d, B:117:0x018f, B:118:0x0191] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:140:0x01bc A[PHI: r13
  0x01bc: PHI (r13v20 int) = 
  (r13v0 int)
  (r13v0 int)
  (r13v1 int)
  (r13v2 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v0 int)
  (r13v25 int)
 binds: [B:105:0x016e, B:138:0x01b8, B:134:0x01b0, B:133:0x01ae, B:64:0x00f5, B:74:0x010f, B:72:0x010b, B:43:0x00bb, B:45:0x00c1, B:48:0x00c7, B:25:0x0090, B:29:0x009a, B:31:0x009e, B:28:0x0096] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:24:0x008c A[FALL_THROUGH] */
        /* JADX WARN: Code duplicated, block: B:33:0x00a1  */
        /* JADX WARN: Code duplicated, block: B:35:0x00a9 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
        /* JADX WARN: Code duplicated, block: B:42:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:59:0x00e6  */
        @Override // c.d
        public boolean b(int i2) {
            boolean z2;
            int i3;
            int iM = s0.m("sys.carlink.type", 0);
            if (iM <= 0) {
                return false;
            }
            i.l3();
            if (u0.b.D != 10) {
            }
            int iJ3 = i.l3().j3();
            j0.b bVarA3 = g.Y2().a3();
            Log.e("AA", "=========>>> onClick TO Link APP keyCode : " + i2 + " type : " + iM + " appid : " + u0.b.D + " callActionType : " + a.this.f2494h + " cp call state: " + iJ3);
            int i4 = 6;
            int i5 = 5;
            if (i2 != 5) {
                if (i2 != 6) {
                    if (i2 != 85 && i2 != 87 && i2 != 88 && i2 != 126 && i2 != 127 && i2 != 587 && i2 != 588) {
                        switch (i2) {
                            case 574:
                            case 575:
                                if (a.this.h()) {
                                    return false;
                                }
                                if (iJ3 != 1) {
                                }
                                if (iJ3 != 2) {
                                    i4 = i2;
                                } else {
                                    i4 = i2;
                                }
                                break;
                            case 576:
                                if (iM != 2) {
                                    if (iM == 3) {
                                        i2 = 576;
                                    } else if (iM == 1 || h0.c.E == 0) {
                                    }
                                }
                                i4 = i2;
                            default:
                                i4 = i2;
                                z2 = false;
                                break;
                        }
                    } else {
                        if (a.this.h()) {
                            return false;
                        }
                        if (iJ3 != 1 && a.this.f2494h == 1 && (i2 == 588 || i2 == 575)) {
                            i4 = 5;
                        } else if (iJ3 != 2 || a.this.f2494h != 1 || (i2 != 587 && i2 != 574)) {
                            i4 = i2;
                        }
                    }
                    z2 = true;
                } else if (iM == 2) {
                    if (bVarA3 != null) {
                        i0.c cVarB = bVarA3.B();
                        if (cVarB != null) {
                            i0.c cVarZ = bVarA3.z("1");
                            if (cVarB.D() || cVarZ == null || !cVarZ.D()) {
                                cVarB.H(1);
                            } else {
                                z2 = false;
                            }
                            i4 = -1;
                        }
                    } else {
                        h0.c.f2425b.h(1);
                    }
                    z2 = true;
                    i4 = -1;
                } else {
                    if (iM != 1) {
                        i4 = i2;
                    } else if (bVarA3 != null) {
                        bVarA3.B();
                        i0.c cVarZ2 = bVarA3.z("1");
                        int iX = cVarZ2 == null ? 1 : cVarZ2.x();
                        if (iJ3 == 0) {
                            if (iX == 6) {
                                i4 = i2;
                                z2 = false;
                            } else {
                                i4 = i2;
                            }
                        }
                    } else if (iJ3 == 0) {
                        i4 = i2;
                    }
                    z2 = true;
                }
            } else if (iM == 2) {
                if (bVarA3 != null) {
                    i0.c cVarB2 = bVarA3.B();
                    if (cVarB2 != null) {
                        i0.c cVarZ3 = bVarA3.z("1");
                        if (cVarB2.D() || cVarZ3 == null || !cVarZ3.D()) {
                            int i6 = a.this.f2494h;
                            if (i6 == 1 || i6 != 2) {
                                cVarB2.H(0);
                            } else if (cVarB2.x() == 6 || cVarB2.x() == 4) {
                                cVarB2.H(1);
                            } else {
                                cVarB2.H(0);
                            }
                        } else {
                            z2 = false;
                        }
                        i4 = -1;
                    }
                } else if (a.this.f2494h == 2 && ((i3 = h0.c.E) == 5 || i3 == 3)) {
                    h0.c.f2425b.h(1);
                } else {
                    h0.c.f2425b.h(0);
                }
                z2 = true;
                i4 = -1;
            } else if (iM != 1) {
                i4 = i2;
                z2 = true;
            } else if (bVarA3 != null) {
                i0.c cVarB3 = bVarA3.B();
                i0.c cVarZ4 = bVarA3.z("1");
                int iX2 = cVarZ4 == null ? 1 : cVarZ4.x();
                if (cVarB3 != null) {
                    i5 = i2;
                    z2 = true;
                } else {
                    int i7 = a.this.f2494h;
                    if (i7 == 1) {
                        i2 = iJ3 == 1 ? 5 : -1;
                        if (i2 != -1 || iX2 != 5) {
                            i5 = i2;
                        }
                        z2 = true;
                    } else if (i7 != 2 || iJ3 == 1) {
                        z2 = true;
                    } else if (iJ3 == 2) {
                        i5 = 6;
                        z2 = true;
                    } else if (iX2 > 2) {
                        i5 = i2;
                        z2 = false;
                    } else {
                        i5 = i2;
                        z2 = true;
                    }
                }
                i4 = i5;
            } else {
                int i8 = a.this.f2494h;
                if (i8 == 1) {
                    i2 = iJ3 == 1 ? 5 : -1;
                } else {
                    if (i8 != 2 || iJ3 == 1) {
                        i4 = 5;
                    } else if (iJ3 != 2) {
                    }
                    z2 = true;
                }
                i4 = i2;
                z2 = true;
            }
            if (z2 && i4 >= 0) {
                Log.e("AA", "==============>>> TO CarLink keyCode : " + i4);
                u0.d.I3(133, i4);
            }
            return z2;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public a() {
        c cVar = new c();
        this.f2497k = cVar;
        e.f1625c.a(this.f2495i);
        o1.d<String, s> dVar = a.b.f13d;
        dVar.a("com.syu.carlink", this);
        dVar.a("com.syu.hicar", this);
        y0.g.f18102l.a(this.f2496j);
        c.e.d().i(87, cVar);
        c.e.d().i(88, cVar);
        c.e.d().i(126, cVar);
        c.e.d().i(127, cVar);
        c.e.d().i(85, cVar);
        c.e.d().i(5, cVar);
        c.e.d().i(6, cVar);
        c.e.d().i(576, cVar);
        c.e.d().i(588, cVar);
        c.e.d().i(587, cVar);
        c.e.d().i(574, cVar);
        c.e.d().i(575, cVar);
        c.e.d().i(588, cVar);
    }

    public static a d() {
        if (f2486l == null) {
            f2486l = new a();
        }
        return f2486l;
    }

    @Override // o1.s
    public void R(boolean z2) {
        this.f2489c = z2;
        Log.e("Usb", "==============>>> topChanged isTop : " + z2);
        if (z2) {
            a.i.h("net.easyconn");
            k.s(1, 0, 90);
        }
    }

    public final void c() {
        if (g.f.n(8)) {
            if (s0.l("sys.carlink.7731_cp_media", false)) {
                this.f2490d.put("/system/bin/CarplayService", "play");
            } else {
                this.f2490d.remove("/system/bin/CarplayService");
            }
        }
    }

    public int e() {
        return s0.m("sys.carlink.type", 0);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x009f  */
    public boolean f() {
        g gVarY2 = g.Y2();
        j0.b bVarA3 = gVarY2.a3();
        Log.e("AA", "mRdaParser : " + bVarA3 + " moduleBt : " + gVarY2);
        if (bVarA3 == null) {
            return i();
        }
        int iJ3 = i.l3().j3();
        int iE = e();
        Log.e("AA", "callStateOfCp : " + iJ3 + " linkType : " + iE);
        i0.c cVarB = bVarA3.B();
        StringBuilder sb = new StringBuilder();
        sb.append("linkType : ");
        sb.append(iE);
        sb.append(" callStateOfCp : ");
        sb.append(iJ3);
        sb.append(" MD Call: ");
        boolean z2 = true;
        sb.append(cVarB != null && cVarB.D());
        sb.append(" isTop : ");
        sb.append(this.f2489c);
        Log.e("AA", sb.toString());
        if (iE == 2) {
            if (cVarB == null || !cVarB.D() || !this.f2489c) {
                z2 = false;
            }
        } else {
            if (iE != 1) {
                if (iE == 3) {
                    return this.f2489c;
                }
                return false;
            }
            if (iJ3 <= 0 || !this.f2489c) {
                z2 = false;
            }
        }
        return z2;
    }

    public boolean g() {
        return this.f2492f;
    }

    public final boolean h() {
        i iVarL3 = i.l3();
        if (g.f.n(8)) {
            c();
            if (!this.f2490d.isEmpty()) {
                this.f2491e = this.f2490d.containsKey("/system/bin/CarplayService") || this.f2490d.containsKey("com.syu.carlink");
            }
        } else {
            int i2 = u0.b.D;
            this.f2491e = (i2 == 10 || i2 == 15) && s0.j(iVarL3.g3(), "com.syu.carlink");
        }
        boolean z2 = u0.b.D == 10 && s0.j(iVarL3.g3(), "com.huawei.dmsdpdevice");
        int iM = s0.m("sys.carlink.type", 0);
        int iJ3 = iVarL3.j3();
        Log.e("AA", "=========>>> type : " + iM + " callStateOfCp : " + iJ3 + " carlinkActive : " + this.f2491e);
        return (this.f2491e || iJ3 > 0 || z2) ? false : true;
    }

    public final boolean i() {
        return e() > 0 && this.f2489c;
    }

    public boolean j() {
        return e() > 0;
    }

    public boolean k() {
        return g() && e() > 0;
    }

    public boolean l() {
        int iE = e();
        if (g()) {
            if (iE == 3 && u.S("com.syu.hicar")) {
                return true;
            }
            if ((iE == 1 || iE == 2) && u.S("com.syu.carlink")) {
                return true;
            }
        }
        return false;
    }

    public boolean m() {
        return this.f2493g ? k() : l();
    }

    public void n(boolean z2) {
        this.f2492f = z2;
    }

    public void o(boolean z2) {
        this.f2493g = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
    }
}
