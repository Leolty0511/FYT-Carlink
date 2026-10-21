package c1;

import android.content.ComponentName;
import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import o1.b0;
import o1.g0;
import o1.q;
import o1.u;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class j extends p implements q {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static HashMap<Integer, Integer> f520l = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f521b = new byte[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f522c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f523d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f524e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f525f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f526g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f527h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f528i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g0 f529j = new g0(getClass().getName(), 7);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f530k = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f526g = 0;
            j.this.f527h = 0;
        }
    }

    public static void R2(int i2, int i3) {
        int i4;
        switch (i2) {
            case 0:
                i4 = 9;
                break;
            case 1:
                i4 = 8;
                break;
            case 2:
                i4 = 5;
                break;
            case 3:
                i4 = 6;
                break;
            case 4:
                i4 = 1;
                break;
            case 5:
                i4 = 128;
                break;
            case 6:
                i4 = 144;
                break;
            default:
                i4 = 0;
                break;
        }
        if (i3 != 255) {
            f520l.put(Integer.valueOf(i4), Integer.valueOf(i3));
        }
    }

    @Override // c1.p
    public void L2() {
        this.f529j.a();
        init();
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        this.f529j.j();
    }

    public final void Q2() {
        if (this.f528i) {
            if (this.f522c == 255) {
                b.i(101, 255, 0);
                return;
            }
            int i2 = this.f525f;
            if (i2 != 16) {
                f520l.put(Integer.valueOf(i2), Integer.valueOf(this.f522c));
                b.i(101, this.f525f, this.f522c);
                return;
            } else {
                f520l.put(Integer.valueOf(this.f524e), Integer.valueOf(this.f522c));
                b.i(101, this.f524e, this.f522c);
                return;
            }
        }
        int i3 = this.f527h;
        int i4 = this.f525f;
        if (i3 == i4 && this.f526g == this.f524e) {
            return;
        }
        this.f527h = i4;
        this.f526g = this.f524e;
        o1.j.e(o1.l.a(), this.f530k);
        o1.j.b(o1.l.a(), this.f530k, 300L);
        if (f520l.get(Integer.valueOf(this.f525f)) != null) {
            switch (f520l.get(Integer.valueOf(this.f525f)).intValue()) {
                case 0:
                    u0.d.U1(2);
                    break;
                case 1:
                    u0.d.A1();
                    break;
                case 2:
                    u0.d.C1();
                    break;
                case 3:
                    u0.d.t1();
                    break;
                case 4:
                    u0.d.u1();
                    break;
                case 5:
                    u0.d.O1();
                    break;
                case 6:
                    u0.d.M1();
                    break;
                case 7:
                    u0.d.N1();
                    break;
                case 8:
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName("net.easyconn", "net.easyconn.MainActivity"));
                    u.e(intent);
                    break;
                case 9:
                    u0.d.B1();
                    break;
                case 10:
                    u0.d.y1();
                    break;
                case 11:
                    u0.d.I1();
                    break;
                case 12:
                    u0.d.w1();
                    break;
                case 13:
                    h0.c.f2425b.h(1);
                    break;
                case 14:
                    u0.d.D1();
                    break;
                case 15:
                    u.a1();
                    break;
                case 16:
                    u0.d.v1();
                    break;
                case 17:
                    u0.d.E1();
                    break;
                case 18:
                    u0.d.I3(60, 5);
                    break;
                case 19:
                    u0.d.I3(60, 6);
                    break;
                case 20:
                    u0.d.I3(60, 0);
                    break;
                case 21:
                    if (!u.b0()) {
                        u.E();
                    } else {
                        u.k();
                    }
                    break;
            }
        }
        if (f520l.get(Integer.valueOf(this.f524e)) != null) {
            switch (f520l.get(Integer.valueOf(this.f524e)).intValue()) {
                case 0:
                    u0.d.U1(2);
                    break;
                case 1:
                    u0.d.A1();
                    break;
                case 2:
                    u0.d.C1();
                    break;
                case 3:
                    u0.d.t1();
                    break;
                case 4:
                    u0.d.u1();
                    break;
                case 5:
                    u0.d.O1();
                    break;
                case 6:
                    u0.d.M1();
                    break;
                case 7:
                    u0.d.N1();
                    break;
                case 8:
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName("net.easyconn", "net.easyconn.MainActivity"));
                    u.e(intent2);
                    break;
                case 9:
                    u0.d.B1();
                    break;
                case 10:
                    u0.d.y1();
                    break;
                case 11:
                    u0.d.I1();
                    break;
                case 12:
                    u0.d.w1();
                    break;
                case 13:
                    h0.c.f2425b.h(1);
                    break;
                case 14:
                    u0.d.D1();
                    break;
                case 15:
                    u.a1();
                    break;
                case 16:
                    u0.d.v1();
                    break;
                case 17:
                    u0.d.E1();
                    break;
                case 18:
                    u0.d.I3(60, 5);
                    break;
                case 19:
                    u0.d.I3(60, 6);
                    break;
                case 20:
                    u0.d.I3(60, 0);
                    break;
                case 21:
                    if (!u.b0()) {
                        u.E();
                    } else {
                        u.k();
                    }
                    break;
            }
        }
    }

    public final void S2(byte b2) {
        this.f524e = b2 & DhcpPacket.DHCP_DOMAIN_NAME;
        this.f525f = b2 & 240;
        Q2();
        b0.i("**** 获取到正确数据   键值mKeyID = " + this.f524e + "  按键状态mKeyState = " + this.f525f + "  ** 原始数据this.DATA[mStart]= " + String.format("%02X ", Byte.valueOf(b2)));
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 != 100) {
            return;
        }
        for (Map.Entry<Integer, Integer> entry : f520l.entrySet()) {
            x.v(bVar, i2, entry.getKey().intValue(), entry.getValue().intValue());
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                this.f522c = 255;
                f520l.clear();
                return;
            }
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            this.f522c = iArr[0];
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 1) {
            this.f528i = true;
            return;
        }
        this.f522c = 255;
        this.f528i = false;
        if (f520l.isEmpty()) {
            this.f529j.g(0, 255);
            this.f529j.g(1, 255);
            this.f529j.g(2, 255);
            this.f529j.g(3, 255);
            this.f529j.g(4, 255);
            this.f529j.g(5, 255);
            this.f529j.g(6, 255);
            return;
        }
        this.f529j.g(0, f520l.get(9).intValue());
        this.f529j.g(1, f520l.get(8).intValue());
        this.f529j.g(2, f520l.get(5).intValue());
        this.f529j.g(3, f520l.get(6).intValue());
        this.f529j.g(4, f520l.get(1).intValue());
        this.f529j.g(5, f520l.get(128).intValue());
        this.f529j.g(6, f520l.get(144).intValue());
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
        } else {
            z1(bArr, 0, bArr.length);
        }
    }

    public final void init() {
        R2(0, this.f529j.d(0, 255));
        R2(1, this.f529j.d(1, 255));
        R2(2, this.f529j.d(2, 255));
        R2(3, this.f529j.d(3, 255));
        R2(4, this.f529j.d(4, 255));
        R2(5, this.f529j.d(5, 255));
        R2(6, this.f529j.d(6, 255));
    }

    public void z1(byte[] bArr, int i2, int i3) {
        int i4 = this.f523d + i3;
        byte[] bArr2 = this.f521b;
        if (i4 > bArr2.length) {
            this.f523d = 0;
        }
        System.arraycopy(bArr, i2, bArr2, this.f523d, i3);
        this.f523d += i3;
        int i5 = 0;
        while (true) {
            int i6 = i5 + 1;
            if (i6 >= this.f523d) {
                return;
            }
            byte[] bArr3 = this.f521b;
            if (bArr3[i6] == ((byte) (bArr3[i5] ^ 165)) && bArr3[i5] != 0) {
                S2(bArr3[i5]);
                Arrays.fill(this.f521b, (byte) 0);
                this.f523d = 0;
                return;
            }
            i5 = i6;
        }
    }
}
