package z;

import android.bluetooth.BluetoothClass;
import android.content.pm.PackageManager;
import android.graphics.Paint;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.http.CharArrayBuffers;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.Spanned;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.View;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import i1.s;
import java.util.Arrays;
import k0.nt;
import k0.qt;
import k0.rt;
import l0.c0;
import l0.z;
import module.sound.AudioDevice;
import o1.b0;
import o1.k0;
import o1.l;
import o1.l0;
import o1.m;
import o1.p0;
import o1.q;
import o1.q0;
import o1.r;
import o1.s0;
import o1.u;
import o1.w;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
public class i implements q {
    public static int D;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public q f18230h;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f18235m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f18237o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f18238p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f18239q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f18240r;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18246x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f18247y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f18248z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18223a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18224b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18225c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18226d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18227e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18228f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k0 f18229g = new k0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i1.h f18231i = new i1.h();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f18232j = new int[512];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile int f18233k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public q f18234l = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final char[] f18236n = new char[8];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f18241s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public k0 f18242t = new k0();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public k0 f18243u = new k0();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public l0 f18244v = new l0();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public l0 f18245w = new l0();
    public int A = -1;
    public boolean B = false;
    public long C = 0;

    public class a implements q {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f18253e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f18254f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f18255g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f18249a = {-35, 85, 0, 0, 0, 1, 1, -52};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f18250b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f18251c = new byte[1024];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f18252d = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f18256h = 0;

        public a() {
        }

