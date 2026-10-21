package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class wp extends lt {
    public static int[] D = {1, 1, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11842b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g f11850j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11843c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11844d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{18, 13}, new int[]{128, 25}, new int[]{129, 5}, new int[]{130, 6}, new int[]{131, 54}, new int[]{132, 21}, new int[]{133, 3}, new int[]{134, 1}, new int[]{135, 12}, new int[]{136, 25}, new int[]{137, 18}, new int[]{138, 4}, new int[]{139, 55}, new int[]{140, 1}, new int[]{141, 63}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11845e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11846f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11847g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11848h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f11849i = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f11851k = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f11852l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11853m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11854n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11855o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11856p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11857q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11858r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11859s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f11860t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11861u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f11862v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f11863w = new c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f11864x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f11865y = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f11866z = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable A = new d();
    public Runnable B = new e();
    public Runnable C = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wp wpVar = wp.this;
            int i2 = wpVar.f11847g;
            if (i2 > 0) {
                wpVar.f11847g = i2 - 1;
            }
            if (wpVar.f11847g == 0) {
                l0.c0.I();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wp.this.f11847g = 4;
            l0.c0.A0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wp wpVar = wp.this;
            wpVar.f11862v = wpVar.a3(u0.b.f17359s0);
            if (wp.this.f11862v != wp.this.f11861u) {
                wp wpVar2 = wp.this;
                int i2 = wpVar2.f11860t;
                if (i2 == 0) {
                    z.k.s(227, -55, 5, i2, wpVar2.f11862v, 0, 0, 0);
                }
                wp wpVar3 = wp.this;
                wpVar3.f11861u = wpVar3.f11862v;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            wp wpVar = wp.this;
            int i3 = wpVar.f11864x + 1;
            wpVar.f11864x = i3;
            if (i3 % 2 == 1 && ((i2 = u0.b.D) == 9 || i2 == 8 || i2 == 3)) {
                String str = u0.b.i3;
                if (str != null && !wpVar.f11865y.equals(str)) {
                    wp.this.m3((byte) 112, u0.b.i3);
                    wp.this.f11865y = u0.b.i3;
                }
                String str2 = u0.b.j3;
                if (str2 != null && !wp.this.f11866z.equals(str2)) {
                    wp.this.m3((byte) 113, u0.b.j3);
                    wp.this.f11866z = u0.b.j3;
                }
            }
            wp wpVar2 = wp.this;
            if (wpVar2.f11864x > 2) {
                wpVar2.f11864x = 0;
            }
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f11871a;

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f11871a = time;
            time.setToNow();
            Time time2 = this.f11871a;
            int i2 = time2.year;
            z.k.s(227, -126, 6, (byte) (i2 & 255), (byte) (((byte) ((i2 >> 8) & 15)) | (((byte) (time2.month + 1)) << 4)), (byte) time2.monthDay, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 2818501:
                case 3015109:
                    z.k.s(227, -89, 2, 17, 0);
                    break;
                case 2884037:
                case 3080645:
                    z.k.s(227, -89, 2, 17, 1);
                    break;
                case 4850119:
                    z.k.s(227, -89, 2, 17, 2);
                    break;
            }
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
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
                                wp wpVar = wp.this;
                                wpVar.f11860t = 1;
                                wpVar.f11859s = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                wp wpVar2 = wp.this;
                                wpVar2.f11860t = 0;
                                wpVar2.f11859s = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        wp wpVar3 = wp.this;
                        wpVar3.f11860t = 0;
                        wpVar3.f11859s = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!wp.this.f11851k.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        wp.this.f11851k = extras.getString("CUR_ROAD_NAME");
                        wp wpVar4 = wp.this;
                        wpVar4.b3(wpVar4.f11851k);
                    }
                    if (wp.this.f11854n != extras.getInt("SEG_REMAIN_DIS")) {
                        wp.this.f11854n = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (wp.this.f11853m != extras.getInt("ROUTE_REMAIN_DIS")) {
                        wp.this.f11853m = extras.getInt("ROUTE_REMAIN_DIS");
                        wp.this.f11857q = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (wp.this.f11855o != extras.getInt("CAR_DIRECTION")) {
                        wp.this.f11855o = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (wp.this.f11856p != extras.getInt("ROUTE_ALL_TIME")) {
                        wp.this.f11856p = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (wp.this.f11858r != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        wp.this.f11858r = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    wp.this.d3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ g(wp wpVar, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr != null) {
            int i2 = 2;
            if (iArr.length < 2) {
                return;
            }
            int i3 = iArr[0];
            n1.b bVarP = a.f.p();
            LogType logType = LogType.CANBUS;
            StringBuilder sb = new StringBuilder();
            sb.append("Air codeCmd = ");
            sb.append(iArr[0]);
            sb.append("      value = ");
            int i4 = 1;
            sb.append(iArr[1]);
            bVarP.t(logType, sb.toString());
            if (i3 == 41 || i3 == 42) {
                if (iArr[1] != 0) {
                    int[] iArr2 = nt.f8645g;
                    if (iArr2[27] != -2) {
                        i2 = iArr2[27] == -3 ? 16 : (iArr2[27] < 18 || iArr2[27] > 31) ? 1 : iArr2[27] - 15;
                    }
                    c3(i2, 3);
                    return;
                }
                int[] iArr3 = nt.f8645g;
                if (iArr3[27] != -2) {
                    if (iArr3[27] == -3) {
                        i4 = 15;
                    } else if (iArr3[27] >= 18 && iArr3[27] <= 31) {
                        i4 = iArr3[27] - 17;
                    }
                }
                c3(i4, 3);
            }
            if (i3 == 68) {
                if (iArr[1] == 1) {
                    z.k.s(227, -59, 2, 2, 0);
                    return;
                }
                if (iArr[1] == 2) {
                    z.k.s(227, -59, 2, 2, 1);
                    return;
                }
                if (iArr[1] == 3) {
                    z.k.s(227, -59, 2, 3, 0);
                    return;
                }
                if (iArr[1] == 4) {
                    z.k.s(227, -59, 2, 3, 1);
                    return;
                }
                if (iArr[1] == 5) {
                    z.k.s(227, -59, 2, 4, 0);
                    return;
                }
                if (iArr[1] == 6) {
                    z.k.s(227, -59, 2, 4, 1);
                    return;
                }
                if (iArr[1] == 7) {
                    z.k.s(227, -59, 2, 5, 0);
                    return;
                }
                if (iArr[1] == 8) {
                    z.k.s(227, -59, 2, 5, 1);
                    return;
                }
                if (iArr[1] == 9) {
                    z.k.s(227, -59, 2, 6, 0);
                    return;
                }
                if (iArr[1] == 10) {
                    z.k.s(227, -59, 2, 6, 1);
                    return;
                } else if (iArr[1] == 11) {
                    z.k.s(227, -59, 2, 1, 0);
                    return;
                } else {
                    if (iArr[1] == 12) {
                        z.k.s(227, -59, 2, 1, 1);
                        return;
                    }
                    return;
                }
            }
            switch (i3) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[21] != 0) {
                            c3(128, 0);
                        }
                    } else if (nt.f8645g[21] == 0) {
                        c3(128, 0);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            c3(2, 0);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        c3(2, 0);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            c3(32, 0);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        c3(32, 0);
                    }
                    break;
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[65] == 1) {
                            c3(16, 0);
                        }
                    } else if (nt.f8645g[65] == 0) {
                        c3(16, 0);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[16] == 1) {
                            c3(64, 0);
                        }
                    } else if (nt.f8645g[16] == 0) {
                        c3(64, 0);
                    }
                    break;
                case 38:
                    if (iArr[1] == 1) {
                        if (nt.f8645g[12] == 0) {
                            c3(4, 0);
                        }
                        break;
                    } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                        c3(8, 0);
                        break;
                    }
                    break;
                case 39:
                    if (iArr[1] != -1) {
                        int i5 = nt.f8645g[21];
                        if (i5 > 0) {
                            i5--;
                        }
                        c3(i5, 1);
                    } else {
                        int i6 = nt.f8645g[21];
                        if (i6 < 8) {
                            i6++;
                        }
                        c3(i6, 1);
                    }
                    break;
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.B);
        qt.z(this.C);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        y0.g.f18094d.a(this.f11849i, 1);
        y0.g.f18095e.a(this.f11849i, 1);
        qt.z(this.f11848h);
        mt mtVar = this.f7886a;
        mtVar.f8314i = 0;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        if (nt.f8633a == 4850119) {
            qt.z(this.A);
            o1.h.f16865a.a(this.f11863w, 1);
            this.f11850j = new g(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
            App.c().registerReceiver(this.f11850j, intentFilter);
            d3();
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            int i7 = bArr[i2 + 2] & 255;
            int i8 = bArr[i2 + 3] & 255;
            int i9 = bArr[i2 + 4] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 6;
            int i13 = bArr[i12] & 255;
            qt.y0(11, (i7 >> 6) & 1);
            qt.y0(53, (i7 >> 5) & 1);
            qt.y0(12, (i7 >> 4) & 1);
            qt.y0(13, (i7 >> 3) & 1);
            qt.y0(14, (i7 >> 2) & 1);
            qt.y0(16, (i7 >> 1) & 1);
            qt.y0(65, (i7 >> 0) & 1);
            int i14 = i8 & 255;
            if (i14 != 1) {
                if (i14 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i14 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i14 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i14 != 5) {
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
            qt.y0(21, i9 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i11 = bArr[i12] & 255;
                i13 = bArr[i10] & 255;
            }
            if (i11 == 0) {
                qt.y0(27, -2);
            } else if (i11 == 15) {
                qt.y0(27, -3);
            } else if (i11 <= 0 || i11 >= 15) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, (i11 & 255) + 17);
            }
            if (i13 == 0) {
                qt.y0(28, -2);
            } else if (i13 == 15) {
                qt.y0(28, -3);
            } else if (i13 <= 0 || i13 >= 15) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, (i13 & 255) + 17);
            }
            qt.y0(29, 15 & (bArr[i2 + 8] >> 0));
            qt.y0(128, bArr[i2 + 9] & 255);
            int i15 = bArr[i2 + 7] & 255;
            if (i15 != 0 && i15 != 255 && i15 != 254) {
                u0.d.A3((i15 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
            u0.d.A3(0);
        }
        if (b2 == 40) {
            int i16 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i16 >> 7) & 1);
                qt.y0(2, (i16 >> 6) & 1);
            } else {
                qt.y0(1, (i16 >> 6) & 1);
                qt.y0(2, (i16 >> 7) & 1);
            }
            qt.y0(3, (i16 >> 4) & 1);
            qt.y0(4, (i16 >> 5) & 1);
            qt.y0(5, (i16 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            qt.l(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
            return;
        }
        if (b2 == 64) {
            qt.y0(110, bArr[i2 + 2] & 255);
            qt.y0(111, bArr[i2 + 3] & 255);
            qt.y0(112, bArr[i2 + 4] & 255);
            qt.y0(113, bArr[i2 + 5] & 255);
            qt.y0(114, bArr[i2 + 6] & 255);
            qt.y0(115, bArr[i2 + 7] & 255);
            qt.y0(116, bArr[i2 + 8] & 255);
            qt.y0(117, bArr[i2 + 9] & 255);
            qt.y0(118, bArr[i2 + 10] & 255);
            qt.y0(119, bArr[i2 + 11] & 255);
            qt.y0(120, bArr[i2 + 12] & 255);
            qt.y0(121, bArr[i2 + 13] & 255);
            qt.y0(139, bArr[i2 + 14] & 255);
            qt.y0(129, bArr[i2 + 15] & 255);
            qt.y0(130, bArr[i2 + 16] & 255);
            qt.y0(131, bArr[i2 + 17] & 255);
            qt.y0(132, bArr[i2 + 18] & 255);
            return;
        }
        if (b2 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 != 1) {
                if (i17 != 3) {
                    return;
                }
                int i18 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i18);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i18}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i19 = i2 + 3;
                l0.c0.b((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
            } else {
                int i20 = i2 + 3;
                l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
            }
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            int i21 = i2 + 2;
            if ((bArr[i21] & 255) != 255) {
                qt.y0(102, bArr[i21] & 255);
            }
            int i22 = i2 + 3;
            if ((bArr[i22] & 255) != 255) {
                qt.y0(103, bArr[i22] & 255);
            }
            int i23 = i2 + 4;
            if ((bArr[i23] & 255) != 255) {
                qt.y0(104, bArr[i23] & 255);
            }
            int i24 = i2 + 5;
            if ((bArr[i24] & 255) != 255) {
                qt.y0(105, bArr[i24] & 255);
            }
            int i25 = i2 + 6;
            if ((bArr[i25] & 255) != 255) {
                qt.y0(98, bArr[i25] & 255);
            }
            int i26 = i2 + 7;
            if ((bArr[i26] & 255) != 255) {
                qt.y0(99, bArr[i26] & 255);
            }
            int i27 = i2 + 8;
            if ((bArr[i27] & 255) != 255) {
                qt.y0(100, bArr[i27] & 255);
            }
            int i28 = i2 + 9;
            if ((bArr[i28] & 255) != 255) {
                qt.y0(101, bArr[i28] & 255);
                return;
            }
            return;
        }
        if (b2 == 57) {
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            return;
        }
        if (b2 == 66) {
            qt.y0(122, bArr[i2 + 2] & 255);
            qt.y0(123, bArr[i2 + 3] & 255);
            qt.y0(124, bArr[i2 + 4] & 255);
            qt.y0(125, bArr[i2 + 5] & 255);
            qt.y0(126, bArr[i2 + 6] & 255);
            qt.y0(127, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 67) {
            qt.y0(133, bArr[i2 + 2] & 255);
            qt.y0(134, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(135, bArr[i2 + 5] & 255);
            qt.y0(136, bArr[i2 + 6] & 255);
            qt.y0(137, bArr[i2 + 7] & 255);
            qt.y0(138, bArr[i2 + 8] & 255);
            return;
        }
        switch (b2) {
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11843c = b3 & 255;
                int i29 = 0;
                while (true) {
                    iArr = this.f11844d;
                    if (i29 < iArr.length) {
                        int i30 = this.f11843c;
                        if (i30 != iArr[i29][0]) {
                            i29++;
                        } else if (i30 != 0) {
                            this.f11842b = i29;
                        }
                    }
                }
                int i31 = this.f11843c;
                if (i31 == 9) {
                    if ((b4 & 255) == 1) {
                        if (h0.c.E == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                } else if (i31 == 10) {
                    if ((b4 & 255) == 1) {
                        int i32 = h0.c.E;
                        if (i32 == 3 || i32 == 4 || i32 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i31 != 128) {
                    int i33 = b4 & 255;
                    if (i33 != 1) {
                        if (i33 == 0) {
                            int i34 = this.f11842b;
                            if (i34 < iArr.length && i34 != 255) {
                                l0.b0.l0(iArr[i34][1], 1);
                            }
                            this.f11842b = 255;
                        }
                    } else if (i29 < iArr.length) {
                        l0.b0.l0(iArr[i29][1], 0);
                    }
                } else if (this.f11846f != b4) {
                    this.f11846f = b4;
                    if (b4 == 1) {
                        this.f11845e = false;
                    } else if (b4 == 2) {
                        this.f11845e = true;
                        l0.b0.l0(25, 0);
                        l0.b0.l0(25, 1);
                    } else if (b4 == 0) {
                        if (this.f11845e) {
                            this.f11845e = false;
                        } else if (u0.b.f17332j != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        } else {
                            l0.b0.l0(25, 0);
                            l0.b0.l0(25, 1);
                        }
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.e0.p(bArr[i2 + 2]));
                u0.d.S2(l0.e0.p(bArr[i2 + 3]));
                u0.d.T2(l0.e0.p(bArr[i2 + 4]));
                u0.d.U2(l0.e0.p(bArr[i2 + 5]));
                break;
            case 35:
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
                u0.d.D2(l0.e0.p(bArr[i35]));
                u0.d.E2(l0.e0.p(bArr[i37]));
                u0.d.F2(l0.e0.p(bArr[i39]));
                u0.d.G2(l0.e0.p(bArr[i41]));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.B);
        qt.q0(this.C);
        qt.q0(this.f11848h);
        qt.q0(this.A);
        y0.g.f18094d.d(this.f11849i);
        y0.g.f18095e.d(this.f11849i);
        o1.h.f16865a.d(this.f11863w);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 140) {
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
            z.k.s(227, 167, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 201, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1024) / a.f.w();
        int i3 = (iArr[2] * 1000) / a.f.i();
        if (T2(iArr, 2)) {
            if (iArr[0] == 0) {
                z.k.s(227, 168, 6, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            } else if (iArr[0] == 1) {
                z.k.s(227, 168, 6, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            }
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
        byte[] bytes = str.getBytes();
        int[] iArr = new int[bytes.length + 4];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (bytes.length + 1);
        iArr[3] = 17;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void c3(int i2, int i3) {
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
        a.i.a0(100L);
        z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
    }

    public final void d3() {
        int i2 = this.f11858r;
        if (i2 > 0) {
            int[] iArr = D;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f11854n;
            z.k.s(227, 201, 6, this.f11860t, this.f11862v, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, iArr[i2]);
        }
    }

    public final void m3(byte b2, String str) {
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes();
        int[] iArr = new int[bytes.length + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (bytes.length + 1);
        iArr[3] = 17;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }
}
