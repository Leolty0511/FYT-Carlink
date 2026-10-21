package f1;

import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import base.Configure;
import java.util.HashMap;
import java.util.LinkedHashMap;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static HashMap<f, d> f2111l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static o f2112m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<String> f2115c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2113a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f2114b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SparseArray<a> f2116d = new SparseArray<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<String> f2117e = new SparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseIntArray f2118f = new SparseIntArray();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public HashMap<String, p1.a> f2119g = new LinkedHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2120h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2121i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SparseIntArray f2122j = new SparseIntArray();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2123k = false;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public q f2124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2125b = 0;

        public a(q qVar) {
            this.f2124a = qVar;
        }

        public boolean a(q qVar) {
            q qVar2 = this.f2124a;
            return qVar2 == null || qVar == null || !qVar2.equals(qVar);
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2128b;

        public b(int i2, int i3) {
            this.f2127a = i2;
            this.f2128b = i3;
        }

        public int a() {
            return this.f2127a;
        }

        public int b() {
            return this.f2128b;
        }

        public String toString() {
            return "ChipInfo: [id : " + this.f2127a + "  type: " + this.f2128b + "]";
        }
    }

    public interface c {
        void x0(q qVar);
    }

    public interface e {
        void c(boolean z2, b[] bVarArr);

        d d(int i2, String str);
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2136b;

        public f(String str, int i2) {
            this.f2135a = str;
            this.f2136b = i2;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof f)) {
                return super.equals(obj);
            }
            f fVar = (f) obj;
            return s0.j(this.f2135a, fVar.f2135a) && this.f2136b == fVar.f2136b;
        }

        public int hashCode() {
            return !s0.t(this.f2135a) ? (this.f2135a.hashCode() * 31) + this.f2136b : super.hashCode();
        }

        public String toString() {
            return "Video : [" + this.f2135a + " " + this.f2136b + "]";
        }
    }

    static {
        HashMap<f, d> map = new HashMap<>();
        f2111l = map;
        map.put(new f("TP2850", 1), new d("/dev/i2c-1", 68, f1.b.class));
        f2111l.put(new f("TP2850", 2), new d("/dev/i2c-0", 68, f1.b.class));
        f2111l.put(new f("TP2860", 2), new d("/dev/i2c-0", 68, f1.d.class));
        f2111l.put(new f("TP2815", 2), new d("/dev/i2c-0", 68, f1.a.class));
        f2111l.put(new f("TP2854", 2), new d("/dev/i2c-0", 68, f1.c.class));
        f2111l.put(new f("IT8641", 0), new d("/dev/i2c-0", 56, k.class));
        String strH = Configure.Property.CUSTOMER_PLATFORM_P.h(ProxyProperties.LOCAL_EXCL_LIST);
        if (strH.isEmpty()) {
            strH = Configure.Property.CUSTOMER_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST);
        }
        if (strH.equals("HDMI-RV")) {
            f2111l.put(new f("LT6911", 0), new d("/dev/i2c-0", 56, i.class));
        } else {
            f2111l.put(new f("LT6911", 0), new d("/dev/i2c-0", 43, i.class));
        }
        if (strH.equals("8918L")) {
            f2111l.put(new f("LT8918", 0), new d("/dev/i2c-0", 33, m.class));
            f2111l.put(new f("LT8918", 1), new d("/dev/i2c-0", 33, m.class));
        } else {
            boolean zB = Configure.Property.CHIP8918_COMP_ADAPTIVE.b(false);
            f2111l.put(new f("LT8918", 0), new d("/dev/i2c-0", 33, zB ? n.class : l.class));
            f2111l.put(new f("LT8918", 1), new d("/dev/i2c-0", 33, zB ? n.class : l.class));
        }
        f2111l.put(new f("TC3587", 0), new d("/dev/i2c-0", 15, g.class));
        f2112m = null;
    }

    public o() {
        this.f2115c = null;
        this.f2115c = new SparseArray<>();
        String strO = s0.o("sys.fyt.back_0_video_ic", ProxyProperties.LOCAL_EXCL_LIST);
        Log.e("DeviceManager", "========================>> back_0_video_ic  = " + strO);
        if (!s0.t(strO) && !strO.contains(WifiEnterpriseConfig.EMPTY_VALUE) && this.f2117e.indexOfValue(strO) < 0) {
            this.f2117e.put(0, strO);
        }
        String strO2 = s0.o("sys.fyt.front_video_ic", ProxyProperties.LOCAL_EXCL_LIST);
        Log.e("DeviceManager", "========================>> front_video_ic  = " + strO2);
        if (!s0.t(strO2) && !strO2.contains(WifiEnterpriseConfig.EMPTY_VALUE) && this.f2117e.indexOfValue(strO2) < 0) {
            this.f2117e.put(1, strO2);
        }
        String strO3 = s0.o("sys.fyt.back_video_ic", ProxyProperties.LOCAL_EXCL_LIST);
        Log.e("DeviceManager", "========================>> back_video_ic  = " + strO3);
        if (!s0.t(strO3) && !strO3.contains(WifiEnterpriseConfig.EMPTY_VALUE) && this.f2117e.indexOfValue(strO3) < 0) {
            this.f2117e.put(2, strO3);
        }
        String strO4 = s0.o("ro.fyt.main_video_ic", ProxyProperties.LOCAL_EXCL_LIST);
        Log.e("DeviceManager", "========================>> main_video_ic  = " + strO4);
        if (!s0.t(strO4) && !strO4.contains(WifiEnterpriseConfig.EMPTY_VALUE) && this.f2117e.indexOfValue(strO4) < 0) {
            this.f2117e.put(0, strO4);
        }
        String strO5 = s0.o("ro.fyt.sub_video_ic", ProxyProperties.LOCAL_EXCL_LIST);
        Log.e("DeviceManager", "========================>> sub_video_ic  = " + strO5);
        if (s0.t(strO5) || strO5.contains(WifiEnterpriseConfig.EMPTY_VALUE) || this.f2117e.indexOfValue(strO5) >= 0) {
            return;
        }
        this.f2117e.put(1, strO5);
    }

    public static void a(f fVar, d dVar) {
        f2111l.put(fVar, dVar);
    }

    public static o g() {
        if (f2112m == null) {
            f2112m = new o();
        }
        return f2112m;
    }

    public static d i(int i2, String str) {
        f fVar = new f(str, i2);
        d dVar = f2111l.get(fVar);
        Log.e("DeviceManager", fVar + " -- " + dVar);
        return dVar;
    }

    public void A(int i2, String str) {
        this.f2115c.put(i2, str);
    }

    public boolean B(int i2) {
        return C(i2, 1);
    }

    public boolean C(int i2, int i3) {
        boolean z2 = this.f2123k;
        if (!z2) {
            return z2;
        }
        int size = this.f2116d.size();
        if (this.f2120h != i2) {
            this.f2120h = i2;
            w(i3, i2);
        }
        if (size <= 0) {
            return this.f2123k;
        }
        for (int i4 = 0; i4 < size; i4++) {
            int iKeyAt = this.f2116d.keyAt(i4);
            q qVarD = d(iKeyAt);
            if (qVarD != null) {
                boolean z3 = iKeyAt == i2;
                qVarD.D = z3;
                if (z3) {
                    Log.e("DeviceManager", "========================>> isSupportReversing = " + qVarD.D + " Camera Id: " + i2);
                    qVarD.K(i3);
                    qVarD.j(i3);
                    this.f2121i = i3;
                }
            }
        }
        return this.f2123k;
    }

    public void D(int i2, int i3) {
        q qVarD = d(i2);
        if (qVarD != null) {
            qVarD.O(i3);
        }
    }

    public void E(int i2, int i3) {
        q qVarD = d(i2);
        if (qVarD != null) {
            qVarD.P(i3);
        }
    }

    public void F(int i2, int i3) {
        int iC;
        int i4;
        if (this.f2123k && (iC = c(i2)) != -1 && this.f2118f.get(i2, -1) == iC) {
            q qVarD = d(iC);
            if (qVarD instanceof s) {
                if (qVarD.t()) {
                    ((s) qVarD).c0(i2, i3);
                    return;
                } else {
                    ((s) qVarD).b0(i2, i3);
                    return;
                }
            }
            int iO = o(iC);
            if (i3 != 0 || iO == i2) {
                this.f2122j.append(iC, i3);
                int iO2 = o(iC);
                if (qVarD == null || !qVarD.t()) {
                    return;
                }
                Log.e("DeviceManager", "======>> syncVideoId(int what, int channel) ==>> fixCamera camera index : " + iC + " toId: " + iO2 + " dev.imagType: " + qVarD.f2145i);
                if (iO2 <= 0 || (i4 = qVarD.f2145i) != iO2) {
                    f(iC, iO2);
                } else {
                    qVarD.T(i4, 1);
                }
            }
        }
    }

    public void G(int i2, int i3, int i4) {
        Log.e("DeviceManager", "========================>>000 videoChannel videoId: " + i3 + " what: " + i4);
        q qVarD = d(i2);
        Log.e("DeviceManager", "========================>>001 videoChannel videoId: " + i3 + " what: " + i4 + " dev: " + qVarD);
        if (qVarD != null) {
            int iE = i3 == this.f2121i ? qVarD.E() : i3;
            if (i3 == this.f2121i && i3 == i4) {
                i4 = 1;
            }
            qVarD.T(iE, i4);
        }
    }

    public void b(int i2, String str, d dVar) {
        Log.e("DeviceManager", "==>> addImageChip() index = " + i2 + " type: " + str + " i2cDevPath : " + dVar.f2130a + " Dev Class:" + dVar.f2133d + " I2c Class: " + dVar.f2134e);
        q qVar = null;
        p1.a aVar = s0.t(dVar.f2130a) ? null : this.f2119g.get(dVar.f2130a);
        if (aVar == null && !s0.t(dVar.f2130a)) {
            aVar = (p1.a) new j1.a(dVar.f2134e).b();
            aVar.b(dVar.f2130a);
            this.f2119g.put(dVar.f2130a, aVar);
        }
        Class<? extends q> cls = dVar.f2133d;
        if (cls != null) {
            if (aVar != null) {
                j1.a aVar2 = new j1.a(cls);
                Class<?> cls2 = Integer.TYPE;
                qVar = (q) aVar2.c(cls2, p1.a.class, cls2, Handler.class).d(Integer.valueOf(i2), aVar, Integer.valueOf(dVar.f2131b), dVar.f2132c).b();
            } else {
                qVar = (q) new j1.a(cls).c(Integer.TYPE, Handler.class).d(Integer.valueOf(i2), dVar.f2132c).b();
            }
        }
        if (qVar != null) {
            z(i2, qVar);
        }
    }

    public int c(int i2) {
        return this.f2118f.get(i2, -1);
    }

    public q d(int i2) {
        a aVar = this.f2116d.get(i2, null);
        if (aVar != null) {
            return aVar.f2124a;
        }
        return null;
    }

    public q e(int i2) {
        for (int i3 = 0; i3 < this.f2116d.size(); i3++) {
            q qVar = this.f2116d.valueAt(i3).f2124a;
            if (qVar != null && qVar.G == i2) {
                return qVar;
            }
        }
        return null;
    }

    public boolean f(int i2, int i3) {
        Log.e("DeviceManager", "========================>> fixCamera(int index, int channel) index = " + i2 + " channel: " + i3);
        boolean z2 = this.f2123k;
        if (!z2) {
            return z2;
        }
        int iKeyAt = this.f2116d.size() == 1 ? this.f2116d.keyAt(0) : i2;
        boolean z3 = iKeyAt == this.f2120h;
        boolean z4 = u0.b.f17347o != 0;
        if (z3 && z4) {
            i3 = this.f2121i;
        } else if (i3 == 0 || u0.b.n4 == 0) {
            i3 = 0;
        }
        int i4 = this.f2121i;
        if (i3 == i4) {
            G(iKeyAt, i3, i4);
        }
        q qVarD = d(iKeyAt);
        if (qVarD == null) {
            return this.f2123k;
        }
        boolean z5 = z3 && qVarD.u();
        Log.e("DeviceManager", "========================>>000 fixCamera videoId: " + i3 + "   index: " + i2 + " reversing: " + z5);
        if (i3 != 0) {
            Log.e("DeviceManager", "========================>>000 fixCamera videoId: " + qVarD.f2145i + " dev readyToReversing: " + qVarD.f2160x + " isSupportReversing:" + qVarD.D);
            if (qVarD.f2145i != 0 && !qVarD.u()) {
                qVarD.R();
                qVarD.a();
                a.i.a0(20L);
            }
            if ((z5 && i3 == this.f2121i) || (!z5 && i3 != this.f2121i)) {
                if (i3 == this.f2121i) {
                    i3 = qVarD.E();
                }
                qVarD.c(i3);
                qVarD.Q();
            }
        } else if (z5) {
            Log.e("DeviceManager", "========================>>003 fixCamera videoId: " + qVarD.f2145i);
            qVarD.R();
            qVarD.a();
            qVarD.c(qVarD.E());
            qVarD.Q();
        } else {
            Log.e("DeviceManager", "========================>>002 fixCamera videoId: " + qVarD.f2145i);
            if (qVarD.f2154r) {
                qVarD.R();
                qVarD.a();
            }
        }
        return this.f2123k;
    }

    public String h(int i2) {
        return this.f2115c.get(i2, ProxyProperties.LOCAL_EXCL_LIST);
    }

    public boolean j(int i2, int i3, int i4, int i5, int i6) {
        boolean z2 = this.f2123k;
        if (!z2) {
            return z2;
        }
        int iC = c(i2);
        q qVarD = d(iC);
        Log.e("DeviceManager", "====>> imageParams() channel = " + i2 + " faceIndex = " + i3 + " brightness = " + i4 + " color = " + i5 + " contrast = " + i6 + " cameraid: " + iC + "  dev: " + qVarD);
        if (qVarD != null) {
            qVarD.h(i3, i4, i5, i6);
        }
        return this.f2123k;
    }

    public boolean k() {
        Log.e("DeviceManager", "========================>> in() enable = " + this.f2123k + " reversingCamera : " + this.f2120h + " chip size :" + this.f2116d.size());
        boolean z2 = this.f2123k;
        if (!z2) {
            return z2;
        }
        int size = this.f2116d.size();
        if (size <= 0) {
            return this.f2123k;
        }
        for (int i2 = 0; i2 < size; i2++) {
            q qVarD = d(this.f2116d.keyAt(i2));
            if (qVarD != null) {
                Log.e("DeviceManager", "========================>> call dev: " + qVarD + " in()  id : " + qVarD.f2144h);
                qVarD.H(false);
                qVarD.b();
            }
        }
        return this.f2123k;
    }

    public void l(e eVar) {
        if (!m() || this.f2117e.size() <= 0) {
            return;
        }
        int size = this.f2117e.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = this.f2117e.keyAt(i2);
            String strValueAt = this.f2117e.valueAt(i2);
            d dVarD = eVar.d(iKeyAt, strValueAt);
            StringBuilder sb = new StringBuilder();
            sb.append("========>>initVideoChips video chip cameraid: ");
            sb.append(iKeyAt);
            sb.append(" config : ");
            sb.append(dVarD == null ? WifiEnterpriseConfig.EMPTY_VALUE : dVarD.f2130a);
            sb.append(" name: ");
            sb.append(strValueAt);
            Log.e("DeviceManager", sb.toString());
            if (dVarD != null) {
                b(iKeyAt, strValueAt, dVarD);
            }
        }
        boolean zN = n();
        SparseArray<a> sparseArray = this.f2116d;
        int size2 = sparseArray == null ? 0 : sparseArray.size();
        b[] bVarArr = size2 > 0 ? new b[size2] : null;
        if (size2 > 0) {
            bVarArr = new b[size2];
            for (int i3 = 0; i3 < size2; i3++) {
                int iKeyAt2 = this.f2116d.keyAt(i3);
                a aVar = this.f2116d.get(iKeyAt2);
                bVarArr[i3] = new b(iKeyAt2, aVar == null ? 0 : aVar.f2124a.G);
            }
        }
        Log.e("DeviceManager", "========================>>initVideoChips video chip num: " + size2 + " size : " + size);
        if (size2 == 1) {
            B(this.f2116d.keyAt(0));
        }
        eVar.c(zN, bVarArr);
        if (this.f2114b == null) {
            return;
        }
        for (int i4 = 0; i4 < size2; i4++) {
            q qVar = this.f2116d.get(this.f2116d.keyAt(i4)).f2124a;
            if (qVar != null) {
                this.f2114b.x0(qVar);
            }
        }
    }

    public boolean m() {
        return this.f2123k;
    }

    public boolean n() {
        return this.f2116d.size() > 1;
    }

    public final int o(int i2) {
        return this.f2122j.get(i2, 0);
    }

    public boolean p(boolean z2, int i2) {
        Log.e("DeviceManager", "========================>> onReset() enable = " + z2 + " device: " + i2);
        boolean z3 = this.f2123k;
        if (!z3) {
            return z3;
        }
        q qVarD = d(i2);
        Log.e("DeviceManager", "========================>> onReset() enable = " + z2 + " device: " + i2 + " dev:" + qVarD);
        if (qVarD != null) {
            qVarD.J(z2);
            if (z2) {
                if (qVarD instanceof s) {
                    ((s) qVarD).f0();
                } else {
                    int iO = o(i2);
                    if (qVarD instanceof f1.a) {
                        iO = 10;
                    }
                    F(iO, iO);
                }
            }
        }
        return this.f2123k;
    }

    public boolean q(boolean z2) {
        Log.e("DeviceManager", "========================>> onReversing() enable = " + this.f2123k + " on: " + z2 + " reversingCamera: " + this.f2120h);
        if (!this.f2123k) {
            return false;
        }
        q qVarD = d(this.f2120h);
        Log.e("DeviceManager", "========================>> onReversing() ImageDevice2 dev = " + qVarD);
        if (qVarD != null) {
            qVarD.I(z2);
        }
        return this.f2123k;
    }

    public boolean r() {
        Log.e("DeviceManager", "========================>> out() enable = " + this.f2123k);
        boolean z2 = this.f2123k;
        if (!z2) {
            return z2;
        }
        int size = this.f2116d.size();
        if (size <= 0) {
            return this.f2123k;
        }
        for (int i2 = 0; i2 < size; i2++) {
            q qVarD = d(this.f2116d.keyAt(i2));
            if (qVarD != null) {
                qVarD.R();
                qVarD.d();
            }
        }
        return this.f2123k;
    }

    public boolean s() {
        SparseArray<String> sparseArray = this.f2117e;
        return sparseArray != null && sparseArray.size() > 1;
    }

    public int t(String str) {
        if (this.f2117e == null) {
            return -1;
        }
        int i2 = -1;
        for (int i3 = 0; i3 < this.f2117e.size(); i3++) {
            i2 = s0.j(str, this.f2117e.valueAt(i3)) ? i3 : -1;
            if (i2 >= 0) {
                break;
            }
        }
        return i2;
    }

    public void u(y.b bVar, int i2) {
        int size;
        if (this.f2123k && (size = this.f2116d.size()) > 0) {
            u0.i iVarL3 = u0.i.l3();
            x xVarL2 = iVarL3 != null ? iVarL3.L2() : null;
            for (int i3 = 0; i3 < size; i3++) {
                q qVarD = d(this.f2116d.keyAt(i3));
                if (!qVarD.C(i2, bVar)) {
                    if (i2 != 173) {
                        if (i2 != 174) {
                            switch (i2) {
                                case 68:
                                    int i4 = qVarD.f2146j;
                                    int i5 = i4 <= 0 ? 0 : 1;
                                    if (xVarL2 != null) {
                                        xVarL2.G(bVar, i2, qVarD.y(i4, i5));
                                    }
                                    break;
                                case 69:
                                    Log.e("Signal", "   ==========>>>register()  " + bVar + "  chipId : " + qVarD.f2144h + " videoId: " + qVarD.f2146j + " imageSignal: " + qVarD.f2150n);
                                    if (xVarL2 != null) {
                                        xVarL2.G(bVar, i2, qVarD.f2150n ? 1 : 0, qVarD.f2146j);
                                    }
                                    break;
                                case 70:
                                    Log.e("Signal", "   ==========>>>register()  " + bVar + "  chipId : " + qVarD.f2144h + " videoId: " + qVarD.f2146j + " ntscPal: " + qVarD.f2148l);
                                    if (xVarL2 != null) {
                                        xVarL2.G(bVar, i2, qVarD.f2148l, qVarD.f2146j);
                                    }
                                    break;
                            }
                        } else {
                            qVarD.C(i2, bVar);
                        }
                    } else if (qVarD.E) {
                        qVarD.U(bVar);
                    }
                }
            }
        }
    }

    public void v(c cVar) {
        this.f2114b = cVar;
    }

    public void w(int i2, int i3) {
        q qVarD = d(i3);
        if (qVarD != null) {
            this.f2118f.put(i2, i3);
            qVarD.j(i2);
        } else {
            throw new IllegalArgumentException("Chip id is " + i3 + ", ImageDevice2 is NULL!! ");
        }
    }

    public void x(boolean z2) {
        this.f2123k = z2;
    }

    public void y(int i2, q.b bVar) {
        q qVarD = d(i2);
        if (qVarD != null) {
            qVarD.L(bVar);
        }
    }

    public void z(int i2, q qVar) {
        a aVar = this.f2116d.get(i2, null);
        if (aVar == null) {
            this.f2116d.put(i2, new a(qVar));
        } else {
            if (aVar.a(qVar)) {
                return;
            }
            aVar.f2124a = qVar;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2130a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2131b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Handler f2132c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Class<? extends q> f2133d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Class<? extends p1.a> f2134e;

        public d(String str, int i2, Class<? extends q> cls) {
            this.f2130a = ProxyProperties.LOCAL_EXCL_LIST;
            this.f2131b = -1;
            this.f2132c = null;
            this.f2133d = null;
            this.f2134e = o1.n.class;
            this.f2130a = str;
            this.f2131b = i2;
            this.f2133d = cls;
        }

        public void a(Handler handler) {
            this.f2132c = handler;
        }

        public String toString() {
            return "IC Cfg : [ " + this.f2133d + " " + this.f2130a + String.format(" %02X ]", Integer.valueOf(this.f2131b));
        }

        public d(String str, int i2, Class<? extends q> cls, Class<? extends p1.a> cls2) {
            this(str, i2, cls);
            this.f2134e = cls2;
        }
    }
}
