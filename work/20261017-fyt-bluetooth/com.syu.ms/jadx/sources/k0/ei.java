package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ei extends lt {
    public static int[] J = {16, 16, 19, 20, 17, 18, 21, 22, 23, 16, 16, 43, 42, 15, 11, 3, 13, 43, 42, 24, 16};
    public static int K = 0;
    public static int L = 1;
    public static int M = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4793b;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public k f4804m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4794c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4795d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 21}, new int[]{10, 0}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 5}, new int[]{20, 54}, new int[]{21, 2}, new int[]{22, 21}, new int[]{23, 56}, new int[]{24, 58}, new int[]{25, 38}, new int[]{26, 40}, new int[]{27, 41}, new int[]{28, 42}, new int[]{29, 43}, new int[]{30, 44}, new int[]{31, 45}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 29}, new int[]{36, 31}, new int[]{37, 30}, new int[]{38, 3}, new int[]{39, 4}, new int[]{40, 55}, new int[]{41, 1}, new int[]{42, 25}, new int[]{43, 64}, new int[]{44, 63}, new int[]{45, 18}, new int[]{46, 13}, new int[]{47, 24}, new int[]{48, 5}, new int[]{49, 29}, new int[]{51, 62}, new int[]{136, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4796e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4797f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4798g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4799h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4800i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4801j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4802k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4803l = new e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f4805n = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f4806o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4807p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4808q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f4809r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4810s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4811t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4812u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4813v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f4814w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f4815x = 255;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Runnable f4816y = new f();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f4817z = new g();
    public Runnable A = new h();
    public Runnable B = new i();
    public Runnable C = new j();
    public int D = 0;
    public Runnable E = new a();
    public o1.g0 F = new o1.g0(getClass().getSimpleName(), 32);
    public final int G = 1;
    public final int H = 2;
    public final int I = 3;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ei eiVar = ei.this;
            int i2 = eiVar.D - 1;
            eiVar.D = i2;
            if (i2 <= 0) {
                qt.f();
                l0.b0.p0(ei.this.E);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.T(a.b.O)) {
                qt.f();
            }
            l0.b0.o0(ei.this.f4799h);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ei.this.f4798g--;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ei.this.f4803l);
            ei.this.f4801j = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ei eiVar = ei.this;
            int i2 = eiVar.f4801j - 1;
            eiVar.f4801j = i2;
            if (i2 <= 0) {
                l0.b0.p0(eiVar.f4803l);
                ei.this.f4801j = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 131528 || i3 == 131528) {
                    z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 1);
                }
                ei eiVar2 = ei.this;
                eiVar2.l3(eiVar2.F.b(1, 0));
                ei eiVar3 = ei.this;
                eiVar3.k3(eiVar3.F.b(2, 1));
                ei eiVar4 = ei.this;
                eiVar4.m3(eiVar4.F.b(3, 0));
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ei.this.c3(0);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 131528:
                    z.k.s(227, -18, 1, 2);
                    break;
                case 197064:
                    z.k.s(227, -18, 1, 1);
                    break;
                case 262596:
                    z.k.s(227, -18, 2, 3, 9);
                    break;
                case 262600:
                case 16056775:
                    z.k.s(227, -18, 2, 3, 21);
                    break;
                case 328132:
                    z.k.s(227, -18, 2, 3, 10);
                    break;
                case 393668:
                    z.k.s(227, -18, 2, 3, 11);
                    break;
                case 1376708:
                    z.k.s(227, -18, 2, 3, 12);
                    break;
                case 3408325:
                    z.k.s(227, -18, 2, 3, 16);
                    break;
                case 3473861:
                    z.k.s(227, -18, 2, 3, 15);
                    break;
                case 3539397:
                    z.k.s(227, -18, 2, 3, 17);
                    break;
                case 4391351:
                    z.k.s(227, -18, 2, 3, 5);
                    break;
                case 4719044:
                    z.k.s(227, -18, 2, 3, 13);
                    break;
                case 4784580:
                    z.k.s(227, -18, 2, 3, 14);
                    break;
                case 7471543:
                case 11010500:
                    z.k.s(227, -18, 2, 3, 6);
                    break;
                case 7668167:
                    z.k.s(227, -18, 2, 3, 20);
                    break;
                case 8257975:
                    z.k.s(227, -18, 2, 3, 7);
                    break;
                case 8782280:
                    z.k.s(227, -18, 1, 3);
                    break;
                case 10092998:
                    z.k.s(227, -18, 2, 3, 18);
                    break;
                case 10158534:
                    z.k.s(227, -18, 2, 3, 19);
                    break;
                case 11469239:
                    z.k.s(227, -18, 2, 3, 8);
                    break;
                case 11469252:
                    z.k.s(227, -18, 2, 3, 4);
                    break;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ei.a3();
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ei.b3();
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            z.k.s(227, 200, 3, (byte) time.minute, (byte) time.hour, b2);
        }
    }

    public class k extends BroadcastReceiver {
        public k() {
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
                                ei eiVar = ei.this;
                                eiVar.f4814w = 1;
                                eiVar.f4813v = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                ei eiVar2 = ei.this;
                                eiVar2.f4814w = 0;
                                eiVar2.f4813v = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        ei eiVar3 = ei.this;
                        eiVar3.f4814w = 0;
                        eiVar3.f4813v = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (ei.this.f4808q != extras.getInt("SEG_REMAIN_DIS")) {
                        ei.this.f4808q = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (ei.this.f4807p != extras.getInt("ROUTE_REMAIN_DIS")) {
                        ei.this.f4807p = extras.getInt("ROUTE_REMAIN_DIS");
                        ei.this.f4811t = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (ei.this.f4809r != extras.getInt("CAR_DIRECTION")) {
                        ei.this.f4809r = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (ei.this.f4810s != extras.getInt("ROUTE_ALL_TIME")) {
                        ei.this.f4810s = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (ei.this.f4812u != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        ei.this.f4812u = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    ei.this.c3(1);
                    o1.j.e(o1.l.a(), ei.this.f4816y);
                    o1.j.b(o1.l.a(), ei.this.f4816y, 10000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ k(ei eiVar, b bVar) {
            this();
        }
    }

    public static void a3() {
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[7];
            iArr[0] = 192;
            iArr[1] = 5;
            iArr[2] = 1;
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                if (i4 - 65536 == 0) {
                    iArr[3] = 0;
                } else if (1 == i4 - 65536) {
                    iArr[3] = 1;
                } else {
                    iArr[3] = 2;
                }
            } else if (i4 - 0 == 0) {
                iArr[3] = 16;
            } else {
                iArr[3] = 17;
            }
            int i5 = w0.d.f17797i;
            iArr[4] = i5 & 255;
            iArr[5] = (i5 >> 8) & 255;
            iArr[6] = w0.d.f17798j & 255;
            int[] iArr2 = new int[8];
            iArr2[0] = 227;
            while (i3 < 7) {
                int i6 = i3 + 1;
                iArr2[i6] = (byte) iArr[i3];
                i3 = i6;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 != 2) {
            if (i2 == 8 || i2 == 9) {
                int i7 = u0.b.s3;
                int i8 = u0.b.r3;
                int i9 = u0.b.u3;
                int i10 = u0.b.t3;
                int[] iArr3 = {192, 10, 8, 0, (i7 >> 8) & 255, i7 & 255, (i8 >> 8) & 255, i8 & 255, (i9 >> 8) & 255, i9 & 255, (i10 >> 8) & 255, i10 & 255};
                int[] iArr4 = new int[13];
                iArr4[0] = 227;
                while (i3 < 12) {
                    int i11 = i3 + 1;
                    iArr4[i11] = (byte) iArr3[i3];
                    i3 = i11;
                }
                z.k.s(iArr4);
                return;
            }
            return;
        }
        String str = h0.c.f2437h;
        int length = str != null ? 8 + str.length() : 8;
        int[] iArr5 = new int[length];
        iArr5[0] = 192;
        iArr5[1] = length - 2;
        iArr5[2] = 5;
        int i12 = h0.c.E;
        if (i12 == 3) {
            iArr5[3] = 3;
        } else if (i12 == 4) {
            iArr5[3] = 1;
        } else if (i12 != 5) {
            iArr5[3] = 0;
        } else {
            iArr5[3] = 2;
        }
        int i13 = h0.c.P;
        iArr5[4] = (i13 >> 8) & 255;
        iArr5[5] = i13 & 255;
        iArr5[6] = 1;
        String str2 = h0.c.f2437h;
        if (str2 == null) {
            iArr5[7] = 0;
        } else {
            iArr5[7] = str2.length();
            byte[] bytes = h0.c.f2437h.getBytes();
            for (int i14 = 0; i14 < h0.c.f2437h.length(); i14++) {
                iArr5[i14 + 8] = bytes[i14];
            }
        }
        int[] iArr6 = new int[length + 1];
        iArr6[0] = 227;
        while (i3 < length) {
            int i15 = i3 + 1;
            iArr6[i15] = (byte) iArr5[i3];
            i3 = i15;
        }
        z.k.s(iArr6);
    }

    public static void b3() {
        int i2;
        int[] iArr = new int[11];
        iArr[0] = 227;
        iArr[1] = 117;
        iArr[2] = 8;
        if (u0.b.f17306a0 != 1 || u0.b.f17332j != 0 || (i2 = u0.b.D) == 0) {
            iArr[3] = 0;
        } else if (i2 == 1) {
            iArr[3] = 1;
            int i3 = w0.d.f17796h;
            if (i3 - 65536 == 0 || 1 == i3 - 65536 || 2 == i3 - 65536) {
                iArr[4] = 1;
                int i4 = w0.d.f17797i;
                iArr[5] = ((i4 / 10) >> 8) & 255;
                iArr[6] = (i4 / 10) & 255;
                iArr[7] = w0.d.f17798j;
            } else {
                iArr[4] = 3;
                int i5 = w0.d.f17797i;
                iArr[5] = (i5 >> 8) & 255;
                iArr[6] = i5 & 255;
                iArr[7] = w0.d.f17798j;
            }
        } else if (i2 == 2) {
            iArr[3] = 6;
        } else if (i2 == 3) {
            iArr[3] = 4;
        } else if (i2 != 5) {
            switch (i2) {
                case 8:
                case 10:
                    iArr[3] = 4;
                    break;
                case 9:
                    iArr[3] = 3;
                    break;
            }
        } else {
            iArr[3] = 5;
        }
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[10] = 2;
        } else {
            iArr[10] = 1;
        }
        z.k.s(iArr);
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 33) {
            if (iArr[1] != 0) {
                z.k.s(227, 166, 2, 4, 0);
                return;
            } else {
                z.k.s(227, 166, 2, 3, 0);
                return;
            }
        }
        if (i2 == 38) {
            if (iArr[1] != 0) {
                z.k.s(227, 166, 2, 5, 0);
                return;
            } else {
                z.k.s(227, 166, 2, 6, 0);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 2) {
                z.k.s(227, 167, 1, 1);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, 167, 1, 2);
                return;
            } else if (i3 == 4) {
                z.k.s(227, 167, 1, 3);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, 167, 1, 4);
                return;
            }
        }
        if (i2 != 68) {
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -90, 2, 10, 0);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -90, 2, 10, 200);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -90, 2, 11, 0);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -90, 2, 11, 200);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -90, 2, 12, 0);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -90, 2, 12, 200);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -90, 2, 13, 0);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -90, 2, 13, 200);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -90, 2, 1, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -90, 2, 2, 0);
            return;
        }
        if (iArr[1] == 11) {
            z.k.s(227, -90, 2, 10, 0);
            z.k.s(227, -90, 2, 11, 0);
            z.k.s(227, -90, 2, 12, 0);
            z.k.s(227, -90, 2, 13, 0);
            return;
        }
        if (iArr[1] == 12) {
            z.k.s(227, -90, 2, 10, 200);
            z.k.s(227, -90, 2, 11, 200);
            z.k.s(227, -90, 2, 12, 200);
            z.k.s(227, -90, 2, 13, 200);
        }
    }

    @Override // k0.lt
    public void S2() {
        this.F.a();
        u0.c.f17386m.a(this.f4802k, 1);
        qt.z(this.f4817z);
        qt.z(this.C);
        qt.z(this.A);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        mtVar.f8322q = 0;
        b bVar = null;
        switch (nt.f8633a) {
            case 131528:
            case 197064:
            case 3473861:
            case 4719044:
            case 7471543:
            case 7668167:
            case 10158534:
            case 11010500:
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8314i = 1;
                } else {
                    mt mtVar2 = this.f7886a;
                    mtVar2.f8314i = 0;
                    mtVar2.f8322q = 1;
                }
                break;
            case 393668:
            case 1376708:
            case 3539397:
                this.f4804m = new k(this, bVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f4804m, intentFilter);
                break;
            case 4391351:
                mtVar.f8322q = 1;
                break;
            case 4784580:
                qt.z(this.B);
                this.f7886a.f8306a = null;
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 55, 56, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 22) {
            qt.y0(1031, (((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255)) / 16);
            return;
        }
        if (b2 == 41) {
            if (this.f4800i) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5500);
            return;
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 != 1) {
                if (i7 == 3) {
                    int i8 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                    qt.y0(1031, i8);
                    o1.x.C(nt.f8643f, 1049, new int[]{1, i8}, null, null);
                    return;
                } else {
                    if (i7 != 8) {
                        return;
                    }
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f4800i = true;
                    return;
                }
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i9 = i2 + 3;
                l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
            } else {
                int i10 = i2 + 3;
                l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
            }
            if (K == 1) {
                if (nt.W == 0) {
                    int i11 = i2 + 3;
                    if (this.f4796e != ((bArr[i11] >> 3) & 1)) {
                        int i12 = (bArr[i11] >> 3) & 1;
                        this.f4796e = i12;
                        if (i12 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                                z.k.s(227, 133, 2, 4, 32);
                                z.k.s(227, 133, 2, 4, 0);
                            }
                            this.f4798g = 20;
                            l0.b0.a(this.f4799h);
                            return;
                        }
                        if (this.f4798g > 0) {
                            o1.j.e(o1.l.a(), this.f4797f);
                            o1.j.b(o1.l.a(), this.f4797f, 4000L);
                            return;
                        } else {
                            if (o1.u.T(a.b.O)) {
                                qt.f();
                            }
                            l0.b0.o0(this.f4799h);
                            return;
                        }
                    }
                    return;
                }
                int i13 = i2 + 3;
                if (this.f4796e != ((bArr[i13] >> 4) & 1)) {
                    int i14 = (bArr[i13] >> 4) & 1;
                    this.f4796e = i14;
                    if (i14 == 1) {
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                            z.k.s(227, 133, 2, 4, 32);
                            z.k.s(227, 133, 2, 4, 0);
                        }
                        this.f4798g = 20;
                        l0.b0.a(this.f4799h);
                        return;
                    }
                    if (this.f4798g > 0) {
                        o1.j.e(o1.l.a(), this.f4797f);
                        o1.j.b(o1.l.a(), this.f4797f, 4000L);
                        return;
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                        l0.b0.o0(this.f4799h);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 48) {
            int i15 = (bArr[i2 + 2] >> 7) & 1;
            if (L == 1 && u0.b.f17347o == 0) {
                if (i15 != 0) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 49) {
            if ((bArr[i2 + 2] & 128) == 128) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 != 82) {
            if (b2 == 83) {
                qt.y0(195, ((bArr[i2 + 2] << 24) & (-16777216)) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(196, ((bArr[i2 + 6] << 24) & (-16777216)) | ((bArr[i2 + 7] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                int i16 = i2 + 10;
                qt.y0(197, (bArr[i16] >> 1) & 1);
                qt.y0(198, (bArr[i16] >> 0) & 1);
                qt.y0(199, bArr[i2 + 11] & 255);
                qt.y0(200, bArr[i2 + 12] & 255);
                qt.y0(201, (bArr[i2 + 14] & 255) | ((bArr[i2 + 13] << 8) & 65280));
                return;
            }
            switch (b2) {
                case 32:
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f4794c = b3 & 255;
                    int i17 = 0;
                    while (true) {
                        iArr = this.f4795d;
                        if (i17 < iArr.length) {
                            int i18 = this.f4794c;
                            if (i18 != iArr[i17][0]) {
                                i17++;
                            } else if (i18 != 0) {
                                this.f4793b = i17;
                            }
                        }
                    }
                    int i19 = this.f4794c;
                    switch (i19) {
                        case 33:
                            for (int i20 = 0; i20 < (b4 & 255); i20++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 34:
                            for (int i21 = 0; i21 < (b4 & 255); i21++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 35:
                        default:
                            int i22 = nt.f8633a;
                            if (i22 == 7406007 || i22 == 8257975 || i22 == 11469239 || i22 == 262596 || i22 == 328132 || i22 == 1376708 || i22 == 4784580 || i22 == 3408325 || i22 == 3473861 || i22 == 3539397) {
                                if (i19 != 3) {
                                    if (i19 != 4) {
                                        if (i19 != 7) {
                                            if (i19 != 26) {
                                                if (i19 != 27) {
                                                    if ((b4 & 255) == 0) {
                                                        int i23 = this.f4793b;
                                                        if (i23 < iArr.length && i23 != 255) {
                                                            l0.b0.l0(iArr[i23][1], 1);
                                                        }
                                                        this.f4793b = 255;
                                                    } else if (i17 < iArr.length) {
                                                        l0.b0.l0(iArr[i17][1], 0);
                                                    }
                                                } else if ((b4 & 255) == 1) {
                                                    int i24 = h0.c.E;
                                                    if (i24 == 3 || i24 == 4 || i24 == 5) {
                                                        l0.b0.l0(26, 0);
                                                        l0.b0.l0(26, 1);
                                                    } else {
                                                        l0.b0.l0(41, 0);
                                                        l0.b0.l0(41, 1);
                                                    }
                                                }
                                            } else if ((b4 & 255) == 1) {
                                                if (h0.c.E != 4) {
                                                    l0.b0.l0(40, 0);
                                                    l0.b0.l0(40, 1);
                                                } else {
                                                    l0.b0.l0(18, 0);
                                                    l0.b0.l0(18, 1);
                                                }
                                            }
                                        } else if ((b4 & 255) == 1) {
                                            if (i22 != 3539397) {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            } else if (h0.c.E != 4) {
                                                l0.b0.l0(13, 0);
                                                l0.b0.l0(13, 1);
                                            } else {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            }
                                        }
                                    } else if ((b4 & 255) == 1) {
                                        if (h0.c.E != 4) {
                                            l0.b0.l0(4, 0);
                                            l0.b0.l0(4, 1);
                                        } else {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        }
                                    }
                                } else if ((b4 & 255) == 1) {
                                    int i25 = h0.c.E;
                                    if (i25 == 3 || i25 == 4 || i25 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    }
                                }
                            } else if (i22 != 7471543 && i22 != 11010500 && i22 != 131528 && i22 != 197064) {
                                int i26 = b4 & 255;
                                if (i26 == 1) {
                                    if (i17 < iArr.length) {
                                        l0.b0.l0(iArr[i17][1], 0);
                                    }
                                } else if (i26 == 0) {
                                    int i27 = this.f4793b;
                                    if (i27 < iArr.length && i27 != 255) {
                                        l0.b0.l0(iArr[i27][1], 1);
                                    }
                                    this.f4793b = 255;
                                }
                            } else if (i19 != 3) {
                                if (i19 != 4) {
                                    if ((b4 & 255) == 0) {
                                        int i28 = this.f4793b;
                                        if (i28 < iArr.length && i28 != 255) {
                                            l0.b0.l0(iArr[i28][1], 1);
                                        }
                                        this.f4793b = 255;
                                    } else if (i17 < iArr.length) {
                                        l0.b0.l0(iArr[i17][1], 0);
                                    }
                                } else if ((b4 & 255) == 1) {
                                    if (h0.c.E != 4) {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    } else {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    }
                                }
                            } else if ((b4 & 255) == 1) {
                                int i29 = h0.c.E;
                                if (i29 == 3 || i29 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            }
                            break;
                        case 36:
                            for (int i30 = 0; i30 < (b4 & 255); i30++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 37:
                            for (int i31 = 0; i31 < (b4 & 255); i31++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                    }
                    break;
                case 33:
                    byte b5 = bArr[i2 + 2];
                    qt.y0(63, (b5 >> 7) & 1);
                    qt.y0(38, (b5 >> 6) & 1);
                    qt.y0(53, (b5 >> 5) & 1);
                    qt.y0(13, (b5 >> 4) & 1);
                    qt.y0(11, (b5 >> 3) & 1);
                    qt.y0(12, (b5 >> 2) & 1);
                    qt.y0(65, (b5 >> 1) & 1);
                    qt.y0(16, (b5 >> 0) & 1);
                    qt.y0(21, bArr[i2 + 3] & 255);
                    int i32 = bArr[i2 + 4] & 255;
                    if (i32 != 0) {
                        if (i32 == 1) {
                            i4 = 0;
                            i6 = 1;
                        } else if (i32 == 2) {
                            i4 = 0;
                            i6 = 0;
                            i5 = 1;
                        } else if (i32 == 3) {
                            i6 = 0;
                            i5 = 0;
                            i4 = 1;
                        } else if (i32 != 4) {
                            i4 = 0;
                            i6 = 0;
                        } else {
                            i6 = 0;
                            i4 = 1;
                            i5 = 1;
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
                    qt.y0(77, i32);
                    int i33 = bArr[i2 + 5] & 255;
                    if (i33 == 0) {
                        qt.y0(27, -2);
                    } else if (i33 == 30) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i33);
                    }
                    break;
                case 34:
                    u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.s1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.s1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.s1(bArr[i2 + 5] & 255));
                    break;
                case 35:
                    int i34 = i2 + 2;
                    int i35 = bArr[i34] & 255;
                    int i36 = i2 + 3;
                    int i37 = bArr[i36] & 255;
                    int i38 = i2 + 4;
                    int i39 = bArr[i38] & 255;
                    int i40 = i2 + 5;
                    int i41 = bArr[i40] & 255;
                    if (M == 1) {
                        if (i41 == 0) {
                            this.D = 4;
                            l0.b0.b(this.E);
                        } else {
                            qt.t();
                        }
                    } else if (i35 == 0 && i37 == 0 && i39 == 0 && i41 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i35 || l0.c0.f13014h != i37 || l0.c0.f13015i != i39 || l0.c0.f13016j != i41) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i35;
                    l0.c0.f13014h = i37;
                    l0.c0.f13015i = i39;
                    l0.c0.f13016j = i41;
                    u0.d.D2(l0.c0.s1(bArr[i34] & 255));
                    u0.d.E2(l0.c0.s1(bArr[i36] & 255));
                    u0.d.F2(l0.c0.s1(bArr[i38] & 255));
                    u0.d.G2(l0.c0.s1(bArr[i40] & 255));
                    break;
                default:
                    switch (b2) {
                        case 56:
                            qt.y0(106, bArr[i2 + 2] & 255);
                            qt.y0(107, bArr[i2 + 3] & 255);
                            qt.y0(108, bArr[i2 + 4] & 255);
                            qt.y0(109, bArr[i2 + 5] & 255);
                            qt.y0(102, bArr[i2 + 6] & 255);
                            qt.y0(103, bArr[i2 + 7] & 255);
                            qt.y0(104, bArr[i2 + 8] & 255);
                            qt.y0(105, bArr[i2 + 9] & 255);
                            break;
                        case 57:
                            qt.y0(110, bArr[i2 + 2] & 255);
                            qt.y0(111, bArr[i2 + 3] & 255);
                            qt.y0(112, bArr[i2 + 4] & 255);
                            qt.y0(113, bArr[i2 + 5] & 255);
                            break;
                        case 58:
                            byte b6 = bArr[i2 + 2];
                            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                qt.y0(1, (b6 >> 4) & 1);
                                qt.y0(2, (b6 >> 5) & 1);
                            } else {
                                qt.y0(1, (b6 >> 5) & 1);
                                qt.y0(2, (b6 >> 4) & 1);
                            }
                            qt.y0(3, (b6 >> 3) & 1);
                            qt.y0(4, (b6 >> 2) & 1);
                            qt.y0(5, (b6 >> 1) & 1);
                            qt.y0(0, (b6 >> 0) & 1);
                            qt.y0(100, (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8));
                            break;
                    }
                    break;
            }
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        if (b7 == 1) {
            int[] iArr2 = new int[1];
            iArr2[0] = b8 != 1 ? 0 : 1;
            qt.y0(115, iArr2);
            return;
        }
        if (b7 == 0) {
            int[] iArr3 = new int[1];
            iArr3[0] = b8 != 1 ? 0 : 1;
            qt.y0(116, iArr3);
            return;
        }
        if (b7 == 2) {
            int[] iArr4 = new int[1];
            iArr4[0] = b8 != 1 ? 0 : 1;
            qt.y0(117, iArr4);
            return;
        }
        if (b7 == 3) {
            int[] iArr5 = new int[1];
            iArr5[0] = b8 != 1 ? 0 : 1;
            qt.y0(118, iArr5);
            return;
        }
        if (b7 == 4) {
            int[] iArr6 = new int[1];
            iArr6[0] = b8 != 1 ? 0 : 1;
            qt.y0(119, iArr6);
            return;
        }
        if (b7 == 5) {
            int[] iArr7 = new int[1];
            iArr7[0] = b8 != 1 ? 0 : 1;
            qt.y0(120, iArr7);
            return;
        }
        if (b7 == 6) {
            int[] iArr8 = new int[1];
            iArr8[0] = b8 != 1 ? 0 : 1;
            qt.y0(121, iArr8);
            return;
        }
        if (b7 == 7) {
            int[] iArr9 = new int[1];
            iArr9[0] = b8 != 1 ? 0 : 1;
            qt.y0(122, iArr9);
            return;
        }
        if (b7 == 8) {
            int[] iArr10 = new int[1];
            iArr10[0] = b8 != 1 ? 0 : 1;
            qt.y0(123, iArr10);
            return;
        }
        if (b7 == 9) {
            int[] iArr11 = new int[1];
            iArr11[0] = b8 != 1 ? 0 : 1;
            qt.y0(124, iArr11);
            return;
        }
        if (b7 == 10) {
            qt.y0(125, b8);
            return;
        }
        if (b7 == 11) {
            qt.y0(126, b8);
            return;
        }
        if (b7 == 12) {
            int[] iArr12 = new int[1];
            iArr12[0] = b8 != 1 ? 0 : 1;
            qt.y0(127, iArr12);
            return;
        }
        if (b7 == 13) {
            qt.y0(128, b8);
            return;
        }
        if (b7 == 14) {
            qt.y0(129, b8);
            return;
        }
        if (b7 == 15) {
            qt.y0(130, b8);
            return;
        }
        if (b7 == 16) {
            int[] iArr13 = new int[1];
            iArr13[0] = b8 != 1 ? 0 : 1;
            qt.y0(131, iArr13);
            return;
        }
        if (b7 == 17) {
            int[] iArr14 = new int[1];
            iArr14[0] = b8 != 1 ? 0 : 1;
            qt.y0(132, iArr14);
            return;
        }
        if (b7 == 18) {
            qt.y0(133, b8);
            return;
        }
        if (b7 == 19) {
            int[] iArr15 = new int[1];
            iArr15[0] = b8 != 1 ? 0 : 1;
            qt.y0(134, iArr15);
            return;
        }
        if (b7 == 20) {
            int[] iArr16 = new int[1];
            iArr16[0] = b8 != 1 ? 0 : 1;
            qt.y0(135, iArr16);
            return;
        }
        if (b7 == 21) {
            qt.y0(136, b8);
            return;
        }
        if (b7 == 22) {
            qt.y0(137, b8);
            return;
        }
        if (b7 == 23) {
            int[] iArr17 = new int[1];
            iArr17[0] = b8 != 1 ? 0 : 1;
            qt.y0(138, iArr17);
            return;
        }
        if (b7 == 24) {
            int[] iArr18 = new int[1];
            iArr18[0] = b8 != 1 ? 0 : 1;
            qt.y0(139, iArr18);
            return;
        }
        if (b7 == 25) {
            int[] iArr19 = new int[1];
            iArr19[0] = b8 != 1 ? 0 : 1;
            qt.y0(140, iArr19);
            return;
        }
        if (b7 == 26) {
            int[] iArr20 = new int[1];
            iArr20[0] = b8 != 1 ? 0 : 1;
            qt.y0(141, iArr20);
            return;
        }
        if (b7 == 27) {
            int[] iArr21 = new int[1];
            iArr21[0] = b8 != 1 ? 0 : 1;
            qt.y0(142, iArr21);
            return;
        }
        if (b7 == 28) {
            qt.y0(143, b8);
            return;
        }
        if (b7 == 29) {
            int[] iArr22 = new int[1];
            iArr22[0] = b8 != 1 ? 0 : 1;
            qt.y0(144, iArr22);
            return;
        }
        if (b7 == 30) {
            qt.y0(145, b8);
            return;
        }
        if (b7 == 31) {
            int[] iArr23 = new int[1];
            iArr23[0] = b8 != 1 ? 0 : 1;
            qt.y0(146, iArr23);
            return;
        }
        if (b7 == 32) {
            qt.y0(147, b8);
            return;
        }
        if (b7 == 33) {
            qt.y0(148, b8);
            return;
        }
        if (b7 == 34) {
            qt.y0(149, b8);
            return;
        }
        if (b7 == 35) {
            int[] iArr24 = new int[1];
            iArr24[0] = b8 != 1 ? 0 : 1;
            qt.y0(150, iArr24);
            return;
        }
        if (b7 == 36) {
            int[] iArr25 = new int[1];
            iArr25[0] = b8 != 1 ? 0 : 1;
            qt.y0(151, iArr25);
            return;
        }
        if (b7 == 37) {
            int[] iArr26 = new int[1];
            iArr26[0] = b8 != 1 ? 0 : 1;
            qt.y0(152, iArr26);
            return;
        }
        if (b7 == 38) {
            int[] iArr27 = new int[1];
            iArr27[0] = b8 != 1 ? 0 : 1;
            qt.y0(153, iArr27);
            return;
        }
        if (b7 == 39) {
            qt.y0(154, b8);
            return;
        }
        if (b7 == 40) {
            qt.y0(155, b8);
            return;
        }
        if (b7 == 41) {
            qt.y0(156, b8);
            return;
        }
        if (b7 == 42) {
            int[] iArr28 = new int[1];
            iArr28[0] = b8 != 1 ? 0 : 1;
            qt.y0(157, iArr28);
            return;
        }
        if (b7 == 43) {
            int[] iArr29 = new int[1];
            iArr29[0] = b8 != 1 ? 0 : 1;
            qt.y0(158, iArr29);
            return;
        }
        if (b7 == 44) {
            int[] iArr30 = new int[1];
            iArr30[0] = b8 != 1 ? 0 : 1;
            qt.y0(159, iArr30);
            return;
        }
        if (b7 == 45) {
            int[] iArr31 = new int[1];
            iArr31[0] = b8 != 1 ? 0 : 1;
            qt.y0(160, iArr31);
            return;
        }
        if (b7 == 46) {
            int[] iArr32 = new int[1];
            iArr32[0] = b8 != 1 ? 0 : 1;
            qt.y0(161, iArr32);
            return;
        }
        if (b7 == 47) {
            int[] iArr33 = new int[1];
            iArr33[0] = b8 != 1 ? 0 : 1;
            qt.y0(162, iArr33);
            return;
        }
        if (b7 == 48) {
            int[] iArr34 = new int[1];
            iArr34[0] = b8 != 1 ? 0 : 1;
            qt.y0(163, iArr34);
            return;
        }
        if (b7 == 49) {
            int[] iArr35 = new int[1];
            iArr35[0] = b8 != 1 ? 0 : 1;
            qt.y0(164, iArr35);
            return;
        }
        if (b7 == 50) {
            qt.y0(165, b8);
            return;
        }
        if (b7 == 51) {
            int[] iArr36 = new int[1];
            iArr36[0] = b8 != 1 ? 0 : 1;
            qt.y0(166, iArr36);
            return;
        }
        if (b7 == 53) {
            int[] iArr37 = new int[1];
            iArr37[0] = b8 != 1 ? 0 : 1;
            qt.y0(168, iArr37);
            return;
        }
        if (b7 == 54) {
            int[] iArr38 = new int[1];
            iArr38[0] = b8 != 1 ? 0 : 1;
            qt.y0(169, iArr38);
            return;
        }
        if (b7 == 55) {
            qt.y0(170, b8);
            return;
        }
        if (b7 == 56) {
            qt.y0(171, b8);
            return;
        }
        if (b7 == 58) {
            qt.y0(172, b8);
            return;
        }
        if (b7 == 59) {
            qt.y0(173, b8);
            return;
        }
        if (b7 == 60) {
            qt.y0(174, b8);
            return;
        }
        if (b7 == 61) {
            qt.y0(175, b8);
            return;
        }
        if (b7 == 62) {
            qt.y0(176, b8);
            return;
        }
        if (b7 == 63) {
            qt.y0(177, b8);
            return;
        }
        if (b7 == 64) {
            qt.y0(178, b8);
            return;
        }
        if (b7 == 65) {
            qt.y0(179, b8);
            return;
        }
        if (b7 == 66) {
            qt.y0(180, b8);
            return;
        }
        if (b7 == 67) {
            qt.y0(181, b8);
            return;
        }
        if (b7 == 68) {
            qt.y0(182, b8);
            return;
        }
        if (b7 == 69) {
            qt.y0(183, b8);
            return;
        }
        if (b7 == 70) {
            qt.y0(184, b8);
            return;
        }
        if (b7 == 71) {
            qt.y0(185, b8);
            return;
        }
        if (b7 == 72) {
            qt.y0(186, b8);
            return;
        }
        if (b7 == 73) {
            qt.y0(187, b8);
            return;
        }
        if (b7 == 74) {
            qt.y0(189, b8);
            return;
        }
        if (b7 == 75) {
            qt.y0(190, b8);
            return;
        }
        if (b7 == 76) {
            qt.y0(191, b8);
            return;
        }
        if (b7 == 77) {
            qt.y0(192, b8);
            return;
        }
        if (b7 == 78) {
            qt.y0(193, b8);
            return;
        }
        if (b7 == 79) {
            qt.y0(194, b8);
            return;
        }
        if (b7 == 80) {
            qt.y0(202, b8);
            return;
        }
        if (b7 == 81) {
            qt.y0(203, b8);
            return;
        }
        if (b7 == 83) {
            qt.y0(205, b8);
            return;
        }
        if (b7 == 84) {
            qt.y0(206, b8);
            return;
        }
        if (b7 == 85) {
            qt.y0(207, b8);
            return;
        }
        if (b7 == 86) {
            qt.y0(208, b8);
            return;
        }
        if (b7 == 87) {
            qt.y0(209, b8);
            return;
        }
        if (b7 == 88) {
            qt.y0(210, b8);
            return;
        }
        if (b7 == 89) {
            qt.y0(211, b8);
            return;
        }
        if (b7 == 90) {
            qt.y0(212, b8);
        } else if (b7 == 91) {
            qt.y0(213, b8);
        } else if (b7 == 128) {
            qt.y0(188, b8);
        }
    }

    @Override // k0.lt
    public void W2() {
        this.F.j();
        u0.c.f17386m.d(this.f4802k);
        l0.b0.p0(this.f4803l);
        qt.q0(this.C);
        qt.q0(this.B);
        qt.q0(this.A);
        qt.q0(this.f4817z);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 214) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                a.f.p().t(LogType.CANBUS, "touch_x = " + iArr[1] + "\\\\\\touch_y = " + iArr[2] + "touch_state = " + iArr[0]);
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    int i3 = iArr[1];
                    int i4 = iArr[2];
                    if (iArr[0] == 0) {
                        if (i3 < (a.f.w() * MediaProperties.HEIGHT_360) / 1024 && i4 < (a.f.i() * 150) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                            z.k.s(227, 167, 1, 1);
                            return;
                        }
                        if (i3 < (a.f.w() * 100) / 1024 && i4 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i4 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                            z.k.s(227, 167, 1, 3);
                            return;
                        }
                        if (i3 < (a.f.w() * 420) / 1024 && i3 > (a.f.w() * 220) / 1024 && i4 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i4 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                            z.k.s(227, 167, 1, 4);
                            return;
                        } else {
                            if (i3 >= (a.f.w() * 260) / 1024 || i4 <= (a.f.i() * 480) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                                return;
                            }
                            z.k.s(227, 167, 1, 2);
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[1] == 52) {
                        m3(iArr[2]);
                    } else {
                        z.k.s(227, iArr[0], 2, iArr[1], iArr[2]);
                    }
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    l3(iArr[0]);
                    break;
                }
                break;
            case 2:
                if (T2(iArr, 6)) {
                    z.k.s(227, 134, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                }
                break;
            case 3:
                if (T2(iArr, 5)) {
                    z.k.s(227, 132, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                }
                break;
            case 4:
                if (T2(iArr, 2)) {
                    z.k.s(227, 132, 2, iArr[0], iArr[1]);
                }
                break;
            case 5:
                if (T2(iArr, 2)) {
                    z.k.s(227, 144, 2, iArr[0], iArr[1]);
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    k3(iArr[0]);
                    break;
                }
                break;
            case 7:
                if (T2(iArr, 2)) {
                    z.k.s(227, 135, 2, iArr[0], iArr[1]);
                }
                break;
        }
    }

    public final void c3(int i2) {
        int i3 = this.f4812u;
        if (i3 > 0) {
            int[] iArr = J;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.f4808q;
            if (i2 == 0) {
                z.k.s(227, 148, 4, 0, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255);
            } else {
                z.k.s(227, 148, 4, iArr[i3], (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255);
            }
        }
    }

    public final void k3(int i2) {
        L = i2;
        qt.y0(204, i2);
        int iB = this.F.b(2, 0);
        int i3 = L;
        if (iB != i3) {
            this.F.g(2, i3);
        }
    }

    public final void l3(int i2) {
        K = i2;
        qt.y0(114, i2);
        int iB = this.F.b(1, 0);
        int i3 = K;
        if (iB != i3) {
            this.F.g(1, i3);
        }
    }

    public final void m3(int i2) {
        M = i2;
        qt.y0(167, i2);
        int iB = this.F.b(3, 0);
        int i3 = M;
        if (iB != i3) {
            this.F.g(3, i3);
        }
    }
}
