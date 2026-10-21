package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class oj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8859b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8862e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8860c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8861d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}, new int[]{24, 1}, new int[]{34, 5}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8863f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8864g = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{6, 6}, new int[]{40, 18}, new int[]{43, 5}, new int[]{44, 2}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8865h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f8866i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8867j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8868k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8869l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8870m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8871n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8872o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8873p = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (oj.this.f8866i == millis && oj.this.f8867j == zIs24HourFormat) {
                return;
            }
            oj.this.f8866i = millis;
            oj.this.f8867j = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, zIs24HourFormat ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 2);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oj.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(oj.this.f8871n);
            oj.this.f8869l = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oj ojVar = oj.this;
            int i2 = ojVar.f8869l - 1;
            ojVar.f8869l = i2;
            if (i2 <= 0) {
                l0.b0.p0(ojVar.f8871n);
                oj.this.f8869l = 5;
            } else if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 217) {
                    z.k.s(227, 2, 36, 9, 23);
                } else {
                    if (i3 != 218) {
                        return;
                    }
                    z.k.s(227, 2, 36, 25, 23);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = h0.c.f2437h;
            if (str == null || str.isEmpty()) {
                oj.this.i3(h0.c.f2455t);
            } else {
                oj.this.i3(h0.c.f2437h);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                oj.this.i3(h0.c.f2437h);
                return;
            }
            String str = h0.c.f2437h;
            if (str == null || str.isEmpty()) {
                oj.this.i3(h0.c.f2455t);
            } else {
                oj.this.i3(h0.c.f2437h);
            }
        }
    }

    public static void a3() {
        byte b2;
        byte b3;
        int[] iArr = new int[34];
        int i2 = 0;
        for (int i3 = 0; i3 < 34; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 32;
        iArr[1] = 145;
        iArr[2] = 1;
        iArr[3] = b3();
        switch (u0.b.D) {
            case 1:
                int i4 = w0.d.f17796h;
                if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                    if (i4 - 65536 == 0) {
                        byte b4 = (byte) 1;
                        iArr[4] = 70;
                        byte b5 = (byte) (b4 + 1);
                        iArr[b4 + 4] = 77;
                        b2 = (byte) (b5 + 1);
                        iArr[b5 + 4] = 49;
                    } else if (1 == i4 - 65536) {
                        byte b6 = (byte) 1;
                        iArr[4] = 70;
                        byte b7 = (byte) (b6 + 1);
                        iArr[b6 + 4] = 77;
                        b2 = (byte) (b7 + 1);
                        iArr[b7 + 4] = 50;
                    } else {
                        byte b8 = (byte) 1;
                        iArr[4] = 70;
                        byte b9 = (byte) (b8 + 1);
                        iArr[b8 + 4] = 77;
                        b2 = (byte) (b9 + 1);
                        iArr[b9 + 4] = 50;
                    }
                    byte b10 = (byte) (b2 + 1);
                    iArr[b2 + 4] = 32;
                    byte b11 = (byte) (b10 + 1);
                    iArr[b10 + 4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                    byte b12 = (byte) (b11 + 1);
                    iArr[b11 + 4] = 32;
                    byte b13 = (byte) (b12 + 1);
                    int i5 = b12 + 4;
                    int i6 = w0.d.f17797i;
                    iArr[i5] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    byte b14 = (byte) (b13 + 1);
                    iArr[b13 + 4] = ((i6 % 10000) / 1000) + 48;
                    byte b15 = (byte) (b14 + 1);
                    iArr[b14 + 4] = ((i6 % 1000) / 100) + 48;
                    byte b16 = (byte) (b15 + 1);
                    iArr[b15 + 4] = 46;
                    byte b17 = (byte) (b16 + 1);
                    iArr[b16 + 4] = ((i6 % 100) / 10) + 48;
                    byte b18 = (byte) (b17 + 1);
                    iArr[b17 + 4] = (i6 % 10) + 48;
                    byte b19 = (byte) (b18 + 1);
                    iArr[b18 + 4] = 32;
                    byte b20 = (byte) (b19 + 1);
                    iArr[b19 + 4] = 77;
                    iArr[b20 + 4] = 72;
                    iArr[((byte) (b20 + 1)) + 4] = 90;
                } else {
                    if (i4 - 0 == 0) {
                        byte b21 = (byte) 1;
                        iArr[4] = 65;
                        byte b22 = (byte) (b21 + 1);
                        iArr[b21 + 4] = 77;
                        b3 = (byte) (b22 + 1);
                        iArr[b22 + 4] = 49;
                    } else {
                        byte b23 = (byte) 1;
                        iArr[4] = 65;
                        byte b24 = (byte) (b23 + 1);
                        iArr[b23 + 4] = 77;
                        b3 = (byte) (b24 + 1);
                        iArr[b24 + 4] = 50;
                    }
                    byte b25 = (byte) (b3 + 1);
                    iArr[b3 + 4] = 32;
                    byte b26 = (byte) (b25 + 1);
                    iArr[b25 + 4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                    byte b27 = (byte) (b26 + 1);
                    iArr[b26 + 4] = 32;
                    byte b28 = (byte) (b27 + 1);
                    int i7 = b27 + 4;
                    int i8 = w0.d.f17797i;
                    iArr[i7] = i8 / 10000 == 0 ? (i8 / 10000) + 32 : (i8 / 10000) + 48;
                    byte b29 = (byte) (b28 + 1);
                    iArr[b28 + 4] = (i8 % 10000) / 1000 == 0 ? ((i8 % 10000) / 1000) + 32 : ((i8 % 10000) / 1000) + 48;
                    byte b30 = (byte) (b29 + 1);
                    iArr[b29 + 4] = ((i8 % 1000) / 100) + 48;
                    byte b31 = (byte) (b30 + 1);
                    iArr[b30 + 4] = ((i8 % 100) / 10) + 48;
                    byte b32 = (byte) (b31 + 1);
                    iArr[b31 + 4] = (i8 % 10) + 48;
                    byte b33 = (byte) (b32 + 1);
                    iArr[b32 + 4] = 32;
                    byte b34 = (byte) (b33 + 1);
                    iArr[b33 + 4] = 75;
                    iArr[b34 + 4] = 72;
                    iArr[((byte) (b34 + 1)) + 4] = 90;
                }
                break;
            case 2:
                byte b35 = (byte) 1;
                iArr[4] = 32;
                byte b36 = (byte) (b35 + 1);
                iArr[b35 + 4] = 66;
                byte b37 = (byte) (b36 + 1);
                iArr[b36 + 4] = 84;
                byte b38 = (byte) (b37 + 1);
                iArr[b37 + 4] = 32;
                byte b39 = (byte) (b38 + 1);
                iArr[b38 + 4] = 80;
                byte b40 = (byte) (b39 + 1);
                iArr[b39 + 4] = 72;
                byte b41 = (byte) (b40 + 1);
                iArr[b40 + 4] = 79;
                byte b42 = (byte) (b41 + 1);
                iArr[b41 + 4] = 78;
                iArr[b42 + 4] = 69;
                iArr[((byte) (b42 + 1)) + 4] = 32;
                break;
            case 3:
                byte b43 = (byte) 1;
                iArr[4] = 32;
                byte b44 = (byte) (b43 + 1);
                iArr[b43 + 4] = 66;
                byte b45 = (byte) (b44 + 1);
                iArr[b44 + 4] = 84;
                byte b46 = (byte) (b45 + 1);
                iArr[b45 + 4] = 32;
                byte b47 = (byte) (b46 + 1);
                iArr[b46 + 4] = 65;
                iArr[b47 + 4] = 86;
                iArr[((byte) (b47 + 1)) + 4] = 32;
                break;
            case 4:
                if (o0.e.C != 0) {
                    byte b48 = (byte) 1;
                    iArr[4] = 77;
                    byte b49 = (byte) (b48 + 1);
                    iArr[b48 + 4] = 69;
                    byte b50 = (byte) (b49 + 1);
                    iArr[b49 + 4] = 68;
                    byte b51 = (byte) (b50 + 1);
                    iArr[b50 + 4] = 73;
                    byte b52 = (byte) (b51 + 1);
                    iArr[b51 + 4] = 65;
                    byte b53 = (byte) (b52 + 1);
                    iArr[b52 + 4] = 32;
                    int i9 = o0.e.B % 10000;
                    byte b54 = (byte) (b53 + 1);
                    iArr[b53 + 4] = (i9 / 1000) + 48;
                    byte b55 = (byte) (b54 + 1);
                    iArr[b54 + 4] = ((i9 % 1000) / 100) + 48;
                    byte b56 = (byte) (b55 + 1);
                    iArr[b55 + 4] = ((i9 % 100) / 10) + 48;
                    byte b57 = (byte) (b56 + 1);
                    iArr[b56 + 4] = (i9 % 10) + 48;
                    int i10 = o0.e.f16794r;
                    int i11 = (i10 / 60) % 60;
                    byte b58 = (byte) (b57 + 1);
                    iArr[b57 + 4] = 32;
                    byte b59 = (byte) (b58 + 1);
                    iArr[b58 + 4] = (i11 / 10) + 48;
                    byte b60 = (byte) (b59 + 1);
                    iArr[b59 + 4] = (i11 % 10) + 48;
                    byte b61 = (byte) (b60 + 1);
                    iArr[b60 + 4] = 58;
                    int i12 = i10 % 60;
                    iArr[b61 + 4] = (i12 / 10) + 48;
                    iArr[((byte) (b61 + 1)) + 4] = (i12 % 10) + 48;
                }
                break;
            case 5:
                byte b62 = (byte) 1;
                iArr[4] = 32;
                byte b63 = (byte) (b62 + 1);
                iArr[b62 + 4] = 65;
                byte b64 = (byte) (b63 + 1);
                iArr[b63 + 4] = 85;
                iArr[b64 + 4] = 88;
                iArr[((byte) (b64 + 1)) + 4] = 32;
                break;
            case 6:
                if (d1.d.f1570c == 1) {
                    byte b65 = (byte) 1;
                    iArr[4] = 84;
                    byte b66 = (byte) (b65 + 1);
                    iArr[b65 + 4] = 86;
                    byte b67 = (byte) (b66 + 1);
                    iArr[b66 + 4] = 32;
                    int i13 = d1.d.f1572e;
                    if (i13 / 10 > 0) {
                        iArr[b67 + 4] = (i13 / 10) + 48;
                        b67 = (byte) (b67 + 1);
                    }
                    byte b68 = (byte) (b67 + 1);
                    iArr[b67 + 4] = (i13 % 10) + 48;
                    byte b69 = (byte) (b68 + 1);
                    iArr[b68 + 4] = 45;
                    int i14 = d1.d.f1571d / 100;
                    int i15 = i14 / 10000;
                    if (i15 > 0) {
                        iArr[b69 + 4] = i15 + 48;
                        b69 = (byte) (b69 + 1);
                    }
                    byte b70 = (byte) (b69 + 1);
                    iArr[b69 + 4] = ((i14 % 10000) / 1000) + 48;
                    byte b71 = (byte) (b70 + 1);
                    iArr[b70 + 4] = ((i14 % 1000) / 100) + 48;
                    byte b72 = (byte) (b71 + 1);
                    iArr[b71 + 4] = 46;
                    byte b73 = (byte) (b72 + 1);
                    iArr[b72 + 4] = ((i14 % 100) / 10) + 48;
                    byte b74 = (byte) (b73 + 1);
                    iArr[b73 + 4] = ((i14 % 10) / 1) + 48;
                    byte b75 = (byte) (b74 + 1);
                    iArr[b74 + 4] = 77;
                    iArr[b75 + 4] = 104;
                    iArr[((byte) (b75 + 1)) + 4] = 122;
                }
                break;
            case 7:
                byte b76 = (byte) 1;
                iArr[4] = 32;
                byte b77 = (byte) (b76 + 1);
                iArr[b76 + 4] = 73;
                byte b78 = (byte) (b77 + 1);
                iArr[b77 + 4] = 80;
                byte b79 = (byte) (b78 + 1);
                iArr[b78 + 4] = 79;
                iArr[b79 + 4] = 68;
                iArr[((byte) (b79 + 1)) + 4] = 32;
                break;
            case 8:
            case 9:
                if (u0.b.s3 != 0) {
                    byte b80 = (byte) 1;
                    iArr[4] = 77;
                    byte b81 = (byte) (b80 + 1);
                    iArr[b80 + 4] = 69;
                    byte b82 = (byte) (b81 + 1);
                    iArr[b81 + 4] = 68;
                    byte b83 = (byte) (b82 + 1);
                    iArr[b82 + 4] = 73;
                    byte b84 = (byte) (b83 + 1);
                    iArr[b83 + 4] = 65;
                    byte b85 = (byte) (b84 + 1);
                    iArr[b84 + 4] = 32;
                    int i16 = u0.b.r3 % 10000;
                    byte b86 = (byte) (b85 + 1);
                    iArr[b85 + 4] = (i16 / 1000) + 48;
                    byte b87 = (byte) (b86 + 1);
                    iArr[b86 + 4] = ((i16 % 1000) / 100) + 48;
                    byte b88 = (byte) (b87 + 1);
                    iArr[b87 + 4] = ((i16 % 100) / 10) + 48;
                    byte b89 = (byte) (b88 + 1);
                    iArr[b88 + 4] = (i16 % 10) + 48;
                    int i17 = u0.b.t3;
                    int i18 = (i17 / 60) % 60;
                    byte b90 = (byte) (b89 + 1);
                    iArr[b89 + 4] = 32;
                    byte b91 = (byte) (b90 + 1);
                    iArr[b90 + 4] = (i18 / 10) + 48;
                    byte b92 = (byte) (b91 + 1);
                    iArr[b91 + 4] = (i18 % 10) + 48;
                    byte b93 = (byte) (b92 + 1);
                    iArr[b92 + 4] = 58;
                    int i19 = i17 % 60;
                    iArr[b93 + 4] = (i19 / 10) + 48;
                    iArr[((byte) (b93 + 1)) + 4] = (i19 % 10) + 48;
                }
                break;
        }
        int[] iArr2 = new int[35];
        iArr2[0] = 227;
        while (i2 < 34) {
            int i20 = i2 + 1;
            iArr2[i20] = (byte) iArr[i2];
            i2 = i20;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0043  */
    /* JADX WARN: Code duplicated, block: B:5:0x000d  */
    public static int b3() {
        int i2 = 2;
        switch (u0.b.D) {
            case 0:
                i2 = 9;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 != i3 - 65536) {
                    if (2 == i3 - 65536) {
                        i2 = 3;
                    } else if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                if (o0.e.H != 1) {
                    i2 = 13;
                } else {
                    i2 = 6;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    public static int c3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 7;
            case 6:
                return 8;
            case 7:
                return 9;
            default:
                return 15;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        int i2 = nt.f8637c;
        if (i2 == 54 || i2 == 217 || i2 == 218) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8320o = 0;
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = null;
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8320o = 0;
        }
        qt.z(this.f8865h);
        qt.z(this.f8868k);
        h0.d.f2464c.a(this.f8872o, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.f8873p, 1);
        yVar.a(this.f8872o, 1);
        h0.d.f2468g.a(this.f8872o, 1);
        u0.c.f17386m.a(this.f8870m, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        String str;
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -101) {
            try {
                str = new String(bArr, i2 + 4, 48, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            qt.x0(125, str);
            return;
        }
        if (b2 == -32) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 32) {
                l0.b0.l0(75, 0);
                l0.b0.l0(75, 1);
                return;
            } else {
                if (b3 != 33) {
                    return;
                }
                l0.b0.l0(74, 0);
                l0.b0.l0(74, 1);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 33) {
            this.f8863f = bArr[i2 + 2] & 255;
            byte b4 = bArr[i2 + 3];
            int i7 = 0;
            while (true) {
                iArr = this.f8864g;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f8863f;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f8862e = i7;
                    break;
                }
                i7++;
            }
            if ((b4 & 255) != 0) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                int i9 = this.f8862e;
                if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 1);
                }
                this.f8862e = 255;
                return;
            }
        }
        if (b2 == 49) {
            int i10 = bArr[i2 + 2] & 255;
            int i11 = bArr[i2 + 3] & 255;
            int i12 = bArr[i2 + 4] & 255;
            int i13 = bArr[i2 + 6] & 255;
            int i14 = bArr[i2 + 7] & 255;
            int i15 = i2 + 8;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 9;
            int i18 = bArr[i17] & 255;
            int i19 = bArr[i2 + 11] & 255;
            int i20 = bArr[i2 + 12] & 255;
            int i21 = bArr[i2 + 13] & 255;
            qt.y0(10, (i10 >> 6) & 1);
            qt.y0(42, (i10 >> 4) & 1);
            qt.y0(13, (i10 >> 3) & 1);
            qt.y0(14, (i10 >> 2) & 1);
            qt.y0(11, (i10 >> 0) & 3);
            qt.y0(12, (i11 >> 4) & 1);
            qt.y0(16, (i12 >> 5) & 1);
            qt.y0(65, (i12 >> 4) & 1);
            int i22 = i13 & 255;
            if (i22 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i22 == 5) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (i22 != 6) {
                switch (i22) {
                    case 11:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 12:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 13:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 14:
                        i4 = 1;
                        i6 = i4;
                        i5 = i6;
                        break;
                    default:
                        i4 = 0;
                        i6 = i4;
                        i5 = i6;
                        break;
                }
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            qt.y0(77, i13);
            qt.y0(19, i4);
            qt.y0(20, i6);
            qt.y0(18, i5);
            qt.y0(21, i14 & 255);
            int i23 = i16;
            int i24 = i18;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i23 = bArr[i17];
                i24 = bArr[i15];
            }
            int i25 = i23 & 255;
            if (i25 == 254) {
                qt.y0(27, -2);
            } else if (i25 != 255) {
                qt.y0(27, i25);
            } else {
                qt.y0(27, -3);
            }
            int i26 = i24 & 255;
            if (i26 == 254) {
                qt.y0(28, -2);
            } else if (i26 != 255) {
                qt.y0(28, i26);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(44, i19 & 255);
            int i27 = i20 & 255;
            if (i27 == 254) {
                qt.y0(40, -2);
            } else if (i27 != 255) {
                qt.y0(40, i27);
            } else {
                qt.y0(40, -3);
            }
            u0.d.A3((i21 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(c3(bArr[i2 + 2] & 255));
            u0.d.S2(c3(bArr[i2 + 3] & 255));
            u0.d.T2(c3(bArr[i2 + 4] & 255));
            u0.d.U2(c3(bArr[i2 + 5] & 255));
            int i28 = i2 + 6;
            int i29 = bArr[i28] & 255;
            int i30 = i2 + 7;
            int i31 = bArr[i30] & 255;
            int i32 = i2 + 8;
            int i33 = bArr[i32] & 255;
            int i34 = i2 + 9;
            int i35 = bArr[i34] & 255;
            if (l0.c0.f13013g != i29 || l0.c0.f13014h != i31 || l0.c0.f13015i != i33 || l0.c0.f13016j != i35) {
                l0.c0.f13013g = i29;
                l0.c0.f13014h = i31;
                l0.c0.f13015i = i33;
                l0.c0.f13016j = i35;
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
            }
            u0.d.D2(c3(bArr[i28] & 255));
            u0.d.E2(c3(bArr[i30] & 255));
            u0.d.F2(c3(bArr[i32] & 255));
            u0.d.G2(c3(bArr[i34] & 255));
            return;
        }
        if (b2 == 97) {
            int i36 = i2 + 2;
            qt.y0(124, (bArr[i36] >> 5) & 1);
            qt.y0(110, (bArr[i36] >> 4) & 1);
            qt.y0(111, (bArr[i36] >> 0) & 15);
            int i37 = i2 + 3;
            qt.y0(112, (bArr[i37] >> 4) & 1);
            qt.y0(113, (bArr[i37] >> 0) & 15);
            qt.y0(114, (bArr[i2 + 4] >> 4) & 1);
            int i38 = i2 + 5;
            qt.y0(115, (bArr[i38] >> 4) & 15);
            qt.y0(116, (bArr[i38] >> 0) & 1);
            int i39 = i2 + 6;
            qt.y0(117, (bArr[i39] >> 4) & 1);
            qt.y0(118, (bArr[i39] >> 0) & 1);
            int i40 = i2 + 7;
            qt.y0(119, (bArr[i40] >> 4) & 1);
            qt.y0(120, (bArr[i40] >> 0) & 15);
            int i41 = i2 + 8;
            qt.y0(121, (bArr[i41] >> 4) & 1);
            qt.y0(122, (bArr[i41] >> 0) & 1);
            qt.y0(123, (bArr[i2 + 9] >> 4) & 1);
            return;
        }
        if (b2 != 17) {
            if (b2 != 18) {
                return;
            }
            byte b5 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        this.f8860c = bArr[i2 + 4] & 255;
        int i42 = 0;
        while (true) {
            iArr2 = this.f8861d;
            if (i42 >= iArr2.length) {
                break;
            }
            int i43 = this.f8860c;
            if (i43 == iArr2[i42][0]) {
                if (i43 == 0) {
                    break;
                }
                this.f8859b = i42;
                break;
            }
            i42++;
        }
        if (this.f8860c == 0) {
            int i44 = this.f8859b;
            if (i44 < iArr2.length && i44 != 255) {
                l0.b0.l0(iArr2[i44][1], 1);
            }
            this.f8859b = 255;
        } else if (i42 < iArr2.length) {
            l0.b0.l0(iArr2[i42][1], 0);
        }
        int i45 = i2 + 8;
        qt.i(bArr[i2 + 9] & 255, bArr[i45] & 255, true, 540);
        qt.y0(104, (bArr[i2 + 2] >> 3) & 1);
        qt.y0(106, bArr[i2 + 7] & 255);
        qt.y0(102, 3 & (bArr[i45] >> 6));
        int i46 = i2 + 10;
        qt.y0(98, bArr[i46] & 255);
        l0.c0.N1((bArr[i46] >> 1) & 1, (bArr[i46] >> 0) & 1, 0);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f8865h);
        qt.q0(this.f8868k);
        h0.d.f2464c.d(this.f8872o);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f8873p);
        yVar.d(this.f8872o);
        h0.d.f2468g.d(this.f8872o);
        u0.c.f17386m.d(this.f8870m);
        l0.b0.p0(this.f8871n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 126) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 4, 111, (byte) iArr[0], (byte) iArr[1], 0, 0);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) iArr[0], (byte) iArr[1]);
        }
    }

    public final void i3(String str) {
        byte[] bArr = new byte[24];
        if (str == null) {
            int[] iArr = new int[30];
            iArr[0] = -29;
            iArr[1] = 27;
            iArr[2] = -51;
            int i2 = h0.c.E;
            if (i2 == 2) {
                iArr[3] = 0;
            } else if (i2 == 3) {
                iArr[3] = 2;
            } else if (i2 == 4) {
                iArr[3] = 1;
            } else if (i2 != 5) {
                iArr[3] = 6;
            } else {
                iArr[3] = 4;
            }
            iArr[4] = 0;
            iArr[5] = 0;
            for (int i3 = 0; i3 < 24; i3++) {
                iArr[6 + i3] = 0;
            }
            z.k.s(iArr);
            return;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length > 24 ? 24 : bytes.length;
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = bytes[i4];
        }
        while (length < 24) {
            bArr[length] = 0;
            length++;
        }
        int[] iArr2 = new int[30];
        iArr2[0] = -29;
        iArr2[1] = 27;
        iArr2[2] = -51;
        int i5 = h0.c.E;
        if (i5 == 2) {
            iArr2[3] = 0;
        } else if (i5 == 3) {
            iArr2[3] = 2;
        } else if (i5 == 4) {
            iArr2[3] = 1;
        } else if (i5 != 5) {
            iArr2[3] = 6;
        } else {
            iArr2[3] = 4;
        }
        iArr2[4] = 0;
        iArr2[5] = 0;
        for (int i6 = 0; i6 < 24; i6++) {
            iArr2[6 + i6] = bArr[i6];
        }
        z.k.s(iArr2);
    }
}
