package u0;

import android.graphics.Paint;
import android.text.Spanned;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import o1.e0;
import o1.f0;
import o1.j;
import o1.l;
import o1.p0;
import o1.q;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static byte[] f17428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static f0 f17429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f17430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f17431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f17432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f17433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static FileWriter f17434g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int[] f17438k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f17440m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f17441n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Runnable f17435h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Runnable f17436i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Runnable f17437j = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f17439l = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final q f17442o = new C0115f();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (f.d() > 0) {
                f.F("请求进入 升级模式");
                e0 e0Var = z.a.f18151b;
                e0Var.i(k.b(1, 85, 238));
                e0Var.i(k.b(1, 85, 153));
                e0Var.i(k.b(1, 85, 68));
                return;
            }
            u0.d.a3(this);
            int unused = f.f17430c;
            int unused2 = f.f17431d = 1;
            int unused3 = f.f17430c = 9;
            u0.d.m(f.f17436i);
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (f.d() <= 0) {
                u0.d.a3(this);
                int unused = f.f17430c;
                int unused2 = f.f17431d = 2;
                int unused3 = f.f17432e = 0;
                int unused4 = f.f17433f = 38016;
                j.b(l.a(), f.f17437j, 0L);
                return;
            }
            f.F("验证客户码");
            byte[] bArr = new byte[135];
            bArr[0] = -35;
            bArr[1] = 85;
            bArr[2] = 0;
            bArr[3] = 1;
            bArr[4] = 0;
            bArr[5] = -128;
            for (int i2 = 0; i2 < 16; i2++) {
                bArr[i2 + 6] = f.f17428a[37904 + i2];
            }
            byte b2 = 0;
            for (int i3 = 0; i3 < 134; i3++) {
                b2 = (byte) (b2 + bArr[i3]);
            }
            bArr[134] = (byte) (-b2);
            z.a.f18151b.i(bArr);
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = f.f17433f;
            if (i2 >= f.f17428a.length) {
                u0.d.I3(48, 6);
                j.e(l.a(), this);
                f.f17429b.b();
                f0 unused = f.f17429b = null;
                f.y();
                m0.b.f13172e = 0;
                a.i.a0(100L);
                f.F("升级完成");
                try {
                    FileWriter fileWriter = f.f17434g;
                    FileWriter unused2 = f.f17434g = null;
                    fileWriter.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                byte[] unused3 = f.f17428a = null;
                z.a.f18161l.a(false);
                return;
            }
            if (f.f17432e != 0) {
                int unused4 = f.f17432e = 0;
                f.F("MCU忙,延迟发送数据");
            } else {
                byte[] bArr = new byte[135];
                bArr[0] = -35;
                bArr[1] = 85;
                bArr[2] = (byte) (i2 >> 16);
                bArr[3] = (byte) (i2 >> 8);
                bArr[4] = (byte) i2;
                bArr[5] = -128;
                System.arraycopy(f.f17428a, i2, bArr, 6, 128);
                byte b2 = 0;
                for (int i3 = 0; i3 < 134; i3++) {
                    b2 = (byte) (b2 + bArr[i3]);
                }
                bArr[134] = (byte) (-b2);
                z.a.f18151b.i(bArr);
                f.F(String.format("发送数据，地址为  0x%04X", Integer.valueOf(i2)));
            }
            l.a().postDelayed(this, 150L);
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            synchronized (u0.e.class) {
                if (f.f17440m == 1) {
                    byte[] unused = f.f17428a = null;
                    int[] unused2 = f.f17438k = null;
                    u0.d.I3(48, 7);
                } else if (f.f17440m > 1) {
                    f.h();
                    u0.d.I3(48, 4);
                    f.C(235, 0, 1);
                    o1.k.a().postDelayed(this, 1000L);
                }
            }
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            f.C(235, 0, 0);
        }
    }

    /* JADX INFO: renamed from: u0.f$f, reason: collision with other inner class name */
    public class C0115f extends z.j {
        @Override // z.j
        public void a(byte[] bArr, int i2, int i3) {
            if (bArr[i2] != -22) {
                return;
            }
            f.E(bArr, i2 + 1, i3 - 1);
        }
    }

    public class g implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            synchronized (u0.e.class) {
                if (f.f17440m == 1) {
                    byte[] unused = f.f17428a = null;
                    int[] unused2 = f.f17438k = null;
                    u0.d.I3(48, 7);
                } else if (f.f17440m > 1) {
                    f.h();
                    u0.d.I3(48, 4);
                    f.C(235, 0, 1);
                    o1.k.a().postDelayed(this, 1000L);
                }
            }
        }
    }

    public static synchronized void A(String str) {
        if (f17428a != null) {
            return;
        }
        if (str != null) {
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(str);
                    try {
                        int iAvailable = fileInputStream2.available();
                        if (iAvailable >= 163747 && iAvailable <= 1048576) {
                            byte[] bArr = new byte[iAvailable];
                            fileInputStream2.read(bArr);
                            D(bArr);
                            try {
                                fileInputStream2.close();
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                            }
                        }
                        u0.d.I3(48, 1);
                        try {
                            fileInputStream2.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    } catch (Exception e4) {
                        e = e4;
                        fileInputStream = fileInputStream2;
                        u0.d.I3(48, 0);
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e5) {
                                e = e5;
                                e.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e6) {
                                e6.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e7) {
                    e = e7;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static synchronized void B(String str, int i2, int i3) {
        if (f17428a != null) {
            return;
        }
        if (str != null && new File(str).exists()) {
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(str);
                    try {
                        byte[] bArr = new byte[fileInputStream2.available()];
                        fileInputStream2.read(bArr);
                        int i4 = (i3 - i2) + 1;
                        byte[] bArr2 = new byte[i4];
                        System.arraycopy(bArr, i2, bArr2, 0, i4);
                        if (i4 >= 163747 && i4 <= 1048576) {
                            D(bArr2);
                            try {
                                fileInputStream2.close();
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                            }
                        }
                        u0.d.I3(48, 1);
                        try {
                            fileInputStream2.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    } catch (Exception e4) {
                        e = e4;
                        fileInputStream = fileInputStream2;
                        u0.d.I3(48, 0);
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e5) {
                                e = e5;
                                e.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e6) {
                                e6.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e7) {
                    e = e7;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static void C(int... iArr) {
        byte[] bArrB = k.b(iArr);
        if (bArrB != null) {
            z.a.f18151b.i(bArrB);
        }
    }

    public static void D(byte[] bArr) {
        int i2 = 0;
        for (int i3 = 37904; i3 < 37918; i3 += 2) {
            i2 += (65280 & (bArr[i3] << 8)) | (bArr[i3 + 1] & 255);
        }
        if (((-i2) & 65535) != (((bArr[37918] << 8) & 65280) | (bArr[37919] & 255))) {
            u0.d.I3(48, 2);
            return;
        }
        u0.d.I3(48, 4);
        if (m1.c.c(144, 0) != 1) {
            m1.c.e(144, 1);
        }
        f17428a = bArr;
        try {
            f17434g = new FileWriter("/mnt/sdcard/com.syu.ms_mcu_upgrade.txt");
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        z.a.f18161l.a(true);
        m0.b.f13172e = 1;
        m0.b.f13173f = 1;
        y0.h.Y(8, m0.b.f13172e == 1);
        f0 f0Var = new f0();
        f17429b = f0Var;
        f0Var.d(z.a.f18151b, new h(null));
        f17431d = 0;
        f17430c = 9;
        u0.d.m(f17435h);
    }

    public static void E(byte[] bArr, int i2, int i3) {
        synchronized (f.class) {
            f17440m = 0;
        }
        int i4 = i2 + 1;
        int iC = p0.c(bArr[i2], bArr[i4]);
        byte[] bArr2 = f17428a;
        if (iC <= 61440) {
            int i5 = iC << 8;
            if (bArr2 != null && i5 < bArr2.length - 1) {
                int length = (bArr2.length - 1) - i5;
                if (length > 256) {
                    length = 256;
                }
                int[] iArr = new int[261];
                iArr[0] = 236;
                iArr[1] = bArr[i2];
                iArr[2] = bArr[i4];
                int[] iArr2 = f17438k;
                iArr[3] = (iArr2.length >> 8) & 255;
                iArr[4] = iArr2.length & 255;
                for (int i6 = 0; i6 < length; i6++) {
                    iArr[i6 + 5] = bArr2[i5 + i6];
                }
                while (length < 256) {
                    iArr[length + 5] = 255;
                    length++;
                }
                int[] iArr3 = f17438k;
                if (iArr3[iC] == 0) {
                    iArr3[iC] = 1;
                    f17439l++;
                }
                C(iArr);
                u0.d.I3(48, 5, f17439l, f17438k.length);
            }
            if (f17441n != 0) {
                f17441n = 0;
                a.f.k().m("mcu_need_upgrade");
                return;
            }
            return;
        }
        switch (iC) {
            case 61441:
            case 61442:
            case 61444:
            case 61445:
                f17438k = null;
                f17428a = null;
                if (f17441n != 0) {
                    f17441n = 0;
                    a.f.k().m("mcu_need_upgrade");
                }
                f17429b.b();
                f17429b = null;
                m0.b.f13172e = 0;
                a.i.a0(100L);
                z.a.f18161l.a(false);
                switch (iC) {
                    case 61441:
                        u0.d.I3(48, 2);
                        return;
                    case 61442:
                        u0.d.I3(48, 1);
                        return;
                    case 61443:
                    default:
                        return;
                    case 61444:
                        u0.d.I3(48, 7);
                        return;
                    case 61445:
                        u0.d.I3(48, 6);
                        o1.k.a().postDelayed(new e(), 2000L);
                        return;
                }
            case 61443:
                if (f17441n == 0) {
                    f17441n = 1;
                    f17438k = null;
                    f17428a = null;
                    a.f.k().l(0, "mcu_need_upgrade", "MCU程序不完整,用Stm32.bin升级文件重新升级MCU", Paint.Align.CENTER, 30, -1, 40, 2147483392);
                    f17429b.b();
                    f17429b = null;
                    return;
                }
                return;
            default:
                return;
        }
    }

    public static void F(String str) {
    }

    public static synchronized void G(byte[] bArr, int i2, int i3) {
        int i4 = (i3 - i2) + 1;
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i2, bArr2, 0, i4);
        if (i4 > 1048576) {
            u0.d.I3(48, 1);
            return;
        }
        byte b2 = 0;
        for (int i5 = 0; i5 < i4; i5++) {
            b2 = (byte) (b2 + bArr2[i5]);
        }
        if (b2 != -1) {
            u0.d.I3(48, 2);
            return;
        }
        f17428a = bArr2;
        f17438k = new int[((i4 - 1) + 255) >> 8];
        f17439l = 0;
        f17440m = 11;
        z.a.f18161l.a(true);
        m0.b.f13172e = 1;
        m0.b.f13173f = 1;
        y0.h.Y(8, m0.b.f13172e == 1);
        u0.d.I3(48, 4);
        if (m1.c.c(144, 0) != 1) {
            m1.c.e(144, 1);
        }
        C(235, 0, 1);
        f0 f0Var = new f0();
        f17429b = f0Var;
        f0Var.d(z.a.f18151b, f17442o);
        o1.k.a().postDelayed(new g(), 1000L);
    }

    public static /* synthetic */ int d() {
        int i2 = f17430c - 1;
        f17430c = i2;
        return i2;
    }

    public static /* synthetic */ int h() {
        int i2 = f17440m - 1;
        f17440m = i2;
        return i2;
    }

    public static /* synthetic */ int u(int i2) {
        int i3 = f17433f + i2;
        f17433f = i3;
        return i3;
    }

    public static void y() {
        F("clearMcuUpgradeFlag");
        byte[] bArr = new byte[135];
        bArr[0] = -35;
        bArr[1] = 85;
        bArr[2] = 0;
        bArr[3] = 2;
        bArr[4] = 0;
        bArr[5] = -128;
        bArr[6] = 1;
        byte b2 = 0;
        for (int i2 = 0; i2 < 134; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[134] = (byte) (-b2);
        z.a.f18151b.i(bArr);
    }

    public static synchronized void z(String str, int i2, int i3) {
        if (f17428a != null) {
            return;
        }
        if (str != null && new File(str).exists()) {
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(str);
                    try {
                        int iAvailable = fileInputStream2.available();
                        byte[] bArr = new byte[iAvailable];
                        fileInputStream2.read(bArr);
                        if (i3 == 0) {
                            i3 = iAvailable - 1;
                        }
                        int i4 = (i3 - i2) + 1;
                        byte[] bArr2 = new byte[i4];
                        System.arraycopy(bArr, i2, bArr2, 0, i4);
                        if (i4 > 1048576) {
                            u0.d.I3(48, 1);
                            try {
                                fileInputStream2.close();
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            return;
                        }
                        byte b2 = 0;
                        for (int i5 = 0; i5 < i4; i5++) {
                            b2 = (byte) (b2 + bArr2[i5]);
                        }
                        if (b2 != -1) {
                            u0.d.I3(48, 2);
                            try {
                                fileInputStream2.close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                            return;
                        }
                        f17428a = bArr2;
                        f17438k = new int[((i4 - 1) + 255) >> 8];
                        f17439l = 0;
                        f17440m = 11;
                        z.a.f18161l.a(true);
                        m0.b.f13172e = 1;
                        m0.b.f13173f = 1;
                        y0.h.Y(8, m0.b.f13172e == 1);
                        u0.d.I3(48, 4);
                        if (m1.c.c(144, 0) != 1) {
                            m1.c.e(144, 1);
                        }
                        C(235, 0, 1);
                        f0 f0Var = new f0();
                        f17429b = f0Var;
                        f0Var.d(z.a.f18151b, f17442o);
                        o1.k.a().postDelayed(new d(), 1000L);
                        try {
                            fileInputStream2.close();
                        } catch (Exception e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                    } catch (Exception e5) {
                        e = e5;
                        fileInputStream = fileInputStream2;
                        u0.d.I3(48, 0);
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e6) {
                                e = e6;
                                e.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e7) {
                                e7.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e8) {
                    e = e8;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            throw th;
        }
    }

    public static class h implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f17443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17444b;

        public h() {
            this.f17443a = new byte[1024];
            this.f17444b = 0;
        }

        @Override // o1.q
        public void b(byte[] bArr) {
            if (bArr == null || bArr.length == 0) {
                a.i.a0(100L);
                return;
            }
            if (bArr.length + this.f17444b > 1024) {
                this.f17444b = 0;
            }
            System.arraycopy(bArr, 0, this.f17443a, this.f17444b, bArr.length);
            int length = this.f17444b + bArr.length;
            this.f17444b = length;
            int i2 = length - 7;
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                byte[] bArr2 = this.f17443a;
                if (bArr2[i3] == -35) {
                    int i5 = i3 + 1;
                    if (bArr2[i5] == 85 || bArr2[i5] == 68) {
                        byte b2 = 0;
                        for (int i6 = 0; i6 < 7; i6++) {
                            b2 = (byte) (b2 + this.f17443a[i3 + i6]);
                        }
                        byte b3 = (byte) (-b2);
                        byte[] bArr3 = this.f17443a;
                        if (b3 != bArr3[i3 + 7]) {
                            i3 += 2;
                            i4 = i3;
                        } else {
                            int i7 = ((bArr3[i3 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr3[i3 + 3] << 8) & 65280) | (bArr3[i3 + 4] & 255);
                            if (f.f17431d == 0) {
                                byte[] bArr4 = this.f17443a;
                                if (bArr4[i5] == 85 && bArr4[i3 + 5] == 1 && bArr4[i3 + 6] == 1 && i7 == 0) {
                                    int unused = f.f17430c = -100;
                                }
                            } else if (f.f17431d == 1) {
                                byte[] bArr5 = this.f17443a;
                                if (bArr5[i5] == 85 && bArr5[i3 + 5] == 1 && bArr5[i3 + 6] == 1 && i7 == 256) {
                                    int unused2 = f.f17430c = -100;
                                }
                            } else if (i7 == 0) {
                                byte[] bArr6 = this.f17443a;
                                if (bArr6[i5] == 68 && bArr6[i3 + 5] == 1 && bArr6[i3 + 6] == 1) {
                                    int unused3 = f.f17432e = 1;
                                }
                            } else {
                                byte[] bArr7 = this.f17443a;
                                if (bArr7[i5] == 85 && bArr7[i3 + 5] == 1 && bArr7[i3 + 6] == 1 && i7 == f.f17433f) {
                                    u0.d.J3(48, new int[]{5, (i7 - 37888) / 128, (f.f17428a.length - 38016) / 128}, null, null);
                                    f.u(128);
                                }
                            }
                            i4 = i3 + 8;
                        }
                    }
                }
                i3++;
            }
            if (i4 != 0) {
                int i8 = this.f17444b - i4;
                this.f17444b = i8;
                if (i8 > 0) {
                    byte[] bArr8 = this.f17443a;
                    System.arraycopy(bArr8, i4, bArr8, 0, i8);
                }
            }
        }

        public /* synthetic */ h(a aVar) {
            this();
        }
    }
}
