package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class dt extends lt implements o1.r {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static boolean f4630v = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f4632c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f4633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f4635f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f4636g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f4637h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f4638i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f4639j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f4640k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4641l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4642m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4643n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4644o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f4631b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f4645p = {2, 3, 4, 5, 1, 6, 7, 0};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4646q = 7;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4647r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f4648s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f4649t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f4650u = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!dt.f4630v) {
                qt.y0(104, dt.this.f4631b.b(1, 0));
                qt.y0(112, dt.this.f4631b.b(5, 0));
                qt.y0(99, dt.this.f4631b.b(2, 0));
                qt.y0(111, dt.this.f4631b.b(4, 0));
                z.k.s(227, 44, dt.this.f4631b.b(3, 0));
                z.k.s(227, 45, dt.this.f4631b.b(4, 0));
                z.k.s(227, 43, dt.this.f4631b.b(1, 0));
                z.k.s(227, 42, dt.this.f4631b.b(5, 0));
                return;
            }
            qt.y0(107, 0);
            qt.y0(104, 1);
            qt.y0(112, 1);
            qt.y0(99, 1);
            qt.y0(111, 1);
            z.k.s(227, 45, 1);
            z.k.s(227, 43, 1);
            z.k.s(227, 42, 1);
            boolean unused = dt.f4630v = false;
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f4652a = new Time();

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f4652a = time;
            time.setToNow();
            long millis = this.f4652a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (dt.this.f4649t == millis && dt.this.f4650u == zIs24HourFormat) {
                return;
            }
            dt.this.f4649t = millis;
            dt.this.f4650u = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f4652a;
            z.k.s(227, 36, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    public static Process h3() {
        File file = new File("/system/xbin/ru");
        return file.exists() ? Runtime.getRuntime().exec(file.getAbsolutePath()) : Runtime.getRuntime().exec("su");
    }

    public static Process i3(String str) throws Throwable {
        Process processH3 = h3();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(processH3.getOutputStream());
            try {
                dataOutputStream2.writeBytes(str + "\n");
                dataOutputStream2.writeBytes("exit $?\n");
                try {
                    dataOutputStream2.close();
                } catch (IOException unused) {
                }
                return processH3;
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

    public static void l3() throws InterruptedException {
        i3("chmod 666 /dev/alarm").waitFor();
    }

    public static void m3(int i2, int i3) {
        try {
            l3();
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, i2);
            calendar.set(12, i3);
            long timeInMillis = calendar.getTimeInMillis();
            if (timeInMillis / 1000 < 2147483647L) {
                SystemClock.setCurrentTimeMillis(timeInMillis);
            }
            if (Calendar.getInstance().getTimeInMillis() - timeInMillis <= 1000) {
            } else {
                throw new IOException("failed to set Date.");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f4648s);
        z.k.s(227, 39, 16);
        z.k.s(227, 39, 23);
        z.k.s(227, 39, 25);
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, 36, (byte) time.hour, (byte) time.minute, (byte) time.second);
        this.f4631b.a();
        o1.m.a().postDelayed(this.f4647r, 2000L);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case 16:
                byte b2 = bArr[i2 + 1];
                this.f4632c = b2;
                this.f4633d = bArr[i2 + 2];
                this.f4634e = bArr[i2 + 3];
                this.f4635f = bArr[i2 + 4];
                this.f4636g = bArr[i2 + 5];
                this.f4637h = bArr[i2 + 6];
                this.f4638i = bArr[i2 + 7];
                this.f4639j = bArr[i2 + 8];
                qt.y0(85, b2 & 31);
                qt.y0(30, this.f4633d & 1);
                qt.y0(31, (this.f4633d >> 1) & 1);
                qt.y0(32, (this.f4633d >> 2) & 1);
                qt.y0(33, (this.f4633d >> 3) & 1);
                qt.y0(34, (this.f4633d >> 4) & 1);
                qt.y0(35, (this.f4633d >> 5) & 1);
                qt.y0(36, (this.f4633d >> 6) & 1);
                qt.y0(59, (this.f4633d >> 7) & 1);
                qt.y0(7, ((this.f4634e << 8) & 65280) | (this.f4635f & 255));
                qt.y0(37, ((this.f4636g << 8) & 65280) | (this.f4637h & 255));
                qt.y0(38, this.f4638i & 255);
                qt.y0(86, this.f4639j & 1);
                break;
            case 17:
                byte b3 = bArr[i2 + 1];
                this.f4632c = b3;
                this.f4633d = bArr[i2 + 2];
                this.f4634e = bArr[i2 + 3];
                this.f4635f = bArr[i2 + 4];
                this.f4636g = bArr[i2 + 5];
                this.f4637h = bArr[i2 + 6];
                this.f4638i = bArr[i2 + 7];
                this.f4639j = bArr[i2 + 8];
                this.f4640k = bArr[i2 + 9];
                qt.y0(39, b3 & 3);
                qt.y0(100, this.f4633d & 3);
                qt.y0(101, this.f4634e & 1);
                qt.y0(92, this.f4635f & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(93, this.f4636g & 255);
                qt.y0(102, this.f4637h & 1);
                qt.y0(114, this.f4639j & 1);
                break;
            case 18:
                qt.y0(8, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) >> (-11999));
                break;
            case 19:
                byte b4 = bArr[i2 + 1];
                this.f4632c = b4;
                qt.y0(40, b4 & 1);
                qt.y0(41, (this.f4632c >> 1) & 1);
                qt.y0(60, (this.f4632c >> 2) & 1);
                break;
            case 20:
                byte b5 = bArr[i2 + 1];
                this.f4632c = b5;
                byte b6 = bArr[i2 + 2];
                this.f4633d = b6;
                this.f4634e = bArr[i2 + 3];
                this.f4635f = bArr[i2 + 4];
                this.f4636g = bArr[i2 + 5];
                this.f4637h = bArr[i2 + 6];
                this.f4638i = bArr[i2 + 7];
                this.f4639j = bArr[i2 + 8];
                qt.y0(42, ((b5 << 8) & 65280) | (b6 & 255));
                qt.y0(43, this.f4634e & 1);
                qt.y0(44, (this.f4634e >> 1) & 1);
                qt.y0(45, (this.f4634e >> 2) & 3);
                qt.y0(46, (this.f4634e >> 4) & 3);
                qt.y0(61, (this.f4634e >> 6) & 1);
                qt.y0(47, ((this.f4635f << 8) & 65280) | (this.f4636g & 255));
                qt.y0(48, ((this.f4637h << 8) & 65280) | (this.f4638i & 255));
                qt.y0(87, this.f4639j & 3);
                qt.y0(88, (this.f4639j >> 2) & 15);
                break;
            case 21:
                byte b7 = bArr[i2 + 1];
                this.f4632c = b7;
                byte b8 = bArr[i2 + 2];
                this.f4633d = b8;
                byte b9 = bArr[i2 + 3];
                this.f4634e = b9;
                this.f4635f = bArr[i2 + 4];
                this.f4636g = bArr[i2 + 5];
                int i4 = (b7 * 3600) + (b8 * DhcpPacket.DHCP_VENDOR_CLASS_ID) + b9;
                if (!k3()) {
                    m3(this.f4632c, this.f4633d);
                    qt.y0(49, i4);
                }
                int i5 = (this.f4635f * 5) + 25;
                int[] iArr = new int[1];
                if (i5 == 25) {
                    i5 = -1;
                }
                iArr[0] = i5;
                qt.y0(50, iArr);
                int[] iArr2 = new int[1];
                byte b10 = this.f4636g;
                if (b10 > 10) {
                    b10 = 10;
                }
                iArr2[0] = b10;
                qt.y0(51, iArr2);
                break;
            case 22:
                byte b11 = bArr[i2 + 1];
                this.f4632c = b11;
                this.f4633d = bArr[i2 + 2];
                this.f4634e = bArr[i2 + 3];
                qt.y0(52, b11 & 1);
                qt.y0(53, (this.f4632c >> 1) & 1);
                qt.y0(54, (this.f4632c >> 2) & 1);
                qt.y0(94, this.f4634e & 3);
                break;
            case 23:
                byte b12 = bArr[i2 + 1];
                this.f4632c = b12;
                this.f4633d = bArr[i2 + 2];
                this.f4634e = bArr[i2 + 3];
                this.f4635f = bArr[i2 + 4];
                this.f4636g = bArr[i2 + 5];
                this.f4637h = bArr[i2 + 6];
                this.f4638i = bArr[i2 + 7];
                qt.y0(11, b12 & 7);
                qt.y0(20, (this.f4632c >> 3) & 1);
                qt.y0(12, (this.f4632c >> 7) & 1);
                qt.y0(13, (this.f4633d >> 1) & 1);
                int i6 = (this.f4633d >> 2) & 7;
                this.f4641l = i6;
                if (i6 < 0) {
                    this.f4641l = 0;
                } else if (i6 > 7) {
                    this.f4641l = 7;
                }
                qt.y0(18, this.f4641l);
                this.f4642m = 0;
                this.f4643n = 0;
                this.f4644o = 0;
                byte b13 = this.f4633d;
                int i7 = (b13 >> 5) & 7;
                if (i7 == 0) {
                    this.f4643n = 1;
                } else if (i7 == 1) {
                    this.f4643n = 1;
                    this.f4644o = 1;
                } else if (i7 == 2) {
                    this.f4644o = 1;
                } else if (i7 == 3) {
                    this.f4642m = 1;
                    this.f4644o = 1;
                }
                qt.y0(17, (b13 >> 5) & 7);
                qt.y0(14, this.f4642m);
                qt.y0(15, this.f4643n);
                qt.y0(16, this.f4644o);
                qt.y0(19, this.f4634e + 36);
                qt.y0(21, this.f4635f);
                qt.y0(22, this.f4636g & 1);
                qt.y0(103, this.f4637h & 1);
                qt.y0(105, this.f4638i & 1);
                break;
            case 24:
                byte b14 = bArr[i2 + 1];
                this.f4632c = b14;
                this.f4633d = bArr[i2 + 2];
                this.f4634e = bArr[i2 + 3];
                this.f4635f = bArr[i2 + 4];
                this.f4636g = bArr[i2 + 5];
                this.f4637h = bArr[i2 + 6];
                this.f4638i = bArr[i2 + 7];
                this.f4639j = bArr[i2 + 8];
                if (nt.W == 0) {
                    qt.y0(1, (b14 >> 7) & 1);
                    qt.y0(2, this.f4633d & 1);
                } else {
                    qt.y0(2, (b14 >> 7) & 1);
                    qt.y0(1, this.f4633d & 1);
                }
                qt.y0(4, (this.f4633d >> 1) & 1);
                qt.y0(3, (this.f4633d >> 2) & 1);
                qt.y0(5, (this.f4633d >> 3) & 1);
                qt.y0(0, (this.f4633d >> 6) & 1);
                qt.y0(55, (this.f4633d >> 7) & 1);
                qt.y0(56, this.f4634e & 1);
                qt.y0(89, this.f4635f & 3);
                qt.y0(95, this.f4636g & 1);
                qt.y0(96, this.f4637h & 3);
                qt.y0(97, this.f4638i & 1);
                qt.y0(106, this.f4639j & 1);
                break;
            case 25:
                byte b15 = bArr[i2 + 1];
                this.f4632c = b15;
                this.f4633d = bArr[i2 + 2];
                int i8 = b15 & DhcpPacket.DHCP_DOMAIN_NAME;
                this.f4646q = i8;
                if (i8 > 7) {
                    this.f4646q = 7;
                }
                qt.y0(57, this.f4645p[this.f4646q]);
                qt.y0(58, this.f4633d & 1);
                break;
            case 27:
                byte b16 = bArr[i2 + 1];
                this.f4632c = b16;
                this.f4633d = bArr[i2 + 2];
                qt.y0(109, b16 & 127);
                qt.y0(110, this.f4633d & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 28:
                byte b17 = bArr[i2 + 1];
                this.f4632c = b17;
                byte b18 = bArr[i2 + 2];
                this.f4633d = b18;
                qt.y0(113, ((b18 & 255) << 8) | (b17 & 255));
                break;
            case 29:
                byte b19 = bArr[i2 + 1];
                this.f4632c = b19;
                qt.y0(115, b19 & 1);
                if ((this.f4632c & 1) == 1) {
                    f4630v = true;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4631b.j();
        qt.q0(this.f4648s);
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
            case 1:
                if (j3(iArr, 1)) {
                    if (iArr[0] > 7) {
                        iArr[0] = 6;
                    } else if (iArr[0] <= 0) {
                        iArr[0] = 1;
                    }
                    int i3 = 0;
                    while (true) {
                        int[] iArr2 = this.f4645p;
                        if (i3 >= iArr2.length) {
                            z.k.s(227, 32, this.f4646q);
                        } else {
                            if (iArr[0] == iArr2[i3]) {
                                this.f4646q = i3;
                            }
                            i3++;
                        }
                    }
                }
                break;
            case 2:
                if (j3(iArr, 1)) {
                    int[] iArr3 = new int[3];
                    iArr3[0] = 227;
                    iArr3[1] = 35;
                    iArr3[2] = iArr[0] <= 0 ? 0 : 1;
                    z.k.s(iArr3);
                }
                break;
            case 3:
                if (j3(iArr, 1)) {
                    z.k.s(227, 37, iArr[0], iArr[1]);
                }
                break;
            case 4:
                if (j3(iArr, 1)) {
                    z.k.s(227, 38, iArr[0]);
                }
                break;
            case 5:
                if (j3(iArr, 1)) {
                    z.k.s(227, 39, iArr[0]);
                }
                break;
            case 6:
                if (j3(iArr, 1)) {
                    o1.b0.i("����������" + iArr[0]);
                    z.k.s(227, 40, iArr[0]);
                }
                break;
            case 7:
                if (j3(iArr, 3)) {
                    z.k.s(227, 36, iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 8:
                if (j3(iArr, 1)) {
                    o1.b0.i("��ȫ��ʻ��" + iArr[0]);
                    z.k.s(227, 41, iArr[0]);
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(111, iArr[0]);
                    this.f4631b.e(4, iArr[0]);
                    z.k.s(227, 45, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(99, iArr[0]);
                    this.f4631b.e(2, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(112, iArr[0]);
                    this.f4631b.e(5, iArr[0]);
                    z.k.s(227, 42, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(104, iArr[0]);
                    this.f4631b.e(1, iArr[0]);
                    z.k.s(227, 43, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    qt.y0(107, iArr[0]);
                    this.f4631b.e(3, iArr[0]);
                    z.k.s(227, 44, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (j3(iArr, 1)) {
                    z.k.s(227, 46, iArr[0]);
                }
                break;
        }
    }

    public final boolean j3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean k3() {
        return Settings.System.getInt(App.c().getContentResolver(), "gps_auto_time", 1) == 1;
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        U2(bArr, i2, i3);
    }
}
