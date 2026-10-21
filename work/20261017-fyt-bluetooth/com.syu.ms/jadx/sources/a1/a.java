package a1;

import a.f;
import android.net.ProxyProperties;
import android.util.Log;
import android.util.SparseIntArray;
import app.App;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import o1.h0;
import o1.j;
import o1.s0;
import org.json.JSONObject;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SparseIntArray f99i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SparseIntArray f100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SparseIntArray f101k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public SparseIntArray f102l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public SparseIntArray f103m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SparseIntArray f104n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public SparseIntArray f105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public SparseIntArray f106p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f91a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f92b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f93c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f94d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f95e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f96f = "Panel_keys";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f97g = "Panel_keys_mcu";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f98h = "steer_config.properties";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f107q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public h0 f108r = new h0("Steer");

    /* JADX INFO: renamed from: a1.a$a, reason: collision with other inner class name */
    public class RunnableC0001a implements Runnable {
        public RunnableC0001a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            a.this.q("/sdcard/steer_config.properties");
            a.this.A();
        }
    }

    public void A() {
        if (s0.t(this.f107q)) {
            return;
        }
        String strTrim = this.f107q.replace(" ", ProxyProperties.LOCAL_EXCL_LIST).trim();
        if (s0.t(strTrim)) {
            return;
        }
        int i2 = 1;
        String[] strArrSplit = strTrim.substring(1, strTrim.length() - 1).split(",");
        int[] iArr = new int[strArrSplit.length + 1];
        iArr[0] = 198;
        for (String str : strArrSplit) {
            int i3 = i2 + 1;
            try {
                iArr[i2] = Integer.parseInt(str, 16);
                i2 = i3;
            } catch (Exception unused) {
                i2 = i3 + 1;
                iArr[i3] = 255;
            }
        }
        k.s(iArr);
        this.f107q = null;
    }

    public final String B() {
        return f.B() + "/oem/steer_config.properties";
    }

    @Override // a1.d
    public void a() {
        p();
    }

    @Override // a1.d
    public void b() {
    }

    @Override // a1.d
    public void c(int i2, int i3) {
        if (b.f114e == 50) {
            return;
        }
        c.g(-1);
        if (i2 < 0 || i2 >= 50) {
            return;
        }
        if (b.f120k) {
            Log.e("Steer", "keyAdc keyCode : " + i2 + "  adc : " + i3);
        }
        x(i2, i3);
    }

    @Override // a1.d
    public void clear() {
        k.s(1, 16, 32);
        l();
    }

    @Override // a1.d
    public int d(int i2, int i3) {
        return this.f106p.get(i2, i3);
    }

    @Override // a1.d
    public void e(int i2, int i3, int i4) {
        if (b.f114e == 50) {
            return;
        }
        c.g(-1);
        if (i2 < 16 || i2 >= 50 || !x(i2, i4)) {
            return;
        }
        if (b.f120k) {
            Log.e("Steer", "11 keyAdc keyCode : " + i2 + "  adc : " + i4 + " func : " + i3);
        }
        this.f100j.put(i2, i3);
    }

    @Override // a1.d
    public void f(int i2) {
        if (i2 == 1) {
            if (b.f120k) {
                f.p().s("开始学习");
                Log.d("Steer", "---> to mcu start study C1 01");
            }
            k.s(193, 1);
            return;
        }
        if (i2 == 2) {
            if (b.f120k) {
                f.p().s("结束学习并保存 ");
                Log.d("Steer", "---->to mcu end study C1 02");
            }
            k.s(193, 2);
            u();
            b.f118i = 0;
            b.f119j = 0;
            return;
        }
        if (i2 == 3) {
            if (b.f120k) {
                f.p().s("清除所有学习的按键 ");
                Log.d("Steer", "-----> to mcu clear allKey C1 03");
            }
            l();
            k.s(193, 3);
            return;
        }
        if (i2 != 4) {
            return;
        }
        if (b.f120k) {
            f.p().s("查询已经学习的按键 ");
            Log.d("Steer", "----> to mcu search allKey C1 04");
        }
        k.s(193, 4);
    }

    @Override // a1.d
    public void g(int i2, int i3) {
        if ((i2 < 0 || i2 > 24) && (i2 < 35 || i2 >= 55)) {
            return;
        }
        b.f118i = i2;
        b.f119j = i3;
        k.s(194, i2);
        if (b.f120k) {
            Log.d("Steer", "---> study key keycode = " + i2 + " func = " + i3 + " to mcu 0xC2 " + i2);
        }
        this.f106p.put(i2, i3);
    }

    @Override // a1.d
    public void h(int i2, int i3, int i4) {
        int i5;
        if (this.f100j.indexOfKey(i2) >= 0 && (i5 = i2 - 60) >= 0) {
            k.s(50, i5, i4);
            if (b.f120k) {
                Log.e("Steer", "onLongClickfunc keyCode : " + i2 + " func : " + i3);
            }
            this.f104n.put(i2, i3);
            c.l(11, i2, i3);
        }
    }

    @Override // a1.d
    public void i(int i2, int i3) {
        if (b.f114e == 50) {
            return;
        }
        c.g(-1);
        int i4 = i2 - 60;
        if (i4 >= 0) {
            k.s(53, i4);
            if (b.f120k) {
                Log.e("Steer", "onClickfunc keyCode : " + i2 + " func : " + i3);
            }
            this.f100j.put(i2, i3);
            c.l(10, i2, i3);
        }
    }

    @Override // a1.d
    public void j(int i2) {
        if (i2 == 0) {
            c.e(0);
            k.s(1, 16, 0);
            return;
        }
        if (i2 == 1) {
            c.e(1);
            k.s(1, 16, 1);
            k.s(1, 16, 2);
        } else {
            if (i2 != 2) {
                return;
            }
            if (b.f116g == 0) {
                j(1);
            } else {
                j(0);
            }
        }
    }

    public final void l() {
        this.f102l.clear();
        this.f101k.clear();
        this.f99i.clear();
        this.f100j.clear();
        this.f103m.clear();
        this.f104n.clear();
        this.f108r.v(0);
        this.f108r.v(1);
        this.f108r.v(3);
        c.l(11, new int[0]);
        c.l(10, new int[0]);
    }

    public void m() {
        this.f106p.clear();
        this.f105o.clear();
        this.f108r.v(2);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void n(byte[] bArr) {
        FileOutputStream fileOutputStream;
        Throwable th;
        Exception e2;
        if (bArr == null) {
            return;
        }
        Properties properties = new Properties();
        SparseIntArray sparseIntArrayM17clone = this.f105o.m17clone();
        HashMap map = new HashMap();
        int size = sparseIntArrayM17clone.size();
        for (int i2 = 0; i2 < size; i2++) {
            map.put(sparseIntArrayM17clone.keyAt(i2) + ProxyProperties.LOCAL_EXCL_LIST, Integer.valueOf(sparseIntArrayM17clone.valueAt(i2)));
        }
        properties.put("Panel_keys", new JSONObject(map).toString());
        properties.put("Panel_keys_mcu", Arrays.toString(s0.d(bArr)));
        try {
            fileOutputStream = new FileOutputStream("/sdcard/steer_config.properties");
            try {
                try {
                    properties.store(fileOutputStream, App.c().getPackageName());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                    }
                } catch (Exception e3) {
                    e2 = e3;
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            fileOutputStream = null;
            e2 = e4;
        } catch (Throwable th3) {
            fileOutputStream = null;
            th = th3;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
    }

    public void o() {
        j.c(new RunnableC0001a(), 50L);
    }

    public final void p() {
        r();
        s();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0077 A[PHI: r10
  0x0077: PHI (r10v5 boolean) = (r10v4 boolean), (r10v9 boolean), (r10v9 boolean) binds: [B:21:0x0031, B:29:0x0065, B:32:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean q(String str) throws Throwable {
        FileReader fileReader;
        boolean z2;
        boolean z3 = false;
        if (!new File(str).exists()) {
            return false;
        }
        Properties properties = new Properties();
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader(str);
            try {
                properties.load(fileReader);
                z2 = true;
                try {
                    fileReader.close();
                } catch (IOException unused) {
                }
            } catch (Exception unused2) {
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException unused3) {
                    }
                }
                z2 = false;
            } catch (Throwable th) {
                th = th;
                fileReader2 = fileReader;
                if (fileReader2 != null) {
                    try {
                        fileReader2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
            fileReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (z2) {
            String property = properties.getProperty("Panel_keys", null);
            SparseIntArray sparseIntArray = new SparseIntArray();
            try {
                JSONObject jSONObject = new JSONObject(property);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    sparseIntArray.put(Integer.parseInt(next, 10), jSONObject.getInt(next));
                }
            } catch (Exception unused6) {
                sparseIntArray.clear();
                z2 = false;
            }
            if (z2) {
                String property2 = properties.getProperty("Panel_keys_mcu", null);
                if (!s0.t(property2)) {
                    this.f105o = sparseIntArray;
                    this.f107q = property2;
                    z3 = z2;
                }
            } else {
                z3 = z2;
            }
        } else {
            z3 = z2;
        }
        this.f106p = this.f105o.m17clone();
        u();
        return z3;
    }

    public final void r() {
        SparseIntArray sparseIntArrayK = this.f108r.k(2);
        this.f105o = sparseIntArrayK;
        if ((sparseIntArrayK == null || sparseIntArrayK.size() == 0) && this.f108r.h(4, 0) == 0 && q(B())) {
            this.f108r.q(4, 1);
            this.f108r.e(4);
        }
        this.f106p = this.f105o.m17clone();
        if (b.f120k) {
            Log.e("Steer", "load panelKeyFucs : " + this.f105o);
            Log.e("Steer", "load learningKeyFuncs : " + this.f106p);
        }
    }

    public final void s() {
        SparseIntArray sparseIntArrayK = this.f108r.k(0);
        this.f101k = sparseIntArrayK;
        this.f102l = sparseIntArrayK.m17clone();
        SparseIntArray sparseIntArrayK2 = this.f108r.k(1);
        this.f99i = sparseIntArrayK2;
        this.f100j = sparseIntArrayK2.m17clone();
        SparseIntArray sparseIntArrayK3 = this.f108r.k(3);
        this.f103m = sparseIntArrayK3;
        this.f104n = sparseIntArrayK3.m17clone();
        if (b.f120k) {
            Log.e("Steer", "load learnedFuncs : " + this.f101k);
            Log.e("Steer", "load defFuncs : " + this.f99i);
            Log.e("Steer", "load longClickFuncs : " + this.f103m);
        }
    }

    @Override // a1.d
    public void save() {
        k.s(1, 16, 33);
        v();
    }

    public void t(int i2) {
        int i3 = this.f103m.get(i2, -1);
        if (b.f120k) {
            Log.e("Steer", "   ====>>  onLongClick : " + i2 + " func : " + i3);
        }
        if (i3 >= 0) {
            c.e.d().c(i3);
        }
    }

    public final void u() {
        this.f105o = this.f106p.m17clone();
        if (b.f120k) {
            Log.e("Steer", "----->>>  saveMcuKeyData : " + this.f105o + " shareUtils: " + this.f108r);
        }
        this.f108r.s(2, this.f105o);
        this.f108r.e(2);
    }

    public final void v() {
        this.f101k = this.f102l.m17clone();
        this.f99i = this.f100j.m17clone();
        this.f103m = this.f104n.m17clone();
        this.f108r.s(0, this.f101k);
        this.f108r.s(1, this.f99i);
        this.f108r.s(3, this.f103m);
        this.f108r.e(0);
        this.f108r.e(1);
        this.f108r.e(3);
        if (b.f120k) {
            Log.e("Steer", "save learnedFuncs : " + this.f101k);
            Log.e("Steer", "save defFuncs : " + this.f99i);
            Log.e("Steer", "save longClickFuncs : " + this.f103m);
        }
    }

    public void w(int i2, int i3) {
        int i4;
        this.f102l.put(i2, i3);
        int i5 = b.f114e;
        if (i5 == -1 || i5 == 50 || (i4 = i2 - 60) < 0) {
            return;
        }
        k.s(50, i4, 0);
        this.f104n.delete(i2);
        c.l(11, i2, 0);
    }

    public boolean x(int i2, int i3) {
        switch (i2) {
            case 0:
                k.s(1, 17, i3);
                break;
            case 1:
                k.s(1, 18, i3);
                break;
            case 2:
                k.s(1, 19, i3);
                break;
            case 3:
                k.s(1, 20, i3);
                break;
            case 4:
                k.s(1, 21, i3);
                break;
            case 5:
                k.s(1, 23, i3);
                break;
            case 6:
                k.s(1, 22, i3);
                break;
            case 7:
                k.s(1, 24, i3);
                break;
            case 8:
                k.s(1, 25, i3);
                break;
            case 9:
                k.s(1, 26, i3);
                break;
            case 10:
                k.s(1, 27, i3);
                break;
            case 11:
                k.s(1, 28, i3);
                break;
            case 12:
                k.s(1, 29, i3);
                break;
            case 13:
            case 14:
            case 15:
            default:
                return false;
            case 16:
                k.s(1, 128, i3);
                break;
            case 17:
                k.s(1, 129, i3);
                break;
            case 18:
                k.s(1, 130, i3);
                break;
            case 19:
                k.s(1, 131, i3);
                break;
            case 20:
                k.s(1, 132, i3);
                break;
            case 21:
                k.s(1, 133, i3);
                break;
            case 22:
                k.s(1, 134, i3);
                break;
            case 23:
                k.s(1, 135, i3);
                break;
            case 24:
                k.s(1, 136, i3);
                break;
            case 25:
                k.s(1, 137, i3);
                break;
            case 26:
                k.s(1, 138, i3);
                break;
        }
        return true;
    }

    public void y(int i2, int i3) {
        this.f106p.put(i2, i3);
    }

    public void z(int i2) {
        int i3 = this.f99i.get(i2, -1);
        if (b.f120k) {
            Log.e("Steer", "   ====>>  steerEvent : " + i2 + " func : " + i3);
        }
        if (i3 >= 0) {
            c.e.d().c(i3);
        }
    }
}
