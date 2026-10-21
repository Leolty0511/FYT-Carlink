package j0;

import android.annotation.SuppressLint;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseIntArray;
import com.syu.jni.ControlNative;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import n0.k4;
import plugins.ZLink;

/* JADX INFO: loaded from: classes.dex */
public class b implements j0.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final SparseIntArray f2962l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final z.e f2971i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<String> f2963a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LinkedHashMap<String, String> f2964b = new LinkedHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ConcurrentHashMap<String, i0.c> f2965c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public i0.c f2966d = new i0.c("000000000000");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public i0.c f2967e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public i0.c f2968f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public i0.c f2969g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f2970h = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2972j = "000000000000";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2973k = 0;

    public class a extends i0.b {
        public a(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.f2972j = str;
            h0.e.Y(65, str);
        }
    }

    public class a0 extends i0.a {
        public a0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            try {
                boolean z2 = true;
                String[] strArrSplit = str.split(new String(new byte[]{-1}));
                if (b.this.f2967e != null) {
                    if (strArrSplit.length >= 1) {
                        b.this.f2967e.o0(Integer.parseInt(strArrSplit[0]));
                    }
                    if (strArrSplit.length >= 2) {
                        b.this.f2967e.n0(Integer.parseInt(strArrSplit[1]));
                    }
                    if (strArrSplit.length >= 3) {
                        i0.c cVar = b.this.f2967e;
                        if (Integer.parseInt(strArrSplit[2]) != 1) {
                            z2 = false;
                        }
                        cVar.q0(z2);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class a1 extends i0.a {
        public a1(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if ("0".equals(str)) {
                return;
            }
            h0.e.E(String.format("Activation failed (error code: %s)", str));
        }
    }

    /* JADX INFO: renamed from: j0.b$b, reason: collision with other inner class name */
    public class C0060b extends i0.b {
        public C0060b(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            cVarW.d0(4);
            cVarW.c0(str2.substring(2));
        }
    }

    public class b0 extends i0.a {
        public b0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.v(str);
        }
    }

    public class b1 extends i0.a {
        public b1(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            try {
                h0.e.W(36, Integer.parseInt(str));
            } catch (Exception unused) {
            }
        }
    }

    public class c extends i0.b {
        public c(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            String strSubstring = str2.substring(2);
            cVarW.c0(strSubstring);
            cVarW.k(strSubstring, 5);
            cVarW.d0(5);
        }
    }

    public class c0 extends i0.a {
        public c0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            try {
                int i2 = Integer.parseInt(str.substring(0, 1), 10);
                String strSubstring = str.substring(1, 13);
                String strSubstring2 = str.length() > 13 ? str.substring(13) : ProxyProperties.LOCAL_EXCL_LIST;
                if (i2 == 0) {
                    if ("000000000000".equals(strSubstring)) {
                        strSubstring = ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    h0.e.N(strSubstring);
                    h0.e.O(strSubstring2);
                    return;
                }
                if (i2 > 0) {
                    synchronized (h0.c.f2430d0) {
                        h0.e.Z(5, i2 - 1, strSubstring, strSubstring2);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class c1 extends i0.a {
        public c1(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (h0.c.f2435g) {
                h0.e.J(1, true);
            }
        }
    }

    public class d extends i0.b {
        public d(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            String[] strArrSplit = str2.substring(2).split(",");
            if (strArrSplit.length == 2) {
                cVarW.k(strArrSplit[0], 5);
                cVarW.c0(strArrSplit[1]);
                cVarW.x0(strArrSplit[0]);
            }
            cVarW.d0(5);
        }
    }

    public class d0 extends i0.b {
        public d0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).n();
            if (b.this.f2967e == null || !o1.s0.j(str, b.this.f2967e.y())) {
                return;
            }
            b.this.f2967e = null;
        }
    }

    public class d1 extends i0.b {
        public d1(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).g0(str2);
        }
    }

    public class e extends i0.b {
        public e(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            String strSubstring = str2.substring(2);
            cVarW.k(strSubstring, 6);
            cVarW.c0(strSubstring);
            if (!o1.s0.t(cVarW.z()) && !o1.s0.j(cVarW.z(), strSubstring)) {
                cVarW.o(cVarW.z());
            }
            cVarW.x0(ProxyProperties.LOCAL_EXCL_LIST);
            cVarW.q();
            cVarW.d0(6);
        }
    }

    public class e0 extends i0.b {
        public e0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            Log.e("BT", " MU == mac :" + str + "  " + cVarW);
            cVarW.Y(2);
            b.this.f2967e = cVarW;
        }
    }

    public class e1 extends i0.b {
        public e1(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            try {
                int i2 = Integer.parseInt(str2.substring(0, 2));
                int i3 = Integer.parseInt(str2.substring(2, 4));
                int i4 = Integer.parseInt(str2.substring(6, 9));
                byte[] bytes = str2.substring(9).getBytes(StandardCharsets.UTF_8);
                String str3 = ProxyProperties.LOCAL_EXCL_LIST;
                String str4 = i2 > 0 ? new String(bytes, 0, i2, StandardCharsets.UTF_8) : ProxyProperties.LOCAL_EXCL_LIST;
                int i5 = i2 + 0;
                String str5 = i3 > 0 ? new String(bytes, i5, i3, StandardCharsets.UTF_8) : ProxyProperties.LOCAL_EXCL_LIST;
                int i6 = i5 + i3;
                if (i4 > 0) {
                    str3 = new String(bytes, i6, i4, StandardCharsets.UTF_8);
                }
                cVarW.B0(50, str4, str5, str3);
            } catch (Exception unused) {
            }
        }
    }

    public class f extends i0.b {
        public f(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).d0(2);
        }
    }

    public class f0 extends i0.b {
        public f0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            cVarW.b0(true);
            b.this.f2968f = cVarW;
        }
    }

    public class f1 extends i0.a {
        public f1(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (h0.c.f2435g) {
                h0.e.J(1, false);
            }
        }
    }

    public class g extends i0.b {
        public g(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            String[] strArrSplit = str2.substring(2).split(",");
            if (strArrSplit.length == 2) {
                cVarW.k(strArrSplit[1], 6);
                cVarW.c0(strArrSplit[1]);
                cVarW.x0(strArrSplit[0]);
            }
            cVarW.d0(6);
        }
    }

    public class g0 extends i0.a {
        public g0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.E(str);
        }
    }

    public class g1 extends i0.b {
        public g1(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarY = b.this.y(str);
            if (o1.s0.j(str, b.this.f2972j)) {
                b.this.f2972j = "000000000000";
            }
            cVarY.p();
        }
    }

    public class h extends i0.b {
        public h(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
        }
    }

    public class h0 extends i0.a {
        public h0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            try {
                int i2 = Integer.parseInt(str.substring(0, 2));
                int i3 = Integer.parseInt(str.substring(2, 4));
                byte[] bytes = str.substring(4).getBytes(StandardCharsets.UTF_8);
                String str2 = ProxyProperties.LOCAL_EXCL_LIST;
                String str3 = i2 > 0 ? new String(bytes, 0, i2, StandardCharsets.UTF_8) : ProxyProperties.LOCAL_EXCL_LIST;
                int i4 = i2 + 0;
                if (i3 > 0) {
                    str2 = new String(bytes, i4, i3, StandardCharsets.UTF_8);
                }
                if (b.this.f2968f != null) {
                    b.this.f2968f.B0(22, str3, str2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class h1 extends i0.b {
        public h1(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            cVarW.o(cVarW.w());
            cVarW.d0(3);
            if (h0.c.M == 1) {
                cVarW.c0(ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class i extends i0.a {
        public i(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (o1.s0.j(str, "0")) {
                h0.g.Y2().c3(1);
            } else if (o1.s0.j(str, "1")) {
                h0.g.Y2().c3(0);
            }
        }
    }

    public class i0 extends i0.b {
        public i0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).b0(false);
            if (b.this.f2968f == null || !o1.s0.j(str, b.this.f2968f.y())) {
                return;
            }
            b.this.f2968f = null;
        }
    }

    public class i1 extends i0.b {
        public i1(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            if (cVarW.D()) {
                return;
            }
            cVarW.o(cVarW.w());
            cVarW.d0(3);
            if (h0.c.M == 1) {
                cVarW.c0(ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class j extends i0.a {
        public j(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.X(19, null, null, null);
            b.this.G(ProxyProperties.LOCAL_EXCL_LIST);
            b.this.P(ProxyProperties.LOCAL_EXCL_LIST);
            b.this.b("CY");
            b.this.b("MY");
            b.this.b("VE");
            h0.e.t(1);
        }
    }

    public class j0 extends i0.a {
        public j0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        @SuppressLint({"SimpleDateFormat"})
        public void c(String str) {
            try {
                int i2 = Integer.parseInt(str.substring(0, 1));
                int i3 = Integer.parseInt(str.substring(1, 3));
                int i4 = Integer.parseInt(str.substring(3, 5));
                int i5 = Integer.parseInt(str.substring(5, 7));
                byte[] bytes = str.substring(7).getBytes(StandardCharsets.UTF_8);
                String str2 = i3 > 0 ? new String(bytes, 0, i3, StandardCharsets.UTF_8) : ProxyProperties.LOCAL_EXCL_LIST;
                int i6 = i3 + 0;
                String str3 = i4 > 0 ? new String(bytes, i6, i4, StandardCharsets.UTF_8) : ProxyProperties.LOCAL_EXCL_LIST;
                String str4 = i5 > 0 ? new String(bytes, i6 + i4, i5, StandardCharsets.UTF_8) : ProxyProperties.LOCAL_EXCL_LIST;
                if (!str4.isEmpty()) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
                    simpleDateFormat.applyPattern("yyyyMMddHHmmss");
                    Date date = simpleDateFormat.parse(str4.replace("T", ProxyProperties.LOCAL_EXCL_LIST));
                    simpleDateFormat.applyPattern("yyyy/MM/dd HH:mm:ss");
                    str4 = simpleDateFormat.format(date);
                }
                if (b.this.f2968f != null) {
                    b.this.f2968f.A0(35, new int[]{i2}, new String[]{str2, str3, str4});
                }
            } catch (Exception unused) {
            }
        }
    }

    public class k extends i0.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f3003e;

        public k(String... strArr) {
            super(strArr);
            this.f3003e = 14;
        }

        @Override // i0.a
        public void c(String str) {
            int length = str == null ? 0 : str.length() / 14;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 14;
                int i4 = i3 + 12;
                String strSubstring = str.substring(i3, i4);
                if (!o1.s0.j(strSubstring, "000000000000")) {
                    i0.c cVarW = b.this.w(strSubstring);
                    int i5 = i3 + 13;
                    int i6 = Integer.parseInt(str.substring(i4, i5));
                    int i7 = Integer.parseInt(str.substring(i5, (i2 + 1) * 14));
                    cVarW.d0(i6);
                    cVarW.Y(i7);
                }
            }
        }
    }

    public class k0 extends i0.b {
        public k0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).r0(false);
            if (b.this.f2968f == null || !o1.s0.j(str, b.this.f2968f.y())) {
                return;
            }
            b.this.f2968f = null;
        }
    }

    public class l extends i0.b {
        public l(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            if (b.this.f2969g == null || !o1.s0.j(b.this.f2969g.y(), str)) {
                return;
            }
            i0.c cVarW = b.this.w(str);
            if (cVarW.G()) {
                h0.c.U = 0;
                if (b.this.f2971i.c()) {
                    Runnable runnable = u0.b.x3;
                    if (runnable != null) {
                        runnable.run();
                    }
                    u0.b.x3 = null;
                    b.this.f2971i.e(false);
                }
                cVarW.w0(false);
            }
            b.this.f2969g = null;
        }
    }

    public class l0 extends i0.b {
        public l0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            i0.c cVarW = b.this.w(str);
            cVarW.r0(true);
            b.this.f2968f = cVarW;
        }
    }

    public class m extends i0.b {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u0.b.f17311c.c(-1);
            }
        }

        public m(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            if (b.this.f2969g == null) {
                i0.c cVarW = b.this.w(str);
                h0.c.U = 1;
                b.this.f2969g = cVarW;
                boolean z2 = (ZLink.Y().d0() || h1.a.d().j()) ? false : true;
                if (z2) {
                    o1.u.C0("com.syu.bt.phone.voice", "com.syu.bt");
                }
                if (u0.b.D != 2) {
                    u0.b.f17311c.c(2);
                    u0.b.x3 = new a();
                    b.this.f2971i.e(true);
                }
                cVarW.w0(z2);
                h0.d.f2471j.c();
            }
        }
    }

    public class m0 extends i0.a {
        public m0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            b.this.a("PE0,0,ff");
        }
    }

    public class n extends i0.a {
        public n(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (h1.a.d().e() == 2 || u0.b.D == 3) {
                return;
            }
            o1.u.q();
        }
    }

    public class n0 extends i0.b {
        public n0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            if (str2 == null || str2.length() != 4) {
                return;
            }
            i0.c cVarW = b.this.w(str);
            int i2 = Integer.parseInt(str2.substring(0, 2), 10);
            int i3 = Integer.parseInt(str2.substring(2, 4), 10);
            cVarW.s0(i2);
            cVarW.a0(i3);
        }
    }

    public class o extends i0.a {
        public o(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (b.this.f2967e != null) {
                b.this.f2967e.Z(str);
            }
        }
    }

    public class o0 extends i0.a {
        public o0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            ControlNative.getInstance().fytResetBluetooth();
        }
    }

    public class p extends i0.a {
        public p(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (b.this.f2967e != null) {
                b.this.f2967e.Z(ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class p0 extends i0.a {
        public p0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (u0.b.f17320f != 0) {
                b.this.a("CZ1");
            }
        }
    }

    public class q extends i0.a {
        public q(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            b.this.w(str);
        }
    }

    public class q0 extends i0.a {
        public q0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
        }
    }

    public class r extends i0.a {
        public r(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.h(1);
        }
    }

    public class r0 extends i0.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f3020e;

        public r0(String... strArr) {
            super(strArr);
            this.f3020e = 13;
        }

        @Override // i0.a
        public void c(String str) {
            i0.c cVarRemove;
            int length = str == null ? 0 : str.length() / 13;
            HashMap map = new HashMap(b.this.f2964b);
            b.this.f2963a.clear();
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 * 13;
                int i4 = i3 + 1;
                String strSubstring = str.substring(i3, i4);
                i2++;
                String strSubstring2 = str.substring(i4, i2 * 13);
                if (!"000000000000".equals(strSubstring2)) {
                    if (!b.this.f2963a.contains(strSubstring2)) {
                        b.this.f2963a.add(strSubstring2);
                    }
                    b.this.f2964b.put(strSubstring, strSubstring2);
                } else if (b.this.f2964b.remove(strSubstring) == null) {
                    i0.c.T(strSubstring);
                }
            }
            synchronized (b.this.f2970h) {
                for (String str2 : map.values()) {
                    boolean z2 = !b.this.f2963a.contains(str2);
                    Log.e("BT", " == lost Slave: lost = " + z2 + " mac: " + str2 + " size:" + b.this.f2965c.size());
                    if (z2 && b.this.f2965c.containsKey(str2) && (cVarRemove = b.this.f2965c.remove(str2)) != null) {
                        if (b.this.f2967e != null && o1.s0.j(b.this.f2967e.y(), cVarRemove.y())) {
                            cVarRemove.n();
                            b.this.f2967e = null;
                        }
                        if (b.this.f2968f != null && o1.s0.j(b.this.f2968f.y(), cVarRemove.y())) {
                            b.this.f2968f = null;
                        }
                        if (b.this.f2969g != null && o1.s0.j(b.this.f2969g.y(), cVarRemove.y())) {
                            b.this.f2969g = null;
                        }
                        if (o1.s0.j(cVarRemove.y(), b.this.f2972j)) {
                            b.this.f2972j = "000000000000";
                        }
                        cVarRemove.p();
                        cVarRemove.S();
                    }
                }
            }
            for (Map.Entry<String, String> entry : b.this.f2964b.entrySet()) {
                String value = entry.getValue();
                if (!o1.s0.j("000000000000", value)) {
                    b.this.w(value).e0(entry.getKey());
                }
            }
        }
    }

    public class s extends i0.a {
        public s(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.h(0);
        }
    }

    public class s0 extends i0.b {
        public s0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).k0(str2);
        }
    }

    public class t extends i0.a {
        public t(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            str.hashCode();
            int i2 = 6;
            int i3 = 5;
            switch (str) {
                case "A101":
                case "A301":
                    c.e.d().c(24);
                    break;
                case "A102":
                case "A302":
                    c.e.d().c(25);
                    break;
                case "A104":
                case "A304":
                    c.e.d().c(87);
                    break;
                case "A108":
                case "A308":
                    c.e.d().c(88);
                    break;
                case "A110":
                    c.e eVarD = c.e.d();
                    if (h0.c.G != 1 && !u0.i.l3().r3()) {
                        i3 = 91;
                    }
                    eVarD.c(i3);
                    break;
                case "A310":
                    c.e eVarD2 = c.e.d();
                    if (h0.c.G != 1 && !u0.i.l3().r3()) {
                        i2 = 556;
                    }
                    eVarD2.c(i2);
                    break;
            }
        }
    }

    public class t0 extends i0.a {
        public t0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (str == null || str.length() <= 12) {
                return;
            }
            h0.e.X(24, new int[]{Integer.parseInt(str.substring(0, 1))}, null, new String[]{str.substring(1, 13), str.substring(13)});
        }
    }

    public class u extends i0.a {
        public u(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (b.this.f2967e != null) {
                b.this.f2967e.Y(2);
            }
        }
    }

    public class u0 extends i0.a {
        public u0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.X(24, null, null, null);
        }
    }

    public class v extends i0.b {
        public v(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).m0(str2);
        }
    }

    public class v0 extends i0.a {
        public v0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.t(0);
        }
    }

    public class w extends i0.a {
        public w(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            if (b.this.f2967e != null) {
                b.this.f2967e.Y(3);
            }
        }
    }

    public class w0 extends i0.b {
        public w0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).l0(true);
        }
    }

    public class x extends i0.a {
        public x(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            try {
                String[] strArrSplit = str.split(new String(new byte[]{-1}));
                if (b.this.f2967e != null) {
                    if (strArrSplit.length >= 1) {
                        b.this.f2967e.j0(strArrSplit[0]);
                    }
                    if (strArrSplit.length >= 2) {
                        b.this.f2967e.i0(strArrSplit[1]);
                    }
                    if (strArrSplit.length >= 3) {
                        b.this.f2967e.o0(Integer.parseInt(strArrSplit[2], 10));
                    }
                    if (strArrSplit.length >= 4) {
                        b.this.f2967e.p0(Integer.parseInt(strArrSplit[3]));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class x0 extends i0.b {
        public x0(String... strArr) {
            super(strArr);
        }

        @Override // i0.b
        public void d(String str, String str2) {
            b.this.w(str).l0(false);
        }
    }

    public class y extends i0.a {
        public y(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.F(str);
        }
    }

    public class y0 extends i0.a {
        public y0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.Y(59, str);
        }
    }

    public class z extends i0.a {
        public z(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            h0.e.S(str);
        }
    }

    public class z0 extends i0.a {
        public z0(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
            try {
                h0.e.W(47, Integer.parseInt(str));
            } catch (Exception unused) {
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2962l = sparseIntArray;
        sparseIntArray.put(1, 0);
        sparseIntArray.put(2, 1);
        sparseIntArray.put(3, 2);
        sparseIntArray.put(5, 4);
        sparseIntArray.put(4, 3);
        sparseIntArray.put(6, 5);
    }

    public b(z.e eVar) {
        this.f2971i = eVar;
        T();
    }

    public i0.c A() {
        i0.c cVar;
        synchronized (this.f2970h) {
            cVar = this.f2965c.get(this.f2972j);
        }
        return cVar;
    }

    public i0.c B() {
        return z("0");
    }

    public z.e C() {
        return this.f2971i;
    }

    public i0.c D() {
        return this.f2969g;
    }

    public void E(String str) {
        if (str.length() < 2) {
            Log.e("BT", "RdaParser Error msg: [" + str + "]");
            return;
        }
        String strSubstring = str.substring(0, 2);
        String strSubstring2 = str.length() > 2 ? str.substring(2) : ProxyProperties.LOCAL_EXCL_LIST;
        i0.a aVarB = i0.a.b(strSubstring);
        if (aVarB != null) {
            aVarB.c(strSubstring2);
        }
    }

    public boolean F(int i2, int[] iArr, float[] fArr, String[] strArr) {
        i0.c cVarY;
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 27:
                i0.c cVar = this.f2967e;
                if (cVar != null) {
                    return cVar.A(i2, iArr, fArr, strArr);
                }
                return true;
            case 5:
                Q();
                return true;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 26:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 39:
            case 49:
            case 56:
                if (!o1.s0.i(strArr, 0) || (cVarY = y(strArr[0])) == null) {
                    return true;
                }
                cVarY.A(i2, iArr, fArr, strArr.length > 1 ? (String[]) Arrays.copyOfRange(strArr, 1, strArr.length) : null);
                return true;
            case 16:
            case 30:
            case 42:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 51:
            case 54:
            case 55:
            case 58:
            case 60:
            case 61:
            case 63:
            case 64:
            default:
                return false;
            case 17:
                S();
                return true;
            case 18:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                P(strArr[0]);
                return true;
            case 19:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                G(strArr[0]);
                return true;
            case 20:
                if (!o1.s0.h(iArr, 0)) {
                    return true;
                }
                u(iArr[0]);
                return true;
            case 21:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                Y(strArr[0]);
                return true;
            case 22:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                O(strArr[0]);
                return true;
            case 23:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                N(strArr[0]);
                return true;
            case 24:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                q(strArr[0]);
                return true;
            case 25:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                r(strArr[0]);
                return true;
            case 28:
                if (!o1.s0.h(iArr, 0)) {
                    return true;
                }
                h0.e.f(iArr[0]);
                return true;
            case 29:
                if (!o1.s0.h(iArr, 0)) {
                    return true;
                }
                h0.c.f2425b.x(iArr[0]);
                return true;
            case 38:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                Z(strArr[0]);
                return true;
            case 40:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                s(strArr[0]);
                return true;
            case 41:
                t();
                return true;
            case 43:
                c.e.d().c(576);
                return true;
            case 50:
                v();
                return true;
            case 52:
            case 53:
                return true;
            case 57:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                X(strArr[0]);
                return true;
            case 59:
                if (!o1.s0.i(strArr, 0)) {
                    return true;
                }
                a(strArr[0]);
                return true;
            case 62:
                W(o1.s0.i(strArr, 0) ? strArr[0] : null);
                return true;
            case 65:
                V();
                return true;
            case 66:
                U();
                return true;
        }
    }

    public void G(String str) {
        if (o1.s0.t(str)) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (str.length() > 100) {
            return;
        }
        b("MM" + str);
    }

    public void H() {
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void I() {
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            cVar.f();
        }
    }

    public void J() {
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            cVar.g();
        }
    }

    public void K() {
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            cVar.h();
        }
    }

    public void L() {
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            cVar.i();
        }
    }

    public void M() {
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            cVar.j();
        }
    }

    public void N(String str) {
        if (o1.s0.t(str)) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (str.length() > 20) {
            return;
        }
        b("CL" + str);
    }

    public void O(String str) {
        if (o1.s0.t(str)) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (str.length() > 20) {
            return;
        }
        b("CK" + str);
    }

    public void P(String str) {
        if (o1.s0.t(str)) {
            b("MN");
        } else if (str.length() == 4) {
            b("MN" + str);
        }
    }

    public void Q() {
        b("MX");
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0038  */
    /* JADX WARN: Code duplicated, block: B:33:0x004b A[Catch: all -> 0x005d, LOOP:0: B:31:0x0045->B:33:0x004b, LOOP_END, TryCatch #0 {, blocks: (B:30:0x003b, B:31:0x0045, B:33:0x004b, B:34:0x005b), top: B:43:0x003b }] */
    /* JADX WARN: Code duplicated, block: B:43:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:? A[RETURN, SYNTHETIC] */
    public boolean R(y.b bVar, int i2, int i3) {
        Iterator<Map.Entry<String, i0.c>> it;
        if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
            if (i2 != 11) {
                if (i2 != 13) {
                    if (i2 != 18 && i2 != 23) {
                        if (i2 != 51) {
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        case 26:
                                        case 27:
                                        case 28:
                                            break;
                                        case 29:
                                            break;
                                        default:
                                            switch (i2) {
                                                case 43:
                                                case 44:
                                                case 45:
                                                case 46:
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case 61:
                                                        case 62:
                                                        case 63:
                                                            break;
                                                        default:
                                                            return false;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                    if (!this.f2965c.isEmpty()) {
                                        return true;
                                    }
                                    synchronized (this.f2970h) {
                                        it = this.f2965c.entrySet().iterator();
                                        while (it.hasNext()) {
                                            it.next().getValue().Q(bVar, i2);
                                        }
                                        break;
                                    }
                                    return true;
                            }
                        }
                    }
                }
            }
            if (!this.f2965c.isEmpty()) {
                return true;
            }
            synchronized (this.f2970h) {
                it = this.f2965c.entrySet().iterator();
                while (it.hasNext()) {
                    it.next().getValue().Q(bVar, i2);
                }
                return true;
            }
        }
        i0.c cVar = this.f2967e;
        if (cVar != null) {
            return cVar.Q(bVar, i2);
        }
        return true;
    }

    public void S() {
        b("CZ");
    }

    public void T() {
        new k("CY");
        new v("CS");
        new g0("DB");
        new r0("DI");
        new c1("HA");
        new f1("HB");
        new g1("IA", "IJ");
        new h1("IF");
        new i1("IB");
        new a("IH");
        new C0060b("IC");
        new c("ID");
        new d("IE");
        new e("IG");
        new f("IV", "II", "P0", "P1", "P3");
        new g("IK");
        new h("IM");
        new i("IO");
        new j("IS");
        new l("FF");
        new m("FS");
        new n("FP");
        new o("FV");
        new p("FW");
        new q("JH");
        new r("LC");
        new s("LD");
        new t("LR");
        new u("MA");
        new w("MB");
        new x("MI");
        new y("MM");
        new z("MN");
        new a0("MP");
        new b0("MW");
        new c0("MX");
        new d0("MY");
        new e0("MU");
        new f0("PA");
        new h0("PB");
        new i0("PC");
        new j0("PD");
        new k0("PE");
        new l0("PF");
        new m0("PJ");
        new n0("PS");
        new o0("RT");
        new p0("RS");
        new q0("S0");
        new s0("SA");
        new t0("SF");
        new u0("SH");
        new v0("ST");
        new w0("T0");
        new x0("T1");
        new y0("TX");
        new z0("VP");
        new a1("VS");
        new b1("UP");
        new d1("YT");
        new e1("YL");
    }

    public void U() {
        b("DD");
    }

    public void V() {
        b("DU");
    }

    public void W(String str) {
        i0.c cVar;
        if (str != null || (cVar = this.f2967e) == null) {
            if (str != null) {
                b("CU" + str);
                return;
            }
            return;
        }
        i0.c cVarX = x(cVar.y());
        if (cVarX != null) {
            b("CU" + cVarX.y());
        }
    }

    public void X(String str) {
        if (o1.s0.t(str)) {
            return;
        }
        a("CW" + str);
    }

    public void Y(String str) {
        if (o1.s0.t(str)) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (str.length() > 100) {
            return;
        }
        if (g.f.f(5)) {
            b("CW*" + str);
            return;
        }
        b("TE" + str);
    }

    public void Z(String str) {
        if (o1.s0.t(str) || str.length() > 100) {
            return;
        }
        b("UP" + str);
    }

    @Override // j0.a
    public void a(String str) {
        if (o1.s0.t(str)) {
            return;
        }
        b("XX" + str);
    }

    @Override // j0.a
    public void b(String str) {
        if (o1.s0.t(str)) {
            return;
        }
        String str2 = "AT-" + str + "\r\n";
        Log.e("BT", "RdaParser sendCommon msg: " + str2);
        z.a.f18153d.i(str2.getBytes(StandardCharsets.UTF_8));
    }

    @Override // j0.a
    public void c() {
        synchronized (this.f2970h) {
            Iterator<Map.Entry<String, i0.c>> it = this.f2965c.entrySet().iterator();
            int i2 = 1;
            boolean z2 = false;
            while (it.hasNext()) {
                i0.c value = it.next().getValue();
                z2 = z2 || value.D();
                int iX = value.F() ? 6 : value.x();
                if (iX > i2) {
                    Log.e("BT", "fixHfpState : " + i2 + " ===>>> hfpState: " + iX);
                    i2 = iX;
                }
            }
            p(z2);
            int i3 = f2962l.get(i2, 0);
            if (i3 != h0.c.E) {
                h0.c.E = i3;
                h0.d.f2462a.c();
            }
        }
    }

    public final void p(boolean z2) {
        Log.e("Qin", "========>>>> callWork  DataBt.sPhoneWork: " + h0.c.G + " to Calling :" + z2);
        if (z2 && h0.c.G == 0) {
            o1.j.f(h0.e.x());
            o1.j.c(h0.e.x(), 1000L);
            h0.c.G = 1;
            y0.h.M();
            if (!g.e.j(61) || !k4.f(1)) {
                u0.d.N(0);
            }
            h0.d.f2463b.c();
            h0.c.L = u0.b.D;
            h0.c.X = u0.b.f17326h;
            if (u0.b.f17326h != 0) {
                u0.d.u3(0);
            }
            boolean zK = h0.e.K();
            if (zK) {
                SystemProperties.set("syu.bt.show.pip", "true");
            }
            Log.e("Qin", "========>>>> callWork  DataBt.jumpBtPage: " + h0.c.f2444k0 + " needshowPip:" + zK);
            if (h0.c.f2444k0) {
                if (zK) {
                    o1.u.t();
                } else {
                    o1.u.s();
                }
            }
            if (y0.f.f18055i == 1 && !o1.s0.l("syu.bt.calling.unmute", false)) {
                o1.s0.F("syu.bt.calling.unmute", "true");
                y0.h.u0(-4);
            }
        } else if (!z2 && h0.c.G != 0) {
            h0.e.J(8, true);
            h0.c.G = 0;
            if (o1.s0.l("syu.bt.calling.unmute", false)) {
                o1.s0.F("syu.bt.calling.unmute", "false");
                y0.h.u0(-3);
            }
            SystemProperties.set("syu.bt.show.pip", "false");
            h0.d.f2463b.c();
            y0.h.M();
            if (u0.b.D == 2) {
                u0.b.f17311c.c(h0.c.L);
            }
            if (u0.b.f17306a0 != 0 && u0.b.f17320f != 0 && h0.c.X != 0) {
                u0.d.u3(1);
            }
            h0.c.f2444k0 = true;
            o1.j.f(h0.e.x());
            o1.j.c(h0.e.x(), 2000L);
        }
        Log.e("Qin", "========>>>> callWork  DataBt.sPhoneWork: " + h0.c.G);
    }

    public void q(String str) {
        if (str != null) {
            if (str.isEmpty() || str.length() == 12) {
                b("CC" + str);
            }
        }
    }

    public void r(String str) {
        if (str == null || str.length() != 20) {
            return;
        }
        b("DB" + str);
    }

    public void s(String str) {
        b("CV" + str);
    }

    public void t() {
        b("CV0");
    }

    public void u(int i2) {
        if (i2 == 0) {
            b("ST");
        } else {
            if (i2 != 1) {
                return;
            }
            b("SD");
        }
    }

    public void v() {
        b("YI");
    }

    public final i0.c w(String str) {
        i0.c cVar;
        synchronized (this.f2970h) {
            if (!o1.s0.j("000000000000", str) && !this.f2965c.containsKey(str)) {
                i0.c cVar2 = new i0.c(str);
                cVar2.u0(this);
                this.f2965c.put(str, cVar2);
            }
            cVar = this.f2965c.get(str);
        }
        return cVar;
    }

    public final i0.c x(String str) {
        synchronized (this.f2970h) {
            if (this.f2965c.size() < 2) {
                return null;
            }
            if (str == null && this.f2965c.size() != 2) {
                return null;
            }
            for (i0.c cVar : this.f2965c.values()) {
                if (!o1.s0.j(cVar.y(), str)) {
                    return cVar;
                }
            }
            return null;
        }
    }

    public final i0.c y(String str) {
        i0.c cVar;
        synchronized (this.f2970h) {
            cVar = this.f2965c.get(str);
        }
        return cVar;
    }

    public i0.c z(String str) {
        i0.c cVar;
        synchronized (this.f2970h) {
            String str2 = this.f2964b.get(str);
            cVar = str2 == null ? null : this.f2965c.get(str2);
        }
        return cVar;
    }
}
