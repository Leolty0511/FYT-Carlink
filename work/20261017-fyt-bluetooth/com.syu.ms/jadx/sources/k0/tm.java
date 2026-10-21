package k0;

import android.bluetooth.BluetoothClass;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.Spanned;
import android.widget.SpellChecker;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class tm extends lt {
    public static int[] C = {1, 1, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10713b;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f f10724m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10714c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10715d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 4}, new int[]{12, 3}, new int[]{13, 5}, new int[]{14, 29}, new int[]{15, 13}, new int[]{16, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10716e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f10717f = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f10718g = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10719h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10720i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f10721j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f10722k = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10723l = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f10725n = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f10726o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10727p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f10728q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f10729r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f10730s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10731t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f10732u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f10733v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f10734w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f10735x = 255;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f10736y = 255;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f10737z = new c();
    public Runnable A = new d();
    public Runnable B = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tm tmVar = tm.this;
            int i2 = tmVar.f10716e + 1;
            tmVar.f10716e = i2;
            if (i2 % 2 == 1) {
                int i3 = u0.b.D;
                if (i3 == 9 || i3 == 8 || i3 == 3) {
                    String str = u0.b.i3;
                    if (str != null && !tmVar.f10717f.equals(str)) {
                        tm.this.u3((byte) 112, u0.b.i3);
                        tm.this.f10717f = u0.b.i3;
                    }
                    String str2 = u0.b.j3;
                    if (str2 == null || tm.this.f10718g.equals(str2)) {
                        return;
                    }
                    tm.this.u3((byte) 113, u0.b.j3);
                    tm.this.f10718g = u0.b.j3;
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = 2;
                    break;
                case 3:
                case 4:
                case 5:
                    i2 = 1;
                    break;
            }
            if (tm.this.f10720i != i2) {
                tm.this.f10720i = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (tm.this.f10722k.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                tm.this.f10722k = h0.c.f2437h;
                if (tm.this.f10722k == null) {
                    tm.this.f10722k = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                tm tmVar = tm.this;
                tmVar.v3(tmVar.f10720i, tm.this.f10722k);
                if (tm.this.f10721j != z4) {
                    tm.this.f10721j = z4;
                    tm.this.f10720i = 0;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tm tmVar = tm.this;
            tmVar.f10736y = tmVar.c3(u0.b.f17359s0);
            if (tm.this.f10736y != tm.this.f10735x) {
                tm tmVar2 = tm.this;
                int i2 = tmVar2.f10734w;
                if (i2 == 0) {
                    z.k.s(227, -55, 5, i2, tmVar2.f10736y, 0, 0, 0);
                }
                tm tmVar3 = tm.this;
                tmVar3.f10735x = tmVar3.f10736y;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if (i2 == 16056773) {
                z.k.s(227, 238, 1, 1);
                return;
            }
            if (i2 == 14156230 || i2 == 8716743) {
                z.k.s(227, 238, 1, 2);
                return;
            }
            if (i2 == 14549446) {
                z.k.s(227, 238, 1, 3);
                return;
            }
            if (i2 == 6750663) {
                z.k.s(227, 238, 1, 4);
                return;
            }
            if (i2 == 11272647) {
                z.k.s(227, 238, 1, 5);
                return;
            }
            if (i2 == 11338183 || i2 == 11403719) {
                z.k.s(227, 238, 1, 6);
                return;
            }
            if (i2 == 12059079) {
                z.k.s(227, 238, 1, 7);
                return;
            }
            if (i2 == 15335879) {
                z.k.s(227, 238, 1, 8);
                return;
            }
            if (i2 == 15401415) {
                z.k.s(227, 238, 1, 9);
                return;
            }
            if (i2 == 3670472) {
                z.k.s(227, 238, 1, 10);
                return;
            }
            if (i2 == 5439944) {
                z.k.s(227, 238, 1, 11);
                return;
            }
            if (i2 == 7012808) {
                z.k.s(227, 238, 1, 12);
            } else if (i2 == 7078344) {
                z.k.s(227, 238, 1, 13);
            } else {
                z.k.s(227, 238, 1, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tm.b3();
        }
    }

    public class f extends BroadcastReceiver {
        public f() {
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
                                tm tmVar = tm.this;
                                tmVar.f10734w = 1;
                                tmVar.f10733v = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                tm tmVar2 = tm.this;
                                tmVar2.f10734w = 0;
                                tmVar2.f10733v = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        tm tmVar3 = tm.this;
                        tmVar3.f10734w = 0;
                        tmVar3.f10733v = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!tm.this.f10725n.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        tm.this.f10725n = extras.getString("CUR_ROAD_NAME");
                        tm tmVar4 = tm.this;
                        tmVar4.d3(tmVar4.f10725n);
                    }
                    if (tm.this.f10728q != extras.getInt("SEG_REMAIN_DIS")) {
                        tm.this.f10728q = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (tm.this.f10727p != extras.getInt("ROUTE_REMAIN_DIS")) {
                        tm.this.f10727p = extras.getInt("ROUTE_REMAIN_DIS");
                        tm.this.f10731t = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (tm.this.f10729r != extras.getInt("CAR_DIRECTION")) {
                        tm.this.f10729r = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (tm.this.f10730s != extras.getInt("ROUTE_ALL_TIME")) {
                        tm.this.f10730s = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (tm.this.f10732u != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        tm.this.f10732u = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    tm.this.e3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ f(tm tmVar, a aVar) {
            this();
        }
    }

    public static void b3() {
        if (u0.b.D != 1) {
            z.k.s(227, 192, 2, 255, 0);
            return;
        }
        int i2 = w0.d.f17796h;
        int i3 = (i2 < 65536 || i2 > 65538) ? 16 : 0;
        int i4 = w0.d.f17797i;
        z.k.s(227, 192, 5, 1, 1, i3, i4 & 255, (i4 >> 8) & 255);
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
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(2, 3);
                return;
            }
            a3(1, 3);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(2, 4);
                return;
            } else {
                a3(1, 4);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] <= 17) {
                a3(128, 6);
                return;
            }
            if (iArr[1] > 17 && iArr[1] <= 32) {
                a3(((iArr[1] - 17) * 2) & 128, 6);
                return;
            } else {
                if (iArr[1] > 32) {
                    a3(255, 6);
                    return;
                }
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] <= 17) {
                a3(128, 7);
                return;
            }
            if (iArr[1] > 17 && iArr[1] <= 32) {
                a3(((iArr[1] - 17) * 2) & 128, 7);
                return;
            } else {
                if (iArr[1] > 32) {
                    a3(255, 7);
                    return;
                }
                return;
            }
        }
        if (i2 == 59) {
            if (iArr[1] != 0) {
                a3(64, 0);
                return;
            }
            return;
        }
        if (i2 == 60) {
            if (iArr[1] != 0) {
                if (nt.f8645g[76] == 0) {
                    a3(32, 5);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[76] == 1) {
                    a3(32, 5);
                    return;
                }
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -128, 2, 80, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -128, 2, 80, 0);
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, -128, 2, 81, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -128, 2, 81, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -128, 2, 82, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -128, 2, 82, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -128, 2, 83, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -128, 2, 83, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -128, 2, 84, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -128, 2, 84, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -128, 2, 85, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -128, 2, 85, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(128, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(2, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2, 0);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(32, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(32, 0);
                }
                break;
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
                int i3 = nt.f8645g[21];
                int i4 = iArr[1];
                if (i4 == -2) {
                    if (i3 > 0) {
                        i3--;
                    }
                    a3((i3 << 4) & 240, 1);
                } else if (i4 == -1) {
                    if (i3 < 8) {
                        i3++;
                    }
                    a3((i3 << 4) & 240, 1);
                } else {
                    a3((iArr[1] << 4) & 240, 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        a aVar = null;
        this.f7886a.f8306a = null;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        qt.z(this.B);
        qt.z(this.A);
        if (nt.f8633a == 11272647) {
            qt.z(this.f10719h);
            h0.d.f2464c.a(this.f10723l, 1);
            h0.d.f2462a.a(this.f10723l, 1);
            o1.h.f16865a.a(this.f10737z, 1);
            this.f10724m = new f(this, aVar);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f10724m, intentFilter);
            e3();
        }
        int i2 = nt.f8633a;
        if (i2 == 2425285 || i2 == 2490821 || i2 == 12059079 || i2 == 2228679 || i2 == 8454597 || i2 == 14156230 || i2 == 8716743 || i2 == 14549446 || i2 == 6750663 || i2 == 16056773 || i2 == 11272647 || i2 == 11338183 || i2 == 11403719 || i2 == 15401415 || i2 == 5439944 || i2 == 15335879 || i2 == 7012808 || i2 == 7078344) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8314i = 1;
            mtVar2.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 55, 56, 59, 60, 61, 68};
        }
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
            this.f10714c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f10715d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f10714c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f10713b = i7;
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
                    int i10 = this.f10713b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f10713b = 255;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5460);
            return;
        }
        if (b2 == 82) {
            int i11 = i2 + 2;
            qt.y0(108, (bArr[i11] >> 4) & 15);
            qt.y0(109, (bArr[i11] >> 0) & 15);
            int i12 = i2 + 3;
            qt.y0(110, (bArr[i12] >> 4) & 15);
            qt.y0(111, (bArr[i12] >> 0) & 15);
            int i13 = i2 + 4;
            qt.y0(112, bArr[i13] & 255);
            int i14 = i2 + 5;
            qt.y0(113, bArr[i14] & 255);
            int i15 = i2 + 6;
            qt.y0(114, bArr[i15] & 255);
            int i16 = i2 + 7;
            qt.y0(115, bArr[i16] & 255);
            int i17 = bArr[i13] & 255;
            int i18 = bArr[i14] & 255;
            int i19 = bArr[i15] & 255;
            int i20 = bArr[i16] & 255;
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1049, new int[]{8, ((i17 * 544) / 1000) | GLES10.GL_MODULATE}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{8, ((i18 * 544) / 1000) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{8, 8960 | ((i19 * 544) / 1000)}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{8, 9216 | ((i20 * 544) / 1000)}, null, null);
            qt.y0(116, bArr[i2 + 8] & 255);
            qt.y0(117, bArr[i2 + 9] & 255);
            qt.y0(118, bArr[i2 + 10] & 255);
            qt.y0(119, bArr[i2 + 11] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i21 = i2 + 3;
            l0.c0.a((bArr[i21] >> 3) & 1, (bArr[i21] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i21] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 96) {
            int i22 = i2 + 2;
            qt.y0(297, (bArr[i22] >> 7) & 1);
            qt.y0(298, (bArr[i22] >> 6) & 1);
            qt.y0(299, (bArr[i22] >> 5) & 1);
            qt.y0(300, (bArr[i22] >> 4) & 1);
            qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, (bArr[i22] >> 3) & 1);
            qt.y0(302, bArr[i2 + 3] & 255);
            qt.y0(303, bArr[i2 + 4] & 255);
            qt.y0(304, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(305, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(306, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(307, ((bArr[i2 + 14] << 24) & (-16777216)) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(308, bArr[i2 + 15] & 255);
            return;
        }
        if (b2 == 97) {
            qt.y0(309, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(310, ((bArr[i2 + 7] << 24) & (-16777216)) | ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(311, bArr[i2 + 8] & 255);
            qt.y0(312, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(313, ((bArr[i2 + 14] << 24) & (-16777216)) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(314, bArr[i2 + 15] & 255);
            qt.y0(315, bArr[i2 + 16] & 255);
            qt.y0(316, bArr[i2 + 17] & 255);
            qt.y0(317, bArr[i2 + 18] & 255);
            qt.y0(318, bArr[i2 + 19] & 255);
            qt.y0(319, bArr[i2 + 20] & 255);
            return;
        }
        switch (b2) {
            case 35:
                int i23 = bArr[i2 + 2] & 255;
                int i24 = bArr[i2 + 3] & 255;
                int i25 = bArr[i2 + 4] & 255;
                qt.y0(10, (i23 >> 7) & 1);
                qt.y0(11, (i23 >> 6) & 1);
                qt.y0(12, (i23 >> 5) & 1);
                qt.y0(53, (i23 >> 4) & 1);
                qt.y0(13, (i23 >> 3) & 1);
                qt.y0(14, (i23 >> 2) & 1);
                qt.y0(16, (i23 >> 1) & 1);
                qt.y0(65, i23 & 1);
                int i26 = i24 & 255;
                if (i26 != 1) {
                    if (i26 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i26 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i26 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i26 != 5) {
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
                qt.y0(21, i25 & 255);
                int i27 = i2 + 6;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 7;
                int i30 = bArr[i29] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i28 = bArr[i29] & 255;
                    i30 = bArr[i27] & 255;
                }
                if (i28 == 0) {
                    qt.y0(27, -2);
                } else if (i28 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i28);
                }
                if (i30 == 0) {
                    qt.y0(28, -2);
                } else if (i30 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i30);
                }
                int i31 = i2 + 8;
                qt.y0(58, (bArr[i31] >> 4) & 1);
                qt.y0(52, (bArr[i31] >> 5) & 1);
                qt.y0(76, (bArr[i31] >> 6) & 1);
                qt.y0(54, (bArr[i31] >> 7) & 1);
                qt.y0(29, (bArr[i31] >> 2) & 3);
                qt.y0(30, (bArr[i31] >> 0) & 3);
                int i32 = i2 + 9;
                qt.y0(80, (bArr[i32] >> 7) & 1);
                qt.y0(67, (bArr[i32] >> 6) & 1);
                if (nt.f8633a == 15335879) {
                    qt.y0(55, (bArr[i32] >> 5) & 1);
                    qt.y0(79, (bArr[i32] >> 4) & 1);
                }
                qt.y0(63, (bArr[i2 + 10] >> 7) & 1);
                int i33 = i2 + 11;
                qt.y0(258, (bArr[i33] >> 6) & 3);
                qt.y0(259, (bArr[i33] >> 4) & 3);
                qt.y0(31, (bArr[i33] >> 2) & 3);
                qt.y0(32, (bArr[i33] >> 0) & 3);
                break;
            case 36:
                int i34 = i2 + 2;
                byte b5 = bArr[i34];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) != 0) {
                    l0.c0.a((bArr[i34] >> 1) & 1, (bArr[i34] >> 0) & 1, 0);
                } else {
                    l0.c0.b((bArr[i34] >> 1) & 1, (bArr[i34] >> 0) & 1, 0);
                }
                break;
            case 37:
                u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                break;
            case 38:
                int i35 = i2 + 2;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 3;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 4;
                int i40 = bArr[i39] & 255;
                int i41 = i2 + 5;
                int i42 = bArr[i41] & 255;
                if (i36 == 0 && i38 == 0 && i40 == 0 && i42 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i36 || l0.c0.f13014h != i38 || l0.c0.f13015i != i40 || l0.c0.f13016j != i42) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i36;
                l0.c0.f13014h = i38;
                l0.c0.f13015i = i40;
                l0.c0.f13016j = i42;
                u0.d.D2(l0.c0.L0(bArr[i35] & 255));
                u0.d.E2(l0.c0.L0(bArr[i37] & 255));
                u0.d.F2(l0.c0.L0(bArr[i39] & 255));
                u0.d.G2(l0.c0.L0(bArr[i41] & 255));
                break;
            default:
                switch (b2) {
                    case 78:
                        qt.y0(159, (bArr[i2 + 2] >> 0) & 3);
                        int i43 = i2 + 3;
                        qt.y0(160, (bArr[i43] >> 7) & 1);
                        qt.y0(161, (bArr[i43] >> 4) & 1);
                        int i44 = i2 + 5;
                        qt.y0(162, (bArr[i44] >> 5) & 1);
                        qt.y0(163, (bArr[i44] >> 3) & 3);
                        qt.y0(164, (bArr[i44] >> 2) & 1);
                        qt.y0(165, (bArr[i44] >> 1) & 1);
                        qt.y0(166, (bArr[i44] >> 0) & 1);
                        int i45 = i2 + 6;
                        qt.y0(167, (bArr[i45] >> 7) & 1);
                        qt.y0(168, (bArr[i45] >> 5) & 1);
                        qt.y0(169, (bArr[i45] >> 2) & 3);
                        qt.y0(170, (bArr[i45] >> 1) & 1);
                        int i46 = i2 + 7;
                        qt.y0(171, (bArr[i46] >> 7) & 1);
                        qt.y0(172, (bArr[i46] >> 4) & 1);
                        qt.y0(173, (bArr[i46] >> 3) & 1);
                        qt.y0(174, (bArr[i46] >> 2) & 1);
                        qt.y0(175, (bArr[i2 + 8] >> 0) & 255);
                        int i47 = i2 + 9;
                        qt.y0(176, (bArr[i47] >> 4) & 15);
                        qt.y0(177, (bArr[i47] >> 0) & 15);
                        qt.y0(178, (bArr[i2 + 10] >> 0) & 255);
                        break;
                    case 79:
                        int i48 = i2 + 2;
                        qt.y0(134, (bArr[i48] >> 2) & 1);
                        qt.y0(135, (bArr[i48] >> 0) & 3);
                        int i49 = i2 + 3;
                        qt.y0(136, (bArr[i49] >> 7) & 1);
                        qt.y0(137, (bArr[i49] >> 6) & 1);
                        qt.y0(138, (bArr[i49] >> 5) & 1);
                        int i50 = i2 + 4;
                        qt.y0(139, (bArr[i50] >> 5) & 3);
                        qt.y0(140, (bArr[i50] >> 3) & 1);
                        int i51 = i2 + 5;
                        qt.y0(141, (bArr[i51] >> 3) & 3);
                        qt.y0(142, (bArr[i51] >> 2) & 1);
                        qt.y0(143, (bArr[i51] >> 1) & 1);
                        qt.y0(144, (bArr[i51] >> 0) & 1);
                        int i52 = i2 + 6;
                        qt.y0(145, (bArr[i52] >> 7) & 1);
                        qt.y0(146, (bArr[i52] >> 6) & 1);
                        qt.y0(147, (bArr[i52] >> 5) & 1);
                        qt.y0(148, (bArr[i52] >> 4) & 1);
                        qt.y0(149, 3 & (bArr[i52] >> 2));
                        qt.y0(150, (bArr[i52] >> 1) & 1);
                        qt.y0(151, (bArr[i52] >> 0) & 1);
                        int i53 = i2 + 7;
                        qt.y0(152, (bArr[i53] >> 7) & 1);
                        qt.y0(153, (bArr[i53] >> 6) & 1);
                        qt.y0(154, (bArr[i53] >> 5) & 1);
                        qt.y0(155, (bArr[i2 + 8] >> 0) & 255);
                        int i54 = i2 + 9;
                        qt.y0(156, (bArr[i54] >> 7) & 1);
                        qt.y0(157, (bArr[i54] >> 6) & 1);
                        qt.y0(158, (bArr[i2 + 10] >> 0) & 255);
                        break;
                    case 80:
                        int i55 = nt.f8633a;
                        if (i55 == 11272647) {
                            int i56 = i2 + 2;
                            qt.y0(190, (bArr[i56] >> 2) & 3);
                            qt.y0(191, (bArr[i56] >> 0) & 3);
                            int i57 = i2 + 3;
                            qt.y0(192, (bArr[i57] >> 4) & 15);
                            qt.y0(193, (bArr[i57] >> 2) & 3);
                            qt.y0(194, (bArr[i57] >> 0) & 3);
                            int i58 = i2 + 4;
                            qt.y0(195, (bArr[i58] >> 7) & 1);
                            qt.y0(196, (bArr[i58] >> 6) & 1);
                            qt.y0(197, (bArr[i58] >> 5) & 1);
                            qt.y0(198, (bArr[i58] >> 4) & 1);
                            qt.y0(199, (bArr[i58] >> 3) & 1);
                            qt.y0(200, (bArr[i58] >> 2) & 1);
                            qt.y0(201, (bArr[i58] >> 1) & 1);
                            qt.y0(202, (bArr[i58] >> 0) & 1);
                            int i59 = i2 + 5;
                            qt.y0(203, (bArr[i59] >> 3) & 3);
                            qt.y0(204, (bArr[i59] >> 2) & 1);
                            qt.y0(205, (bArr[i59] >> 1) & 1);
                            qt.y0(206, (bArr[i59] >> 0) & 1);
                            int i60 = i2 + 6;
                            qt.y0(207, (bArr[i60] >> 7) & 1);
                            qt.y0(208, (bArr[i60] >> 6) & 1);
                            qt.y0(209, (bArr[i60] >> 5) & 1);
                            qt.y0(210, (bArr[i60] >> 4) & 1);
                            qt.y0(211, (bArr[i60] >> 3) & 1);
                            qt.y0(212, (bArr[i60] >> 2) & 1);
                            qt.y0(213, (bArr[i60] >> 1) & 1);
                            qt.y0(214, (bArr[i60] >> 0) & 1);
                            int i61 = i2 + 8;
                            qt.y0(215, (bArr[i61] >> 6) & 3);
                            qt.y0(216, (bArr[i61] >> 5) & 1);
                            qt.y0(217, (bArr[i61] >> 4) & 1);
                            qt.y0(218, (bArr[i61] >> 0) & 15);
                            qt.y0(219, 255 & (bArr[i2 + 9] >> 0));
                            int i62 = i2 + 10;
                            qt.y0(220, (bArr[i62] >> 7) & 1);
                            qt.y0(221, (bArr[i62] >> 5) & 3);
                            qt.y0(222, (bArr[i62] >> 4) & 1);
                            qt.y0(223, (bArr[i62] >> 3) & 1);
                            qt.y0(224, (bArr[i62] >> 2) & 1);
                            qt.y0(225, (bArr[i62] >> 0) & 3);
                            int i63 = i2 + 11;
                            qt.y0(226, (bArr[i63] >> 3) & 1);
                            qt.y0(227, (bArr[i63] >> 2) & 1);
                            qt.y0(228, (bArr[i63] >> 1) & 1);
                            qt.y0(229, (bArr[i63] >> 0) & 1);
                        } else if (i55 == 11338183 || i55 == 11403719) {
                            int i64 = i2 + 2;
                            qt.y0(230, (bArr[i64] >> 2) & 3);
                            qt.y0(231, (bArr[i64] >> 0) & 3);
                            int i65 = i2 + 3;
                            qt.y0(232, (bArr[i65] >> 4) & 15);
                            qt.y0(233, (bArr[i65] >> 2) & 3);
                            qt.y0(234, (bArr[i65] >> 0) & 3);
                            int i66 = i2 + 4;
                            qt.y0(235, (bArr[i66] >> 6) & 1);
                            qt.y0(236, (bArr[i66] >> 5) & 1);
                            qt.y0(237, (bArr[i66] >> 3) & 1);
                            qt.y0(238, (bArr[i66] >> 2) & 1);
                            qt.y0(239, (bArr[i66] >> 1) & 1);
                            qt.y0(240, (bArr[i66] >> 0) & 1);
                            int i67 = i2 + 5;
                            qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i67] >> 3) & 3);
                            qt.y0(i.a.Theme_actionModeFindDrawable, (bArr[i67] >> 1) & 1);
                            qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i67] >> 0) & 1);
                            int i68 = i2 + 6;
                            qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i68] >> 6) & 1);
                            qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i68] >> 5) & 1);
                            qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i68] >> 2) & 3);
                            qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i68] >> 1) & 1);
                            qt.y0(248, (bArr[i68] >> 0) & 1);
                            int i69 = i2 + 10;
                            qt.y0(249, (bArr[i69] >> 7) & 1);
                            qt.y0(250, (bArr[i69] >> 5) & 3);
                            qt.y0(251, (bArr[i69] >> 3) & 1);
                            qt.y0(252, (bArr[i69] >> 2) & 1);
                            qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i69] >> 0) & 3);
                            int i70 = i2 + 11;
                            qt.y0(254, (bArr[i70] >> 4) & 3);
                            qt.y0(255, (bArr[i70] >> 3) & 1);
                            qt.y0(256, (bArr[i70] >> 2) & 1);
                            qt.y0(257, (bArr[i70] >> 1) & 1);
                        } else if (i55 == 15335879) {
                            int i71 = i2 + 2;
                            qt.y0(260, (bArr[i71] >> 6) & 1);
                            qt.y0(261, (bArr[i71] >> 4) & 3);
                            qt.y0(262, (bArr[i71] >> 3) & 1);
                            qt.y0(263, (bArr[i71] >> 2) & 1);
                            qt.y0(264, (bArr[i71] >> 0) & 3);
                            int i72 = i2 + 3;
                            qt.y0(265, (bArr[i72] >> 4) & 15);
                            qt.y0(266, (bArr[i72] >> 3) & 1);
                            qt.y0(267, (bArr[i72] >> 2) & 1);
                            qt.y0(268, (bArr[i72] >> 0) & 3);
                            int i73 = i2 + 4;
                            qt.y0(i.a.Theme_findOnPageNextDrawable, (bArr[i73] >> 7) & 1);
                            qt.y0(i.a.Theme_findOnPagePreviousDrawable, (bArr[i73] >> 4) & 7);
                            qt.y0(271, (bArr[i73] >> 3) & 1);
                            int i74 = i2 + 5;
                            qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, (bArr[i74] >> 2) & 1);
                            qt.y0(273, (bArr[i74] >> 0) & 1);
                            int i75 = i2 + 6;
                            qt.y0(274, (bArr[i75] >> 5) & 1);
                            qt.y0(275, (bArr[i75] >> 4) & 1);
                            qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, (bArr[i75] >> 3) & 1);
                            qt.y0(277, (bArr[i75] >> 2) & 1);
                            qt.y0(278, (bArr[i75] >> 1) & 1);
                            qt.y0(279, (bArr[i75] >> 0) & 1);
                            qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, (bArr[i2 + 7] >> 0) & 7);
                            int i76 = i2 + 8;
                            qt.y0(281, (bArr[i76] >> 5) & 7);
                            qt.y0(282, (bArr[i76] >> 4) & 1);
                            qt.y0(283, (bArr[i76] >> 0) & 15);
                            qt.y0(284, 255 & (bArr[i2 + 9] >> 0));
                            qt.y0(285, (bArr[i2 + 10] >> 0) & 3);
                        } else if (i55 == 15401415) {
                            int i77 = i2 + 2;
                            qt.y0(286, (bArr[i77] >> 7) & 1);
                            qt.y0(287, (bArr[i77] >> 4) & 3);
                            qt.y0(MediaProperties.HEIGHT_288, (bArr[i77] >> 0) & 15);
                            int i78 = i2 + 3;
                            qt.y0(289, (bArr[i78] >> 2) & 3);
                            qt.y0(290, (bArr[i78] >> 0) & 3);
                            int i79 = i2 + 4;
                            qt.y0(291, (bArr[i79] >> 3) & 1);
                            qt.y0(292, (bArr[i79] >> 2) & 1);
                            int i80 = i2 + 6;
                            qt.y0(293, (bArr[i80] >> 3) & 1);
                            qt.y0(294, (bArr[i80] >> 2) & 1);
                            qt.y0(295, (bArr[i80] >> 1) & 1);
                            qt.y0(296, (bArr[i80] >> 0) & 1);
                            int i81 = i2 + 7;
                            qt.y0(361, 3 & (bArr[i81] >> 2));
                            qt.y0(362, (bArr[i81] >> 1) & 1);
                            qt.y0(363, (bArr[i81] >> 0) & 1);
                        } else if (i55 == 5439944) {
                            int i82 = i2 + 2;
                            qt.y0(320, (bArr[i82] >> 7) & 1);
                            qt.y0(321, (bArr[i82] >> 6) & 1);
                            qt.y0(322, (bArr[i82] >> 5) & 1);
                            qt.y0(323, (bArr[i82] >> 4) & 1);
                            qt.y0(324, (bArr[i82] >> 3) & 1);
                            qt.y0(325, (bArr[i82] >> 2) & 1);
                            qt.y0(326, (bArr[i82] >> 4) & 15);
                        } else if (i55 == 7012808) {
                            qt.y0(327, (bArr[i2 + 2] >> 0) & 3);
                            int i83 = i2 + 3;
                            qt.y0(328, (bArr[i83] >> 3) & 1);
                            qt.y0(329, (bArr[i83] >> 2) & 1);
                            qt.y0(330, (bArr[i83] >> 0) & 3);
                            int i84 = i2 + 4;
                            qt.y0(331, (bArr[i84] >> 7) & 1);
                            qt.y0(332, (bArr[i84] >> 6) & 1);
                            qt.y0(333, (bArr[i84] >> 5) & 1);
                            qt.y0(334, (bArr[i84] >> 3) & 1);
                            qt.y0(335, (bArr[i84] >> 2) & 1);
                            qt.y0(336, (bArr[i84] >> 0) & 1);
                            int i85 = i2 + 6;
                            qt.y0(337, (bArr[i85] >> 6) & 1);
                            qt.y0(338, (bArr[i85] >> 5) & 1);
                            int i86 = i2 + 8;
                            qt.y0(339, 3 & (bArr[i86] >> 6));
                            qt.y0(340, (bArr[i86] >> 5) & 1);
                            qt.y0(341, (bArr[i86] >> 4) & 1);
                            qt.y0(342, (bArr[i86] >> 0) & 15);
                            qt.y0(343, 255 & (bArr[i2 + 9] >> 0));
                            int i87 = i2 + 11;
                            qt.y0(344, (bArr[i87] >> 6) & 1);
                            qt.y0(345, (bArr[i87] >> 5) & 1);
                            qt.y0(346, (bArr[i87] >> 4) & 1);
                        } else if (i55 != 7078344) {
                            qt.y0(98, (bArr[i2 + 2] >> 0) & 3);
                            int i88 = i2 + 3;
                            qt.y0(99, (bArr[i88] >> 4) & 15);
                            qt.y0(120, (bArr[i88] >> 3) & 1);
                            qt.y0(121, (bArr[i88] >> 2) & 1);
                            qt.y0(100, (bArr[i88] >> 0) & 3);
                            int i89 = i2 + 4;
                            qt.y0(101, (bArr[i89] >> 5) & 3);
                            qt.y0(102, (bArr[i89] >> 4) & 1);
                            qt.y0(103, (bArr[i89] >> 3) & 1);
                            qt.y0(104, (bArr[i89] >> 2) & 1);
                            qt.y0(105, (bArr[i89] >> 0) & 3);
                            int i90 = i2 + 5;
                            qt.y0(106, (bArr[i90] >> 1) & 1);
                            qt.y0(107, (bArr[i90] >> 0) & 1);
                            int i91 = i2 + 6;
                            qt.y0(122, (bArr[i91] >> 7) & 1);
                            qt.y0(123, (bArr[i91] >> 6) & 1);
                            qt.y0(124, (bArr[i91] >> 5) & 1);
                            qt.y0(186, (bArr[i91] >> 4) & 1);
                            qt.y0(187, (bArr[i91] >> 3) & 1);
                            qt.y0(188, (bArr[i91] >> 2) & 1);
                            qt.y0(189, (bArr[i91] >> 0) & 3);
                            qt.y0(125, (bArr[i2 + 7] >> 0) & 255);
                            int i92 = i2 + 8;
                            qt.y0(126, 3 & (bArr[i92] >> 4));
                            qt.y0(127, (bArr[i92] >> 0) & 15);
                            qt.y0(128, 255 & (bArr[i2 + 9] >> 0));
                            int i93 = i2 + 10;
                            qt.y0(129, (bArr[i93] >> 7) & 1);
                            qt.y0(130, (bArr[i93] >> 6) & 1);
                            qt.y0(131, (bArr[i93] >> 5) & 1);
                            qt.y0(132, (bArr[i93] >> 4) & 1);
                            qt.y0(133, (bArr[i93] >> 0) & 7);
                        } else {
                            qt.y0(347, (bArr[i2 + 2] >> 0) & 3);
                            qt.y0(348, (bArr[i2 + 3] >> 0) & 255);
                            int i94 = i2 + 4;
                            qt.y0(349, (bArr[i94] >> 3) & 1);
                            qt.y0(SpellChecker.WORD_ITERATOR_INTERVAL, (bArr[i94] >> 2) & 1);
                            qt.y0(351, (bArr[i94] >> 1) & 1);
                            qt.y0(352, (bArr[i94] >> 0) & 1);
                            int i95 = i2 + 5;
                            qt.y0(353, (bArr[i95] >> 4) & 1);
                            qt.y0(354, (bArr[i95] >> 3) & 1);
                            qt.y0(355, (bArr[i95] >> 1) & 3);
                            qt.y0(356, (bArr[i95] >> 0) & 1);
                            int i96 = i2 + 6;
                            qt.y0(357, 3 & (bArr[i96] >> 4));
                            qt.y0(358, (bArr[i96] >> 0) & 15);
                            qt.y0(359, (bArr[i2 + 7] >> 0) & 255);
                            qt.y0(MediaProperties.HEIGHT_360, (bArr[i2 + 8] >> 0) & 255);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.B);
        qt.q0(this.A);
        qt.q0(this.f10719h);
        h0.d.f2464c.d(this.f10723l);
        h0.d.f2462a.d(this.f10723l);
        o1.h.f16865a.d(this.f10737z);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 364) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 128, 2, iArr[0], iArr[1]);
                }
                break;
            case 1:
                if (qt.l0(iArr, 6)) {
                    z.k.s(227, 138, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                }
                break;
            case 2:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 144, 2, iArr[0], iArr[1]);
                }
                break;
            case 3:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                }
                break;
            case 4:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 132, 2, iArr[0], iArr[1]);
                }
                break;
            case 5:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 133, 2, iArr[0], iArr[1]);
                }
                break;
            case 6:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 135, 2, iArr[0], iArr[1]);
                }
                break;
            case 7:
                if (qt.l0(iArr, 3)) {
                    z.k.s(227, 128, 3, iArr[0], iArr[1], iArr[2]);
                }
                break;
        }
    }

    public final void a3(int i2, int i3) {
        switch (i3) {
            case 0:
                z.k.s(227, -118, 8, i2, 0, 0, 0, 0, 0, 0, 0);
                break;
            case 1:
                z.k.s(227, -118, 8, 0, i2, 0, 0, 0, 0, 0, 0);
                break;
            case 2:
                z.k.s(227, -118, 8, 0, 0, i2, 0, 0, 0, 0, 0);
                break;
            case 3:
                z.k.s(227, -118, 8, 0, 0, 0, i2, 0, 0, 0, 0);
                break;
            case 4:
                z.k.s(227, -118, 8, 0, 0, 0, 0, i2, 0, 0, 0);
                break;
            case 5:
                z.k.s(227, -118, 8, 0, 0, 0, 0, 0, i2, 0, 0);
                break;
            case 6:
                z.k.s(227, -118, 8, 0, 0, 0, 0, 0, 0, i2, 0);
                break;
            case 7:
                z.k.s(227, -118, 8, 0, 0, 0, 0, 0, 0, 0, i2);
                break;
        }
        a.i.a0(50L);
        z.k.s(227, -118, 8, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    public final int c3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 1;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 2;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 3;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 4;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 5;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 6;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 8;
        }
        return 7;
    }

    public final void d3(String str) {
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
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void e3() {
        int i2 = this.f10732u;
        if (i2 > 0) {
            int[] iArr = C;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f10728q;
            z.k.s(227, 201, 6, this.f10734w, this.f10736y, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, iArr[i2]);
        }
    }

    public final void u3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        if (length > 29) {
            length = 29;
        }
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4 + 1] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void v3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        if (i2 == 1) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[5 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }
}
