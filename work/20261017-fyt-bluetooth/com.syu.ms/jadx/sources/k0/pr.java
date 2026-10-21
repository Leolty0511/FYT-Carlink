package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class pr extends lt {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f9321w = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9322b;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public g f9334n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9323c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9324d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 2}, new int[]{10, 12}, new int[]{11, 18}, new int[]{12, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9325e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f9326f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f9327g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9328h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9329i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9330j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9331k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f9332l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9333m = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f9335o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9336p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f9337q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9338r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f9339s = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f9340t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f9341u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9342v = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(pr.this.f9330j);
            pr.this.f9328h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pr prVar = pr.this;
            int i2 = prVar.f9328h - 1;
            prVar.f9328h = i2;
            if (i2 <= 0) {
                l0.b0.p0(prVar.f9330j);
                pr.this.f9328h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                pr prVar2 = pr.this;
                prVar2.q3(prVar2.f9326f.b(1, 1));
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
                pr.this.f9332l = 0;
            } else {
                pr.this.f9332l = 1;
            }
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                int i3 = u0.b.m3;
                if (i3 == 0) {
                    pr.this.f9333m = 0;
                } else if (i3 == 2) {
                    pr.this.f9333m = 1;
                } else {
                    pr.this.f9333m = 2;
                }
            } else {
                pr.this.f9333m = 2;
            }
            pr prVar = pr.this;
            z.k.s(227, 193, 3, prVar.f9331k, prVar.f9333m, ((prVar.f9332l << 6) & 64) | (y0.f.C0 & 63));
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int iIntValue = 0;
            switch (h0.c.E) {
                case 0:
                case 6:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                    i2 = 16;
                    break;
                case 3:
                    i2 = 18;
                    break;
                case 4:
                    i2 = 17;
                    break;
                case 5:
                    i2 = 20;
                    break;
            }
            boolean z3 = true;
            if (pr.this.f9336p != i2) {
                pr.this.f9336p = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            String str = h0.c.f2454s;
            if (str != null) {
                try {
                    iIntValue = Integer.valueOf(str).intValue();
                } catch (Exception unused) {
                }
            }
            if (pr.this.f9338r != iIntValue) {
                pr.this.f9338r = iIntValue;
                z2 = true;
            }
            int i3 = pr.this.f9337q;
            int i4 = h0.c.C;
            if (i3 != i4) {
                pr.this.f9337q = i4;
                z2 = true;
            }
            if (pr.this.f9339s.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                pr.this.f9339s = h0.c.f2437h;
                if (pr.this.f9339s == null) {
                    pr.this.f9339s = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                pr prVar = pr.this;
                prVar.r3(prVar.f9336p, pr.this.f9338r, pr.this.f9337q, pr.this.f9339s);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.i.r(o1.u.Y0())) {
                pr.this.a3((byte) 7, "NAVI");
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 5) {
                pr.this.a3((byte) 6, "AUX");
                return;
            }
            if (i2 == 2) {
                switch (h0.c.E) {
                    case 0:
                        pr.this.a3((byte) 4, "蓝牙未连接");
                        break;
                    case 1:
                    case 6:
                        pr.this.a3((byte) 4, "蓝牙配对中");
                        break;
                    case 2:
                        pr.this.a3((byte) 4, "蓝牙已经链接");
                        break;
                    case 3:
                        pr.this.a3((byte) 4, "拨号中");
                        break;
                    case 4:
                        pr.this.a3((byte) 4, "来电...");
                        break;
                    case 5:
                        pr.this.a3((byte) 4, "通话中");
                        break;
                }
            }
            if (i2 == 3) {
                pr.this.a3((byte) 4, "蓝牙音乐");
                return;
            }
            if (i2 == 8) {
                pr.this.a3((byte) 2, u0.b.i3);
                return;
            }
            if (i2 == 9) {
                pr.this.a3((byte) 0, "Video");
                return;
            }
            if (i2 == 10) {
                pr.this.a3((byte) 0, "Media");
            } else if (i2 == 1) {
                pr.this.b3();
            } else if (u0.b.f17306a0 == 1) {
                pr.this.a3((byte) 0, "None");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if (i2 == 5767623) {
                z.k.s(227, 226, 1, 2);
            } else {
                if (i2 != 7340486) {
                    return;
                }
                z.k.s(227, 226, 1, 1);
            }
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i2;
            String action = intent.getAction();
            if (UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(action)) {
                i2 = 1;
            } else {
                UsbManager.ACTION_USB_DEVICE_DETACHED.equals(action);
                i2 = 0;
            }
            pr prVar = pr.this;
            if (prVar.f9331k != i2) {
                prVar.f9331k = i2;
                z.k.s(227, 193, 3, i2, prVar.f9333m, ((prVar.f9332l << 6) & 64) | (y0.f.C0 & 63));
            }
        }

        public /* synthetic */ g(pr prVar, a aVar) {
            this();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f9326f.a();
        u0.c.f17386m.a(this.f9329i, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        qt.z(this.f9342v);
        h0.d.f2464c.a(this.f9340t, 1);
        h0.d.f2462a.a(this.f9340t, 1);
        h0.d.f2469h.a(this.f9340t, 1);
        h0.d.f2467f.a(this.f9340t, 1);
        qt.z(this.f9341u);
        if (nt.f8633a == 5767623) {
            this.f9334n = new g(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(UsbManager.ACTION_USB_DEVICE_ATTACHED);
            intentFilter.addAction(UsbManager.ACTION_USB_DEVICE_DETACHED);
            App.c().registerReceiver(this.f9334n, intentFilter);
            y0.g.f18094d.a(this.f9335o, 1);
            y0.g.f18095e.a(this.f9335o, 1);
            u0.c.f17391r.a(this.f9335o, 1);
            u0.c.f17374a.a(this.f9335o, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i4 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                int i7 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i7] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i7] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i4 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f9325e = true;
                return;
            } else if (i4 != 3) {
                if (i4 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            } else {
                int i8 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i8);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i8}, null, null);
                return;
            }
        }
        if (b2 == 40) {
            byte b4 = bArr[i2 + 2];
            qt.y0(10, (b4 >> 7) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 5) & 1);
            qt.y0(13, (b4 >> 4) & 1);
            qt.y0(63, (b4 >> 3) & 1);
            qt.y0(62, (b4 >> 2) & 1);
            qt.y0(15, (b4 >> 1) & 1);
            qt.y0(16, (b4 >> 0) & 1);
            int i9 = i2 + 3;
            byte b5 = bArr[i9];
            qt.y0(18, (b5 >> 7) & 1);
            qt.y0(19, (b5 >> 6) & 1);
            int i10 = b5 >> 5;
            qt.y0(20, i10 & 1);
            qt.y0(77, i10 & 7);
            qt.y0(21, bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i11 = i2 + 4;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 5;
            int i14 = bArr[i13] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i12 = bArr[i13] & 255;
                i14 = bArr[i11] & 255;
            }
            if (i12 == 0) {
                qt.y0(27, -2);
            } else if (i12 != 255) {
                qt.y0(27, i12);
            } else {
                qt.y0(27, -3);
            }
            if (i14 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i14 != 255) {
                qt.y0(28, i14);
                return;
            } else {
                qt.y0(28, -3);
                return;
            }
        }
        if (b2 == 41) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            if (this.f9325e) {
                return;
            }
            qt.i(b6, b7, false, 500);
            return;
        }
        switch (b2) {
            case 29:
                int i15 = i2 + 2;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 3;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                if (i16 == 0 && i18 == 0 && i20 == 0 && i22 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i16;
                l0.c0.f13014h = i18;
                l0.c0.f13015i = i20;
                l0.c0.f13016j = i22;
                u0.d.D2(l0.c0.V0(bArr[i15] & 255));
                u0.d.E2(l0.c0.V0(bArr[i17] & 255));
                u0.d.F2(l0.c0.V0(bArr[i19] & 255));
                u0.d.G2(l0.c0.V0(bArr[i21] & 255));
                break;
            case 30:
                u0.d.R2(l0.c0.V0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.V0(bArr[i2 + 5] & 255));
                break;
            case 31:
                if (f9321w == 1) {
                    int i23 = bArr[i2 + 2] & 255;
                    if (i23 == 1) {
                        p3("请系好安全带");
                        break;
                    } else if (i23 == 2) {
                        p3("请挂前进挡");
                        break;
                    }
                }
                break;
            case 32:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                this.f9323c = b8 & 255;
                int i24 = 0;
                while (true) {
                    iArr = this.f9324d;
                    if (i24 < iArr.length) {
                        int i25 = this.f9323c;
                        if (i25 != iArr[i24][0]) {
                            i24++;
                        } else if (i25 != 0) {
                            this.f9322b = i24;
                        }
                    }
                }
                int i26 = this.f9323c;
                if (i26 == 7) {
                    if ((b9 & 255) == 1) {
                        if (h0.c.E == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(2, 0);
                            l0.b0.l0(2, 1);
                        }
                    }
                } else if (i26 != 8) {
                    int i27 = b9 & 255;
                    if (i27 != 1) {
                        if (i27 == 0) {
                            int i28 = this.f9322b;
                            if (i28 < iArr.length && i28 != 255) {
                                l0.b0.l0(iArr[i28][1], 1);
                            }
                            this.f9322b = 255;
                        }
                    } else if (i24 < iArr.length) {
                        l0.b0.l0(iArr[i24][1], 0);
                    }
                } else if ((b9 & 255) == 1) {
                    int i29 = h0.c.E;
                    if (i29 == 3 || i29 == 4 || i29 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9326f.j();
        u0.c.f17386m.d(this.f9329i);
        l0.b0.p0(this.f9330j);
        qt.q0(this.f9342v);
        h0.d.f2464c.d(this.f9340t);
        h0.d.f2462a.d(this.f9340t);
        h0.d.f2469h.d(this.f9340t);
        h0.d.f2467f.d(this.f9340t);
        qt.q0(this.f9341u);
        y0.g.f18094d.d(this.f9335o);
        y0.g.f18095e.d(this.f9335o);
        u0.c.f17391r.d(this.f9335o);
        u0.c.f17374a.d(this.f9335o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            q3(iArr[0]);
        }
    }

    public final void a3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        byte[] bytes = str.getBytes();
        int[] iArr = new int[bytes.length + 5];
        iArr[0] = 227;
        iArr[1] = 192;
        iArr[2] = bytes.length + 2;
        iArr[3] = b2;
        iArr[4] = 0;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            iArr[i2 + 5] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void b3() {
        int i2 = w0.d.f17796h;
        if (i2 - 65536 != 0 && 1 != i2 - 65536 && 2 != i2 - 65536) {
            int i3 = w0.d.f17797i;
            z.k.s(227, 192, 4, 1, 16, (i3 >> 8) & 255, i3 & 255);
            return;
        }
        a.f.p().t(LogType.CANBUS, "DataRadio.sFreq --- " + w0.d.f17797i);
        int i4 = w0.d.f17797i / 10;
        z.k.s(227, 192, 4, 1, 0, (i4 >> 8) & 255, i4 & 255);
    }

    public final void p3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void q3(int i2) {
        f9321w = i2;
        qt.y0(98, i2);
        int iB = this.f9326f.b(1, 1);
        int i3 = f9321w;
        if (iB != i3) {
            this.f9326f.g(1, i3);
        }
    }

    public final void r3(int i2, int i3, int i4, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (i3 & 15) | ((i4 << 4) & 240);
        iArr[4] = (byte) i2;
        if (i2 == 1) {
            for (int i5 = 0; i5 < str.length(); i5++) {
                iArr[5 + i5] = (byte) charArray[i5];
            }
        }
        z.k.s(iArr);
    }
}
