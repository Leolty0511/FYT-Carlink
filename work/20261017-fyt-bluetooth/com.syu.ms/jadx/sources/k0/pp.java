package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class pp extends lt {
    public static int[] E = {1, 1, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9276b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public j f9283i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9277c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9278d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 0}, new int[]{11, 26}, new int[]{22, 12}, new int[]{23, 5}, new int[]{24, 6}, new int[]{25, 1}, new int[]{32, 25}, new int[]{33, 54}, new int[]{34, 38}, new int[]{35, 29}, new int[]{36, 24}, new int[]{37, 62}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9279e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9280f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9281g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9282h = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f9284j = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f9285k = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f9286l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9287m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9288n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f9289o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9290p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9291q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9292r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f9293s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f9294t = 255;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9295u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9296v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f9297w = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f9298x = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f9299y = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f9300z = new e();
    public Runnable A = new f();
    public Runnable B = new g();
    public Runnable C = new h();
    public Runnable D = new i();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            pp ppVar = pp.this;
            if (ppVar.f9279e != i2) {
                ppVar.f9279e = i2;
                z.k.s(227, 198, 16, 2, i2 / 60, i2 % 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
                z.k.s(227, 198, 16, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            } else {
                z.k.s(227, 198, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pp.this.n3(h0.c.f2437h);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pp ppVar = pp.this;
            ppVar.f9295u = ppVar.a3(u0.b.f17359s0);
            if (pp.this.f9295u != pp.this.f9294t) {
                pp ppVar2 = pp.this;
                int i2 = ppVar2.f9293s;
                if (i2 == 0) {
                    z.k.s(227, -55, 5, i2, ppVar2.f9295u, 0, 0, 0);
                }
                pp ppVar3 = pp.this;
                ppVar3.f9294t = ppVar3.f9295u;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.i3 == null) {
                return;
            }
            int i2 = u0.b.D;
            if ((i2 != 9 && i2 != 10 && i2 != 8 && i2 != 3) || i2 == 10 || i2 == 3 || pp.this.f9297w.equals(u0.b.i3)) {
                return;
            }
            pp ppVar = pp.this;
            String str = u0.b.i3;
            ppVar.f9297w = str;
            ppVar.m3((byte) 112, str);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.j3 == null) {
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 9 || i2 == 10 || i2 == 8 || i2 == 3) {
                if (i2 == 10 || i2 == 3) {
                    if (pp.this.f9298x.equals(u0.b.j3)) {
                        return;
                    }
                    pp ppVar = pp.this;
                    String str = u0.b.j3;
                    ppVar.f9298x = str;
                    ppVar.m3((byte) 113, str);
                    return;
                }
                if (pp.this.f9298x.equals(u0.b.j3)) {
                    return;
                }
                pp ppVar2 = pp.this;
                String str2 = u0.b.j3;
                ppVar2.f9298x = str2;
                ppVar2.m3((byte) 113, str2);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.k3 == null) {
                return;
            }
            int i2 = u0.b.D;
            if ((i2 == 10 || i2 == 3) && !pp.this.f9299y.equals(u0.b.k3)) {
                pp ppVar = pp.this;
                String str = u0.b.k3;
                ppVar.f9299y = str;
                ppVar.m3((byte) 112, str);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[10];
            int i2 = 0;
            iArr[0] = 192;
            iArr[1] = 8;
            switch (u0.b.D) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    int i3 = w0.d.f17798j;
                    int i4 = w0.d.f17796h;
                    if (i4 == 65536) {
                        iArr[4] = 1;
                    } else if (i4 == 65537) {
                        iArr[4] = 2;
                    } else if (i4 == 65538) {
                        iArr[4] = 3;
                    } else if (i4 == 0) {
                        iArr[4] = 17;
                    } else if (i4 == 1) {
                        iArr[4] = 18;
                    }
                    int i5 = w0.d.f17797i;
                    iArr[5] = i5 & 255;
                    iArr[6] = (i5 >> 8) & 255;
                    int i6 = i3 % 6;
                    if (i6 == 0 && i3 != 0) {
                        iArr[7] = 6;
                    } else {
                        iArr[7] = i6;
                    }
                    break;
                case 2:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    int i7 = h0.c.E;
                    if (i7 == 2) {
                        iArr[4] = 1;
                        iArr[5] = 4;
                    } else if (i7 == 3) {
                        iArr[4] = 1;
                        iArr[5] = 2;
                    } else if (i7 == 4) {
                        iArr[4] = 1;
                        iArr[5] = 1;
                    } else if (i7 == 5) {
                        iArr[4] = 1;
                        iArr[5] = 3;
                    } else {
                        iArr[4] = 0;
                        iArr[5] = 4;
                    }
                    break;
                case 3:
                    iArr[2] = 11;
                    iArr[3] = 19;
                    int i8 = u0.b.u3;
                    iArr[4] = i8 / 60;
                    iArr[5] = i8 % 60;
                    int i9 = u0.b.t3;
                    iArr[6] = i9 / 60;
                    iArr[7] = i9 % 60;
                    break;
                case 4:
                default:
                    iArr[2] = 7;
                    break;
                case 5:
                case 6:
                case 7:
                    iArr[2] = 7;
                    break;
                case 8:
                case 9:
                case 10:
                    iArr[2] = 8;
                    iArr[3] = 19;
                    int i10 = u0.b.u3;
                    iArr[4] = i10 / 60;
                    iArr[5] = i10 % 60;
                    int i11 = u0.b.t3;
                    iArr[6] = i11 / 60;
                    iArr[7] = i11 % 60;
                    break;
            }
            int[] iArr2 = new int[11];
            iArr2[0] = 227;
            while (i2 < 10) {
                int i12 = i2 + 1;
                iArr2[i12] = iArr[i2];
                i2 = i12;
            }
            z.k.s(iArr2);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = time.year;
            byte b2 = (byte) (i2 + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            byte b7 = (byte) time.second;
            if (nt.f8633a != 12845509) {
                z.k.s(227, 166, 6, b2, b3, b4, b5, b6, b7);
            } else {
                z.k.s(227, 133, 7, (byte) (i2 - 2020), b3, b4, b5, b6, b7, !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            }
        }
    }

    public class j extends BroadcastReceiver {
        public j() {
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
                                pp ppVar = pp.this;
                                ppVar.f9293s = 1;
                                ppVar.f9292r = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                pp ppVar2 = pp.this;
                                ppVar2.f9293s = 0;
                                ppVar2.f9292r = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        pp ppVar3 = pp.this;
                        ppVar3.f9293s = 0;
                        ppVar3.f9292r = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!pp.this.f9284j.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        pp.this.f9284j = extras.getString("CUR_ROAD_NAME");
                        pp ppVar4 = pp.this;
                        ppVar4.b3(ppVar4.f9284j);
                    }
                    if (pp.this.f9287m != extras.getInt("SEG_REMAIN_DIS")) {
                        pp.this.f9287m = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (pp.this.f9286l != extras.getInt("ROUTE_REMAIN_DIS")) {
                        pp.this.f9286l = extras.getInt("ROUTE_REMAIN_DIS");
                        pp.this.f9290p = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (pp.this.f9288n != extras.getInt("CAR_DIRECTION")) {
                        pp.this.f9288n = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (pp.this.f9289o != extras.getInt("ROUTE_ALL_TIME")) {
                        pp.this.f9289o = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (pp.this.f9291q != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        pp.this.f9291q = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    pp.this.c3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ j(pp ppVar, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.D);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        int i2 = nt.f8633a;
        if (i2 == 12845509) {
            mtVar.f8314i = 1;
            mtVar.f8312g = 1;
            qt.z(this.C);
            u0.c.f17388o.a(this.f9300z, 1);
            u0.c.f17389p.a(this.A, 1);
            u0.c.f17390q.a(this.B, 1);
            u0.c.f17374a.a(this.f9300z, 1);
            return;
        }
        if (i2 != 15466951) {
            return;
        }
        mtVar.f8314i = 1;
        mtVar.f8312g = 1;
        qt.z(this.C);
        u0.c.f17388o.a(this.f9300z, 1);
        u0.c.f17389p.a(this.A, 1);
        u0.c.f17390q.a(this.B, 1);
        u0.c.f17374a.a(this.f9300z, 1);
        h0.d.f2464c.a(this.f9282h, 1);
        h0.d.f2462a.a(this.f9281g, 1);
        h0.d.f2465d.a(this.f9280f, 1);
        this.f9283i = new j(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f9283i, intentFilter);
        c3();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            if (nt.f8633a != 12845509) {
                qt.m(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, 7808, false, 5900);
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 7800);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 51) {
            qt.y0(Process.MEDIA_UID, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i4 = i2 + 3;
            l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                if (u0.b.f17306a0 != 0) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f9277c = b3 & 255;
                    int i5 = 0;
                    while (true) {
                        iArr = this.f9278d;
                        if (i5 < iArr.length) {
                            int i6 = this.f9277c;
                            if (i6 != iArr[i5][0]) {
                                i5++;
                            } else if (i6 != 0) {
                                this.f9276b = i5;
                            }
                        }
                    }
                    int i7 = this.f9277c;
                    if (i7 == 5) {
                        if ((b4 & 255) == 1) {
                            int i8 = h0.c.E;
                            if (i8 == 3 || i8 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    } else if (i7 == 6) {
                        if ((b4 & 255) == 1) {
                            int i9 = h0.c.E;
                            if (i9 == 3 || i9 == 4 || i9 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                    } else if (i7 != 34) {
                        int i10 = b4 & 255;
                        if (i10 != 1) {
                            if (i10 == 0) {
                                int i11 = this.f9276b;
                                if (i11 < iArr.length && i11 != 255) {
                                    l0.b0.l0(iArr[i11][1], 1);
                                }
                                this.f9276b = 255;
                            }
                        } else if (i5 < iArr.length) {
                            l0.b0.l0(iArr[i5][1], 0);
                        }
                    } else if ((b4 & 255) == 1) {
                        if (nt.f8633a == 12911045) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        } else {
                            l0.b0.l0(38, 0);
                            l0.b0.l0(38, 1);
                        }
                    }
                    break;
                }
                break;
            case 33:
                int i12 = i2 + 2;
                qt.y0(10, (bArr[i12] >> 7) & 1);
                qt.y0(11, (bArr[i12] >> 6) & 1);
                qt.y0(12, (bArr[i12] >> 5) & 1);
                qt.y0(53, (bArr[i12] >> 4) & 1);
                qt.y0(13, (bArr[i12] >> 3) & 1);
                qt.y0(14, (bArr[i12] >> 2) & 1);
                qt.y0(15, (bArr[i12] >> 1) & 1);
                qt.y0(16, (bArr[i12] >> 0) & 1);
                int i13 = i2 + 3;
                qt.y0(18, (bArr[i13] >> 7) & 1);
                qt.y0(19, (bArr[i13] >> 6) & 1);
                qt.y0(20, (bArr[i13] >> 5) & 1);
                qt.y0(21, (bArr[i13] >> 0) & 15);
                int i14 = i2 + 4;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 5;
                int i17 = bArr[i16] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i15 = bArr[i16] & 255;
                    i17 = bArr[i14] & 255;
                }
                int i18 = 60;
                int i19 = 36;
                if (nt.f8633a == 15466951) {
                    i18 = 32;
                    i19 = 16;
                }
                if (i15 == i19) {
                    qt.y0(27, -2);
                } else if (i15 == i18) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i15);
                }
                if (i17 == i19) {
                    qt.y0(28, -2);
                } else if (i17 == i18) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i17);
                }
                int i20 = i2 + 6;
                qt.y0(54, (bArr[i20] >> 5) & 1);
                qt.y0(58, (bArr[i20] >> 2) & 1);
                qt.y0(37, (bArr[i20] >> 0) & 1);
                int i21 = i2 + 7;
                qt.y0(29, (bArr[i21] >> 4) & 15);
                qt.y0(30, (bArr[i21] >> 0) & 15);
                int i22 = i2 + 8;
                qt.y0(31, (bArr[i22] >> 4) & 15);
                qt.y0(32, (bArr[i22] >> 0) & 15);
                int i23 = bArr[i2 + 9] & 255;
                if (i23 == 0 || i23 == 255) {
                    u0.d.B3(0);
                } else {
                    u0.d.B3((i23 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i24 = i2 + 2;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 3;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 4;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i25;
                l0.c0.f13014h = i27;
                l0.c0.f13015i = i29;
                l0.c0.f13016j = i31;
                u0.d.D2(l0.c0.K0(bArr[i24] & 255));
                u0.d.E2(l0.c0.K0(bArr[i26] & 255));
                u0.d.F2(l0.c0.K0(bArr[i28] & 255));
                u0.d.G2(l0.c0.K0(bArr[i30] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b5 >> 6) & 1);
                    qt.y0(1, (b5 >> 7) & 1);
                } else {
                    qt.y0(2, (b5 >> 7) & 1);
                    qt.y0(1, (b5 >> 6) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
            default:
                switch (b2) {
                    case 64:
                        qt.y0(99, bArr[i2 + 2] & 255);
                        qt.y0(100, bArr[i2 + 3] & 255);
                        qt.y0(101, bArr[i2 + 4] & 255);
                        qt.y0(102, bArr[i2 + 5] & 255);
                        qt.y0(103, bArr[i2 + 6] & 255);
                        qt.y0(104, bArr[i2 + 7] & 255);
                        qt.y0(105, bArr[i2 + 8] & 255);
                        qt.y0(106, bArr[i2 + 9] & 255);
                        qt.y0(107, bArr[i2 + 10] & 255);
                        qt.y0(108, bArr[i2 + 11] & 255);
                        qt.y0(109, bArr[i2 + 12] & 255);
                        qt.y0(110, bArr[i2 + 13] & 255);
                        qt.y0(111, bArr[i2 + 14] & 255);
                        break;
                    case 65:
                        qt.y0(112, bArr[i2 + 2] & 255);
                        qt.y0(113, bArr[i2 + 3] & 255);
                        qt.y0(114, bArr[i2 + 4] & 255);
                        qt.y0(115, bArr[i2 + 5] & 255);
                        qt.y0(116, bArr[i2 + 6] & 255);
                        qt.y0(117, bArr[i2 + 7] & 255);
                        qt.y0(118, bArr[i2 + 8] & 255);
                        qt.y0(119, bArr[i2 + 9] & 255);
                        qt.y0(120, bArr[i2 + 10] & 255);
                        qt.y0(121, bArr[i2 + 11] & 255);
                        break;
                    case 66:
                        qt.y0(122, bArr[i2 + 2] & 255);
                        qt.y0(123, bArr[i2 + 3] & 255);
                        qt.y0(124, bArr[i2 + 4] & 255);
                        qt.y0(125, bArr[i2 + 5] & 255);
                        qt.y0(126, bArr[i2 + 6] & 255);
                        break;
                    case 67:
                        int i32 = i2 + 2;
                        qt.y0(127, (bArr[i32] >> 4) & 15);
                        qt.y0(128, (bArr[i32] >> 2) & 1);
                        qt.y0(129, (bArr[i32] >> 1) & 1);
                        qt.y0(130, (bArr[i32] >> 0) & 1);
                        int i33 = i2 + 3;
                        qt.y0(131, (bArr[i33] >> 4) & 15);
                        qt.y0(132, (bArr[i33] >> 3) & 1);
                        qt.y0(133, (bArr[i33] >> 0) & 7);
                        qt.y0(134, (bArr[i2 + 4] >> 0) & 255);
                        int i34 = i2 + 5;
                        qt.y0(135, (bArr[i34] >> 7) & 1);
                        qt.y0(136, (bArr[i34] >> 6) & 1);
                        qt.y0(137, (bArr[i34] >> 5) & 1);
                        qt.y0(138, (bArr[i34] >> 4) & 1);
                        qt.y0(139, (bArr[i34] >> 3) & 1);
                        qt.y0(140, (bArr[i34] >> 0) & 7);
                        int i35 = i2 + 6;
                        qt.y0(141, (bArr[i35] >> 4) & 15);
                        qt.y0(142, (bArr[i35] >> 3) & 1);
                        qt.y0(143, (bArr[i35] >> 0) & 7);
                        int i36 = i2 + 7;
                        qt.y0(144, (bArr[i36] >> 7) & 1);
                        qt.y0(145, (bArr[i36] >> 6) & 1);
                        qt.y0(146, (bArr[i36] >> 5) & 1);
                        qt.y0(147, (bArr[i36] >> 0) & 31);
                        qt.y0(148, 255 & (bArr[i2 + 8] >> 0));
                        int i37 = i2 + 9;
                        qt.y0(155, (bArr[i37] >> 3) & 3);
                        qt.y0(149, (bArr[i37] >> 2) & 1);
                        qt.y0(150, (bArr[i37] >> 0) & 3);
                        int i38 = i2 + 10;
                        qt.y0(151, (bArr[i38] >> 5) & 1);
                        qt.y0(152, (bArr[i38] >> 4) & 1);
                        qt.y0(153, (bArr[i38] >> 3) & 1);
                        qt.y0(154, (bArr[i38] >> 0) & 7);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.D);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.C);
        u0.c.f17388o.d(this.f9300z);
        u0.c.f17374a.d(this.f9300z);
        h0.d.f2464c.d(this.f9281g);
        h0.d.f2465d.d(this.f9280f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 156) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -63, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -88, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -62, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -61, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -60, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            z.k.s(227, -63, 2, 1, iArr[0]);
        }
    }

    public final int a3(int i2) {
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

    public final void b3(String str) {
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

    public final void c3() {
        int i2 = this.f9291q;
        if (i2 > 0) {
            int[] iArr = E;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f9287m;
            z.k.s(227, 201, 6, this.f9293s, this.f9295u, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, iArr[i2]);
        }
    }

    public final void m3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        if (length > 30) {
            length = 30;
        }
        if (length == 0) {
            return;
        }
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
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void n3(String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        if (length > 13) {
            length = 13;
        }
        int[] iArr = new int[19];
        iArr[0] = -29;
        iArr[1] = -58;
        iArr[2] = 16;
        iArr[3] = 1;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[4 + i2] = (byte) charArray[i2];
        }
        z.k.s(iArr);
    }
}
