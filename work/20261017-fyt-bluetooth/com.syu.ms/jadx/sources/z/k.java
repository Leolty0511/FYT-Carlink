package z;

import android.graphics.Paint;
import android.hardware.Camera;
import android.os.IInterface;
import android.os.SystemProperties;
import android.util.Log;
import chip.Chip;
import k0.nt;
import l0.z;
import o1.b0;
import o1.e0;
import o1.f0;
import o1.q;
import o1.q0;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
public class k {

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18163n.d(z.a.f18153d, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18163n.d(z.a.f18153d, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18163n.d(z.a.f18153d, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18163n.d(z.a.f18153d, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18162m.d(z.a.f18152c, z.a.f18175z);
            z.a.f18175z = null;
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18162m.d(z.a.f18152c, z.a.f18175z);
            z.a.f18175z = null;
        }
    }

    public class g implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.a.f18170u.d(z.a.f18160k, z.a.A);
            z.a.A = null;
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f18271a;

        public h(String str) {
            this.f18271a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.k().l(0, "setupDevTmps Load Error", "Tmps serial port " + this.f18271a + " was used ！！", Paint.Align.CENTER, 30, -65536, 60, 2147483392);
        }
    }

    public static void a(String str, f0 f0Var, e0 e0Var, q qVar, int i2) {
        if (m1.a.f13514c) {
            return;
        }
        o1.d<String, z.b> dVar = z.a.E;
        if (dVar.e(str) != null && a.f.k() != null) {
            a.f.k().l(1, "dev_serial_info_hardcode_error", "硬编码的多个设备同时使用了相同串口路径发生冲突", Paint.Align.CENTER, 28, -1, 30, -1878982912);
        }
        dVar.h(str, new z.b(f0Var, e0Var, qVar, i2));
    }

    public static byte[] b(int... iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        byte[] bArr = new byte[length + 5];
        bArr[0] = -120;
        bArr[1] = 85;
        bArr[2] = (byte) (length >> 8);
        bArr[3] = (byte) (length & 255);
        int i2 = bArr[2] ^ bArr[3];
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3 + 4] = (byte) iArr[i3];
            i2 ^= iArr[i3];
        }
        bArr[length + 4] = (byte) i2;
        return bArr;
    }

    public static void c() {
        if (g.e.a() == 1) {
            z.a.f18171v.f("/dev/IpodI2c");
            z.a.f18150a = 128;
        } else if (g.e.a() == 3 || g.e.a() == 4 || g.f.t() || g.e.a() == 6) {
            z.a.f18171v.f("/dev/i2c-4");
            z.a.f18150a = 64;
        }
        y0.h.V(1);
    }

    public static void d() {
        int iA = g.e.a();
        if (iA == 1 || iA == 3) {
            e0 e0Var = z.a.f18153d;
            e0Var.c("/dev/goc_serial");
            e0Var.g(9600);
            f0 f0Var = z.a.f18163n;
            f0Var.setName(String.format("BT DEV PATH = %s FD = %d BAUD = %d", "/dev/goc_serial", Integer.valueOf(e0Var.a()), 9600));
            h0.e.H(1);
            z.e eVar = new z.e();
            z.a.f18174y = eVar;
            a("/dev/goc_serial", f0Var, e0Var, eVar, 9600);
            if (!m1.a.f13514c) {
                z.a.F.add(new a());
                return;
            } else {
                f0Var.d(e0Var, z.a.f18174y);
                z.a.f18174y = null;
                return;
            }
        }
        if (iA == 4) {
            h0.e.H(3);
            return;
        }
        if (iA != 5) {
            if (iA != 6) {
                return;
            }
            e0 e0Var2 = z.a.f18153d;
            e0Var2.c("/dev/BT_serial");
            e0Var2.g(9600);
            f0 f0Var2 = z.a.f18163n;
            f0Var2.setName(String.format("BT DEV PATH = %s FD = %d BAUD = %d", "/dev/goc_serial", Integer.valueOf(e0Var2.a()), 9600));
            h0.e.H(1);
            z.e eVar2 = new z.e();
            z.a.f18174y = eVar2;
            a("/dev/BT_serial", f0Var2, e0Var2, eVar2, 9600);
            if (!m1.a.f13514c) {
                z.a.F.add(new c());
                return;
            } else {
                f0Var2.d(e0Var2, z.a.f18174y);
                z.a.f18174y = null;
                return;
            }
        }
        if (u0.b.a2 != 1) {
            h0.e.H(4);
            return;
        }
        e0 e0Var3 = z.a.f18153d;
        e0Var3.c("/dev/BT_serial");
        e0Var3.g(9600);
        f0 f0Var3 = z.a.f18163n;
        f0Var3.setName(String.format("BT DEV PATH = %s FD = %d BAUD = %d", "/dev/goc_serial", Integer.valueOf(e0Var3.a()), 9600));
        h0.e.H(1);
        z.e eVar3 = new z.e();
        z.a.f18174y = eVar3;
        a("/dev/BT_serial", f0Var3, e0Var3, eVar3, 9600);
        if (!m1.a.f13514c) {
            z.a.F.add(new b());
        } else {
            f0Var3.d(e0Var3, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public static void e(String str, int i2, q qVar) {
        e0 e0Var = z.a.f18158i;
        e0Var.c(str);
        e0Var.g(i2);
        f0 f0Var = z.a.f18168s;
        f0Var.setName(String.format("CANBUS DEV PATH = %s FD = %d BAUD = %d", str, Integer.valueOf(e0Var.a()), Integer.valueOf(i2)));
        f0Var.d(e0Var, qVar);
    }

    public static void f(String str) {
        e0 e0Var = z.a.f18152c;
        e0Var.c(str);
        e0Var.g(38400);
        f0 f0Var = z.a.f18162m;
        f0Var.setName(String.format("SPHE8202 DEV PATH = %s FD = %d BAUD = %d", str, Integer.valueOf(e0Var.a()), 38400));
        o0.g.y(2);
        z.f fVar = new z.f();
        z.a.f18175z = fVar;
        a(str, f0Var, e0Var, fVar, 38400);
        if (!m1.a.f13514c) {
            z.a.F.add(new f());
        } else {
            f0Var.d(e0Var, z.a.f18175z);
            z.a.f18175z = null;
        }
    }

    public static void g(String str) {
        e0 e0Var = z.a.f18152c;
        e0Var.c(str);
        if (e0Var.a() <= 0 && a.f.k() != null) {
            a.f.k().l(1, "dvd_serial_open_error", "DVD串口打开失败，请重新升级正确的软件", Paint.Align.CENTER, 25, -1, 30, -1878982912);
        }
        e0Var.g(115200);
        f0 f0Var = z.a.f18162m;
        f0Var.setName(String.format("SPHE8288 DEV PATH = %s FD = %d BAUD = %d", str, Integer.valueOf(e0Var.a()), 115200));
        if (!g.f.f(7)) {
            y0.h.V(2);
        }
        o0.g.y(1);
        z.g gVar = new z.g();
        z.a.f18175z = gVar;
        a(str, f0Var, e0Var, gVar, 115200);
        if (!m1.a.f13514c) {
            z.a.F.add(new e());
        } else {
            f0Var.d(e0Var, z.a.f18175z);
            z.a.f18175z = null;
        }
    }

    public static void h(String str) {
        e0 e0Var = z.a.f18153d;
        e0Var.c(str);
        e0Var.g(115200);
        f0 f0Var = z.a.f18163n;
        f0Var.setName(String.format("BT DEV PATH = %s FD = %d BAUD = %d", "/dev/ttyS0", Integer.valueOf(e0Var.a()), 115200));
        h0.e.H(5);
        z.h hVar = new z.h();
        z.a.f18174y = hVar;
        a(str, f0Var, e0Var, hVar, 115200);
        if (!m1.a.f13514c) {
            z.a.F.add(new d());
        } else {
            f0Var.d(e0Var, z.a.f18174y);
            z.a.f18174y = null;
        }
    }

    public static void i(int i2) {
        String str = "/dev/ttyS3";
        switch (g.e.a()) {
            case 1:
                if (q0.B() != 0) {
                    z.a.f18151b.c("/dev/ttyS3");
                } else {
                    str = "/dev/ttyMbx3";
                    z.a.f18151b.c("/dev/ttyMbx3");
                }
                break;
            case 2:
            case 8:
            default:
                z.a.f18151b.c("/dev/ttyS0");
                str = "/dev/ttyS0";
                break;
            case 3:
            case 5:
            case 7:
            case 9:
            case 10:
            case 11:
            case 13:
                str = "/dev/ttyS2";
                z.a.f18151b.c("/dev/ttyS2");
                break;
            case 4:
                z.a.f18151b.c("/dev/ttyS0");
                str = "/dev/ttyS0";
                break;
            case 6:
                z.a.f18151b.c("/dev/ttyS3");
                break;
            case 12:
                str = "/dev/ttyS1";
                z.a.f18151b.c("/dev/ttyS1");
                break;
            case 14:
                str = "/dev/ttyHS1";
                z.a.f18151b.c("/dev/ttyHS1");
                break;
        }
        e0 e0Var = z.a.f18151b;
        e0Var.g(i2);
        f0 f0Var = z.a.f18161l;
        f0Var.setName(String.format("MCU DEV PATH = %s FD = %d BAUD = %d", str, Integer.valueOf(e0Var.a()), Integer.valueOf(i2)));
        u0.d.g2(1);
        w0.f.l(1);
        d1.f.f(1);
        a1.c.i(1);
        p0.c.g(1);
        i iVar = new i();
        z.a.f18173x = iVar;
        f0Var.d(e0Var, iVar);
        Log.e("MCU", String.format("MCU DEV PATH = %s FD = %d BAUD = %d", str, Integer.valueOf(e0Var.a()), Integer.valueOf(i2)));
        a(str, f0Var, e0Var, z.a.f18173x, i2);
    }

    public static void j(String str, int i2, int i3) {
        e0 e0Var = z.a.f18156g;
        e0Var.c(str);
        e0Var.g(i2);
        f0 f0Var = z.a.f18166q;
        f0Var.setName(String.format("OBD DEV PATH = %s FD = %d BAUD = %d id = %d", str, Integer.valueOf(e0Var.a()), Integer.valueOf(i2), Integer.valueOf(i3)));
        v0.d.b(i3);
        IInterface iInterface = v0.b.f17728c;
        a(str, f0Var, e0Var, iInterface instanceof q ? (q) iInterface : null, i2);
    }

    public static void k(String str, int i2, int i3) {
        int i4;
        Chip chip2 = (Chip) g.e.f2254a;
        Log.e("Device", "setupDevTmps path: " + str + " baud : " + i2);
        if (chip2.v().equals(str) && (SystemProperties.get("sys.fyt.serialdebug", "off").equalsIgnoreCase(Camera.Parameters.FLASH_MODE_ON) || (i4 = o0.e.f16764a) == 2 || i4 == 1)) {
            o1.k.a().post(new h(str));
            return;
        }
        e0 e0Var = z.a.f18155f;
        e0Var.c(str);
        e0Var.g(i2);
        f0 f0Var = z.a.f18165p;
        f0Var.setName(String.format("TPMS DEV PATH = %s FD = %d BAUD = %d id = %d", str, Integer.valueOf(e0Var.a()), Integer.valueOf(i2), Integer.valueOf(i3)));
        c1.b.g(i3);
        IInterface iInterface = c1.a.f408c;
        a(str, f0Var, e0Var, iInterface instanceof q ? (q) iInterface : null, i2);
    }

    public static void l(String str) {
        e0 e0Var = z.a.f18160k;
        e0Var.c(str);
        e0Var.g(115200);
        f0 f0Var = z.a.f18170u;
        f0Var.setName(String.format("Tv DEV PATH = %s FD = %d BAUD = %d", str, Integer.valueOf(e0Var.a()), 115200));
        d1.f.f(2);
        a(str, f0Var, e0Var, null, 115200);
        o1.k.a().postDelayed(new g(), 1000L);
    }

    public static int m(int i2, int i3) {
        if (u0.b.f17320f == 0 || u0.b.f17306a0 == 0) {
            return 0;
        }
        return z.a.f18171v.h(z.a.f18150a, i2, i3);
    }

    public static void n(int i2, int i3) {
        byte[] bArr = new byte[8];
        bArr[0] = -1;
        bArr[1] = 85;
        bArr[2] = 0;
        bArr[3] = 0;
        bArr[4] = 0;
        bArr[5] = (byte) i2;
        bArr[6] = (byte) i3;
        bArr[7] = (byte) ((172 - bArr[5]) - bArr[6]);
        z.a.f18152c.i(bArr);
    }

    public static void o(int... iArr) {
        if (iArr == null) {
            return;
        }
        int length = iArr.length;
        int i2 = length + 5;
        byte[] bArr = new byte[i2];
        bArr[0] = -1;
        bArr[1] = 85;
        bArr[2] = (byte) (length >> 8);
        bArr[3] = (byte) (length & 255);
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4 + 4] = (byte) iArr[i4];
            i3 += iArr[i4];
        }
        bArr[length + 4] = (byte) (~i3);
        z.a.f18152c.i(bArr);
        a.f.p().t(LogType.DVD, b0.d(bArr, 0, i2));
    }

    public static void p(int... iArr) {
        if (iArr == null) {
            return;
        }
        int length = iArr.length;
        byte[] bArr = new byte[length + 5];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 45;
        bArr[length + 3] = 13;
        bArr[length + 4] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 3] = (byte) iArr[i2];
        }
        Log.e("BT", "BT write data:  " + new String(bArr));
        z.a.f18153d.i(bArr);
    }

    public static void q(byte... bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2] = bArr[i2];
        }
        z.a.f18158i.i(bArr2);
    }

    public static void r(int... iArr) {
        if (iArr == null) {
            return;
        }
        z.h.f18213j = true;
        int length = iArr.length;
        byte[] bArr = new byte[length + 5];
        bArr[0] = 65;
        bArr[1] = 84;
        bArr[2] = 35;
        bArr[length + 3] = 13;
        bArr[length + 4] = 10;
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2 + 3] = (byte) iArr[i2];
        }
        Log.e("BT", "BT write data:  " + new String(bArr));
        z.a.f18153d.i(bArr);
    }

    public static void s(int... iArr) {
        if (u0.b.D1 && m0.b.f13172e == 0 && u0.b.e4 && iArr != null && iArr.length > 0) {
            n1.b bVarP = a.f.p();
            LogType logType = LogType.MCU;
            StringBuilder sb = new StringBuilder();
            sb.append("Send to Mcu Data: ");
            sb.append(b0.e(iArr, 0, iArr.length));
            bVarP.t(logType, sb.toString());
            if ((iArr[0] & 255) != 227 || nt.f8648i != 1) {
                byte[] bArrB = b(iArr);
                if (bArrB != null) {
                    z.a.f18151b.i(bArrB);
                    return;
                }
                return;
            }
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = iArr[i2] & 255;
            }
            z.f13137a.f(iArr2);
        }
    }

    public static void t(int... iArr) {
        byte[] bArrB;
        if (m0.b.f13172e == 0 && (bArrB = b(iArr)) != null) {
            z.a.f18151b.i(bArrB);
        }
    }

    public static void u(int i2) {
        byte[] bArr = new byte[4];
        bArr[0] = -91;
        bArr[1] = (byte) i2;
        bArr[2] = 42;
        bArr[3] = (byte) (bArr[0] + bArr[1] + bArr[2]);
        z.a.f18160k.i(bArr);
    }
}
