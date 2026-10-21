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
public class ct extends lt implements o1.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f4242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f4243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte f4244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f4246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f4247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f4248h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4249i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4250j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4251k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4252l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f4253m = {2, 3, 4, 5, 1, 6, 7, 0};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4254n = 7;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4255o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f4256p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4257q = -1;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f4258a = new Time();

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f4258a = time;
            time.setToNow();
            long millis = this.f4258a.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (ct.this.f4256p == millis && ct.this.f4257q == zIs24HourFormat) {
                return;
            }
            ct.this.f4256p = millis;
            ct.this.f4257q = zIs24HourFormat ? 1 : 0;
            Time time2 = this.f4258a;
            z.k.s(227, 36, (byte) time2.hour, (byte) time2.minute, (byte) time2.second);
        }
    }

    public static Process e3() {
        File file = new File("/system/xbin/ru");
        return file.exists() ? Runtime.getRuntime().exec(file.getAbsolutePath()) : Runtime.getRuntime().exec("su");
    }

    public static Process f3(String str) throws Throwable {
        Process processE3 = e3();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(processE3.getOutputStream());
            try {
                dataOutputStream2.writeBytes(str + "\n");
                dataOutputStream2.writeBytes("exit $?\n");
                try {
                    dataOutputStream2.close();
                } catch (IOException unused) {
                }
                return processE3;
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

    public static void i3() throws InterruptedException {
        f3("chmod 666 /dev/alarm").waitFor();
    }

    public static void j3(int i2, int i3) {
        try {
            i3();
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
        qt.z(this.f4255o);
        z.k.s(227, 39, 16);
        z.k.s(227, 39, 23);
        z.k.s(227, 39, 25);
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, 36, (byte) time.hour, (byte) time.minute, (byte) time.second);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case 16:
                byte b2 = bArr[i2 + 2];
                this.f4243c = b2;
                this.f4244d = bArr[i2 + 3];
                this.f4245e = bArr[i2 + 4];
                this.f4246f = bArr[i2 + 5];
                this.f4247g = bArr[i2 + 6];
                this.f4248h = bArr[i2 + 7];
                qt.y0(30, b2 & 1);
                qt.y0(31, (this.f4243c >> 1) & 1);
                qt.y0(32, (this.f4243c >> 2) & 1);
                qt.y0(33, (this.f4243c >> 3) & 1);
                qt.y0(34, (this.f4243c >> 4) & 1);
                qt.y0(35, (this.f4243c >> 5) & 1);
                qt.y0(36, (this.f4243c >> 6) & 1);
                qt.y0(59, (this.f4243c >> 7) & 1);
                qt.y0(7, ((this.f4244d << 8) & 65280) | (this.f4245e & 255));
                qt.y0(37, ((this.f4246f << 8) & 65280) | (this.f4247g & 255));
                qt.y0(38, this.f4248h & 255);
                break;
            case 17:
                byte b3 = bArr[i2 + 1];
                this.f4242b = b3;
                qt.y0(39, b3 & 3);
                break;
            case 18:
                qt.y0(8, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) >> (-11999));
                break;
            case 19:
                byte b4 = bArr[i2 + 1];
                this.f4242b = b4;
                qt.y0(40, b4 & 1);
                qt.y0(41, (this.f4242b >> 1) & 1);
                qt.y0(60, (this.f4242b >> 2) & 1);
                break;
            case 20:
                byte b5 = bArr[i2 + 1];
                this.f4242b = b5;
                byte b6 = bArr[i2 + 2];
                this.f4243c = b6;
                this.f4244d = bArr[i2 + 3];
                this.f4245e = bArr[i2 + 4];
                this.f4246f = bArr[i2 + 5];
                this.f4247g = bArr[i2 + 6];
                this.f4248h = bArr[i2 + 7];
                qt.y0(42, ((b5 << 8) & 65280) | (b6 & 255));
                qt.y0(43, this.f4244d & 1);
                qt.y0(44, (this.f4244d >> 1) & 1);
                qt.y0(45, (this.f4244d >> 2) & 3);
                qt.y0(46, (this.f4244d >> 4) & 3);
                qt.y0(61, (this.f4244d >> 6) & 1);
                qt.y0(47, ((this.f4245e << 8) & 65280) | (this.f4246f & 255));
                qt.y0(48, ((this.f4247g << 8) & 65280) | (this.f4248h & 255));
                break;
            case 21:
                byte b7 = bArr[i2 + 1];
                this.f4242b = b7;
                byte b8 = bArr[i2 + 2];
                this.f4243c = b8;
                byte b9 = bArr[i2 + 3];
                this.f4244d = b9;
                this.f4245e = bArr[i2 + 4];
                this.f4246f = bArr[i2 + 5];
                int i4 = (b7 * 3600) + (b8 * DhcpPacket.DHCP_VENDOR_CLASS_ID) + b9;
                if (!h3()) {
                    j3(this.f4242b, this.f4243c);
                    qt.y0(49, i4);
                }
                int i5 = (this.f4245e * 5) + 25;
                int[] iArr = new int[1];
                if (i5 == 25) {
                    i5 = -1;
                }
                iArr[0] = i5;
                qt.y0(50, iArr);
                int[] iArr2 = new int[1];
                byte b10 = this.f4246f;
                if (b10 > 10) {
                    b10 = 10;
                }
                iArr2[0] = b10;
                qt.y0(51, iArr2);
                break;
            case 22:
                byte b11 = bArr[i2 + 1];
                this.f4242b = b11;
                qt.y0(52, b11 & 1);
                qt.y0(53, (this.f4242b >> 1) & 1);
                qt.y0(54, (this.f4242b >> 2) & 1);
                break;
            case 23:
                byte b12 = bArr[i2 + 1];
                this.f4242b = b12;
                this.f4243c = bArr[i2 + 2];
                this.f4244d = bArr[i2 + 3];
                this.f4245e = bArr[i2 + 4];
                this.f4246f = bArr[i2 + 5];
                qt.y0(11, b12 & 7);
                qt.y0(20, (this.f4242b >> 3) & 1);
                qt.y0(12, (this.f4242b >> 7) & 1);
                qt.y0(13, (this.f4243c >> 1) & 1);
                int i6 = (this.f4243c >> 2) & 7;
                this.f4249i = i6;
                if (i6 < 0) {
                    this.f4249i = 0;
                } else if (i6 > 7) {
                    this.f4249i = 7;
                }
                qt.y0(18, this.f4249i);
                this.f4250j = 0;
                this.f4251k = 0;
                this.f4252l = 0;
                byte b13 = this.f4243c;
                int i7 = (b13 >> 5) & 7;
                if (i7 == 0) {
                    this.f4251k = 1;
                } else if (i7 == 1) {
                    this.f4251k = 1;
                    this.f4252l = 1;
                } else if (i7 == 2) {
                    this.f4252l = 1;
                } else if (i7 == 3) {
                    this.f4250j = 1;
                    this.f4252l = 1;
                }
                qt.y0(17, (b13 >> 5) & 7);
                qt.y0(14, this.f4250j);
                qt.y0(15, this.f4251k);
                qt.y0(16, this.f4252l);
                qt.y0(19, this.f4244d + 36);
                qt.y0(21, this.f4245e);
                qt.y0(22, this.f4246f & 1);
                break;
            case 24:
                byte b14 = bArr[i2 + 1];
                this.f4242b = b14;
                this.f4243c = bArr[i2 + 2];
                this.f4244d = bArr[i2 + 3];
                if (nt.W == 0) {
                    qt.y0(1, (b14 >> 7) & 1);
                    qt.y0(2, this.f4243c & 1);
                } else {
                    qt.y0(2, (b14 >> 7) & 1);
                    qt.y0(1, this.f4243c & 1);
                }
                qt.y0(4, (this.f4243c >> 1) & 1);
                qt.y0(3, (this.f4243c >> 2) & 1);
                qt.y0(5, (this.f4243c >> 3) & 1);
                qt.y0(0, (this.f4243c >> 6) & 1);
                qt.y0(55, (this.f4243c >> 7) & 1);
                qt.y0(56, this.f4244d & 1);
                break;
            case 25:
                byte b15 = bArr[i2 + 1];
                this.f4242b = b15;
                this.f4243c = bArr[i2 + 2];
                int i8 = b15 & DhcpPacket.DHCP_DOMAIN_NAME;
                this.f4254n = i8;
                if (i8 > 7) {
                    this.f4254n = 7;
                }
                qt.y0(57, this.f4253m[this.f4254n]);
                qt.y0(58, this.f4243c & 1);
                break;
            case 26:
                byte b16 = bArr[i2 + 1];
                this.f4242b = b16;
                this.f4243c = bArr[i2 + 2];
                this.f4244d = bArr[i2 + 3];
                this.f4245e = bArr[i2 + 4];
                this.f4246f = bArr[i2 + 5];
                this.f4247g = bArr[i2 + 6];
                qt.y0(64, (b16 >> 4) & 7);
                qt.y0(62, this.f4242b & 3);
                qt.y0(63, (this.f4242b >> 2) & 3);
                qt.y0(65, this.f4243c & 1);
                qt.y0(66, (this.f4243c >> 1) & 1);
                qt.y0(67, (this.f4243c >> 2) & 1);
                qt.y0(68, (this.f4243c >> 3) & 7);
                qt.y0(69, this.f4244d & 7);
                qt.y0(70, (this.f4244d >> 3) & 7);
                qt.y0(71, (this.f4244d >> 6) & 3);
                qt.y0(72, this.f4245e & 1);
                qt.y0(73, (this.f4245e >> 1) & 1);
                qt.y0(74, (this.f4245e >> 2) & 1);
                qt.y0(75, (this.f4245e >> 3) & 1);
                qt.y0(76, (this.f4245e >> 4) & 3);
                qt.y0(77, this.f4246f & 255);
                qt.y0(78, this.f4247g & 1);
                qt.y0(79, (this.f4247g >> 1) & 1);
                qt.y0(80, (this.f4247g >> 2) & 1);
                qt.y0(81, (this.f4247g >> 3) & 1);
                qt.y0(82, (this.f4247g >> 4) & 1);
                qt.y0(83, (this.f4247g >> 5) & 1);
                qt.y0(84, (this.f4247g >> 6) & 3);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f4255o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 1:
                if (g3(iArr, 1)) {
                    if (iArr[0] > 7) {
                        iArr[0] = 6;
                    } else if (iArr[0] <= 0) {
                        iArr[0] = 1;
                    }
                    int i3 = 0;
                    while (true) {
                        int[] iArr2 = this.f4253m;
                        if (i3 >= iArr2.length) {
                            z.k.s(227, 32, this.f4254n);
                        } else {
                            if (iArr[0] == iArr2[i3]) {
                                this.f4254n = i3;
                            }
                            i3++;
                        }
                    }
                }
                break;
            case 2:
                if (g3(iArr, 1)) {
                    int[] iArr3 = new int[3];
                    iArr3[0] = 227;
                    iArr3[1] = 35;
                    iArr3[2] = iArr[0] <= 0 ? 0 : 1;
                    z.k.s(iArr3);
                }
                break;
            case 3:
                if (g3(iArr, 1)) {
                    z.k.s(227, 37, iArr[0]);
                }
                break;
            case 4:
                if (g3(iArr, 1)) {
                    z.k.s(227, 38, iArr[0]);
                }
                break;
            case 5:
                if (g3(iArr, 1)) {
                    z.k.s(227, 39, iArr[0]);
                }
                break;
            case 6:
                if (g3(iArr, 1)) {
                    o1.b0.i("长程续航：" + iArr[0]);
                    z.k.s(227, 40, iArr[0]);
                }
                break;
            case 7:
                if (g3(iArr, 3)) {
                    z.k.s(227, 36, iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 8:
                if (g3(iArr, 2)) {
                    z.k.s(227, 41, iArr[0], iArr[1]);
                }
                break;
        }
    }

    public final boolean g3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean h3() {
        return Settings.System.getInt(App.c().getContentResolver(), "gps_auto_time", 1) == 1;
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        U2(bArr, i2, i3);
    }
}
