package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ef extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f4738b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.o f4739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public o1.o f4740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1.o f4741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.o f4742f;

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = i.a.Theme_actionModeWebSearchDrawable;
            e.e.f1624b.c();
            return true;
        }
    }

    public class b implements o1.o {
        public b() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            ef.this.b3(6);
            return true;
        }
    }

    public class c implements o1.o {
        public c() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 251;
            e.e.f1624b.c();
            return true;
        }
    }

    public class d implements o1.o {
        public d() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 252;
            e.e.f1624b.c();
            return false;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.E0;
            if (i2 == 243) {
                ef.this.b3(33);
            }
            if (i2 == 248) {
                ef.this.b3(3);
                return;
            }
            switch (i2) {
                case 250:
                    ef.this.b3(8);
                    break;
                case 251:
                    try {
                        Intent intent = new Intent();
                        intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.jili.YuanJingX1_AirControlAct_DJ"));
                        intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
                        intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
                        App.c().startActivity(intent);
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                case 252:
                    ef.this.b3(5);
                    break;
            }
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4748a;

        public f(int i2) {
            this.f4748a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 113, 2, this.f4748a, 0);
        }
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, -127, 1, 1);
        z.k.s(227, -112, 1, 3);
        z.k.s(227, -112, 1, 48);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        e.e.f1624b.a(this.f4738b, 1);
        this.f4739c = e.c.f1617w;
        this.f4740d = e.c.f1618x;
        this.f4741e = e.c.f1619y;
        this.f4742f = e.c.f1620z;
        e.c.f1617w = new a();
        e.c.f1618x = new b();
        e.c.f1620z = new c();
        e.c.f1619y = new d();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 != 3) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        byte b5 = bArr[i2 + 4];
        qt.y0(10, (b3 >> 7) & 1);
        qt.y0(11, (b3 >> 6) & 1);
        qt.y0(12, (b3 >> 5) & 1);
        qt.y0(16, (b3 >> 4) & 1);
        qt.y0(21, b3 & 7);
        int i7 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
        switch (i7) {
            case 2:
            case 7:
                i4 = 1;
                i5 = 0;
                i6 = i5;
                break;
            case 3:
                i6 = 1;
                i4 = 0;
                i5 = 0;
                break;
            case 4:
                i5 = 1;
                i6 = 1;
                i4 = 0;
                break;
            case 5:
                i5 = 1;
                i4 = 0;
                i6 = 0;
                break;
            case 6:
            case 8:
                i4 = 1;
                i6 = 1;
                i5 = 0;
                break;
            default:
                i4 = 0;
                i5 = 0;
                i6 = i5;
                break;
        }
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(77, i7);
        qt.y0(27, b5 & 255);
    }

    @Override // k0.lt
    public void W2() {
        e.e.f1624b.d(this.f4738b);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
        }
    }

    public final void b3(int i2) {
        z.k.s(227, 113, 2, i2, 1);
        o1.l.a().postDelayed(new f(i2), 100L);
    }
}
