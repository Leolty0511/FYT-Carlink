package k0;

import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.Log;
import android.view.WindowManager;
import app.App;
import com.syu.ms.R;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class it extends lt implements o1.r {
    public static boolean P = false;
    public static boolean Q = false;
    public int A;
    public Runnable B;
    public Runnable C;
    public st D;
    public int E;
    public int F;
    public int G;
    public int H;
    public Runnable I;
    public Runnable J;
    public Runnable K;
    public long L;
    public int M;
    public int N;
    public int O;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f6596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f6597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f6598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f6599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f6600h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f6601i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f6602j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f6603k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f6604l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6605m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f6606n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6607o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6608p;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public MediaPlayer f6615w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f6616x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f6617y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f6618z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f6594b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6595c = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f6609q = {2, 3, 4, 5, 1, 6, 7};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6610r = 7;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public byte f6611s = DhcpPacket.DHCP_DOMAIN_NAME;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6612t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6613u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6614v = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            it.this.f6616x = false;
            u0.d.x0(0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            it itVar = it.this;
            z.k.s(227, 50, itVar.f6618z, itVar.A);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaPlayer mediaPlayer = it.this.f6615w;
            if (mediaPlayer != null) {
                mediaPlayer.stop();
                it.this.f6615w.reset();
                it.this.f6615w.release();
                it.this.f6615w = null;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Settings.System.putInt(App.c().getContentResolver(), "gps_auto_time", 1);
            Settings.Global.putInt(App.c().getContentResolver(), "auto_time", 1);
            Settings.Global.putInt(App.c().getContentResolver(), "auto_time_zone", 1);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            it itVar = it.this;
            if (itVar.F == 1) {
                itVar.F = 0;
            } else {
                itVar.F = 1;
            }
            u0.d.x0(itVar.F);
            a.f.p().w(" F005 runTest  handbrake n " + it.this.F);
            o1.m.a().postDelayed(it.this.I, 10000L);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(122, it.this.f6594b.b(8, 0));
            if (!it.P) {
                qt.y0(104, it.this.f6594b.b(1, 0));
                qt.y0(103, it.this.f6594b.b(5, 0));
                qt.y0(99, it.this.f6594b.b(2, 0));
                qt.y0(120, it.this.f6594b.b(7, 0));
                z.k.s(227, 44, it.this.f6594b.b(3, 0));
                z.k.s(227, 43, it.this.f6594b.b(1, 0));
                z.k.s(227, 42, it.this.f6594b.b(5, 0));
                return;
            }
            it.this.f6594b.e(1, 1);
            z.k.s(227, 43, 1);
            qt.y0(104, 1);
            it.this.f6594b.e(5, 1);
            z.k.s(227, 42, 1);
            qt.y0(103, 1);
            qt.y0(99, 1);
            it.this.f6594b.e(2, 1);
            qt.y0(120, 0);
            it.this.f6594b.e(7, 0);
            boolean unused = it.P = false;
        }
    }

    public class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f6625a = new Time();

        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f6625a = time;
            time.setToNow();
            long millis = this.f6625a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (it.this.L == millis && it.this.M == zIs24HourFormat) {
                return;
            }
            it.this.L = millis;
            it.this.M = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f6625a;
            z.k.s(227, 36, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    public it() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8318m = new int[]{33, 34, 36, 37, 38, 39, 41, 42, 55, 57, 58};
        this.f6616x = false;
        this.f6617y = new a();
        this.B = new b();
        this.C = new c();
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = new e();
        this.J = new f();
        this.K = new g();
        this.L = -1L;
        this.M = -1;
        this.N = 0;
        this.O = 0;
    }

    public static Process i3() {
        File file = new File("/system/xbin/ru");
        return file.exists() ? Runtime.getRuntime().exec(file.getAbsolutePath()) : Runtime.getRuntime().exec("su");
    }

    public static Process j3(String str) throws Throwable {
        Process processI3 = i3();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(processI3.getOutputStream());
            try {
                dataOutputStream2.writeBytes(str + "\n");
                dataOutputStream2.writeBytes("exit $?\n");
                try {
                    dataOutputStream2.close();
                } catch (IOException unused) {
                }
                return processI3;
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

    public static void m3() throws InterruptedException {
        j3("chmod 666 /dev/alarm").waitFor();
    }

    public static void o3(int i2, int i3) throws InterruptedException, IOException {
        m3();
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

    /* JADX WARN: Code duplicated, block: B:64:0x00e7  */
    @Override // k0.lt
    public void O2(int[] iArr) {
        super.O2(iArr);
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = 0;
        int i3 = iArr[0];
        int i4 = iArr[0];
        int i5 = iArr[1];
        if (i4 == 33) {
            this.N = nt.f8645g[23];
            if (i5 == 1) {
                h3(12, 1);
                return;
            }
            h3(12, 0);
        }
        if (i4 == 34) {
            this.N = nt.f8645g[11];
            if (i5 == 1) {
                h3(3, 1);
                return;
            } else {
                h3(3, 0);
                return;
            }
        }
        if (i4 == 41) {
            this.N = nt.f8645g[19] - 36;
            Log.d("voll", " MainServer F005 VA_CMD_AIR_TEMP_LEFT codeValue = " + i5 + " value = " + this.N);
            if (i5 == 1) {
                int i6 = this.N;
                if (i6 < 29) {
                    int i7 = i6 + 1;
                    this.N = i7;
                    h3(8, i7);
                    return;
                }
                return;
            }
            int i8 = this.N;
            if (i8 >= 0) {
                int i9 = i8 - 1;
                this.N = i9;
                h3(9, i9);
                return;
            }
            return;
        }
        if (i4 == 42) {
            int i10 = nt.f8645g[19] - 36;
            this.N = i10;
            if (i5 == 1) {
                if (i10 < 29) {
                    int i11 = i10 + 1;
                    this.N = i11;
                    h3(8, i11);
                    return;
                }
                return;
            }
            if (i10 > 0) {
                int i12 = i10 - 1;
                this.N = i12;
                h3(9, i12);
                return;
            }
            return;
        }
        if (i4 == 55) {
            int i13 = iArr[1];
            int i14 = nt.f8645g[19] - 36;
            this.N = i14;
            if (i13 < 1000) {
                if (i13 >= 18 && i13 <= 32) {
                    i2 = (i13 * 2) - 36;
                } else if (i13 > 32) {
                    i2 = 28;
                }
            } else if (i13 > 2000) {
                i2 = i14 + ((i13 - 2000) * 2);
                if (i2 > 28) {
                    i2 = 28;
                }
            } else {
                int i15 = i14 - ((i13 - 1000) * 2);
                if (i15 >= 0) {
                    i2 = i15;
                }
            }
            h3(8, i2);
            return;
        }
        if (i4 == 57) {
            this.N = nt.f8645g[22];
            if (i5 == 1) {
                h3(4, 1);
                return;
            } else {
                h3(4, 0);
                return;
            }
        }
        if (i4 == 58) {
            int i16 = iArr[1] & 255;
            if (i16 <= 7) {
                h3(6, i16);
                return;
            }
            return;
        }
        switch (i4) {
            case 36:
                this.N = nt.f8645g[20];
                if (i5 != 1) {
                    h3(0, 0);
                } else {
                    h3(0, 1);
                }
                break;
            case 37:
                this.N = nt.f8645g[13];
                if (i5 != 1) {
                    h3(2, 0);
                } else {
                    h3(2, 1);
                }
                break;
            case 38:
                this.N = nt.f8645g[12];
                if (i5 != 1) {
                    h3(1, 0);
                } else {
                    h3(1, 1);
                }
                break;
            case 39:
                int i17 = nt.f8645g[18];
                this.N = i17;
                if (i5 == -2) {
                    if (i17 > 0) {
                        this.N = i17 - 1;
                    }
                    h3(7, this.N);
                } else if (i5 == -1) {
                    if (i17 < 7) {
                        this.N = i17 + 1;
                    }
                    h3(6, this.N);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.K);
        z.k.s(227, 39, 16);
        z.k.s(227, 39, 23);
        z.k.s(227, 39, 25);
        o1.l.a().postDelayed(new d(), 30000L);
        z.k.s(227, 40, 0);
        qt.y0(61, 0);
        u0.b.Y3 = true;
        u0.b.f17371y0 = 1;
        u0.b.f17373z0 = 0;
        u0.b.A0 = 768;
        u0.b.B0 = 257;
        u0.b.C0 = 451;
        this.f6612t = a.i.k("ro.fyt.car_type", WindowManager.LayoutParams.TYPE_HIDDEN_NAV_CONSUMER);
        this.f6613u = a.i.k("ro.fyt.country", 0);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("net.easyconn.android.mirror.in");
        intentFilter.addAction("net.easyconn.android.mirror.out");
        intentFilter.addAction("net.easyconn.iphone.inner.mirror.in");
        intentFilter.addAction("net.easyconn.iphone.inner.mirror.out");
        intentFilter.addAction("net.easyconn.iphone.mirror.in");
        intentFilter.addAction("net.easyconn.iphone.mirror.out");
        this.D = new st();
        App.c().registerReceiver(this.D, intentFilter);
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, 36, (byte) time.hour, (byte) time.minute, (byte) time.second);
        this.f6594b.a();
        z.k.s(227, 44, this.f6594b.b(3, 0));
        qt.y0(107, this.f6594b.b(3, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -86) {
            Log.d("auto", "car foo5 0xaa auto test");
            int i5 = i2 + 1;
            pt.o(bArr, i5, bArr[i5]);
        }
        if (b3 == 65) {
            byte b4 = bArr[i2 + 1];
            this.f6596d = b4;
            this.f6597e = bArr[i2 + 2];
            this.f6598f = bArr[i2 + 3];
            this.f6599g = bArr[i2 + 4];
            this.f6600h = bArr[i2 + 5];
            this.f6601i = bArr[i2 + 6];
            qt.y0(128, b4 & 255);
            qt.y0(129, this.f6597e & 255);
            qt.y0(130, this.f6598f & 255);
            qt.y0(132, this.f6599g & 255);
            qt.y0(133, this.f6600h & 255);
            int i6 = this.f6598f & 255;
            if (((i6 > 0 && i6 < 47) || (i6 > 51 && i6 <= 59)) && !Q) {
                Q = true;
                u0.b.B0 = 436;
                u0.b.C0 = 385;
                qt.z0(131, new int[]{1}, ProxyProperties.LOCAL_EXCL_LIST);
            } else if ((i6 == 0 || (i6 >= 47 && i6 <= 51)) && Q) {
                Q = false;
                u0.b.B0 = 257;
                u0.b.C0 = 451;
                qt.z0(131, new int[]{0}, ProxyProperties.LOCAL_EXCL_LIST);
                g.a.f2181j = -1;
                u0.c.f17379f.c();
            }
            byte b5 = this.f6601i;
            if ((b5 & 255) == 1 || (b5 & 255) == 2) {
                try {
                    if (this.f6615w == null) {
                        y0.j.a3().Z0(22, new int[]{1}, null, null);
                        if (this.f6615w == null) {
                            this.f6615w = new MediaPlayer();
                        }
                        if ((this.f6601i & 255) == 2) {
                            this.f6615w = MediaPlayer.create(App.c(), R.raw.bjy);
                        } else {
                            this.f6615w = MediaPlayer.create(App.c(), R.raw.tsy);
                        }
                        this.f6615w.start();
                        o1.m.a().removeCallbacks(this.C);
                        o1.m.a().postDelayed(this.C, 3000L);
                        return;
                    }
                    return;
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (b3 == 112) {
            byte b6 = bArr[i2 + 2];
            this.f6597e = b6;
            byte b7 = bArr[i2 + 3];
            this.f6598f = b7;
            i4 = (b6 & 255) != 5 ? b7 & 255 : 5;
            a.f.p().w(" F005 0x70  EPB B1 = " + (this.f6597e & 255) + " B2 = " + ((int) this.f6598f) + " epb = " + i4);
            qt.y0(137, i4);
            return;
        }
        if (b3 == 113) {
            this.f6596d = bArr[i2 + 1];
            this.f6597e = bArr[i2 + 2];
            this.f6598f = bArr[i2 + 3];
            this.f6599g = bArr[i2 + 4];
            a.f.p().w(" F005 0x71  ESC = " + (this.f6599g & 255));
            if (this.f6613u != 0) {
                qt.y0(117, this.f6596d & 255);
                qt.y0(111, this.f6599g & 255);
            }
            qt.y0(135, this.f6597e & 255);
            qt.y0(136, this.f6598f & 255);
            return;
        }
        switch (b3) {
            case 15:
                a.f.p().x(" *** new 0x0f ** ", bArr, i2, i3);
                byte b8 = bArr[i2 + 1];
                this.f6596d = b8;
                n3(b8 & 3);
                break;
            case 16:
                byte b9 = bArr[i2 + 1];
                this.f6596d = b9;
                this.f6597e = bArr[i2 + 2];
                this.f6598f = bArr[i2 + 3];
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                this.f6601i = bArr[i2 + 6];
                this.f6602j = bArr[i2 + 7];
                this.f6603k = bArr[i2 + 8];
                qt.y0(85, b9 & 31);
                qt.y0(30, this.f6597e & 1);
                qt.y0(31, (this.f6597e >> 1) & 1);
                qt.y0(32, (this.f6597e >> 2) & 1);
                qt.y0(33, (this.f6597e >> 3) & 1);
                qt.y0(34, (this.f6597e >> 4) & 1);
                qt.y0(35, (this.f6597e >> 5) & 1);
                qt.y0(36, (this.f6597e >> 6) & 1);
                qt.y0(59, (this.f6597e >> 7) & 1);
                int i7 = (int) (((double) (((this.f6598f << 8) & 65280) | (this.f6599g & 255))) * 0.0625d);
                i4 = this.f6613u != 1 ? 15 : 5;
                if (i7 >= i4) {
                    if (!this.f6616x && u0.b.f17335k == 1) {
                        this.f6616x = true;
                        o1.m.a().postDelayed(this.f6617y, 10000L);
                    }
                } else if (i7 < i4) {
                    this.f6616x = false;
                    a.f.p().w(" -- F005 -- 22  onHandle  iSpeed = " + i7 + " DataMain.sHandbrake = " + u0.b.f17335k);
                    o1.m.a().removeCallbacks(this.f6617y);
                    if (u0.b.f17335k == 0) {
                        u0.d.x0(1);
                    }
                }
                int i8 = this.f6614v;
                if (i8 >= 30 && i7 > i8) {
                    try {
                        MediaPlayer mediaPlayer = this.f6615w;
                        if (mediaPlayer == null) {
                            if (mediaPlayer == null) {
                                this.f6615w = new MediaPlayer();
                            }
                            this.f6615w = MediaPlayer.create(App.c(), R.raw.bjy);
                            a.f.p().w(" *** mSpeedAlarm mReleaseMedia bjy");
                            this.f6615w.start();
                            o1.m.a().removeCallbacks(this.C);
                            o1.m.a().postDelayed(this.C, 3000L);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                qt.y0(7, ((this.f6598f << 8) & 65280) | (this.f6599g & 255));
                qt.y0(37, ((this.f6600h << 8) & 65280) | (this.f6601i & 255));
                qt.y0(38, this.f6602j & 255);
                qt.y0(86, this.f6603k & 1);
                break;
            case 17:
                byte b10 = bArr[i2 + 1];
                this.f6596d = b10;
                this.f6597e = bArr[i2 + 2];
                this.f6598f = bArr[i2 + 3];
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                this.f6601i = bArr[i2 + 6];
                this.f6602j = bArr[i2 + 7];
                this.f6603k = bArr[i2 + 8];
                this.f6604l = bArr[i2 + 9];
                qt.y0(39, b10 & 3);
                if (this.f6613u == 0) {
                    qt.y0(111, this.f6597e & 3);
                    qt.y0(117, this.f6603k & 1);
                }
                qt.y0(101, this.f6598f & 1);
                qt.y0(92, this.f6599g & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(93, this.f6600h & 255);
                qt.y0(102, this.f6601i & 1);
                qt.y0(116, this.f6602j & 1);
                break;
            case 18:
                qt.y0(8, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) >> (-11999));
                break;
            case 19:
                byte b11 = bArr[i2 + 1];
                this.f6596d = b11;
                qt.y0(40, b11 & 1);
                qt.y0(41, (this.f6596d >> 1) & 1);
                qt.y0(60, (this.f6596d >> 2) & 1);
                break;
            case 20:
                byte b12 = bArr[i2 + 1];
                this.f6596d = b12;
                byte b13 = bArr[i2 + 2];
                this.f6597e = b13;
                this.f6598f = bArr[i2 + 3];
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                this.f6601i = bArr[i2 + 6];
                this.f6602j = bArr[i2 + 7];
                this.f6603k = bArr[i2 + 8];
                qt.y0(42, ((b12 << 8) & 65280) | (b13 & 255));
                qt.y0(43, this.f6598f & 1);
                qt.y0(44, (this.f6598f >> 1) & 1);
                qt.y0(45, (this.f6598f >> 2) & 3);
                qt.y0(46, (this.f6598f >> 4) & 3);
                qt.y0(61, (this.f6598f >> 6) & 1);
                qt.y0(47, ((this.f6599g << 8) & 65280) | (this.f6600h & 255));
                qt.y0(48, ((this.f6601i << 8) & 65280) | (this.f6602j & 255));
                qt.y0(87, this.f6603k & 3);
                qt.y0(88, (this.f6603k >> 2) & 15);
                break;
            case 21:
                byte b14 = bArr[i2 + 1];
                this.f6596d = b14;
                byte b15 = bArr[i2 + 2];
                this.f6597e = b15;
                byte b16 = bArr[i2 + 3];
                this.f6598f = b16;
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                this.f6601i = bArr[i2 + 6];
                this.f6602j = bArr[i2 + 7];
                int i9 = (b14 * 3600) + (b15 * DhcpPacket.DHCP_VENDOR_CLASS_ID) + b16;
                if (!l3()) {
                    qt.y0(49, i9);
                }
                byte b17 = this.f6596d;
                if (b17 < 0 || b17 > 23 || (b2 = this.f6597e) < 0 || b2 > 59) {
                    this.f6595c = false;
                } else {
                    this.f6595c = true;
                }
                if (b17 == 0 && this.f6597e == 0) {
                    this.f6595c = false;
                }
                if (l3()) {
                    this.f6595c = false;
                }
                if (this.f6595c) {
                    this.f6595c = false;
                    try {
                        o3(this.f6596d, this.f6597e);
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    } catch (InterruptedException e5) {
                        e5.printStackTrace();
                    }
                }
                qt.y0(50, this.f6599g);
                byte b18 = this.f6599g;
                if (b18 == 0) {
                    this.f6614v = 0;
                } else {
                    this.f6614v = (b18 * 5) + 25;
                }
                int[] iArr = new int[1];
                byte b19 = this.f6600h;
                if (b19 > 10) {
                    b19 = 10;
                }
                iArr[0] = b19;
                qt.y0(51, iArr);
                qt.y0(118, this.f6601i & 1);
                qt.y0(119, this.f6602j & 255);
                break;
            case 22:
                byte b20 = bArr[i2 + 1];
                this.f6596d = b20;
                this.f6597e = bArr[i2 + 2];
                this.f6598f = bArr[i2 + 3];
                qt.y0(52, b20 & 1);
                qt.y0(53, (this.f6596d >> 1) & 1);
                qt.y0(54, (this.f6596d >> 2) & 1);
                qt.y0(94, this.f6598f & 3);
                break;
            case 23:
                byte b21 = bArr[i2 + 1];
                this.f6596d = b21;
                this.f6597e = bArr[i2 + 2];
                this.f6598f = bArr[i2 + 3];
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                this.f6601i = bArr[i2 + 6];
                this.f6602j = bArr[i2 + 7];
                qt.y0(11, b21 & 7);
                qt.y0(20, (this.f6596d >> 3) & 1);
                qt.y0(12, (this.f6596d >> 7) & 1);
                qt.y0(23, (this.f6596d >> 4) & 1);
                qt.y0(13, (this.f6597e >> 1) & 1);
                int i10 = (this.f6597e >> 2) & 7;
                this.f6605m = i10;
                if (i10 < 0) {
                    this.f6605m = 0;
                } else if (i10 > 7) {
                    this.f6605m = 7;
                }
                qt.y0(18, this.f6605m);
                this.f6606n = 0;
                this.f6607o = 0;
                this.f6608p = 0;
                byte b22 = this.f6597e;
                int i11 = (b22 >> 5) & 7;
                if (i11 == 0) {
                    this.f6607o = 1;
                } else if (i11 == 1) {
                    this.f6607o = 1;
                    this.f6608p = 1;
                } else if (i11 == 2) {
                    this.f6608p = 1;
                } else if (i11 == 3) {
                    this.f6606n = 1;
                    this.f6608p = 1;
                }
                qt.y0(17, (b22 >> 5) & 7);
                qt.y0(14, this.f6606n);
                qt.y0(15, this.f6607o);
                qt.y0(16, this.f6608p);
                qt.y0(19, this.f6598f + 36);
                qt.y0(21, this.f6599g);
                qt.y0(22, this.f6600h & 1);
                qt.y0(105, this.f6602j & 1);
                break;
            case 24:
                byte b23 = bArr[i2 + 1];
                this.f6596d = b23;
                this.f6597e = bArr[i2 + 2];
                this.f6598f = bArr[i2 + 3];
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                this.f6601i = bArr[i2 + 6];
                this.f6602j = bArr[i2 + 7];
                this.f6603k = bArr[i2 + 8];
                if (nt.W == 0) {
                    qt.y0(1, (b23 >> 7) & 1);
                    qt.y0(2, this.f6597e & 1);
                } else {
                    qt.y0(2, (b23 >> 7) & 1);
                    qt.y0(1, this.f6597e & 1);
                }
                qt.y0(4, (this.f6597e >> 1) & 1);
                qt.y0(3, (this.f6597e >> 2) & 1);
                qt.y0(5, (this.f6597e >> 3) & 1);
                qt.y0(0, (this.f6597e >> 6) & 1);
                qt.y0(55, (this.f6597e >> 7) & 1);
                qt.y0(56, this.f6598f & 1);
                qt.y0(89, this.f6599g & 3);
                qt.y0(95, this.f6600h & 1);
                qt.y0(96, this.f6601i & 3);
                qt.y0(97, this.f6602j & 1);
                qt.y0(106, this.f6603k & 1);
                break;
            case 25:
                byte b24 = bArr[i2 + 1];
                this.f6596d = b24;
                this.f6597e = bArr[i2 + 2];
                int i12 = b24 & DhcpPacket.DHCP_DOMAIN_NAME;
                this.f6610r = i12;
                if (i12 > 7) {
                    this.f6610r = 7;
                }
                qt.y0(57, this.f6609q[this.f6610r]);
                qt.y0(58, this.f6597e & 1);
                break;
            case 26:
                byte b25 = bArr[i2 + 1];
                this.f6596d = b25;
                this.f6597e = bArr[i2 + 2];
                this.f6598f = bArr[i2 + 3];
                this.f6599g = bArr[i2 + 4];
                this.f6600h = bArr[i2 + 5];
                qt.y0(123, b25 & 255);
                qt.y0(124, this.f6597e & 255);
                qt.y0(125, this.f6598f & 255);
                qt.y0(126, this.f6599g & 255);
                qt.y0(127, this.f6600h & 255);
                break;
            case 27:
                if (!Q) {
                    byte b26 = bArr[i2 + 1];
                    this.f6596d = b26;
                    this.f6597e = bArr[i2 + 2];
                    qt.y0(109, b26 & 127);
                    qt.y0(110, this.f6597e & DhcpPacket.DHCP_DOMAIN_NAME);
                    break;
                }
                break;
            case 28:
                byte b27 = bArr[i2 + 1];
                this.f6596d = b27;
                byte b28 = bArr[i2 + 2];
                this.f6597e = b28;
                qt.y0(113, ((b28 & 255) << 8) | (b27 & 255));
                break;
            case 29:
                int i13 = i2 + 1;
                if (this.f6611s != bArr[i13]) {
                    byte b29 = bArr[i13];
                    this.f6596d = b29;
                    this.f6611s = b29;
                    qt.y0(115, b29 & 1);
                    if ((this.f6596d & 1) == 1) {
                        P = true;
                    }
                    o1.m.a().postDelayed(this.J, 500L);
                    break;
                }
                break;
            case 30:
                byte b30 = bArr[i2 + 1];
                this.f6596d = b30;
                if ((b30 & 1) != 1) {
                    qt.y0(121, 0);
                } else {
                    qt.y0(121, 1);
                    qt.y0(121, 0);
                }
                break;
            case 31:
                byte b31 = bArr[i2 + 1];
                this.f6596d = b31;
                qt.y0(134, b31 & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f6594b.j();
        if (this.D != null) {
            App.c().unregisterReceiver(this.D);
        }
        qt.q0(this.K);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 150) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        int i4 = 5;
        switch (i2) {
            case 1:
                if (k3(iArr, 1)) {
                    z.k.s(227, 32, iArr[0]);
                    Log.i("LLL", "C_CMD_BATTERY : 0xE3, 0x20, " + iArr[0]);
                }
                break;
            case 2:
                if (k3(iArr, 1)) {
                    int[] iArr2 = new int[3];
                    iArr2[0] = 227;
                    iArr2[1] = 35;
                    iArr2[2] = iArr[0] <= 0 ? 0 : 1;
                    z.k.s(iArr2);
                }
                break;
            case 3:
                if (k3(iArr, 1)) {
                    z.k.s(227, 37, iArr[0], 0);
                }
                break;
            case 4:
                if (k3(iArr, 1)) {
                    z.k.s(227, 38, iArr[0]);
                }
                break;
            case 5:
                if (k3(iArr, 1)) {
                    z.k.s(227, 39, iArr[0]);
                }
                break;
            case 6:
                if (k3(iArr, 1)) {
                    z.k.s(227, 40, iArr[0]);
                }
                break;
            case 8:
                if (k3(iArr, 1)) {
                    z.k.s(227, 41, iArr[0]);
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (this.f6613u != 0) {
                        z.k.s(227, 69, 0, iArr[0]);
                        a.f.p().w(" F005 ESC writeMcu  0x45 , 0x00 , " + iArr[0]);
                    } else {
                        z.k.s(227, 45, iArr[0]);
                        a.f.p().w(" F005 ESC writeMcu  0x2D , " + iArr[0]);
                    }
                    Log.i("LLL", "C_CMD_DRIVE_NONSLIP : 0xE3, 0x2D, " + iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(99, iArr[0]);
                    this.f6594b.e(2, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(103, iArr[0]);
                    this.f6594b.e(5, iArr[0]);
                    z.k.s(227, 42, iArr[0]);
                    Log.i("LLL", "C_CMD_AIR_AUTOClEAN : 0xE3, 0x2A, " + iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(104, iArr[0]);
                    this.f6594b.e(1, iArr[0]);
                    z.k.s(227, 43, iArr[0]);
                    Log.i("LLL", "C_CMD_INCAR_AUTOVENTILATION : 0xE3, 0x2B, " + iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(107, iArr[0]);
                    this.f6594b.e(3, iArr[0]);
                    z.k.s(227, 44, iArr[0]);
                    Log.i("LLL", "C_CMD_INCAR_AUTOLOCK : 0xE3, 0x2C, " + iArr[0]);
                    break;
                }
                break;
            case 15:
                if (k3(iArr, 2)) {
                    Log.i("LLL", "C_CMD_AIRSET : 0xE3, 0x40, " + iArr[0] + "," + iArr[1]);
                    z.k.s(227, 64, iArr[0], iArr[1]);
                }
                break;
            case 16:
                if (k3(iArr, 1)) {
                    Log.i("LLL", "C_CMD_AUTOHOLD : 0xE3, 0x31, " + iArr[0]);
                    z.k.s(227, 49, iArr[0]);
                }
                break;
            case 17:
                if (k3(iArr, 1)) {
                    Log.i("LLL", "C_CMD_HAC : 0xE3, 0x2E, " + iArr[0]);
                    if (this.f6613u == 0) {
                        z.k.s(227, 46, iArr[0]);
                    } else {
                        z.k.s(227, 69, 1, iArr[0]);
                    }
                }
                break;
            case 18:
                if (k3(iArr, 2)) {
                    Log.i("LLL", "C_CMD_HAC : 0xE3, 0x32, " + iArr[0] + " " + iArr[1]);
                    this.f6618z = iArr[0];
                    this.A = iArr[1];
                    o1.m.a().removeCallbacks(this.B);
                    o1.m.a().postDelayed(this.B, 500L);
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(120, iArr[0]);
                    this.f6594b.e(7, iArr[0]);
                    Log.i("QQQQ", "ints[0] :" + iArr[0]);
                    break;
                }
                break;
            case 20:
                if (k3(iArr, 1)) {
                    Log.i("LLL", "C_CARINFO_AUTO_PARK : 0xE3, 0x38, " + iArr[0] + ProxyProperties.LOCAL_EXCL_LIST + iArr[1]);
                    qt.y0(122, iArr[1]);
                    this.f6594b.e(8, iArr[0]);
                    z.k.s(227, 56, iArr[0], iArr[1]);
                }
                break;
            case 21:
                if (k3(iArr, 1)) {
                    Log.i("driver", "C_CARINFO_SMART_DRIVER : 0xE3, 0x36, " + iArr[0] + " " + iArr[1]);
                    z.k.s(227, 54, iArr[0], iArr[1]);
                }
                break;
            case 22:
                if (k3(iArr, 1)) {
                    switch (iArr[0]) {
                        case 1:
                            i4 = 2;
                            i3 = 1;
                            break;
                        case 2:
                            i4 = 3;
                            i3 = 1;
                            break;
                        case 3:
                            i4 = 3;
                            i3 = 2;
                            break;
                        case 4:
                            i3 = 3;
                            i4 = i3;
                            break;
                        case 5:
                            i3 = 2;
                            i4 = 1;
                            break;
                        case 6:
                            i3 = 1;
                            i4 = i3;
                            break;
                        case 7:
                            i3 = 2;
                            i4 = 0;
                            break;
                        case 8:
                            i4 = 4;
                            i3 = 1;
                            break;
                        case 9:
                            i4 = 4;
                            i3 = 2;
                            break;
                        case 10:
                            i3 = 2;
                            break;
                        case 11:
                            i3 = 1;
                            break;
                        default:
                            i3 = 0;
                            i4 = i3;
                            break;
                    }
                    z.k.s(227, 66, i4, i3);
                }
                break;
            case 23:
                if (k3(iArr, 1)) {
                    Log.i("gdyy", "MS C_CARINFO_2020_DRIVERMODE : 0xE3, 0x43, " + iArr[0]);
                    z.k.s(227, 67, iArr[0]);
                }
                break;
            case 24:
                if (k3(iArr, 1)) {
                    Log.i("epb", "C_CMD_HDC : 0xE3, 0x45,0x02, " + iArr[0]);
                    z.k.s(227, 69, 2, iArr[0]);
                }
                break;
            case 25:
                if (k3(iArr, 1)) {
                    Log.i("epb", "C_CMD_AUTOHOLD_ENABLE : 0xE3, 0x45,0x03, " + iArr[0]);
                    z.k.s(227, 69, 3, iArr[0]);
                }
                break;
            case 26:
                if (k3(iArr, 1)) {
                    Log.i("epb", "C_CMD_EPB : 0xE3, 0x44, 0,1");
                    z.k.s(227, 68, 0, 1);
                }
                break;
        }
    }

    public final void h3(int i2, int i3) {
        z.k.s(227, 64, (byte) i2, (byte) i3);
        Log.d("voll", " MainServer F005 cmdAir 0x40 , " + i2 + " , " + i3);
    }

    public final boolean k3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean l3() {
        return Settings.System.getInt(App.c().getContentResolver(), "gps_auto_time", 1) == 1;
    }

    public final void n3(int i2) {
        a.f.p().w(" *** setLanguage  lang=  " + i2 + " DataMain.sLanguage = " + u0.b.K3);
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        if (i2 == 1 && u0.b.K3 != 4) {
            locale = Locale.ITALY;
        } else if (i2 == 2 && u0.b.K3 != 13) {
            locale = new Locale("pt", "BR");
        } else if (i2 == 0 && u0.b.K3 != 0) {
            locale = Locale.ENGLISH;
        }
        j.f.a(locale);
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        U2(bArr, i2, i3);
    }
}
