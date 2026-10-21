package k0;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.dhcp.DhcpPacket;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.Log;
import app.App;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class ht extends lt implements o1.r {
    public static boolean M = false;
    public st A;
    public Runnable B;
    public int C;
    public int D;
    public int E;
    public int F;
    public Runnable G;
    public Runnable H;
    public long I;
    public int J;
    public int K;
    public int L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ContentResolver f6163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f6164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f6165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f6166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f6167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f6168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f6169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f6170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f6171k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f6172l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f6173m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f6174n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f6175o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte f6176p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte f6177q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public byte f6178r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public byte f6179s;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f6185y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f6186z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f6162b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f6180t = DhcpPacket.DHCP_DOMAIN_NAME;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int[] f6181u = {2, 3, 4, 5, 1, 6, 7, 0};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6182v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6183w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f6184x = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ht.this.f6186z = true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(73, ht.this.f6162b.b(15, 0));
            qt.y0(93, ht.this.f6162b.b(5, 0));
            z.k.s(227, 32, ht.this.f6162b.b(5, 0));
            if (!ht.M) {
                qt.y0(107, ht.this.f6162b.b(19, 0));
                qt.y0(105, ht.this.f6162b.b(17, 0));
                z.k.s(227, 48, ht.this.f6162b.b(16, 0));
                qt.y0(74, ht.this.f6162b.b(16, 0));
                qt.y0(106, ht.this.f6162b.b(18, 0));
                z.k.s(227, 96, ht.this.f6162b.b(18, 0));
                return;
            }
            if (!ht.this.n3()) {
                Settings.System.putInt(ht.this.f6163c, "gps_auto_time", 1);
                Settings.Global.putInt(ht.this.f6163c, "auto_time", 1);
                Settings.Global.putInt(ht.this.f6163c, "auto_time_zone", 1);
            }
            z.k.s(227, 48, 1);
            qt.y0(74, 1);
            ht.this.f6162b.e(16, 1);
            z.k.s(227, 49, 1);
            qt.y0(66, 1);
            qt.y0(105, 0);
            ht.this.f6162b.e(17, 0);
            qt.y0(106, 1);
            z.k.s(227, 96, 1);
            ht.this.f6162b.e(18, 1);
            qt.y0(107, 1);
            ht.this.f6162b.e(19, 1);
            boolean unused = ht.M = false;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ht htVar = ht.this;
            int i2 = htVar.D + 1;
            htVar.D = i2;
            if (i2 > 7) {
                htVar.D = 0;
            }
            if (htVar.C == 0) {
                htVar.C = 1;
            } else {
                htVar.C = 0;
            }
            int i3 = htVar.E + 1;
            htVar.E = i3;
            if (i3 > 30) {
                htVar.E = 1;
            }
            Log.i("m1a", "server itest: " + ht.this.E);
            o1.m.a().postDelayed(ht.this.G, 10000L);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f6190a = new Time();

        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f6190a = time;
            time.setToNow();
            long millis = this.f6190a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (ht.this.I == millis && ht.this.J == zIs24HourFormat) {
                return;
            }
            ht.this.I = millis;
            ht.this.J = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f6190a;
            int i2 = time2.hour;
            int i3 = time2.minute;
            int i4 = time2.second;
        }
    }

    public ht() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 51, 52, 55, 57, 58};
        this.f6185y = 0;
        this.f6186z = true;
        this.B = new b();
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = new c();
        this.H = new d();
        this.I = -1L;
        this.J = -1;
        this.K = 0;
        this.L = 0;
    }

    public static Process k3() {
        File file = new File("/system/xbin/ru");
        return file.exists() ? Runtime.getRuntime().exec(file.getAbsolutePath()) : Runtime.getRuntime().exec("su");
    }

    public static Process l3(String str) throws Throwable {
        Process processK3 = k3();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(processK3.getOutputStream());
            try {
                dataOutputStream2.writeBytes(str + "\n");
                dataOutputStream2.writeBytes("exit $?\n");
                try {
                    dataOutputStream2.close();
                } catch (IOException unused) {
                }
                return processK3;
            } catch (Throwable th) {
                th = th;
                dataOutputStream = dataOutputStream2;
                if (dataOutputStream != null) {
                    try {
                        dataOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void p3() throws InterruptedException {
        l3("chmod 666 /dev/alarm").waitFor();
    }

    public static void q3(int i2, int i3) throws InterruptedException, IOException {
        p3();
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, i2);
        calendar.set(12, i3);
        calendar.set(13, 0);
        long timeInMillis = calendar.getTimeInMillis();
        if (timeInMillis / 1000 < 2147483647L) {
            SystemClock.setCurrentTimeMillis(timeInMillis);
        }
        if (Calendar.getInstance().getTimeInMillis() - timeInMillis > 1000) {
            throw new IOException("failed to set Time.");
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        super.O2(iArr);
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (i2 == 41) {
            int i4 = nt.f8645g[19];
            this.K = i4;
            if (i3 == 1) {
                if (i4 < 30) {
                    int i5 = i4 + 1;
                    this.K = i5;
                    h3(8, i5);
                    return;
                }
                return;
            }
            if (i4 > 0) {
                int i6 = i4 - 1;
                this.K = i6;
                h3(9, i6);
            }
            return;
        }
        if (i2 == 42) {
            int i7 = nt.f8645g[19];
            this.K = i7;
            if (i3 == 1) {
                if (i7 < 30) {
                    int i8 = i7 + 1;
                    this.K = i8;
                    h3(8, i8);
                    return;
                }
                return;
            }
            if (i7 > 0) {
                int i9 = i7 - 1;
                this.K = i9;
                h3(9, i9);
                return;
            }
            return;
        }
        if (i2 == 51) {
            this.K = nt.f8645g[27];
            if (i3 == 1) {
                i3(2);
                return;
            } else {
                i3(0);
                return;
            }
        }
        if (i2 == 52) {
            this.K = nt.f8645g[28];
            if (i3 == 1) {
                j3(2);
                return;
            } else {
                j3(0);
                return;
            }
        }
        if (i2 == 55) {
            int i10 = iArr[1] & 255;
            h3(8, i10 != 0 ? i10 == 255 ? 30 : (i10 * 2) - 35 : 0);
            return;
        }
        if (i2 == 57) {
            this.K = nt.f8645g[22];
            if (i3 == 1) {
                h3(4, 1);
                return;
            } else {
                h3(4, 0);
                return;
            }
        }
        if (i2 == 58) {
            int i11 = iArr[1] & 255;
            if (i11 <= 7) {
                h3(6, i11);
                return;
            }
            return;
        }
        switch (i2) {
            case 33:
                this.K = nt.f8645g[24];
                if (i3 != 1) {
                    h3(12, 1);
                } else {
                    h3(12, 0);
                }
                break;
            case 34:
                this.K = nt.f8645g[11];
                if (i3 != 1) {
                    h3(3, 0);
                } else {
                    h3(3, 1);
                }
                break;
            case 35:
                this.K = nt.f8645g[23];
                if (i3 != 1) {
                    h3(5, 0);
                } else {
                    h3(5, 1);
                }
                break;
            case 36:
                this.K = nt.f8645g[20];
                if (i3 != 1) {
                    h3(0, 0);
                } else {
                    h3(0, 1);
                }
                break;
            case 37:
                this.K = nt.f8645g[13];
                if (i3 != 1) {
                    h3(2, 0);
                } else {
                    h3(2, 1);
                }
                break;
            case 38:
                this.K = nt.f8645g[12];
                if (i3 != 1) {
                    h3(1, 0);
                } else {
                    h3(1, 1);
                }
                break;
            case 39:
                int i12 = nt.f8645g[18];
                this.K = i12;
                if (i3 == -2) {
                    if (i12 > 0) {
                        this.K = i12 - 1;
                    }
                    h3(7, this.K);
                } else if (i3 == -1) {
                    if (i12 < 7) {
                        this.K = i12 + 1;
                    }
                    h3(6, this.K);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.syu.autotest.radio_recv");
        intentFilter.addAction("com.syu.autotest.media_recv");
        intentFilter.addAction("com.syu.autotest.bt_recv");
        intentFilter.addAction("com.syu.autotest.set_recv");
        intentFilter.addAction("net.easyconn.android.mirror.in");
        intentFilter.addAction("net.easyconn.android.mirror.out");
        intentFilter.addAction("net.easyconn.iphone.inner.mirror.in");
        intentFilter.addAction("net.easyconn.iphone.inner.mirror.out");
        intentFilter.addAction("net.easyconn.iphone.mirror.in");
        intentFilter.addAction("net.easyconn.iphone.mirror.out");
        intentFilter.addAction("net.easyconn.drivemode.checkstatus");
        this.A = new st();
        App.c().registerReceiver(this.A, intentFilter);
        this.f6183w = a.i.k("ro.fyt.uiid", 0);
        qt.z(this.H);
        new Time(Time.getCurrentTimezone()).setToNow();
        this.f6162b.a();
        this.f6163c = App.c().getContentResolver();
        if (this.f6183w == 6) {
            qt.y0(61, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2;
        byte b3 = bArr[i2];
        boolean z2 = true;
        if (b3 == -86) {
            int i4 = i2 + 1;
            pt.o(bArr, i4, bArr[i4]);
        }
        switch (b3) {
            case 16:
                byte b4 = bArr[i2 + 1];
                this.f6164d = b4;
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                this.f6168h = bArr[i2 + 5];
                this.f6169i = bArr[i2 + 6];
                this.f6170j = bArr[i2 + 7];
                this.f6171k = bArr[i2 + 8];
                this.f6172l = bArr[i2 + 9];
                this.f6173m = bArr[i2 + 10];
                this.f6174n = bArr[i2 + 11];
                this.f6175o = bArr[i2 + 12];
                qt.y0(30, b4 & 3);
                qt.y0(31, this.f6165e & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(1, this.f6166f & 1);
                qt.y0(2, this.f6167g & 1);
                qt.y0(0, this.f6168h & 1);
                qt.y0(4, this.f6169i & 1);
                qt.y0(3, this.f6170j & 1);
                qt.y0(5, this.f6171k & 1);
                qt.y0(13, this.f6172l & 1);
                qt.y0(63, this.f6173m & 1);
                qt.y0(62, this.f6174n & 1);
                qt.y0(77, this.f6175o & 7);
                break;
            case 17:
                byte b5 = bArr[i2 + 1];
                this.f6164d = b5;
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                this.f6168h = bArr[i2 + 5];
                this.f6169i = bArr[i2 + 6];
                this.f6170j = bArr[i2 + 7];
                this.f6171k = bArr[i2 + 8];
                this.f6172l = bArr[i2 + 9];
                this.f6173m = bArr[i2 + 10];
                this.f6174n = bArr[i2 + 11];
                qt.y0(37, b5 & 7);
                qt.y0(38, this.f6165e & 1);
                qt.y0(39, this.f6166f & 7);
                qt.y0(40, this.f6167g & 7);
                qt.y0(41, this.f6168h & 7);
                qt.y0(42, this.f6169i & 3);
                qt.y0(43, this.f6170j & 255);
                qt.y0(44, this.f6171k & 255);
                qt.y0(45, this.f6172l & 255);
                qt.y0(46, this.f6173m & 255);
                qt.y0(47, this.f6174n & 255);
                break;
            case 18:
                byte b6 = bArr[i2 + 1];
                this.f6164d = b6;
                this.f6165e = bArr[i2 + 2];
                qt.y0(78, b6 & 7);
                if (this.f6183w != 6) {
                    qt.y0(61, this.f6165e & 1);
                }
                break;
            case 19:
                byte b7 = bArr[i2 + 1];
                this.f6164d = b7;
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                this.f6168h = bArr[i2 + 5];
                this.f6169i = bArr[i2 + 6];
                this.f6170j = bArr[i2 + 7];
                this.f6171k = bArr[i2 + 8];
                this.f6172l = bArr[i2 + 9];
                this.f6173m = bArr[i2 + 10];
                this.f6174n = bArr[i2 + 11];
                this.f6175o = bArr[i2 + 12];
                this.f6176p = bArr[i2 + 13];
                this.f6177q = bArr[i2 + 14];
                this.f6178r = bArr[i2 + 15];
                this.f6179s = bArr[i2 + 16];
                qt.y0(11, b7 & 1);
                qt.y0(23, this.f6165e & 1);
                qt.y0(22, this.f6166f & 1);
                qt.y0(12, this.f6167g & 3);
                qt.y0(66, this.f6168h & 1);
                qt.y0(24, this.f6169i & 1);
                qt.y0(18, this.f6174n & 7);
                qt.y0(17, this.f6175o & 7);
                qt.y0(19, this.f6176p & 255);
                qt.y0(26, this.f6177q & 255);
                qt.y0(20, this.f6178r & 1);
                qt.y0(108, this.f6170j & 1);
                if ((this.f6170j & 1) == 1) {
                    m3();
                }
                break;
            case 20:
                byte b8 = bArr[i2 + 1];
                this.f6164d = b8;
                this.f6165e = bArr[i2 + 2];
                qt.y0(94, b8 & 255);
                qt.y0(95, this.f6165e & 255);
                byte b9 = this.f6164d;
                if (b9 < 0 || b9 > 23 || (b2 = this.f6165e) < 0 || b2 > 59) {
                    this.f6184x = false;
                } else {
                    this.f6184x = true;
                }
                if (b9 == 0 && this.f6165e == 0) {
                    this.f6184x = false;
                }
                if (n3()) {
                    this.f6184x = false;
                }
                if (this.f6184x) {
                    this.f6184x = false;
                    try {
                        q3(this.f6164d, this.f6165e);
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return;
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                break;
            case 21:
                byte b10 = bArr[i2 + 1];
                this.f6164d = b10;
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                qt.y0(51, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(79, this.f6165e & 255);
                qt.y0(60, this.f6166f & 1);
                qt.y0(59, this.f6167g & 1);
                break;
            case 22:
                byte b11 = bArr[i2 + 1];
                this.f6164d = b11;
                this.f6165e = bArr[i2 + 2];
                qt.y0(27, b11 & 3);
                qt.y0(28, this.f6165e & 3);
                break;
            case 23:
                this.f6164d = bArr[i2 + 1];
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                this.f6168h = bArr[i2 + 5];
                this.f6169i = bArr[i2 + 6];
                this.f6170j = bArr[i2 + 7];
                this.f6171k = bArr[i2 + 8];
                this.f6172l = bArr[i2 + 9];
                this.f6173m = bArr[i2 + 10];
                byte b12 = bArr[i2 + 11];
                this.f6174n = b12;
                this.f6175o = bArr[i2 + 12];
                this.f6176p = bArr[i2 + 13];
                this.f6177q = bArr[i2 + 14];
                this.f6178r = bArr[i2 + 15];
                this.f6179s = bArr[i2 + 16];
                qt.y0(100, b12 & 3);
                qt.y0(52, this.f6164d & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(82, this.f6165e & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(53, this.f6166f & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(80, this.f6167g & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(83, this.f6168h & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(25, this.f6169i & 255);
                qt.y0(49, this.f6170j & 255);
                qt.y0(81, this.f6171k & 255);
                qt.y0(84, this.f6172l & 3);
                qt.y0(71, this.f6173m & 1);
                qt.y0(68, this.f6175o & 1);
                qt.y0(101, this.f6176p & 1);
                qt.y0(69, this.f6177q & 1);
                qt.y0(70, this.f6178r & 1);
                qt.y0(72, this.f6179s & 1);
                break;
            case 24:
                byte b13 = bArr[i2 + 1];
                this.f6164d = b13;
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                this.f6168h = bArr[i2 + 5];
                qt.y0(85, b13 & 255);
                qt.y0(87, this.f6165e & 255);
                qt.y0(86, this.f6166f & 255);
                qt.y0(89, this.f6167g & 255);
                qt.y0(88, this.f6168h & 255);
                int i5 = (int) (((double) (((this.f6167g & 255) << 8) | (this.f6168h & 255))) * 0.0625d);
                int i6 = this.f6183w;
                if (i6 == 4 || i6 == 5 || i6 == 6) {
                    boolean z3 = i5 >= 5;
                    if (i5 >= 5) {
                        u0.d.x0(0);
                        z2 = false;
                    } else if (i5 < 5) {
                        u0.d.x0(1);
                    } else {
                        z2 = z3;
                    }
                    if (z2 != pt.f9363d || this.f6186z) {
                        this.f6186z = false;
                        o1.l.a().postDelayed(new a(), 3000L);
                        this.f6185y = i5;
                        pt.f9363d = z2;
                        if (!z2) {
                            App.c().sendBroadcast(new Intent("net.easyconn.drivemode.opened"));
                        } else {
                            App.c().sendBroadcast(new Intent("net.easyconn.drivemode.closed"));
                        }
                    }
                } else if (i5 > 15) {
                    u0.d.x0(0);
                } else if (i5 < 13) {
                    u0.d.x0(1);
                }
                break;
            case 25:
                byte b14 = bArr[i2 + 1];
                this.f6164d = b14;
                this.f6165e = bArr[i2 + 2];
                this.f6166f = bArr[i2 + 3];
                this.f6167g = bArr[i2 + 4];
                qt.y0(97, b14 & 255);
                qt.y0(96, this.f6165e & 255);
                qt.y0(99, this.f6166f & 255);
                qt.y0(98, this.f6167g & 255);
                break;
            case 26:
                byte b15 = bArr[i2 + 1];
                this.f6164d = b15;
                this.f6165e = bArr[i2 + 2];
                qt.y0(103, b15 & 1);
                qt.y0(104, this.f6165e & 1);
                break;
            case 27:
                byte b16 = bArr[i2 + 1];
                this.f6164d = b16;
                this.f6165e = bArr[i2 + 2];
                qt.y0(57, b16 & 127);
                qt.y0(58, this.f6165e & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 28:
                byte b17 = bArr[i2 + 1];
                this.f6164d = b17;
                qt.y0(102, b17 & 7);
                break;
            case 29:
                int i7 = i2 + 1;
                if (this.f6180t != bArr[i7]) {
                    byte b18 = bArr[i7];
                    this.f6164d = b18;
                    this.f6180t = b18;
                    qt.y0(90, b18 & 1);
                    if ((this.f6164d & 1) == 1) {
                        M = true;
                    }
                    o1.m.a().postDelayed(this.B, 500L);
                    break;
                }
                break;
            case 30:
                byte b19 = bArr[i2 + 1];
                this.f6164d = b19;
                if ((b19 & 1) != 1) {
                    qt.y0(91, 0);
                } else {
                    qt.y0(91, 1);
                    qt.y0(91, 0);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6162b.j();
        if (this.A != null) {
            App.c().unregisterReceiver(this.A);
        }
        qt.q0(this.H);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 150) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (o3(iArr, 2)) {
                    z.k.s(227, 37, iArr[0], iArr[1]);
                }
                break;
            case 1:
                if (o3(iArr, 2)) {
                    z.k.s(227, 38, iArr[0], iArr[1]);
                }
                break;
            case 2:
                if (o3(iArr, 2)) {
                    z.k.s(227, 39, iArr[0], iArr[1]);
                }
                break;
            case 3:
                if (o3(iArr, 1)) {
                    z.k.s(227, 40, iArr[0]);
                }
                break;
            case 4:
                if (o3(iArr, 1)) {
                    z.k.s(227, 42, iArr[0]);
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(64, iArr[0]);
                    this.f6162b.e(6, iArr[0]);
                    z.k.s(227, 43, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(65, iArr[0]);
                    this.f6162b.e(7, iArr[0]);
                    z.k.s(227, 44, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (o3(iArr, 1)) {
                    z.k.s(227, 49, iArr[0]);
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(67, iArr[0]);
                    this.f6162b.e(9, iArr[0]);
                    z.k.s(227, 41, iArr[0]);
                    break;
                }
                break;
            case 9:
                if (o3(iArr, 2)) {
                    z.k.s(227, 36, iArr[0], iArr[1]);
                }
                break;
            case 10:
                if (o3(iArr, 2)) {
                    z.k.s(227, 51, iArr[0], iArr[1]);
                }
                break;
            case 11:
                if (o3(iArr, 2)) {
                    z.k.s(227, 52, iArr[0], iArr[1]);
                }
                break;
            case 12:
                if (o3(iArr, 2)) {
                    z.k.s(227, 53, iArr[0], iArr[1]);
                }
                break;
            case 13:
                if (o3(iArr, 1)) {
                    z.k.s(227, 54, iArr[0]);
                }
                break;
            case 14:
                if (o3(iArr, 1)) {
                    z.k.s(227, 55, iArr[0]);
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(73, iArr[0]);
                    this.f6162b.e(15, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(74, iArr[0]);
                    this.f6162b.e(16, iArr[0]);
                    z.k.s(227, 48, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (o3(iArr, 2)) {
                    z.k.s(227, 64, iArr[0], iArr[1]);
                }
                break;
            case 18:
                if (o3(iArr, 1)) {
                    z.k.s(227, 80, iArr[0]);
                }
                break;
            case 19:
                if (o3(iArr, 1)) {
                    z.k.s(227, 81, iArr[0]);
                }
                break;
            case 20:
                if (o3(iArr, 2)) {
                    z.k.s(227, iArr[0], iArr[1]);
                }
                break;
            case 24:
                if (o3(iArr, 1)) {
                    z.k.s(227, 56, iArr[0]);
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(93, iArr[0]);
                    this.f6162b.e(5, iArr[0]);
                    z.k.s(227, 32, iArr[0]);
                    break;
                }
                break;
            case 26:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(105, iArr[0]);
                    this.f6162b.e(17, iArr[0]);
                    break;
                }
                break;
            case 27:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(106, iArr[0]);
                    this.f6162b.e(18, iArr[0]);
                    z.k.s(227, 96, iArr[0]);
                    break;
                }
                break;
            case 28:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(107, iArr[0]);
                    this.f6162b.e(19, iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void h3(int i2, int i3) {
        z.k.s(227, 64, (byte) i2, (byte) i3);
    }

    public final void i3(int i2) {
        z.k.s(227, 80, (byte) i2);
    }

    public final void j3(int i2) {
        z.k.s(227, 81, (byte) i2);
    }

    public final void m3() {
        int i2 = nt.f8645g[107];
        Log.i("m1a", "HOME_ONOFF: " + i2);
        if (i2 == 0) {
            a.i.A();
        } else if (!o1.u.T("com.syu.home")) {
            a.i.A();
        } else {
            qt.y0(91, 1);
            qt.y0(91, 0);
        }
    }

    public boolean n3() {
        return Settings.System.getInt(App.c().getContentResolver(), "gps_auto_time", 0) == 1;
    }

    public final boolean o3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        U2(bArr, i2, i3);
    }
}