        @Override // o1.q
        public void b(byte[] bArr) {
            int i2;
            if (this.f18250b) {
                return;
            }
            int length = this.f18256h + bArr.length;
            this.f18256h = length;
            if (length > 10240) {
                this.f18250b = true;
                return;
            }
            System.arraycopy(bArr, 0, this.f18251c, this.f18252d, bArr.length);
            int length2 = this.f18252d + bArr.length;
            this.f18252d = length2;
            int i3 = length2 - 8;
            this.f18255g = i3;
            if (i3 < 0) {
                return;
            }
            this.f18253e = 0;
            while (true) {
                int i4 = this.f18253e;
                int i5 = this.f18255g;
                if (i4 > i5) {
                    byte[] bArr2 = this.f18251c;
                    System.arraycopy(bArr2, i5 + 1, bArr2, 0, 7);
                    this.f18252d = 7;
                    return;
                }
                this.f18254f = 0;
                while (true) {
                    i2 = this.f18254f;
                    if (i2 >= 8 || this.f18251c[this.f18253e + i2] != this.f18249a[i2]) {
                        break;
                    } else {
                        this.f18254f = i2 + 1;
                    }
                }
                if (i2 == 8) {
                    this.f18250b = true;
                    a.f.k().l(0, "mcu need update", App.c().getResources().getString(R.string.mcu_need_update), Paint.Align.CENTER, 50, -1, 60, 2147483392);
                    SystemProperties.set("sys.fyt.mcu_need_update", "1");
                    u0.d.S1(1);
                    return;
                }
                this.f18253e++;
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ byte[] f18258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f18259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18260c;

        public b(byte[] bArr, int i2, int i3) {
            this.f18258a = bArr;
            this.f18259b = i2;
            this.f18260c = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.a aVar = (a1.a) a1.b.f111b;
            byte[] bArr = this.f18258a;
            int i2 = this.f18259b;
            aVar.n(Arrays.copyOfRange(bArr, i2 + 1, i2 + this.f18260c));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.f("com.syu.mcu.update");
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.f("com.syu.mcu.update");
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.f("com.syu.mcu.update");
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (i.c(i.this) <= 0) {
                int[] iArr = new int[3];
                iArr[0] = 11;
                iArr[1] = 0;
                iArr[2] = q0.J() == 0 ? 0 : 1;
                k.s(iArr);
            } else if (q0.J() == 0) {
                l.a().postDelayed(this, 50L);
            } else {
                i.this.f18240r = 0;
                k.s(11, 0, 1);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o0.e.f16784k != 0) {
                u0.b.f17311c.c(4);
            }
        }
    }

    public i() {
        this.f18231i.h();
    }

    public static /* synthetic */ int c(i iVar) {
        int i2 = iVar.f18240r - 1;
        iVar.f18240r = i2;
        return i2;
    }

    public static void p() {
        D = 0;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (u0.b.D1) {
            if (bArr == null || bArr.length <= 0) {
                a.i.a0(50L);
                a.f.p().s("MCU DATA IS NULL");
                return;
            }
            this.f18234l.b(bArr);
            if (this.f18224b + bArr.length > 1024) {
                this.f18224b = 0;
                this.f18225c = 0;
                this.f18226d = 0;
            }
            System.arraycopy(bArr, 0, this.f18223a, this.f18224b, bArr.length);
            int length = this.f18224b + bArr.length;
            this.f18224b = length;
            int i5 = this.f18226d;
            if (i5 != 0) {
                if (i5 >= length) {
                    return;
                }
                byte b2 = this.f18223a[2];
                int i6 = 3;
                while (true) {
                    i4 = this.f18226d;
                    if (i6 >= i4) {
                        break;
                    }
                    b2 = (byte) (b2 ^ this.f18223a[i6]);
                    i6++;
                }
                byte[] bArr2 = this.f18223a;
                if (b2 == bArr2[i4]) {
                    f(bArr2, 4, i4 - 4);
                    this.f18225c = this.f18226d + 1;
                } else {
                    this.f18225c = 2;
                }
                this.f18226d = 0;
            }
            int i7 = this.f18224b - 3;
            while (true) {
                i2 = this.f18225c;
                if (i2 >= i7) {
                    break;
                }
                byte[] bArr3 = this.f18223a;
                if (bArr3[i2] == -120 && bArr3[i2 + 1] == 85) {
                    int i8 = ((bArr3[i2 + 2] << 8) & 65280) | (bArr3[i2 + 3] & 255);
                    this.f18226d = i8;
                    if (i8 > 512) {
                        this.f18226d = 0;
                    } else {
                        int i9 = i8 + i2 + 4;
                        this.f18226d = i9;
                        if (i9 >= this.f18224b) {
                            this.f18226d = i9 - i2;
                            break;
                        }
                        byte b3 = bArr3[i2 + 2];
                        int i10 = i2 + 3;
                        while (true) {
                            i3 = this.f18226d;
                            if (i10 >= i3) {
                                break;
                            }
                            b3 = (byte) (b3 ^ this.f18223a[i10]);
                            i10++;
                        }
                        byte[] bArr4 = this.f18223a;
                        if (b3 == bArr4[i3]) {
                            int i11 = this.f18225c;
                            f(bArr4, i11 + 4, (i3 - i11) - 4);
                            this.f18225c = this.f18226d;
                        } else {
                            this.f18225c++;
                        }
                        this.f18226d = 0;
                    }
                }
                this.f18225c++;
            }
            if (i2 != 0) {
                int i12 = this.f18224b - i2;
                this.f18224b = i12;
                if (i12 != 0) {
                    byte[] bArr5 = this.f18223a;
                    System.arraycopy(bArr5, i2, bArr5, 0, i12);
                }
                this.f18225c = 0;
            }
        }
    }

    public final void d() {
        synchronized (this.f18241s) {
            if (this.f18240r > 0) {
                this.f18240r = 10;
            } else {
                this.f18240r = 10;
                this.f18241s.run();
            }
        }
    }

    public final int e() {
        return (g.e.e() == 1 || g.e.e() == 3 || g.e.e() == 4 || g.e.e() == 6 || g.e.e() == 0) ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i2;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        if (Configure.Property.DEBUG_MCU.b(false)) {
            Log.e("MCU", "MCU  Data : " + b0.d(bArr, i2, i3));
        }
        a.f.p().t(LogType.MCU, "onReceive Data: " + b0.d(bArr, i2, i3));
        if (!u0.b.e4) {
            u0.b.e4 = true;
        }
        byte b2 = bArr[i6];
        if (b2 == 1) {
            byte b3 = bArr[i6 + 1];
            if (b3 == -95) {
                o0.e.f16766b.c(bArr, i6 + 2, i3 - 2);
                return;
            }
            if (b3 == -45) {
                byte b4 = bArr[i6 + 2];
                byte b5 = bArr[i6 + 3];
                int i12 = (((b4 & 128) >> 6) | ((b5 & 128) >> 7)) << 1;
                int i13 = b4 & 127;
                if (i13 <= 31 || i13 >= 127) {
                    this.f18236n[i12] = CharArrayBuffers.uppercaseAddon;
                } else {
                    this.f18236n[i12] = (char) i13;
                }
                int i14 = b5 & 127;
                if (i14 <= 31 || i14 >= 127) {
                    this.f18236n[i12 + 1] = CharArrayBuffers.uppercaseAddon;
                } else {
                    this.f18236n[i12 + 1] = (char) i14;
                }
                if (i12 == 6) {
                    w0.f.n(new String(this.f18236n, 0, 8));
                    return;
                }
                return;
            }
            if (b3 == 7) {
                g(bArr, i6 + 2, i3 - 2);
                return;
            }
            if (b3 == 16) {
                n(bArr, i6 + 2, i3 - 2);
                return;
            }
            if (b3 == 18) {
                i(s0.e(Arrays.copyOfRange(bArr, i6 + 2, (i6 + i3) - 1)));
            } else {
                if (b3 == 56) {
                    byte b6 = bArr[i6 + 2];
                    if (b6 == 32) {
                        c.e.d().c(85);
                        return;
                    }
                    if (b6 == 48) {
                        byte b7 = bArr[i6 + 3];
                        if (b7 == 0) {
                            c.e.d().c(88);
                            return;
                        } else {
                            if (b7 != 1) {
                                return;
                            }
                            c.e.d().c(87);
                            return;
                        }
                    }
                    if (b6 == 64) {
                        int i15 = bArr[i6 + 3] & 255;
                        if (i15 <= 9) {
                            a.i.I(u0.b.D, i15);
                            return;
                        }
                        return;
                    }
                    if (b6 != 80) {
                        if (b6 == 96 && (bArr[i6 + 3] & 255) == 64) {
                            a.i.O(u0.b.D);
                            return;
                        }
                        return;
                    }
                    int i16 = i6 + 3;
                    byte b8 = bArr[i16];
                    switch (b8) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                            a.i.I(u0.b.D, bArr[i16] & 255);
                            return;
                        default:
                            switch (b8) {
                                case 16:
                                    c.e.d().c(85);
                                    return;
                                case 17:
                                    c.e.d().c(86);
                                    return;
                                case 18:
                                    c.e.d().c(88);
                                    return;
                                case 19:
                                    c.e.d().c(87);
                                    return;
                                case 20:
                                    c.e.d().c(89);
                                    return;
                                case 21:
                                    c.e.d().c(90);
                                    return;
                                default:
                                    return;
                            }
                    }
                }
                if (b3 == 118) {
                    if (bArr[i6 + 2] != 0) {
                        return;
                    }
                    u0.d.H3((bArr[i6 + 3] & 1) == 0 ? 1 : 0);
                    return;
                }
                if (b3 == 0) {
                    j(bArr, i6 + 2, i3 - 2);
                    return;
                }
                if (b3 == 1) {
                    h(bArr, i6 + 2, i3 - 2);
                    return;
                }
                if (b3 == 2) {
                    o(bArr, i6 + 2, i3 - 2);
                    return;
                }
                if (b3 == 3) {
                    l(bArr, i6 + 2, i3 - 2);
                    return;
                }
                switch (b3) {
                    case 10:
                        break;
                    case 11:
                        switch (bArr[i6 + 2]) {
                            case 96:
                                byte b9 = bArr[i6 + 3];
                                if (b9 == -16) {
                                    u0.d.o1(240);
                                    return;
                                }
                                switch (b9) {
                                    case 0:
                                        u0.d.o1(0);
                                        return;
                                    case 1:
                                        u0.d.o1(3);
                                        return;
                                    case 2:
                                        u0.d.o1(1);
                                        return;
                                    case 3:
                                        u0.d.o1(5);
                                        return;
                                    case 4:
                                        u0.d.o1(2);
                                        return;
                                    case 5:
                                        u0.d.o1(4);
                                        return;
                                    case 6:
                                        u0.d.o1(6);
                                        return;
                                    default:
                                        return;
                                }
                            case 97:
                                u0.d.h3(u0.b.V0, bArr[i6 + 3] & 1);
                                return;
                            case 98:
                                u0.b.V0 = bArr[i6 + 3] & 1;
                                return;
                            default:
                                return;
                        }
                    case 12:
                        byte b10 = bArr[i6 + 2];
                        if (b10 == -16) {
                            u0.d.d2(bArr[i6 + 3] & 255);
                            return;
                        } else {
                            if (b10 == 2 && u0.b.z4 == 0) {
                                u0.d.F(bArr[i6 + 3] & 1);
                                return;
                            }
                            return;
                        }
                    default:
                        return;
                }
            }
            m(bArr, i6 + 2, i3 - 2);
            return;
        }
        if (b2 != 3) {
            if (b2 == -76) {
                boolean z2 = bArr[i6 + 1] & 255;
                if (z2 == 1) {
                    s0.d.h(bArr[i6 + 2] & 255);
                    return;
                }
                if (z2 != 2) {
                    return;
                }
                boolean z3 = bArr[i6 + 2] & 255;
                if (z3 == 0) {
                    s0.d.j(1);
                    return;
                } else {
                    if (z3 == 1) {
                        s0.d.m(1);
                        return;
                    }
                    return;
                }
            }
            if (b2 == -75) {
                if (i3 >= 4) {
                    u0.d.p2(bArr[i6 + 1] & 255, s0.y(bArr[i6 + 2] & 255, bArr[i6 + 3] & 255, bArr[i6 + 4] & 255));
                    return;
                }
                return;
            }
            if (b2 == 80) {
                int i17 = bArr[i6 + 1] - 1;
                if (i17 < 0 || i17 >= 30) {
                    return;
                }
                StringBuilder sb = new StringBuilder(32);
                int i18 = i6 + i3;
                for (int i19 = i6 + 2; i19 < i18 && bArr[i19] != 0; i19++) {
                    if (bArr[i19] > 31 && bArr[i19] < 127) {
                        sb.append((char) bArr[i19]);
                    }
                }
                String string = sb.toString();
                if (i17 < 18) {
                    String[] strArr = w0.d.f17795g;
                    if (p0.g(strArr[i17], string)) {
                        return;
                    }
                    strArr[i17] = string;
                    w0.f.I(14, i17 + 65536, string);
                    return;
                }
                int i20 = i17 - 18;
                String[] strArr2 = w0.d.f17794f;
                if (p0.g(strArr2[i20], string)) {
                    return;
                }
                strArr2[i20] = string;
                w0.f.I(14, i20 + 0, string);
                return;
            }
            if (b2 == 81) {
                StringBuilder sb2 = new StringBuilder(i3);
                a.f.p().s("rds data = " + b0.d(bArr, i2, i3));
                int i21 = i6 + i3;
                for (int i22 = i6 + 1; i22 < i21 && bArr[i22] != 0; i22++) {
                    if (bArr[i22] > 31 && bArr[i22] < 127) {
                        sb2.append((char) bArr[i22]);
                    }
                }
                w0.f.x(sb2.toString());
                return;
            }
            if (b2 == 122) {
                byte b11 = bArr[i6 + 1];
                if (b11 == 0) {
                    u0.d.j1(bArr[i6 + 2] & 1);
                    return;
                } else {
                    if (b11 != 3) {
                        return;
                    }
                    u0.d.g1(bArr[i6 + 2] & 1);
                    return;
                }
            }
            if (b2 == 123) {
                byte b12 = bArr[i6 + 2];
                if (b12 == 0) {
                    u0.d.p(bArr[i6 + 3] & 1);
                    return;
                } else {
                    if (b12 != 2) {
                        return;
                    }
                    u0.d.o(bArr[i6 + 3] & 255);
                    return;
                }
            }
            switch (b2) {
                case -112:
                    r rVar = z.a.C;
                    if (rVar != null) {
                        rVar.z1(bArr, i6 + 1, i3 - 1);
                    }
                    if (!rt.a3().e3()) {
                        return;
                    }
                    int i23 = i3 - 1;
                    int[] iArr = new int[i23];
                    while (true) {
                        i6++;
                        if (i11 >= i23) {
                            qt.y0(1024, iArr);
                            return;
                        } else {
                            iArr[i11] = bArr[i6];
                            i11++;
                        }
                    }
                    break;
                case CameraBinderDecorator.EUSERS /* -87 */:
                    int i24 = i6 + 3;
                    if (s0.f(bArr, i24)) {
                        int i25 = bArr[i24] & 255;
                        if (i25 > 0 && (i5 = i25 + (i4 = i6 + 4)) <= i3 + i6) {
                            ToolsJni.cmd_149_write_data(Arrays.copyOfRange(bArr, i4, i5), s0.x(bArr[i6 + 1], bArr[i6 + 2]) + 13);
                        }
                        k.s(170, bArr[i6 + 1], bArr[i6 + 2], bArr[i24]);
                        return;
                    }
                    return;
                case -85:
                    int i26 = i6 + 5;
                    if (s0.f(bArr, i26)) {
                        int iZ = s0.z(bArr[i26], bArr[i6 + 4], bArr[i6 + 3], bArr[i6 + 2]);
                        int i27 = ((iZ >> 31) & 1) == 0 ? 1 : -1;
                        int i28 = (iZ >> 23) & 255;
                        int i29 = iZ & 8388607;
                        o1.a.f16810h.b((float) ((1.0d - Math.pow(((float) (((double) (i27 * (i28 == 0 ? i29 << 1 : i29 | 8388608))) * Math.pow(2.0d, ((double) i28) - 150.0d))) / 101325.0f, 0.1903d)) * 44330.0d));
                        return;
                    }
                    return;
                case -64:
                    a1.c.h(bArr[i6 + 1] & 1);
                    return;
                case -37:
                    u0.i.l3().h4((bArr[i6] & 255) != 1 ? 2 : 1);
                    return;
                case CameraBinderDecorator.DEAD_OBJECT /* -32 */:
                    u0.d.b2(new String(bArr, i6 + 1, i3 - 1));
                    return;
                case -29:
                    int i30 = i6 + 1;
                    int i31 = i3 - 1;
                    nt.f8639d.U2(bArr, i30, i31);
                    if (u0.b.T3 && rt.a3().f3()) {
                        int[] iArr2 = new int[i31];
                        while (i10 < i31) {
                            iArr2[i10] = bArr[i30];
                            i10++;
                            i30++;
                        }
                        qt.y0(Process.DRM_UID, iArr2);
                        return;
                    }
                    return;
                case 3:
                    break;
                case 16:
                    if (!rt.a3().f3()) {
                        return;
                    }
                    int i32 = i3 - 1;
                    int[] iArr3 = new int[i32];
                    while (true) {
                        i6++;
                        if (i9 >= i32) {
                            qt.y0(Process.DRM_UID, iArr3);
                            return;
                        } else {
                            iArr3[i9] = bArr[i6] & 255;
                            i9++;
                        }
                    }
                    break;
                case 19:
                case 21:
                case 23:
                case 25:
                case 27:
                case 29:
                    s<? extends i1.e> sVarG = s.g(bArr[i6]);
                    if (sVarG != null) {
                        synchronized (sVarG) {
                            sVarG.b(Arrays.copyOfRange(bArr, i6 + 1, i6 + i3));
                            break;
                        }
                        return;
                    }
                    return;
                case 31:
                    byte b13 = bArr[i6 + 1];
                    c1.b.i(503, s0.e(Arrays.copyOfRange(bArr, i6, i3 + i6 + 2)));
                    return;
                case 33:
                    int i33 = bArr[i6 + 1] & 255;
                    int i34 = bArr[i6 + 2] & 255;
                    int iD = p0.d(bArr[i6 + 3], bArr[i6 + 4], bArr[i6 + 5]);
                    int iD2 = p0.d(bArr[i6 + 6], bArr[i6 + 7], bArr[i6 + 8]);
                    if (i33 <= 2) {
                        i34 /= 10;
                        iD /= 10;
                        iD2 /= 10;
                    }
                    int i35 = (iD2 - iD) / i34;
                    if (w0.d.K != 0) {
                        w0.d.L = iD;
                        w0.d.M = iD2;
                        w0.d.N = i34;
                        w0.d.O = i35;
                        w0.f.J(16, iD, iD2, i34, i35);
                        return;
                    }
                    return;
                case 49:
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i6 + 1, i6 + i3);
                    if (bArrCopyOfRange == null || bArrCopyOfRange.length <= 0) {
                        return;
                    }
                    u0.c.Q.c(bArrCopyOfRange);
                    return;
                case 52:
                    int i36 = (bArr[i6 + 1] + DhcpPacket.DHCP_VENDOR_CLASS_ID) & 255;
                    boolean z4 = (bArr[i6 + 2] & 255) != 1;
                    if (a1.b.f120k) {
                        Log.e("Steer", "0x34  : " + i36 + " longClick : " + z4);
                    }
                    a1.d dVar = a1.b.f111b;
                    if (dVar == null || !(dVar instanceof a1.a)) {
                        return;
                    }
                    a1.a aVar = (a1.a) dVar;
                    if (z4) {
                        aVar.t(i36);
                        return;
                    } else {
                        aVar.z(i36);
                        return;
                    }
                case 54:
                    int i37 = (bArr[i6 + 1] & 255) + 60;
                    int i38 = bArr[i6 + 2] & 255;
                    if (a1.b.f120k) {
                        Log.e("Steer", "0x36  : " + i37 + " adc : " + i38);
                    }
                    a1.c.d(i37, i38);
                    return;
                case 103:
                    z.f13138b = p0.d(bArr[i6 + 1], bArr[i6 + 2], bArr[i6 + 3]);
                    if (z.f13140d) {
                        return;
                    }
                    l0.b0.m0();
                    return;
                case 117:
                    byte b14 = bArr[i6 + 1];
                    if (b14 == 4) {
                        u0.d.M3(null);
                        return;
                    }
                    if (b14 != 16) {
                        return;
                    }
                    synchronized (u0.b.O2) {
                        int i39 = i6 + i3;
                        for (int i40 = i6 + 2; i40 < i39; i40 += 2) {
                            int i41 = ((bArr[i40] << 8) & 65280) | (bArr[i40 + 1] & 255);
                            u0.b.O2.put(i41, i41);
                        }
                        break;
                    }
                    return;
                case 126:
                    byte b15 = bArr[i6 + 1];
                    if (b15 == 0) {
                        byte b16 = bArr[i6 + 2];
                        if (b16 == 0) {
                            s0.d.b(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255, bArr[i6 + 5] & 255);
                            return;
                        } else if (b16 == 1) {
                            s0.d.i(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255, bArr[i6 + 5] & 255);
                            return;
                        } else {
                            if (b16 != 2) {
                                return;
                            }
                            s0.d.o(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255, bArr[i6 + 5] & 255);
                            return;
                        }
                    }
                    if (b15 != 1) {
                        if (b15 != 2) {
                            return;
                        }
                        int i42 = i6 + 3;
                        if (s0.f(bArr, i42)) {
                            u0.i.l3().u3(s0.x(bArr[i6 + 2] & 255, bArr[i42] & 255));
                            return;
                        }
                        return;
                    }
                    byte b17 = bArr[i6 + 2];
                    if (b17 == 0) {
                        s0.d.e(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255);
                        return;
                    }
                    if (b17 == 1) {
                        s0.d.f(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255);
                        return;
                    } else if (b17 == 2) {
                        s0.d.g(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255);
                        return;
                    } else {
                        if (b17 != 3) {
                            return;
                        }
                        s0.d.d(bArr[i6 + 3] & 255, bArr[i6 + 4] & 255);
                        return;
                    }
                default:
                    switch (b2) {
                        case -61:
                            int i43 = i3 - 1;
                            byte[] bArr2 = new byte[i43];
                            System.arraycopy(bArr, i6 + 1, bArr2, 0, i43);
                            a1.c.k(bArr2);
                            return;
                        case -60:
                            a1.c.j(bArr[i6 + 1] & 255, (bArr[i6 + 2] & 1) != 1 ? 1 : 0);
                            return;
                        case -59:
                            if (a1.b.f111b instanceof a1.a) {
                                o1.j.c(new b(bArr, i6, i3), 0L);
                                return;
                            }
                            return;
                        default:
                            switch (b2) {
                                case PackageManager.INSTALL_FAILED_UID_CHANGED /* -24 */:
                                    y0.h.o(bArr[i6 + 1] & 255, bArr[i6 + 2] & 255);
                                    return;
                                case PackageManager.INSTALL_FAILED_PACKAGE_CHANGED /* -23 */:
                                    int i44 = i3 - 1;
                                    byte[] bArr3 = new byte[i44];
                                    int i45 = i6 + 1;
                                    System.arraycopy(bArr, i45, bArr3, 0, i44);
                                    q qVar = this.f18230h;
                                    if (qVar != null) {
                                        qVar.b(bArr3);
                                    } else {
                                        z.f13137a.b(bArr3);
                                    }
                                    if (rt.a3().f3()) {
                                        int[] iArr4 = new int[i44];
                                        while (i8 < i44) {
                                            iArr4[i8] = bArr[i45] & 255;
                                            i8++;
                                            i45++;
                                        }
                                        qt.y0(Process.DRM_UID, iArr4);
                                        return;
                                    }
                                    return;
                                case -22:
                                    int iC = p0.c(bArr[i6 + 1], bArr[i6 + 2]);
                                    if (iC == 61443) {
                                        if (this.f18237o == 0) {
                                            this.f18237o = 1;
                                            a.f.k().l(0, "stm32_need_upgrade", "STM32需要升级", Paint.Align.CENTER, 30, -1, 40, 2147483392);
                                            SystemProperties.set("sys.fyt.mcu_need_update", "1");
                                            u0.d.S1(1);
                                            return;
                                        }
                                        return;
                                    }
                                    if (iC == 61459) {
                                        if (this.f18238p == 0) {
                                            this.f18238p = 1;
                                            u0.e.i("/system/mcu/TwSpiOsd.bin", 0);
                                            m.a().postDelayed(new c(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                                            return;
                                        }
                                        return;
                                    }
                                    if (iC == 61475 && this.f18239q == 0) {
                                        this.f18239q = 1;
                                        u0.e.i("/system/mcu/TwSpiMcu.bin", 1);
                                        m.a().postDelayed(new d(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                                        return;
                                    }
                                    return;
                                default:
                                    switch (b2) {
                                        case -19:
                                            u0.d.s3(new String(bArr, i6 + 1, i3 - 1));
                                            return;
                                        case -18:
                                            u0.d.r3(new String(bArr, i6 + 1, i3 - 1));
                                            return;
                                        case -17:
                                            String str = new String(bArr, i6 + 1, i3 - 1);
                                            if ("_ivd".equals(str)) {
                                                if (SystemProperties.getInt("persist.fyt.externalfm", 0) == 1) {
                                                    w0.f.l(4);
                                                    return;
                                                } else {
                                                    w0.f.l(3);
                                                    return;
                                                }
                                            }
                                            if (this.f18227e == 0) {
                                                this.f18227e = 1;
                                                a.f.k().l(0, "mcu need update", "MCU与硬件不匹配", Paint.Align.CENTER, 50, -1, 60, 2147483392);
                                                SystemProperties.set("sys.fyt.mcu_notmatch_hardware", str);
                                                l.a().postDelayed(new e(), 6000L);
                                            }
                                            u0.d.C3(7);
                                            return;
                                        case -16:
                                            if (!rt.a3().f3()) {
                                                return;
                                            }
                                            int i46 = i3 - 1;
                                            int[] iArr5 = new int[i46];
                                            while (true) {
                                                i6++;
                                                if (i7 >= i46) {
                                                    qt.y0(1052, iArr5);
                                                    return;
                                                } else {
                                                    iArr5[i7] = bArr[i6] & 255;
                                                    i7++;
                                                }
                                            }
                                            break;
                                        case -15:
                                            u0.i iVarL3 = u0.i.l3();
                                            if (iVarL3 != null) {
                                                iVarL3.j4(new String(bArr, i6 + 1, i3 - 1));
                                                return;
                                            }
                                            return;
                                        default:
                                            switch (b2) {
                                                case 5:
                                                    if (bArr[i6 + 1] == 33) {
                                                        byte b18 = bArr[i6 + 2];
                                                        if (b18 == 0) {
                                                            u0.d.Q(-2);
                                                            return;
                                                        } else {
                                                            if (b18 != 1) {
                                                                return;
                                                            }
                                                            u0.d.Q(-1);
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                case 6:
                                                    int i47 = i6 + 1;
                                                    byte b19 = bArr[i47];
                                                    if (b19 == 2) {
                                                        if (y0.f.f18039c1 == 0) {
                                                            y0.h.A(bArr[i6 + 2] & 255);
                                                            return;
                                                        }
                                                        return;
                                                    } else {
                                                        if (b19 == 32) {
                                                            u0.d.f3(bArr[i6 + 2] & 255);
                                                            return;
                                                        }
                                                        switch (b19) {
                                                            case 35:
                                                            case 36:
                                                            case 37:
                                                            case 38:
                                                                u0.i.l3().l4(bArr[i47], bArr[i6 + 2] & 255);
                                                                return;
                                                            default:
                                                                return;
                                                        }
                                                    }
                                                case 7:
                                                    u0.d.X1(new String(bArr, i6 + 3, i3 - 3));
                                                    return;
                                                case 8:
                                                    int i48 = i6 + 1;
                                                    u0.d.t2(bArr[i48] & DhcpPacket.DHCP_DOMAIN_NAME);
                                                    u0.d.v2((bArr[i48] >> 4) & 15);
                                                    return;
                                                case 9:
                                                    byte b20 = bArr[i6 + 1];
                                                    if (b20 != 0) {
                                                        if (b20 != 1) {
                                                            if (b20 != 3) {
                                                                return;
                                                            }
                                                            u0.d.I3(106, 0, p0.c(bArr[i6 + 2], bArr[i6 + 3]));
                                                            return;
                                                        }
                                                        int iC2 = p0.c(bArr[i6 + 2], bArr[i6 + 3]);
                                                        if (iC2 == 65535) {
                                                            u0.d.I3(106, 2, 1);
                                                            return;
                                                        } else if (iC2 == 65534) {
                                                            u0.d.I3(106, 2, 1);
                                                            return;
                                                        } else {
                                                            if (iC2 == 65520) {
                                                                u0.d.I3(106, 2, 0);
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                    }
                                                    int i49 = i6 + 2;
                                                    int i50 = i6 + 3;
                                                    int iC3 = p0.c(bArr[i49], bArr[i50]);
                                                    if (iC3 == 65535) {
                                                        u0.d.I3(106, 1, 1);
                                                        return;
                                                    }
                                                    if (iC3 == 65534) {
                                                        u0.d.I3(106, 1, 1);
                                                        return;
                                                    }
                                                    u0.d.I3(106, 1, 0);
                                                    int i51 = (i3 - 6) + 3;
                                                    int[] iArr6 = new int[i51];
                                                    iArr6[0] = 3;
                                                    iArr6[1] = p0.c(bArr[i49], bArr[i50]);
                                                    iArr6[2] = p0.c(bArr[i6 + 4], bArr[i6 + 5]);
                                                    int[] iArr7 = new int[i3];
                                                    for (int i52 = 0; i52 < i3; i52++) {
                                                        iArr7[i52] = bArr[i6 + i52] & 255;
                                                    }
                                                    System.arraycopy(iArr7, 6, iArr6, 3, i51 - 3);
                                                    u0.d.I3(106, iArr6);
                                                    return;
                                                case 10:
                                                    byte b21 = bArr[i6 + 1];
                                                    if (b21 != u0.b.y3) {
                                                        u0.b.y3 = b21;
                                                        int i53 = (b21 >> 6) & 1;
                                                        if (m1.c.k(206)) {
                                                            byte[] bArr4 = new byte[1];
                                                            bArr4[0] = u0.b.f17305a ? b21 : (byte) i53;
                                                            ToolsJni.cmd_149_write_data(bArr4, 169);
                                                        }
                                                    }
                                                    u0.d.V1((b21 >> 6) & 1);
                                                    if (y0.f.f18036b1 == 0) {
                                                        y0.h.C((b21 >> 3) & 1);
                                                    }
                                                    if (e() == 0 || u0.b.f17320f != 0) {
                                                        return;
                                                    }
                                                    u0.d.i(1);
                                                    return;
                                                case 11:
                                                    byte b22 = bArr[i6 + 1];
                                                    if (b22 == 0) {
                                                        if (bArr[i6 + 2] == 2) {
                                                            d();
                                                            return;
                                                        }
                                                        return;
                                                    } else {
                                                        if (b22 == 4) {
                                                            u0.d.h(bArr[i6 + 2] & 255);
                                                            return;
                                                        }
                                                        if (b22 == 6) {
                                                            u0.d.e(bArr[i6 + 2] & 255);
                                                            return;
                                                        } else {
                                                            if (b22 != 8) {
                                                                return;
                                                            }
                                                            Log.e("Device", "second Display Brightness:" + (bArr[i6 + 2] & 255));
                                                            return;
                                                        }
                                                    }
                                                case 12:
                                                    switch (bArr[i6 + 1]) {
                                                        case 0:
                                                            if (m1.c.k(210)) {
                                                                return;
                                                            }
                                                            u0.d.H0((bArr[i6 + 2] & 1) == 0 ? 1 : 0);
                                                            return;
                                                        case 1:
                                                            if (u0.b.A4 == 0) {
                                                                u0.d.H((bArr[i6 + 2] & 1) == 0 ? 1 : 0);
                                                                return;
                                                            }
                                                            return;
                                                        case 2:
                                                            u0.d.l1(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 3:
                                                            u0.d.c1(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 4:
                                                            u0.d.L2(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 5:
                                                            u0.d.w2(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 6:
                                                            u0.d.J(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 7:
                                                            c1.b.f(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 8:
                                                            u0.d.d0(bArr[i6 + 2] & 1);
                                                            return;
                                                        case 9:
                                                            u0.d.r2((bArr[i6 + 2] & 1) == 0 ? 1 : 0);
                                                            return;
                                                        case 10:
                                                        default:
                                                            return;
                                                        case 11:
                                                            u0.d.v3((bArr[i6 + 2] & 1) != 0 ? 1 : 0);
                                                            return;
                                                        case 12:
                                                            if (m1.c.k(207)) {
                                                                return;
                                                            }
                                                            u0.d.F3((bArr[i6 + 2] & 1) != 0 ? 1 : 0);
                                                            return;
                                                        case 13:
                                                            u0.i.l3().Z2(bArr[i6 + 2] & 255);
                                                            break;
                                                        case 14:
                                                            break;
                                                    }
                                                    u0.i.l3().Y2(bArr[i6 + 2] & 1);
                                                    return;
                                                case 13:
                                                    StringBuilder sb3 = new StringBuilder();
                                                    sb3.append("=============>>> MCU Time : ");
                                                    int i54 = i6 + 1;
                                                    int i55 = i6 + 6;
                                                    sb3.append(Arrays.toString(Arrays.copyOfRange(bArr, i54, i55)));
                                                    Log.e("Gps", sb3.toString());
                                                    o1.i.o().s(bArr[i54], bArr[i6 + 2], bArr[i6 + 3], bArr[i6 + 4], bArr[i6 + 5], bArr[i55]);
                                                    return;
                                                case 14:
                                                    byte b23 = bArr[i6 + 1];
                                                    if (b23 == 1) {
                                                        u0.d.W3(0, bArr[i6 + 2] & 1);
                                                        return;
                                                    }
                                                    if (b23 == 2) {
                                                        u0.d.W3(1, p0.c(bArr[i6 + 2], bArr[i6 + 3]));
                                                        return;
                                                    }
                                                    if (b23 == 3) {
                                                        u0.d.W3(2, p0.c(bArr[i6 + 2], bArr[i6 + 3]));
                                                        return;
                                                    } else if (b23 == 4) {
                                                        u0.d.W3(3, p0.c(bArr[i6 + 2], bArr[i6 + 3]));
                                                        return;
                                                    } else {
                                                        if (b23 != 5) {
                                                            return;
                                                        }
                                                        u0.d.W3(4, p0.c(bArr[i6 + 2], bArr[i6 + 3]));
                                                        return;
                                                    }
                                                default:
                                                    switch (b2) {
                                                        case 65:
                                                            int i56 = bArr[i6 + 1] & 255;
                                                            int i57 = bArr[i6 + 2] & 255;
                                                            int i58 = ((bArr[i6 + 5] << 0) & 255) | ((bArr[i6 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i6 + 4] << 8) & 65280);
                                                            if (i56 > 0) {
                                                                d1.d.f1577j[i56 - 1] = i58;
                                                            }
                                                            if (i57 == 1) {
                                                                d1.f.c(0);
                                                            }
                                                            d1.f.c(i57);
                                                            return;
                                                        case 66:
                                                            d1.f.b(bArr[i6 + 1] & 255);
                                                            return;
                                                        case 67:
                                                            d1.f.a(bArr[i6 + 1] & 255);
                                                            return;
                                                        default:
                                                            switch (b2) {
                                                                case 97:
                                                                    int i59 = (bArr[i6 + 2] & 255) | ((bArr[i6 + 1] << 8) & 65280);
                                                                    Log.e("CAN", "STEP2 MCU 0x61回传的协议ID = " + this.f18235m + " 高低配 = " + Integer.toHexString(i59).toUpperCase());
                                                                    if (i59 == 65535) {
                                                                        qt.v0(0);
                                                                        return;
                                                                    }
                                                                    if (i59 == 65534) {
                                                                        qt.J(0);
                                                                        return;
                                                                    }
                                                                    if (i59 == 57344) {
                                                                        qt.J(View.PFLAG2_TEXT_ALIGNMENT_MASK);
                                                                        return;
                                                                    }
                                                                    this.f18235m = i59;
                                                                    if (i59 == 0) {
                                                                        qt.J(0);
                                                                        return;
                                                                    }
                                                                    return;
                                                                case 98:
                                                                    int i60 = (i3 - 1) / 2;
                                                                    if (i60 > 1000) {
                                                                        i60 = 1000;
                                                                    }
                                                                    for (int i61 = 0; i61 < i60; i61++) {
                                                                        int i62 = i61 << 1;
                                                                        nt.f8638c0[i61] = ((bArr[(i6 + 1) + i62] << 8) & 65280) | (bArr[i6 + 2 + i62] & 255);
                                                                    }
                                                                    qt.m0(0);
                                                                    qt.m0(i60);
                                                                    return;
                                                                case 99:
                                                                    k(bArr, i6 + 1, i3 - 1);
                                                                    return;
                                                                case 100:
                                                                    u0.d.y3(bArr[i6 + 1] & 255);
                                                                    return;
                                                                case 101:
                                                                    int iC4 = p0.c(bArr[i6 + 1], bArr[i6 + 2]);
                                                                    if (iC4 > 600) {
                                                                        u0.d.A3(iC4);
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                    }
                                            }
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        r rVar2 = z.a.D;
        if (rVar2 != null) {
            rVar2.z1(bArr, i6 + 1, i3 - 1);
        }
    }

    public final void g(byte[] bArr, int i2, int i3) {
        c.e eVarD = c.e.d();
        byte b2 = bArr[i2];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 1];
            if (b3 == 0) {
                a.f.p().t(LogType.ZLINK, "   面板按键   DataBt.sPhoneState : " + h0.c.E + "  HANG KEY");
                eVarD.c(6);
            }
            if (b3 != 1) {
                if (b3 != 2) {
                    return;
                }
                h0.c.f2425b.I(2);
                return;
            }
            a.f.p().t(LogType.ZLINK, "   面板按键   DataBt.sPhoneState : " + h0.c.E + "  CALL KEY");
            if (c.f.b().c(8)) {
                return;
            }
            eVarD.c(5);
            return;
        }
        if (b2 == 32) {
            byte b4 = bArr[i2 + 1];
            if (b4 == 0) {
                h0.c.f2425b.w();
                return;
            }
            if (b4 == 1) {
                h0.c.f2425b.E();
                return;
            } else if (b4 == 3) {
                h0.c.f2425b.i();
                return;
            } else {
                if (b4 != 4) {
                    return;
                }
                h0.c.f2425b.V();
                return;
            }
        }
        if (b2 != 48) {
            return;
        }
        switch (bArr[i2 + 1]) {
            case 0:
                h0.c.f2425b.h(2);
                break;
            case 1:
                h0.c.f2425b.h(3);
                break;
            case 2:
                h0.c.f2425b.h(4);
                break;
            case 3:
                h0.c.f2425b.h(5);
                break;
            case 4:
                h0.c.f2425b.h(6);
                break;
            case 5:
                h0.c.f2425b.h(7);
                break;
            case 6:
                h0.c.f2425b.h(8);
                break;
            case 7:
                h0.c.f2425b.h(9);
                break;
            case 8:
                h0.c.f2425b.h(10);
                break;
            case 9:
                h0.c.f2425b.h(11);
                break;
            case 10:
                h0.c.f2425b.h(13);
                break;
            case 11:
                h0.c.f2425b.h(14);
                break;
        }
    }

    public final void h(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 1];
            if (b3 == 5) {
                a.i.E(u0.b.D);
                return;
            } else {
                if (b3 != 6) {
                    return;
                }
                a.i.F(u0.b.D);
                return;
            }
        }
        if (b2 == 33 && bArr[i2 + 1] == 1) {
            int i4 = o0.e.f16764a;
            if (i4 == 1 || i4 == 3 || ((i4 == 2 && o0.e.f16785k0 != 0) || ((o0.e.f16764a == 4 && o0.e.f16785k0 != 0) || (o0.e.f16764a == 5 && o0.e.f16785k0 != 0)))) {
                o0.g.n(1);
            }
        }
    }

    public void i(int[] iArr) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (!s0.h(iArr, 0) || jElapsedRealtime - this.C < 100) {
            return;
        }
        int i2 = iArr[0];
        this.C = jElapsedRealtime;
        r0.a.X2().c3(i2);
    }

    /* JADX WARN: Code duplicated, block: B:288:0x04fa  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void j(byte[] bArr, int i2, int i3) {
        y0.e eVar;
        int i4;
        c.e eVarD = c.e.d();
        byte b2 = bArr[i2];
        if (b2 == -120) {
            D = 0;
            u0.d.T1(0);
        }
        if (b2 == -119) {
            switch (bArr[i2 + 1]) {
                case 83:
                    u0.b.f17343m1 = 0;
                    SystemProperties.set("sys.fyt.sleeping", "1");
                    u0.d.I3(103, 1);
                    if (SystemProperties.getInt("sys.sleeptimes", 0) > u0.b.Z1) {
                        Log.d("sleep", "0x89 0x53 reboot reason " + s0.m("sys.sleeptimes", 0) + " >= " + u0.b.Z1);
                        SystemProperties.set("sys.fyt.sleeping", "0");
                        a.i.U();
                    } else if (g.e.a() == 4 && !q0.l()) {
                        SystemProperties.set("sys.fyt.sleeping", "0");
                    } else {
                        int i5 = D;
                        D = i5 + 1;
                        if (i5 == 2) {
                            if (m1.c.k(206)) {
                                byte[] bArrCmd_148_read_data = ToolsJni.cmd_148_read_data(2, 170);
                                if ((bArrCmd_148_read_data != null && bArrCmd_148_read_data.length >= 2 && (bArrCmd_148_read_data[0] & 255) == 85 && (bArrCmd_148_read_data[1] & 255) == 170) == false) {
                                    byte[] bArrCmd_148_read_data2 = ToolsJni.cmd_148_read_data(1, 169);
                                    if (s0.f(bArrCmd_148_read_data2, 0)) {
                                        int i6 = bArrCmd_148_read_data2[0] & 255 & 1;
                                        Log.e("MCU", "sleep Fix MCU_OPTIONS = " + i6);
                                        if (u0.b.X != i6) {
                                            u0.d.W1(i6);
                                        }
                                    }
                                }
                            }
                            q0.m(0);
                            u0.d.v(0);
                            if (g.e.a() == 4 && u0.b.n4 == 0) {
                                g.d.I(1);
                            }
                        }
                        if (u0.b.z3 != 0 && u0.b.X == 0) {
                            if (!a.i.z() && !"open".equals(SystemProperties.get("persist.sys.wifi.states"))) {
                                SystemProperties.set("persist.sys.wifi.states", "open");
                            }
                            if (D > 4) {
                                k.s(1, 170, 95);
                                Log.d("sleep", "0x89 0x53 REVEIVER MCU " + SystemClock.uptimeMillis());
                            }
                        } else {
                            if (!a.i.z()) {
                                if (!"open".equals(SystemProperties.get("persist.sys.wifi.states"))) {
                                    SystemProperties.set("persist.sys.wifi.states", "open");
                                }
                                a.i.f();
                            } else if (D > 4) {
                                k.s(1, 170, 95);
                                Log.d("sleep", "0x89 0x53 REVEIVER MCU " + SystemClock.uptimeMillis());
                            }
                            Log.e("sleep", "0x89 0x53 STEP2 + time: = " + SystemClock.uptimeMillis());
                        }
                    }
                    break;
                case 84:
                    D = 0;
                    k.s(1, 170, 97);
                    Log.e("sleep", "0x89 0x54 STEP3 + time: = " + SystemClock.uptimeMillis());
                    break;
                case 85:
                    Log.e("sleep", "0x89 0x55 canSleep = " + q0.l());
                    if (q0.l()) {
                        if (g.e.a() != 4) {
                            k.s(1, 170, 98);
                            a.i.a0(500L);
                        } else if (this.f18244v.c(1000)) {
                            a.i.a0(2000L);
                            k.s(1, 170, 98);
                            a.i.a0(500L);
                            this.f18244v.a();
                        }
                        SystemProperties.set("sys.sleeptimes", ProxyProperties.LOCAL_EXCL_LIST + (SystemProperties.getInt("sys.sleeptimes", 0) + 1));
                        if (!(y0.f.f18034b instanceof AudioDevice)) {
                            q0.y(0);
                        }
                        a.i.D();
                        Log.e("sleep", "0x89 0x55 gotoSleep 01");
                        a.i.m();
                        u0.b.e4 = false;
                        Log.e("sleep", "0x89 0x55 gotoSleep 02");
                        SystemProperties.set("sys.fyt.sleeping", "0");
                        u0.d.I3(103, 0);
                    }
                    break;
            }
        }
        if (b2 == 0) {
            byte b3 = bArr[i2 + 1];
            if (b3 == 0) {
                u0.d.T1(0);
                return;
            }
            if (b3 == 1) {
                if (u0.b.f17320f == 0) {
                    this.f18245w.a();
                }
                u0.d.T1(1);
                return;
            }
            if (b3 == 2) {
                u0.d.M(1);
                return;
            }
            if (b3 == 3) {
                u0.d.M(0);
                return;
            }
            if (b3 == 4) {
                if (y0.f.A0.c(80)) {
                    y0.h.Z(1);
                    return;
                }
                return;
            }
            if (b3 == 5) {
                if (y0.f.A0.c(80)) {
                    y0.h.Z(0);
                    return;
                }
                return;
            }
            if (b3 == 7) {
                u0.i.l3().z3(true);
                return;
            }
            if (b3 == 8) {
                u0.i.l3().z3(false);
                return;
            }
            if (b3 == 49) {
                if (e() != 0) {
                    return;
                }
                u0.d.i(1);
                return;
            }
            if (b3 == 50) {
                if (e() != 0) {
                    return;
                }
                u0.d.i(0);
                return;
            }
            if (b3 == 112) {
                a.f.p().s("STEP1 MCU通知服务不再处理canbus协议");
                nt.f8648i = 1;
                m1.a.f13516e = true;
                Log.e("Qin", "================ >>>  Mcu to Arm 0x70    DataStore.localStore = true");
                y0.h.w();
                return;
            }
            switch (b3) {
                case 16:
                    if (u0.b.P3 == 0) {
                        u0.d.t3(1);
                    }
                    break;
                case 17:
                    if (u0.b.P3 == 0) {
                        u0.d.t3(0);
                        int i7 = u0.b.F;
                        if (i7 == -1) {
                            u0.b.f17311c.c(0);
                        } else if (i7 == 4 && o0.e.f16764a > 0) {
                            u0.b.f17311c.c(0);
                            o1.k.a().postDelayed(new g(), 1000L);
                        } else {
                            Log.e("Qin", "---------------->>> DataMain.sAppIdUIRequest:" + u0.b.F);
                            u0.b.f17311c.c(u0.b.F);
                        }
                    }
                    break;
                case 18:
                    u0.d.d1(0);
                    break;
                case 19:
                    u0.d.d1(1);
                    break;
                default:
                    switch (b3) {
                        case 32:
                            if (u0.b.f17320f != 0) {
                                y0.h.P();
                                u0.c.f17385l.c();
                            }
                            break;
                        case 33:
                            if (this.f18243u.c(2000)) {
                                u0.d.c3();
                            }
                            if (!g.e.m()) {
                                if (y0.f.f18089z != 0 || y0.f.C0 > y0.f.B) {
                                    y0.h.t0(y0.f.B);
                                }
                            }
                            break;
                        case 34:
                            if (e() != 0) {
                                u0.d.i(0);
                                u0.b.w3 = 3;
                            }
                            break;
                    }
                    break;
            }
        }
        if (b2 == 1) {
            if (y0.f.Z0 == 0) {
                int i8 = bArr[i2 + 1] & 127;
                Log.e("soundMute", "====== >>>  Mcu to Arm vol : " + i8);
                y0.h.t0(i8);
                return;
            }
            return;
        }
        if (b2 == 22) {
            int i9 = i2 + 1;
            u0.d.Z(bArr[i9] & 1, (bArr[i9] >> 1) & 1);
            return;
        }
        if (b2 == 23) {
            if (g.f.f(9) || g.f.m()) {
                boolean z2 = bArr[i2 + 1] & 255;
                int i10 = z2 == 1 ? 1 : 0;
                int i11 = z2 == 3 ? 1 : 0;
                int i12 = z2 == 5 ? 1 : 0;
                if (i10 == 0 && i11 == 0 && i12 == 0) {
                    c0.f13023q = false;
                } else {
                    c0.f13022p = true;
                    c0.f13023q = true;
                    c0.f13026t = 0;
                    c0.f13024r = 0;
                    c0.f13028v = 0;
                }
                int i13 = ((((c0.f13024r > 0 ? 1 : 0) | i11) << 3) & 8) | ((((c0.f13026t > 0 ? 1 : 0) | i10) << 4) & 16) | ((u0.b.f17366w << 6) & 64);
                int i14 = nt.f8633a;
                int i15 = 65535 & i14;
                if (i15 != 20 && i15 != 112 && i15 != 298 && i15 != 446 && i15 != 448 && i15 != 443 && i15 != 444) {
                    switch (i14) {
                        case 786880:
                        case 1114560:
                        case 1507776:
                        case 1573312:
                        case 1638848:
                        case 2949575:
                        case 5702087:
                        case 12452296:
                        case 12648904:
                            break;
                        default:
                            qt.A0(1049, new int[]{11, i13}, null, null);
                            break;
                    }
                }
                u0.i.l3().g4(4096, i10 | (c0.f13026t > 0 ? 1 : 0));
                u0.i.l3().g4(8192, i11 | (c0.f13024r > 0 ? 1 : 0));
                int[] iArr = new int[1];
                iArr[0] = i12 | (c0.f13028v <= 0 ? 0 : 1);
                u0.d.I3(139, iArr);
                return;
            }
            return;
        }
        if (b2 == 48) {
            StringBuilder sb = new StringBuilder();
            sb.append("=================>>MCU to value :");
            int i16 = i2 + 1;
            sb.append((int) bArr[i16]);
            sb.append("  data[start+1] >> 0 : ");
            sb.append((bArr[i16] >> 0) & 1);
            Log.e("Beep", sb.toString());
            y0.h.q((bArr[i16] >> 0) & 1);
            return;
        }
        if (b2 == 49) {
            if ((bArr[i2 + 1] & 255) == 0 && (eVar = y0.f.f18034b) != null && (eVar instanceof AudioDevice)) {
                ((AudioDevice) eVar).z(true);
                return;
            }
            return;
        }
        switch (b2) {
            case -112:
                if (y0.f.f18045e1 == 0) {
                    y0.h.a0(bArr[i2 + 1] & 1);
                }
                break;
            case -110:
                if (y0.f.f18042d1 == 0) {
                    y0.h.l((bArr[i2 + 1] & 1) == 0 ? 1 : 0);
                }
                break;
            case PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME /* -106 */:
                int i17 = bArr[i2 + 1] & 7;
                if (i17 == 0 || i17 == 1) {
                    u0.d.e1(i17);
                    break;
                } else if (i17 == 2) {
                    u0.i.l3().n4(0);
                    break;
                } else if (i17 == 3) {
                    u0.i.l3().n4(1);
                    break;
                }
                break;
            case PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION /* -102 */:
                w0.f.D(bArr[i2 + 1] & 255);
                break;
            case PackageManager.INSTALL_PARSE_FAILED_NOT_APK /* -100 */:
                w0.f.C(bArr[i2 + 1] & 255);
                break;
            case -98:
                w0.f.d(bArr[i2 + 1] & 1);
                break;
            case -96:
                SystemProperties.set("sys.fyt.mcu_cus_id", (bArr[i2 + 1] & 255) + ProxyProperties.LOCAL_EXCL_LIST);
                break;
            case -69:
                w0.f.m(bArr[i2 + 1] & 1);
                break;
            case -65:
                u0.d.P1(bArr[i2 + 1] & 255);
                break;
            case -42:
                int i18 = bArr[i2 + 1] & 255;
                if (u0.b.r1 != i18) {
                    u0.d.I3(120, i18);
                    u0.b.r1 = i18;
                }
                break;
            case -16:
                byte b4 = bArr[i2 + 1];
                if (b4 == 2) {
                    qt.y0(1015, 0);
                    break;
                } else if (b4 == 3) {
                    qt.y0(1015, 1);
                    break;
                }
                break;
            case -11:
                if (y0.f.f18081v) {
                    y0.f.f18081v = bArr[i2 + 1] != y0.f.f18077t;
                }
                break;
            case -4:
                u0.d.Q1(1);
                break;
            case 13:
                byte b5 = bArr[i2 + 1];
                if (b5 == 1) {
                    w0.d.f17790b.x(-3);
                    break;
                } else if (b5 == 2) {
                    w0.d.f17790b.x(-2);
                    break;
                }
                break;
            case 41:
                u0.i.l3().q4((bArr[i2 + 1] & 1) == 0);
                break;
            case 66:
                SystemProperties.set("sys.fyt.mcu_reverse", ((bArr[i2 + 1] >> 0) & 1) + ProxyProperties.LOCAL_EXCL_LIST);
                break;
            case 80:
                if (u0.b.y4 == 0) {
                    u0.d.m2((bArr[i2 + 1] >> 0) & 1);
                }
                break;
            case 86:
                if (y0.f.f18054h1 == 0) {
                    y0.h.j((bArr[i2 + 1] >> 0) & 1);
                }
                break;
            case 96:
                w0.f.r(bArr[i2 + 1] & 1);
                break;
            case 98:
                if (!m1.c.k(198)) {
                    w0.f.a(bArr[i2 + 1] & 1);
                }
                break;
            case 120:
                if (p0.b.f17028j == 0) {
                    byte b6 = bArr[i2 + 1];
                    if (b6 == 0) {
                        p0.c.a(0);
                        break;
                    } else if (b6 == 1) {
                        p0.c.a(1);
                        break;
                    } else if (b6 == 2) {
                        p0.c.a(2);
                        break;
                    } else if (b6 == 3) {
                        p0.c.a(3);
                        break;
                    }
                }
                break;
            case 122:
                int i19 = bArr[i2 + 1] & 255;
                if (i19 != 255) {
                    Log.e("CAN", "STEP2 MCU 0x7A 回传的协议ID = " + this.f18235m + " 高低配 = " + i19);
                    qt.J((i19 << 16) | this.f18235m);
                } else {
                    qt.v0(0);
                }
                break;
            default:
                switch (b2) {
                    case -47:
                        int i20 = bArr[i2 + 1] & 255;
                        if (u0.b.f17346n1 != i20) {
                            u0.d.I3(114, i20);
                            u0.b.f17346n1 = i20;
                        }
                        break;
                    case -46:
                        int i21 = i2 + 1;
                        int i22 = bArr[i21] & 255;
                        if (u0.b.f17349o1 != i22) {
                            u0.d.I3(115, bArr[i21] & 255);
                            u0.b.f17349o1 = i22;
                        }
                        break;
                    case -45:
                        if (!m1.c.k(1017) || !Configure.Property.ROTATION_BY_HAND.b(true)) {
                            int i23 = bArr[i2 + 1] & 255;
                            int i24 = ((i23 - ((SystemProperties.getInt("ro.sf.swrotation", 0) / 90) % 4)) + 4) % 4;
                            ToolsJni.cmd_147_7026_control_write(10, i23);
                            try {
                                a.f.j().freezeRotation(i24);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        break;
                    case -44:
                        int i25 = bArr[i2 + 1] & 255;
                        if (u0.b.f17355q1 != i25) {
                            u0.d.I3(119, i25);
                            u0.b.f17355q1 = i25;
                        }
                        break;
                    default:
                        switch (b2) {
                            case 4:
                                byte b7 = bArr[i2 + 1];
                                if (b7 == 0) {
                                    i4 = 16;
                                } else if (b7 == 1) {
                                    i4 = 18;
                                } else if (b7 == 2) {
                                    i4 = 17;
                                } else if (b7 == 5) {
                                    i4 = 21;
                                } else if (b7 == 14) {
                                    i4 = 27;
                                } else if (b7 == 21) {
                                    i4 = 26;
                                } else if (b7 != 48) {
                                    switch (b7) {
                                        case 7:
                                            i4 = 23;
                                            break;
                                        case 8:
                                            i4 = 24;
                                            break;
                                        case 9:
                                            i4 = 25;
                                            break;
                                        case 10:
                                            i4 = 27;
                                            break;
                                        default:
                                            switch (b7) {
                                                case 32:
                                                    i4 = 35;
                                                    break;
                                                case 33:
                                                    i4 = 36;
                                                    break;
                                                case 34:
                                                case 35:
                                                    i4 = 37;
                                                    break;
                                                default:
                                                    switch (b7) {
                                                        case 65:
                                                            i4 = 40;
                                                            break;
                                                        case 66:
                                                            i4 = 41;
                                                            break;
                                                        case 67:
                                                            i4 = 42;
                                                            break;
                                                        case 68:
                                                            i4 = 43;
                                                            break;
                                                        case 69:
                                                            i4 = 44;
                                                            break;
                                                        default:
                                                            i4 = -1;
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    i4 = 39;
                                }
                                if (i4 != -1 && u0.b.v4 == 0) {
                                    Log.e("Qin", String.format(" HandleMain lase Mcu STATE: %2X  NEW App ID =  %2X", Integer.valueOf(u0.b.O), Integer.valueOf(i4)));
                                    u0.d.Z1(i4);
                                    break;
                                }
                                break;
                            case 5:
                                byte b8 = bArr[i2 + 1];
                                int i26 = o0.e.f16764a;
                                if (i26 == 1 || i26 == 3 || ((i26 == 2 && o0.e.f16785k0 != 0) || ((o0.e.f16764a == 4 && o0.e.f16785k0 != 0) || (o0.e.f16764a == 5 && o0.e.f16785k0 != 0)))) {
                                    o0.g.n((b8 >> 7) & 1);
                                }
                                o0.e.f16772e = ((b8 >> 2) & 1) == 1;
                                break;
                            case 6:
                                switch (bArr[i2 + 1] & 255 ? 1 : 0) {
                                    case 0:
                                        u0.d.x0(0);
                                        break;
                                    case 1:
                                        u0.d.x0(1);
                                        break;
                                    case 2:
                                        u0.d.d3(1);
                                        break;
                                    case 3:
                                        u0.d.d3(0);
                                        break;
                                    case 4:
                                        u0.d.e3(0);
                                        break;
                                    case 5:
                                        u0.d.e3(1);
                                        break;
                                    case 6:
                                        u0.i.l3().k4(0);
                                        break;
                                    case 7:
                                        u0.i.l3().k4(1);
                                        break;
                                }
                                break;
                            case 7:
                                if (this.f18245w.c(2000)) {
                                    u0.d.E1();
                                }
                                break;
                            case 8:
                                u0.d.w1();
                                break;
                            case 9:
                                byte b9 = bArr[i2 + 1];
                                if (b9 == 1) {
                                    u0.d.t1();
                                    break;
                                } else if (b9 == 2) {
                                    u0.d.z1();
                                    break;
                                }
                                break;
                            default:
                                switch (b2) {
                                    case 16:
                                        if (h0.c.G == 0) {
                                            byte b10 = bArr[i2 + 1];
                                            if (b10 != -112) {
                                                if (b10 != 7) {
                                                    if (b10 != 9) {
                                                        if (b10 != 16) {
                                                            if (b10 != 32) {
                                                                if (b10 != 49) {
                                                                    if (b10 != 64) {
                                                                        if (b10 != 66) {
                                                                            if (b10 != 0) {
                                                                                if (b10 != 1) {
                                                                                    if (b10 != 2) {
                                                                                        if (b10 != 4) {
                                                                                            if (b10 != 5) {
                                                                                                if (b10 != 11) {
                                                                                                    if (b10 != 12) {
                                                                                                        switch (b10) {
                                                                                                            case -127:
                                                                                                                u.c1();
                                                                                                                break;
                                                                                                            case -126:
                                                                                                                u.V0();
                                                                                                                break;
                                                                                                            case -125:
                                                                                                                eVarD.c(568);
                                                                                                                break;
                                                                                                            default:
                                                                                                                switch (b10) {
                                                                                                                    case 80:
                                                                                                                        if (this.f18242t.c(500)) {
                                                                                                                            u.E();
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 81:
                                                                                                                        u.i();
                                                                                                                        break;
                                                                                                                    case 82:
                                                                                                                        u.i();
                                                                                                                        break;
                                                                                                                    case 83:
                                                                                                                        u.i();
                                                                                                                        break;
                                                                                                                    default:
                                                                                                                        switch (b10) {
                                                                                                                            case 112:
                                                                                                                                u.i();
                                                                                                                                break;
                                                                                                                            case 113:
                                                                                                                                eVarD.c(538);
                                                                                                                                break;
                                                                                                                            case 114:
                                                                                                                                eVarD.c(539);
                                                                                                                                break;
                                                                                                                            case 115:
                                                                                                                                eVarD.c(540);
                                                                                                                                break;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                    } else {
                                                                                                        w wVar = u0.b.N2;
                                                                                                        if (wVar.b(-1) == 16) {
                                                                                                            wVar.c(-1);
                                                                                                            int iB = wVar.b(27);
                                                                                                            u0.d.Z1(iB);
                                                                                                            k.s(1, 0, iB);
                                                                                                        }
                                                                                                        break;
                                                                                                    }
                                                                                                } else {
                                                                                                    eVarD.c(589);
                                                                                                    break;
                                                                                                }
                                                                                            } else {
                                                                                                u.T0();
                                                                                                break;
                                                                                            }
                                                                                        } else {
                                                                                            if (this.f18245w.c(1000)) {
                                                                                                u.U0();
                                                                                            }
                                                                                            break;
                                                                                        }
                                                                                    } else {
                                                                                        u.Z0();
                                                                                        break;
                                                                                    }
                                                                                } else {
                                                                                    eVarD.c(513);
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                u.F(500);
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            u.A();
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        if (this.f18242t.c(500)) {
                                                                            u.x();
                                                                        }
                                                                        break;
                                                                    }
                                                                } else {
                                                                    if (this.f18242t.c(500)) {
                                                                        u.H();
                                                                    }
                                                                    break;
                                                                }
                                                            } else {
                                                                u0.d.D1();
                                                                break;
                                                            }
                                                        } else {
                                                            eVarD.c(531);
                                                            break;
                                                        }
                                                    } else {
                                                        u.q();
                                                        break;
                                                    }
                                                } else {
                                                    u.r();
                                                    break;
                                                }
                                            } else {
                                                eVarD.c(576);
                                                break;
                                            }
                                        }
                                        break;
                                    case 17:
                                        int i27 = i2 + 1;
                                        if (bArr[i27] >= 39 && bArr[i27] <= 42) {
                                            a.f.p().t(LogType.MAIN, " MCU TO ------------------>>> " + String.format(" %2X", Byte.valueOf(bArr[i27])));
                                        }
                                        byte b11 = bArr[i27];
                                        if (b11 != -35) {
                                            if (b11 != 6) {
                                                if (b11 != 16) {
                                                    if (b11 != 1) {
                                                        if (b11 != 2) {
                                                            if (b11 != 3) {
                                                                if (b11 != 4) {
                                                                    switch (b11) {
                                                                        case 18:
                                                                            eVarD.c(85);
                                                                            break;
                                                                        case 19:
                                                                            eVarD.c(88);
                                                                            break;
                                                                        case 20:
                                                                            eVarD.c(87);
                                                                            break;
                                                                        case 21:
                                                                            eVarD.c(90);
                                                                            break;
                                                                        case 22:
                                                                            eVarD.c(89);
                                                                            break;
                                                                        case 23:
                                                                            eVarD.c(578);
                                                                            break;
                                                                        case 24:
                                                                            eVarD.c(579);
                                                                            break;
                                                                        case 25:
                                                                            eVarD.c(580);
                                                                            break;
                                                                        case 26:
                                                                            eVarD.c(581);
                                                                            break;
                                                                        case 27:
                                                                            eVarD.c(582);
                                                                            break;
                                                                        case 28:
                                                                            eVarD.c(583);
                                                                            break;
                                                                        case 29:
                                                                            eVarD.c(584);
                                                                            break;
                                                                        case 30:
                                                                            eVarD.c(585);
                                                                            break;
                                                                        case 31:
                                                                            eVarD.c(586);
                                                                            break;
                                                                        case 32:
                                                                            eVarD.c(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY);
                                                                            break;
                                                                        case 33:
                                                                            u.z0();
                                                                            break;
                                                                        case 34:
                                                                            u0.d.q1();
                                                                            break;
                                                                        default:
                                                                            switch (b11) {
                                                                                case 36:
                                                                                    u.O();
                                                                                    break;
                                                                                case 37:
                                                                                    u.v();
                                                                                    break;
                                                                                case 38:
                                                                                    eVarD.c(601);
                                                                                    break;
                                                                                case 39:
                                                                                    eVarD.c(591);
                                                                                    break;
                                                                                case 40:
                                                                                    eVarD.c(592);
                                                                                    break;
                                                                                case 41:
                                                                                    eVarD.c(595);
                                                                                    break;
                                                                                case 42:
                                                                                    eVarD.c(596);
                                                                                    break;
                                                                                case 43:
                                                                                    eVarD.c(568);
                                                                                    break;
                                                                                case 44:
                                                                                    if (!u.i0()) {
                                                                                        u.M();
                                                                                    } else {
                                                                                        u.y0();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    eVarD.c(621);
                                                                                    break;
                                                                                case 46:
                                                                                    eVarD.c(590);
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                } else {
                                                                    u.u();
                                                                    break;
                                                                }
                                                            } else {
                                                                u.W0();
                                                                break;
                                                            }
                                                        } else {
                                                            u.y();
                                                            break;
                                                        }
                                                    } else {
                                                        eVarD.c(3);
                                                        break;
                                                    }
                                                } else {
                                                    qt.A0(1008, null, null, null);
                                                    break;
                                                }
                                            } else {
                                                u0.d.u1();
                                                break;
                                            }
                                        } else {
                                            u0.d.r1(1);
                                            break;
                                        }
                                        break;
                                    case 18:
                                        u0.d.d1(0);
                                        break;
                                    case 19:
                                        u0.d.d1(1);
                                        break;
                                    case 20:
                                        u0.d.Q(-3);
                                        break;
                                    default:
                                        switch (b2) {
                                            case 33:
                                                byte b12 = bArr[i2 + 1];
                                                if (b12 != 32) {
                                                    if (b12 != 33) {
                                                        if (b12 != 64) {
                                                            switch (b12) {
                                                                case 0:
                                                                    eVarD.c(66);
                                                                    break;
                                                                case 1:
                                                                    u0.d.J1();
                                                                    break;
                                                                case 2:
                                                                    u0.d.K1();
                                                                    break;
                                                                case 3:
                                                                    u0.d.B1();
                                                                    break;
                                                                case 4:
                                                                    u0.d.I1();
                                                                    break;
                                                                case 5:
                                                                    u0.d.L1();
                                                                    break;
                                                                case 6:
                                                                    u0.d.x1();
                                                                    break;
                                                                case 7:
                                                                    u0.d.O1();
                                                                    break;
                                                                case 8:
                                                                    u0.d.M1();
                                                                    break;
                                                                case 9:
                                                                    u0.d.N1();
                                                                    break;
                                                                default:
                                                                    switch (b12) {
                                                                        case 48:
                                                                            u0.d.I3(60, 0);
                                                                            break;
                                                                        case 49:
                                                                            if (!u.P() && u.S("com.autonavi.amapauto")) {
                                                                                a.i.b(1);
                                                                            } else {
                                                                                u0.d.I3(60, 5);
                                                                            }
                                                                            break;
                                                                        case 50:
                                                                            if (!u.P() && u.S("com.autonavi.amapauto")) {
                                                                                a.i.b(0);
                                                                            } else {
                                                                                u0.d.I3(60, 6);
                                                                            }
                                                                            break;
                                                                        case 51:
                                                                            u0.d.I3(60, 1);
                                                                            break;
                                                                        case 52:
                                                                            u0.d.I3(60, 2);
                                                                            break;
                                                                        case 53:
                                                                            if (!u.P() && u.S("com.autonavi.amapauto")) {
                                                                                a.i.b(1);
                                                                            } else {
                                                                                u0.d.I3(60, 3);
                                                                            }
                                                                            break;
                                                                        case 54:
                                                                            if (!u.P() && u.S("com.autonavi.amapauto")) {
                                                                                a.i.b(0);
                                                                            } else {
                                                                                u0.d.I3(60, 4);
                                                                            }
                                                                            break;
                                                                        case 55:
                                                                            eVarD.c(588);
                                                                            break;
                                                                        case 56:
                                                                            eVarD.c(587);
                                                                            break;
                                                                        case 57:
                                                                            eVarD.c(623);
                                                                            break;
                                                                        case 58:
                                                                            eVarD.b();
                                                                            eVarD.c(626);
                                                                            break;
                                                                        case 59:
                                                                            eVarD.b();
                                                                            eVarD.c(627);
                                                                            break;
                                                                        case 60:
                                                                            eVarD.c(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY);
                                                                            break;
                                                                        case 61:
                                                                            eVarD.c(633);
                                                                            break;
                                                                        case 62:
                                                                            eVarD.c(1045);
                                                                            break;
                                                                        default:
                                                                            switch (b12) {
                                                                                case 80:
                                                                                    eVarD.b();
                                                                                    eVarD.c(636);
                                                                                    break;
                                                                                case 81:
                                                                                    eVarD.b();
                                                                                    eVarD.c(637);
                                                                                    break;
                                                                                case 82:
                                                                                    eVarD.b();
                                                                                    eVarD.c(639);
                                                                                    break;
                                                                                case 83:
                                                                                    eVarD.b();
                                                                                    eVarD.c(DisplayMetrics.DENSITY_XXXHIGH);
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            u0.d.g3();
                                                            break;
                                                        }
                                                    } else {
                                                        u0.d.F1();
                                                        break;
                                                    }
                                                } else {
                                                    u0.d.G1();
                                                    break;
                                                }
                                                break;
                                            case 34:
                                                u0.d.q(bArr[i2 + 1] & 1);
                                                break;
                                            case 35:
                                                if (u0.b.B4 == 0) {
                                                    byte b13 = bArr[i2 + 1];
                                                    if (b13 == 2) {
                                                        u0.d.W(0);
                                                        break;
                                                    } else if (b13 == 3) {
                                                        u0.d.W(1);
                                                        break;
                                                    }
                                                }
                                                break;
                                            case 36:
                                                if (u0.b.x4 == 0) {
                                                    u0.d.y0(bArr[i2 + 1] & 1);
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void k(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case 0:
                u0.d.D2(bArr[i2 + 1] & 255);
                break;
            case 1:
                u0.d.E2(bArr[i2 + 1] & 255);
                break;
            case 2:
                u0.d.F2(bArr[i2 + 1] & 255);
                break;
            case 3:
                u0.d.G2(bArr[i2 + 1] & 255);
                break;
            case 4:
                u0.d.R2(bArr[i2 + 1] & 255);
                break;
            case 5:
                u0.d.S2(bArr[i2 + 1] & 255);
                break;
            case 6:
                u0.d.T2(bArr[i2 + 1] & 255);
                break;
            case 7:
                u0.d.U2(bArr[i2 + 1] & 255);
                break;
            case 8:
                u0.d.O2(bArr[i2 + 1] & 255);
                break;
            case 9:
                u0.d.Q2(bArr[i2 + 1] & 255);
                break;
            case 10:
                u0.d.P2(bArr[i2 + 1] & 255);
                break;
            case 11:
                u0.d.N2(bArr[i2 + 1] & 255);
                break;
            case 12:
                u0.d.I2(bArr[i2 + 1] & 255);
                break;
            case 13:
                u0.d.K2(bArr[i2 + 1] & 255);
                break;
            case 14:
                u0.d.J2(bArr[i2 + 1] & 255);
                break;
            case 15:
                u0.d.H2(bArr[i2 + 1] & 255);
                break;
            case 16:
                u0.d.C2(bArr[i2 + 1] == 0 ? 0 : 1);
                break;
        }
    }

    public final void l(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -128) {
            byte b3 = bArr[i2 + 1];
            if (b3 == 0) {
                w0.f.E(1);
                return;
            } else {
                if (b3 != 1) {
                    return;
                }
                w0.f.E(0);
                return;
            }
        }
        if (b2 == -126) {
            byte b4 = bArr[i2 + 1];
            if (b4 == -95) {
                w0.d.f17790b.x(-2);
                return;
            }
            if (b4 == -79) {
                w0.d.f17790b.x(-3);
                return;
            }
            if (b4 != -77) {
                if (b4 == -10) {
                    w0.d.f17790b.k();
                    return;
                }
                if (b4 == 35) {
                    w0.d.f17790b.v(2);
                    return;
                }
                if (b4 != 122) {
                    if (b4 == 54) {
                        w0.d.f17790b.save();
                        return;
                    }
                    if (b4 == 55) {
                        w0.d.f17790b.A(2);
                        return;
                    }
                    if (b4 == 65) {
                        w0.d.f17790b.B();
                        return;
                    }
                    if (b4 == 66) {
                        w0.d.f17790b.h();
                        return;
                    }
                    switch (b4) {
                        case 2:
                            u0.d.Q0();
                            break;
                        case 3:
                            u0.d.R0();
                            break;
                        case 4:
                            u0.d.S0();
                            break;
                        case 5:
                            u0.d.T0();
                            break;
                        case 6:
                            u0.d.U0();
                            break;
                        case 7:
                            u0.d.V0();
                            break;
                        default:
                            switch (b4) {
                                case 48:
                                    w0.d.f17790b.d();
                                    break;
                                case 49:
                                    w0.d.f17790b.i();
                                    break;
                                case 50:
                                    w0.d.f17790b.g();
                                    break;
                                case 51:
                                    w0.d.f17790b.c();
                                    break;
                                case 52:
                                    w0.d.f17790b.p(2);
                                    break;
                                default:
                                    switch (b4) {
                                        case 112:
                                            w0.d.f17790b.o(2);
                                            break;
                                        case 113:
                                            w0.d.f17790b.w(2);
                                            break;
                                        case 114:
                                            w0.d.f17790b.n(2);
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    return;
                }
            }
            w0.d.f17790b.x(-1);
            return;
        }
        if (b2 == 16) {
            this.f18248z = bArr[i2 + 1] & 255;
            return;
        }
        if (b2 != 24) {
            if (b2 == 48) {
                w0.f.c((bArr[i2 + 1] & 255) - 1);
                return;
            }
            if (b2 == 52) {
                w0.f.j((bArr[i2 + 1] & 1) == 0 ? 1 : 0);
                return;
            }
            if (b2 == 0) {
                int i4 = (bArr[i2 + 1] & 255) - 1;
                if (i4 < 0) {
                    return;
                }
                int i5 = w0.d.f17796h;
                if (i5 >= 0 && i5 < 65536) {
                    w0.f.f(i4 + 0);
                    return;
                } else {
                    if (i5 < 65536 || i5 >= 131072) {
                        return;
                    }
                    w0.f.f(i4 + 65536);
                    return;
                }
            }
            if (b2 == 1) {
                this.f18247y = (bArr[i2 + 1] & 255) * 10000;
                this.B = true;
                return;
            }
            if (b2 == 2) {
                this.f18247y += (bArr[i2 + 1] & 255) * 100;
                return;
            }
            if (b2 == 3) {
                int i6 = this.f18247y + (bArr[i2 + 1] & 255);
                this.f18247y = i6;
                if (i6 > 100000) {
                    int i7 = i6 - 100000;
                    this.f18247y = i7;
                    int i8 = this.f18248z;
                    if (i8 >= 1 && i8 <= 18) {
                        int i9 = i8 - 1;
                        this.f18248z = i9;
                        if (i9 < 18) {
                            int[] iArr = w0.d.f17793e;
                            if (iArr[i9] != i7) {
                                iArr[i9] = i7;
                                w0.f.J(4, i9 + 65536, i7);
                            }
                        }
                    } else if (i8 >= 101 && i8 <= 112) {
                        int i10 = i8 - 101;
                        this.f18248z = i10;
                        if (i10 < 12) {
                            int[] iArr2 = w0.d.f17792d;
                            if (iArr2[i10] != i7) {
                                iArr2[i10] = i7;
                                w0.f.J(4, i10 + 0, i7);
                            }
                        }
                    }
                    w0.e.f17818d.c();
                } else if (this.B) {
                    w0.f.h(i6);
                }
                this.B = false;
                return;
            }
            if (b2 == 5) {
                byte b5 = bArr[i2 + 1];
                if (b5 == 0) {
                    w0.f.A(0);
                    return;
                }
                if (b5 == 1) {
                    w0.f.A(1);
                    return;
                }
                if (b5 == 2) {
                    w0.f.A(2);
                    return;
                }
                if (b5 == 3) {
                    w0.f.A(3);
                    return;
                }
                if (b5 == 16) {
                    w0.f.z(1);
                    w0.f.F(0);
                    return;
                } else {
                    if (b5 != 17) {
                        return;
                    }
                    w0.f.z(1);
                    w0.f.F(1);
                    return;
                }
            }
            if (b2 == 6) {
                int i11 = bArr[i2 + 1] & 255;
                int i12 = i11 >= 10 ? (i11 - 10) + 0 : i11 + 65536;
                w0.f.e(i12);
                if (this.A != i12) {
                    this.A = i12;
                    for (int i13 = 0; i13 < 12; i13++) {
                        int[] iArr3 = w0.d.f17792d;
                        if (iArr3[i13] < 500 || iArr3[i13] > 1800) {
                            k.s(1, 35, i13 + 101);
                        }
                    }
                    for (int i14 = 0; i14 < 18; i14++) {
                        int[] iArr4 = w0.d.f17793e;
                        if (iArr4[i14] < 6500 || iArr4[i14] > 10800) {
                            k.s(1, 35, i14 + 1);
                        }
                    }
                    k.s(1, 3, 19);
                    return;
                }
                return;
            }
            if (b2 == 7) {
                w0.f.k(bArr[i2 + 1] & 1);
                return;
            }
            if (b2 != 8) {
                if (b2 == 33) {
                    w0.f.o(bArr[i2 + 1] & 255);
                    return;
                }
                if (b2 != 34) {
                    return;
                }
                int i15 = bArr[i2 + 1] & 255;
                w0.f.q(i15 & 1);
                w0.f.u((i15 >> 1) & 1);
                w0.f.y((i15 >> 2) & 1);
                w0.f.v((i15 >> 3) & 1);
                w0.f.s((i15 >> 4) & 1);
                w0.f.w((i15 >> 5) & 1);
                w0.f.t((i15 >> 6) & 1);
                return;
            }
        }
        int i16 = bArr[i2 + 1] & 255;
        if (i16 > 1) {
            return;
        }
        if (w0.d.f17812x != 0) {
            w0.f.z(0);
            w0.f.F(0);
        } else {
            w0.f.z(0);
            w0.f.F(i16 == 0 ? 1 : 0);
        }
    }

    public final void m(byte[] bArr, int i2, int i3) {
        b0.h(bArr, i2, i3);
        byte b2 = bArr[i2];
        if (b2 == 32) {
            switch (bArr[i2 + 1]) {
                case 0:
                    y0.h.F(0);
                    break;
                case 1:
                    y0.h.F(1);
                    break;
                case 2:
                    y0.h.F(2);
                    break;
                case 3:
                    y0.h.F(3);
                    break;
                case 4:
                    y0.h.F(4);
                    break;
                case 5:
                    y0.h.F(5);
                    break;
                case 6:
                    y0.h.F(6);
                    break;
                case 7:
                    y0.h.F(7);
                    break;
                case 8:
                    y0.h.F(8);
                    break;
            }
        }
        if (b2 == 64) {
            if (y0.f.f18051g1 == 0) {
                y0.h.S(bArr[i2 + 1] & 1);
            }
            int i4 = i2 + 1;
            if (((bArr[i4] >> 7) & 1) == 1) {
                y0.h.q0(bArr[i4] & 1);
                return;
            }
            return;
        }
        if (b2 == 48) {
            y0.h.o(bArr[i2 + 1] & 255, y0.f.f18061l);
            return;
        }
        if (b2 == 49) {
            y0.h.o(y0.f.f18057j, bArr[i2 + 1] & 255);
            return;
        }
        switch (b2) {
            case 16:
                int[] iArr = y0.f.f18035b0;
                iArr[2] = (bArr[i2 + 1] & 255) << 1;
                if (nt.f8661v != 0) {
                    y0.h.E(2, iArr[2]);
                }
                break;
            case 17:
                int[] iArr2 = y0.f.f18035b0;
                iArr2[1] = (bArr[i2 + 1] & 255) << 1;
                if (nt.f8661v != 0) {
                    y0.h.E(1, iArr2[1]);
                }
                break;
            case 18:
                int[] iArr3 = y0.f.f18035b0;
                iArr3[0] = (bArr[i2 + 1] & 255) << 1;
                if (nt.f8661v != 0) {
                    y0.h.E(0, iArr3[0]);
                }
                break;
        }
    }

    public final void n(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -128) {
            a1.c.e(bArr[i2 + 1]);
        }
        if (b2 == 112) {
            a1.d dVar = a1.b.f111b;
            if (dVar instanceof a1.a) {
                ((a1.a) dVar).z((bArr[i2 + 1] + 16) - 1);
                return;
            }
            return;
        }
        switch (b2) {
            case 0:
                a1.c.b(bArr[i2 + 1] & 255);
                break;
            case 1:
                a1.c.f(0, bArr[i2 + 1] & 255);
                break;
            case 2:
                a1.c.f(1, bArr[i2 + 1] & 255);
                break;
            case 3:
                a1.c.f(2, bArr[i2 + 1] & 255);
                break;
            case 4:
                a1.c.f(3, bArr[i2 + 1] & 255);
                break;
            case 5:
                a1.c.f(4, bArr[i2 + 1] & 255);
                break;
            case 6:
                a1.c.f(6, bArr[i2 + 1] & 255);
                break;
            case 7:
                a1.c.f(5, bArr[i2 + 1] & 255);
                break;
            case 8:
                a1.c.f(7, bArr[i2 + 1] & 255);
                break;
            case 9:
                a1.c.f(8, bArr[i2 + 1] & 255);
                break;
            case 10:
                a1.c.f(9, bArr[i2 + 1] & 255);
                break;
            case 11:
                a1.c.f(10, bArr[i2 + 1] & 255);
                break;
            case 12:
                a1.c.f(11, bArr[i2 + 1] & 255);
                break;
            case 13:
                a1.c.f(12, bArr[i2 + 1] & 255);
                break;
            default:
                switch (b2) {
                    case 80:
                        if (u0.b.B4 == 1) {
                            a1.c.a(bArr[i2 + 1] & 255);
                        }
                        break;
                    case 81:
                    case 82:
                    case 83:
                    case 84:
                    case 85:
                    case 86:
                        a1.c.c(bArr[i2] - 81, bArr[i2 + 1] & 255);
                        break;
                    default:
                        switch (b2) {
                            case 97:
                            case 98:
                            case 99:
                            case 100:
                            case 101:
                            case 102:
                            case 103:
                            case 104:
                            case 105:
                            case 106:
                            case 107:
                                a1.c.f((bArr[i2] - 97) + 16, bArr[i2 + 1] & 255);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void o(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -96) {
            byte b3 = bArr[i2 + 1];
            if (b3 == 0) {
                d1.f.h(0);
            }
            if (b3 == 1) {
                d1.f.h(1);
                return;
            } else if (b3 == 2) {
                d1.f.h(2);
                return;
            } else {
                if (b3 != 3) {
                    return;
                }
                d1.f.h(3);
                return;
            }
        }
        if (b2 == 0) {
            d1.f.b(bArr[i2 + 1] & 255);
            return;
        }
        if (b2 == 1) {
            this.f18246x = (bArr[i2 + 1] & 255) * 10000;
            return;
        }
        if (b2 == 2) {
            this.f18246x += (bArr[i2 + 1] & 255) * 100;
            return;
        }
        if (b2 == 3) {
            int i4 = this.f18246x + (bArr[i2 + 1] & 255);
            this.f18246x = i4;
            d1.f.e(i4);
            return;
        }
        if (b2 == 5) {
            byte b4 = bArr[i2 + 1];
            if (b4 == 0) {
                d1.f.g(0);
                return;
            }
            if (b4 == 1) {
                d1.f.g(1);
                return;
            } else if (b4 == 2) {
                d1.f.g(2);
                return;
            } else {
                if (b4 != 3) {
                    return;
                }
                d1.f.g(3);
                return;
            }
        }
        if (b2 != 6) {
            return;
        }
        switch (bArr[i2 + 1]) {
            case 0:
                d1.f.d(0);
                break;
            case 1:
                d1.f.d(1);
                break;
            case 2:
                d1.f.d(2);
                break;
            case 3:
                d1.f.d(3);
                break;
            case 4:
                d1.f.d(4);
                break;
            case 5:
                d1.f.d(5);
                break;
            case 6:
                d1.f.d(6);
                break;
            case 7:
                d1.f.d(7);
                break;
        }
    }

    public void q(q qVar) {
        this.f18230h = qVar;
    }
}
